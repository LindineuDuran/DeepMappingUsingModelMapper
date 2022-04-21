package br.com.llduran.deepmapping.domain.model;

import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Data
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Restaurante
{
	@Id
	@EqualsAndHashCode.Include
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(nullable = false)
	private String nome;

	@Column(name = "taxa_frete", nullable = false)
	private BigDecimal taxaFrete;

	@CreationTimestamp
	@Column(nullable = false, columnDefinition = "datetime")
	private OffsetDateTime dataCadastro;

	@UpdateTimestamp
	@Column(nullable = false, columnDefinition = "datetime")
	private OffsetDateTime dataAtualizacao;

	@ManyToOne
	@JoinColumn(name = "cozinha_id", nullable = false)
	private Cozinha cozinha;

	@Embedded
	private Endereco endereco;

	private Boolean ativo = Boolean.TRUE;

	private Boolean aberto = Boolean.FALSE;

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "restaurante_forma_pagamento", joinColumns = @JoinColumn(name = "restaurante_id"), inverseJoinColumns = @JoinColumn(name = "forma_pagamento_id"))
	private Set<FormaPagamento> formasPagamento = new HashSet<>();

//	@OneToMany(mappedBy = "restaurante")
//	private List<Produto> produtos = new ArrayList<>();

	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "restaurante_usuario_responsavel", joinColumns = @JoinColumn(name = "restaurante_id"), inverseJoinColumns = @JoinColumn(name = "usuario_id"))
	private Set<Usuario> responsaveis = new HashSet<>();

	public void ativar()
	{
		setAtivo(true);
	}

	public void inativar()
	{
		setAtivo(false);
	}

	public boolean adicionarFormaPagamento(FormaPagamento formaPagamento)
	{
		return getFormasPagamento().add(formaPagamento);
	}

	public boolean removerFormaPagamento(FormaPagamento formaPagamento)
	{
		return getFormasPagamento().remove(formaPagamento);
	}

//	public boolean removerResponsavel(Usuario usuario)
//	{
//		return getResponsaveis().remove(usuario);
//	}
//
//	public boolean adicionarResponsavel(Usuario usuario)
//	{
//		return getResponsaveis().add(usuario);
//	}
//
//	public void abrir()
//	{
//		setAberto(true);
//	}
//
//	public void fechar()
//	{
//		setAberto(false);
//	}
//
//	public boolean aceitaFormaPagamento(FormaPagamento formaPagamento)
//	{
//		return getFormasPagamento().contains(formaPagamento);
//	}

//	public boolean naoAceitaFormaPagamento(FormaPagamento formaPagamento)
//	{
//		return !aceitaFormaPagamento(formaPagamento);
//	}
}