// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.ufpb.dce.bloomer.core.model;

import br.ufpb.dce.bloomer.core.model.TipoJogo;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TipoJogo_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager TipoJogo.entityManager;
    
    public static final EntityManager TipoJogo.entityManager() {
        EntityManager em = new TipoJogo().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TipoJogo.countTipoJogoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TipoJogo o", Long.class).getSingleResult();
    }
    
    public static List<TipoJogo> TipoJogo.findAllTipoJogoes() {
        return entityManager().createQuery("SELECT o FROM TipoJogo o", TipoJogo.class).getResultList();
    }
    
    public static TipoJogo TipoJogo.findTipoJogo(Long id) {
        if (id == null) return null;
        return entityManager().find(TipoJogo.class, id);
    }
    
    public static List<TipoJogo> TipoJogo.findTipoJogoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TipoJogo o", TipoJogo.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void TipoJogo.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TipoJogo.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TipoJogo attached = TipoJogo.findTipoJogo(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TipoJogo.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TipoJogo.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TipoJogo TipoJogo.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TipoJogo merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
