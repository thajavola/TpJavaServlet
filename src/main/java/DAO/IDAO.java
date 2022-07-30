/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/
package DAO;

import java.util.List;

/**
 *
 * @author Admin Inclusiv 2
 * @param <E>
 */
public interface IDAO<E> {
    public void save(E e);
    public void update(E e,String modif);
    public List<E> getAll();
    public void delete(String e);
    public List<E> getAll(String sort);
   
}
