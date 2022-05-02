<%-- 
    Document   : index
    Created on : 2 de mai. de 2022, 13:58:24
    Author     : Fatec
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="demo.Pessoa" %>

<%
    Pessoa Fred = new Pessoa("Fred");
    Pessoa rosangela = new Pessoa("rosangela");
    Pessoa pedro = new Pessoa("pedro");
    Pessoa debora = new Pessoa("debora");
    
    Pessoa dany = new Pessoa("dany");
    dany.setPai(Fred);
    dany.setMãe(rosangela);
    
    Pessoa Roberto = new Pessoa("Roberto");
    Roberto.setPai(pedro);
    Roberto.setMãe(debora);
    
    Pessoa eu = new Pessoa("Guilherme");
    eu.setPai(Roberto);
    eu.setMãe(dany);
    
    ArrayList<Pessoa> lista = new ArrayList<>();
    lista.add(Fred);lista.add(rosangela);
    lista.add(pedro);lista.add(debora);
    lista.add(dany);lista.add(Roberto);
    lista.add(eu);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aula 11 - POO</title>
    </head>
    <body>
        <h1 style="color: blue">POO</h1>
        <h2>Índice</h2>
        <hr>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Pai</th>
                <th>Avô Paterna</th>
                <th>Avó Paterno</th>
                <th>Mãe</th>
                <th>Avô Materna</th>
                <th>Avó Materno</th>                                
            </tr>
            <%for(Pessoa p: lista){%>
            <tr>
                <td><%= p.getNome()%></td>
                <td><%= (p.getPai()!=null)? p.getPai().getNome():"" %></td>
                <td><%= (p.getAvoPaterno()!=null)? p.getAvoPaterno().getNome():"" %></td>
                <td><%= (p.getAvópaterna()!=null)? p.getAvópaterna().getNome():"" %></td>
                <td><%= (p.getMãe()!=null)? p.getMãe().getNome():"" %></td>
                <td><%= (p.getAvoMaterno()!=null)? p.getAvoMaterno().getNome():"" %></td>
                <td><%= (p.getAvóMaterna()!=null)? p.getAvóMaterna().getNome():"" %></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
