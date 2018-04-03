package co.simplon.Repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.PathVariable;

import co.simplon.ModelEntity.AffaireModel;

// Interface Repository qui implemente JpaRepository qui contient lui même des méthodes créant les requêtes
// SQL de base
public interface IRepositoryAffaire  extends JpaRepository<AffaireModel, Long>{

	
	

}
