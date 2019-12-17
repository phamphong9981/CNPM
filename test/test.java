
import dao.ProductDAOImpl;
import model.Product;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Pham Phong
 */
public class test {
    public static void main(String[] args) {
        new ProductDAOImpl().addProduct(new Product(1, "Nón len", "abc.jpg", 100000.0, "Omo", "abc"));
    }
}
