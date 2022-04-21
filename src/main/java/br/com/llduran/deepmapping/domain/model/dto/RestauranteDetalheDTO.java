package br.com.llduran.deepmapping.domain.model.dto;

import lombok.Data;

@Data
public class RestauranteDetalheDTO
{
	private String nome;
	private String cozinhaNome;
	private EnderecoDTO enderecoDTO;
}
