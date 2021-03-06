// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.ufpb.dce.bloomer.core.model;

import br.ufpb.dce.bloomer.core.model.Jogo;
import br.ufpb.dce.bloomer.core.model.NivelTaxonomia;
import br.ufpb.dce.bloomer.core.model.Plafatorma;
import br.ufpb.dce.bloomer.core.model.TipoJogo;
import br.ufpb.dce.bloomer.core.model.TipoQuestao;
import br.ufpb.dce.bloomer.core.model.Usuario;
import java.util.Set;

privileged aspect TipoJogo_Roo_JavaBean {
    
    public String TipoJogo.getNome() {
        return this.nome;
    }
    
    public void TipoJogo.setNome(String nome) {
        this.nome = nome;
    }
    
    public String TipoJogo.getDescricao() {
        return this.descricao;
    }
    
    public void TipoJogo.setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
    public Usuario TipoJogo.getDesenvolvedor() {
        return this.desenvolvedor;
    }
    
    public void TipoJogo.setDesenvolvedor(Usuario desenvolvedor) {
        this.desenvolvedor = desenvolvedor;
    }
    
    public Plafatorma TipoJogo.getPlataforma() {
        return this.plataforma;
    }
    
    public void TipoJogo.setPlataforma(Plafatorma plataforma) {
        this.plataforma = plataforma;
    }
    
    public Set<NivelTaxonomia> TipoJogo.getNiveisTaxonomia() {
        return this.niveisTaxonomia;
    }
    
    public void TipoJogo.setNiveisTaxonomia(Set<NivelTaxonomia> niveisTaxonomia) {
        this.niveisTaxonomia = niveisTaxonomia;
    }
    
    public Set<Jogo> TipoJogo.getJogos() {
        return this.jogos;
    }
    
    public void TipoJogo.setJogos(Set<Jogo> jogos) {
        this.jogos = jogos;
    }
    
    public Set<TipoQuestao> TipoJogo.getQuestoes() {
        return this.questoes;
    }
    
    public void TipoJogo.setQuestoes(Set<TipoQuestao> questoes) {
        this.questoes = questoes;
    }
    
}
