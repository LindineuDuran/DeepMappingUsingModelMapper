package br.com.llduran.deepmapping.domain.assembler;

import br.com.llduran.deepmapping.domain.model.Restaurante;
import br.com.llduran.deepmapping.domain.model.dto.RestauranteDTO;
import br.com.llduran.deepmapping.domain.model.dto.RestauranteDetalheDTO;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class RestauranteModelAssembler
{
	@Autowired
	private ModelMapper modelMapper;

	/**
	 * @param restaurante
	 * @return
	 */
	public RestauranteDTO toModel(Restaurante restaurante)
	{
		return modelMapper.map(restaurante, RestauranteDTO.class);
	}

	public RestauranteDetalheDTO toDetailedModel(Restaurante restaurante) {return modelMapper.map(restaurante, RestauranteDetalheDTO.class);}

	public List<RestauranteDTO> toCollectionModel(List<Restaurante> restaurantes)
	{
		return restaurantes.stream().map(restaurante -> toModel(restaurante)).collect(Collectors.toList());
	}
}
