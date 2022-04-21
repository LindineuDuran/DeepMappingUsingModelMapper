package br.com.llduran.deepmapping.domain.repository;

import br.com.llduran.deepmapping.domain.model.Restaurante;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RestauranteRepository extends JpaRepository<Restaurante, Long>
{

}