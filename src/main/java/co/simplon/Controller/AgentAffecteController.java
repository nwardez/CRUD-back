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

import co.simplon.ModelEntity.AgentAffecteModel;
import co.simplon.Repository.IRepositoryAgentAffecte;

@CrossOrigin(origins = "http://localhost:4200", maxAge = 3600)
@RestController
public class AgentAffecteController{

	

	@Autowired
	private IRepositoryAgentAffecte iRepositoryAgentAffecte;
	
	
	@GetMapping(value="/AgentAffectes")
	public List<AgentAffecteModel> GetAgentAffecte() {
		
		return iRepositoryAgentAffecte.findAll();
		
	}
	
	@PostMapping(value="/ajoutAgentAffectes") 
	public AgentAffecteModel PostAgentAffecte(@RequestBody AgentAffecteModel personnel) {
		return iRepositoryAgentAffecte.save(personnel);
	}
	

	@DeleteMapping(value="/supprimeAgentAffecte/{id}")
	public void DeleteAgentAffecte(@PathVariable Long id) {
		iRepositoryAgentAffecte.deleteById(id);
	}
	
	@GetMapping(value="agentAffecte/{id}")
	public Optional<AgentAffecteModel> GetAgentAffecte(@PathVariable Long id) {
		return iRepositoryAgentAffecte.findById(id);
	}
	


	@PutMapping(value="/personnel/edit/{id}") 
	public AgentAffecteModel editAgentAffecte(@RequestBody AgentAffecteModel agentAffecte,@PathVariable Long id) {
		AgentAffecteModel agentAffecteToUpdate = iRepositoryAgentAffecte.getOne(id);
		agentAffecteToUpdate.setGrade(agentAffecte.getGrade());
		agentAffecteToUpdate.setDroitAcces(agentAffecte.getDroitAcces());
		agentAffecteToUpdate.setIdentifiant(agentAffecte.getIdentifiant());
		agentAffecteToUpdate.setPassword(agentAffecte.getPassword());
		agentAffecteToUpdate.setAffaire(agentAffecte.getAffaire());
		
		return iRepositoryAgentAffecte.save(agentAffecteToUpdate);
	}

}
