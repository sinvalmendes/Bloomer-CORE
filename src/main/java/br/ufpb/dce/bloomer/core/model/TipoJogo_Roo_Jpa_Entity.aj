// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.ufpb.dce.bloomer.core.model;

import br.ufpb.dce.bloomer.core.model.TipoJogo;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect TipoJogo_Roo_Jpa_Entity {
    
    declare @type: TipoJogo: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long TipoJogo.id;
    
    @Version
    @Column(name = "version")
    private Integer TipoJogo.version;
    
    public Long TipoJogo.getId() {
        return this.id;
    }
    
    public void TipoJogo.setId(Long id) {
        this.id = id;
    }
    
    public Integer TipoJogo.getVersion() {
        return this.version;
    }
    
    public void TipoJogo.setVersion(Integer version) {
        this.version = version;
    }
    
}
