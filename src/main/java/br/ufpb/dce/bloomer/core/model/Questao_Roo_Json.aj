// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.ufpb.dce.bloomer.core.model;

import br.ufpb.dce.bloomer.core.model.Questao;
import flexjson.JSONDeserializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Questao_Roo_Json {
    
    public static Collection<Questao> Questao.fromJsonArrayToQuestaos(String json) {
        return new JSONDeserializer<List<Questao>>().use(null, ArrayList.class).use("values", Questao.class).deserialize(json);
    }
    
}
