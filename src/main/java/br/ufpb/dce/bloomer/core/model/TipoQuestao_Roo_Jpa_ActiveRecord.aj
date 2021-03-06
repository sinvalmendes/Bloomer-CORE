// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.ufpb.dce.bloomer.core.model;

import br.ufpb.dce.bloomer.core.model.TipoQuestao;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect TipoQuestao_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager TipoQuestao.entityManager;
    
    public static final EntityManager TipoQuestao.entityManager() {
        EntityManager em = new TipoQuestao().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TipoQuestao.countTipoQuestaos() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TipoQuestao o", Long.class).getSingleResult();
    }
    
    public static List<TipoQuestao> TipoQuestao.findAllTipoQuestaos() {
        return entityManager().createQuery("SELECT o FROM TipoQuestao o", TipoQuestao.class).getResultList();
    }
    
    public static TipoQuestao TipoQuestao.findTipoQuestao(Long id) {
        if (id == null) return null;
        return entityManager().find(TipoQuestao.class, id);
    }
    
    public static List<TipoQuestao> TipoQuestao.findTipoQuestaoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TipoQuestao o", TipoQuestao.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void TipoQuestao.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TipoQuestao.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TipoQuestao attached = TipoQuestao.findTipoQuestao(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TipoQuestao.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TipoQuestao.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TipoQuestao TipoQuestao.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TipoQuestao merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
