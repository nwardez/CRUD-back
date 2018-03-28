package co.simplon.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;



import co.simplon.ModelEntity.AffaireModel;

// Interface Repository qui implemente JpaRepository qui contient lui même des méthodes créant les requêtes
// SQL de base
public interface IRepositoryAffaire  extends JpaRepository<AffaireModel, Long>{
	
	/*@Query("select a from AffaireModel a where a.nom like:x")
	public List<AffaireModel> affaireParMc(@Param("x")String mc);*/

}
