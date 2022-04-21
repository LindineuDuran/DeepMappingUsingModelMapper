package br.com.llduran.deepmapping;

import br.com.llduran.deepmapping.domain.assembler.RestauranteModelAssembler;
import br.com.llduran.deepmapping.domain.model.Restaurante;
import br.com.llduran.deepmapping.domain.model.dto.RestauranteDTO;
import br.com.llduran.deepmapping.domain.model.dto.RestauranteDetalheDTO;
import br.com.llduran.deepmapping.domain.repository.RestauranteRepository;
import br.com.llduran.deepmapping.util.ObjectManipulation;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.List;
import java.util.Optional;

@SpringBootApplication
public class App implements CommandLineRunner
{
	@Autowired
	private RestauranteRepository repository;

	@Autowired
	private RestauranteModelAssembler assembler;

	public static void main(String[] args) {
		SpringApplication.run(App.class, args);
	}

	@Override
	public void run(String... args) throws Exception
	{
		String jsonFinalizado = "";

		List<Restaurante> restaurantes = repository.findAll();
		restaurantes.forEach(System.out::println);

		System.out.println("");

		jsonFinalizado = ObjectManipulation.serializa(restaurantes);
		System.out.println(jsonFinalizado);

		System.out.println("");

		List<RestauranteDTO> restauranteDTOS = assembler.toCollectionModel(repository.findAll());
		restauranteDTOS.forEach(System.out::println);

		System.out.println("");

		jsonFinalizado = ObjectManipulation.serializa(restauranteDTOS);
		System.out.println(jsonFinalizado);

		System.out.println("");

		Optional<Restaurante> restaurante = repository.findById(1L);
		if(restaurante.isPresent())
		{
			System.out.println(restaurante.get());

			System.out.println("");

			jsonFinalizado = ObjectManipulation.serializa(restaurante.get());
			System.out.println(jsonFinalizado);

			System.out.println("");

			RestauranteDetalheDTO restauranteDetalheDTO = assembler.toDetailedModel(restaurante.get());

			jsonFinalizado = ObjectManipulation.serializa(restauranteDetalheDTO);
			System.out.println(jsonFinalizado);
		}
	}
}
