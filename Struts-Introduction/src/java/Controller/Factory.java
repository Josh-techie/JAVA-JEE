/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import Model.FactForm;

/**
 *
 * @author youse
 */
public class Factory extends org.apache.struts.action.Action {

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        FactForm frm = (FactForm) form;

        int n = frm.getNumber();

        int fact = 1;

        for (int i = 1; i <= n; i++) {

            fact = fact * i;
        }
        
        frm.setResult(fact);

        return mapping.findForward("result");
    }
}
