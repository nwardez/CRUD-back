package co.simplon.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import co.simplon.ModelEntity.AffaireModel;
import co.simplon.Repository.IRepositoryAffaire;

//Autorise l'accès au serveur depuis le port 4200
@CrossOrigin(origins = "http://localhost:4200", maxAge = 3600)
@RestController
public class AffaireController {

	// Rend dispo l'Interface Repository Affaire
	@Autowired
	private IRepositoryAffaire iRepositoryAffaire;
	
	// Retourne la liste de toutes les affaires
	// Requête SQL: SELECT * FROM affaire
	@GetMapping(value="/affaires")
	public List<AffaireModel> GetAffaire() {
		return iRepositoryAffaire.findAll();
	}
	
	//Recherche par mot clé
	/*@GetMapping(value="/affaires/")
	public List<AffaireModel> affaireParMc() {
		return iRepositoryAffaire.affaireParMc(mc)
	}*/
	
	// Création d'une affaire 
	// Requête SQL: INSERT INTO 'affaire' VALUES ('nom','lieu','rapport')
	@PostMapping(value="/ajoutAffaire") 
	public AffaireModel PostAffaire(@RequestBody AffaireModel affaire) {
		return iRepositoryAffaire.save(affaire);
	}
	
	// Supprimer une affaire d'après son id
	// Requête SQL: DELETE FROM `affaire` WHERE `id` = ?
	@DeleteMapping(value="/supprimeAffaires/{id}")
	public void DeleteAffaire(@PathVariable Long id) {
		iRepositoryAffaire.deleteById(id);
	}
	
	// Afficher une affaire selon son Id
	// Requête SQL: SELECT FROM affaire WHERE id LIKE ?
	@GetMapping(value="affaire/{id}")
	public Optional<AffaireModel> GetAffaire(@PathVariable Long id) {
		return iRepositoryAffaire.findById(id);
	}
	

	// Modification des champs d'une affaire selon l'ID
	// Requête SQL : UPDATE affaire SET nom = '?', lieu = '?', rapport = '?' WHERE id LIKE '?'
	@PutMapping(value="/affaire/edit/{id}") 
	public AffaireModel editAffaire(@RequestBody AffaireModel affaire,@PathVariable Long id) {
		AffaireModel affaireToUpdate = iRepositoryAffaire.getOne(id);
		affaireToUpdate.setNom(affaire.getNom());
		affaireToUpdate.setDate_creation(affaire.getDate_creation());
		affaireToUpdate.setDate_cloture(affaire.getDate_cloture());
		affaireToUpdate.setLieu(affaire.getLieu());
		affaireToUpdate.setRapport(affaire.getRapport());
		affaireToUpdate.setListVehicule(affaire.getListVehicule());
		affaireToUpdate.setListArme(affaire.getListArme());
		affaireToUpdate.setListAgentAffecte(affaire.getListAgentAffecte());
		affaireToUpdate.setListSuspect(affaire.getListSuspect());
		affaireToUpdate.setListTemoin(affaire.getListTemoin());
		affaireToUpdate.setListVictime(affaire.getListVictime());
		
		return iRepositoryAffaire.save(affaireToUpdate);
	}


}
