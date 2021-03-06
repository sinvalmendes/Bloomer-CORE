// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.ufpb.dce.bloomer.core.model;

import br.ufpb.dce.bloomer.core.model.Plafatorma;
import br.ufpb.dce.bloomer.core.model.TipoJogo;
import br.ufpb.dce.bloomer.core.model.TipoJogoDataOnDemand;
import br.ufpb.dce.bloomer.core.model.UsuarioDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect TipoJogoDataOnDemand_Roo_DataOnDemand {
    
    declare @type: TipoJogoDataOnDemand: @Component;
    
    private Random TipoJogoDataOnDemand.rnd = new SecureRandom();
    
    private List<TipoJogo> TipoJogoDataOnDemand.data;
    
    @Autowired
    UsuarioDataOnDemand TipoJogoDataOnDemand.usuarioDataOnDemand;
    
    public TipoJogo TipoJogoDataOnDemand.getNewTransientTipoJogo(int index) {
        TipoJogo obj = new TipoJogo();
        setDescricao(obj, index);
        setNome(obj, index);
        setPlataforma(obj, index);
        return obj;
    }
    
    public void TipoJogoDataOnDemand.setDescricao(TipoJogo obj, int index) {
        String descricao = "descricao_" + index;
        if (descricao.length() > 2000) {
            descricao = descricao.substring(0, 2000);
        }
        obj.setDescricao(descricao);
    }
    
    public void TipoJogoDataOnDemand.setNome(TipoJogo obj, int index) {
        String nome = "nome_" + index;
        if (nome.length() > 100) {
            nome = nome.substring(0, 100);
        }
        obj.setNome(nome);
    }
    
    public void TipoJogoDataOnDemand.setPlataforma(TipoJogo obj, int index) {
        Plafatorma plataforma = Plafatorma.class.getEnumConstants()[0];
        obj.setPlataforma(plataforma);
    }
    
    public TipoJogo TipoJogoDataOnDemand.getSpecificTipoJogo(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        TipoJogo obj = data.get(index);
        Long id = obj.getId();
        return TipoJogo.findTipoJogo(id);
    }
    
    public TipoJogo TipoJogoDataOnDemand.getRandomTipoJogo() {
        init();
        TipoJogo obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return TipoJogo.findTipoJogo(id);
    }
    
    public boolean TipoJogoDataOnDemand.modifyTipoJogo(TipoJogo obj) {
        return false;
    }
    
    public void TipoJogoDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = TipoJogo.findTipoJogoEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'TipoJogo' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<TipoJogo>();
        for (int i = 0; i < 10; i++) {
            TipoJogo obj = getNewTransientTipoJogo(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
