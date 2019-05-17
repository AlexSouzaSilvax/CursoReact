/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Carro;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import util.Conexao;

/**
 *
 * @author alex
 */
public class CarroDAO {

    public List<Carro> lista(String clausula) {

        try {

            Connection conexao = Conexao.getConexao();
            List<Carro> listaCarros = new ArrayList<>();
            PreparedStatement ps = conexao.prepareStatement("select * from carro " + clausula);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Carro c = new Carro();

                c.setId(rs.getString("id"));
                c.setMarca(rs.getString("marca"));
                c.setModelo(rs.getString("modelo"));
                c.setCor(rs.getString("cor"));
                c.setAnoFab(rs.getString("anoFab"));

                listaCarros.add(c);
            }
            ps.execute();
            ps.close();
            Conexao.fecharConexao();

            return listaCarros;
        } catch (SQLException ex) {
            System.out.println("Erro ao listar DAO " + ex.getMessage());
            return null;
        }
    }
    /*
     public Vendas inserir(Vendas v) {

     try {
     Connection conexao = Conexao.getConexao();
     PreparedStatement ps;

     ps = conexao.prepareStatement("INSERT INTO `vendas` (`idUsuario`,`nomeProduto`,`qtd`,`dtVenda`) VALUES (?,?,?,?)");

     ps.setString(1, v.getIdUsuario());
     ps.setString(2, v.getNomeProduto());
     ps.setString(3, v.getQtd());
     ps.setDate(4, v.getDtVenda());

     ps.execute();
     Conexao.fecharConexao();

     System.out.println("Salvo com sucesso. ID: " + v.getId());
     } catch (SQLException ex) {
     System.out.println("Erro ao salvar DAO " + ex.getMessage());
     }
     return v;
     }*/
}
