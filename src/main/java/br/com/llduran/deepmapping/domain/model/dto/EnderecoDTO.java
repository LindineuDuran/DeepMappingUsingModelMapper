package br.com.llduran.deepmapping.domain.model.dto;

import br.com.llduran.deepmapping.domain.model.Cidade;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Data
@Embeddable
public class EnderecoDTO
{
	private String cep;
	private String logradouro;
	private String numero;
	private String complemento;
	private String bairro;
	private String cidadeNome;
	private String estadoNome;
}