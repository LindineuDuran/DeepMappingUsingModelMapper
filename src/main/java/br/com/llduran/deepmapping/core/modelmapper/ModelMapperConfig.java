package br.com.llduran.deepmapping.core.modelmapper;

import br.com.llduran.deepmapping.domain.model.Endereco;
import br.com.llduran.deepmapping.domain.model.Restaurante;
import br.com.llduran.deepmapping.domain.model.dto.EnderecoDTO;
import br.com.llduran.deepmapping.domain.model.dto.RestauranteDetalheDTO;
import org.modelmapper.ModelMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ModelMapperConfig
{
	@Bean
	public ModelMapper modelMapper()
	{
		var modelMapper = new ModelMapper();

		var restauranteToRestauranteDetalheDtoTypeMap = modelMapper.createTypeMap(Restaurante.class, RestauranteDetalheDTO.class);
		restauranteToRestauranteDetalheDtoTypeMap.<String>addMapping(restauranteSrc -> restauranteSrc.getEndereco().getCep(), (restauranteDest, value) -> restauranteDest.getEnderecoDTO().setCep(value));
		restauranteToRestauranteDetalheDtoTypeMap.<String>addMapping(restauranteSrc -> restauranteSrc.getEndereco().getLogradouro(), (restauranteDest, value) -> restauranteDest.getEnderecoDTO().setLogradouro(value));
		restauranteToRestauranteDetalheDtoTypeMap.<String>addMapping(restauranteSrc -> restauranteSrc.getEndereco().getNumero(), (restauranteDest, value) -> restauranteDest.getEnderecoDTO().setNumero(value));
		restauranteToRestauranteDetalheDtoTypeMap.<String>addMapping(restauranteSrc -> restauranteSrc.getEndereco().getComplemento(), (restauranteDest, value) -> restauranteDest.getEnderecoDTO().setComplemento(value));
		restauranteToRestauranteDetalheDtoTypeMap.<String>addMapping(restauranteSrc -> restauranteSrc.getEndereco().getBairro(), (restauranteDest, value) -> restauranteDest.getEnderecoDTO().setBairro(value));
		restauranteToRestauranteDetalheDtoTypeMap.<String>addMapping(restauranteSrc -> restauranteSrc.getEndereco().getCidade().getNome(), (restauranteDest, value) -> restauranteDest.getEnderecoDTO().setCidadeNome(value));
		restauranteToRestauranteDetalheDtoTypeMap.<String>addMapping(restauranteSrc -> restauranteSrc.getEndereco().getCidade().getEstado().getNome(), (restauranteDest, value) -> restauranteDest.getEnderecoDTO().setEstadoNome(value));


		return modelMapper;
	}
}