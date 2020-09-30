<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="ui" tagdir="/WEB-INF/tags" %>

<ui:templete>
    <jsp:attribute name="head_area"/>
    <jsp:attribute name="body_area">
        <section class="dashboard-counts no-padding-bottom center">
            <div class="container-fluid">
                <div class="row bg-white has-shadow">
                	<div class="col-xl-12" style="text-align:center">
	                    <c:choose>
	                        <c:when test='${empty(user)}'>
	                        <p style="font-size: 18px; color: black">Bem-vindo ao SK Cloud< / p></p>
				<p style="font-size: 15px; color: black">Este site não tem nenhum serviço de registro ou limites de usuário.</p> 
				<p style="font-size: 15px; color: black">Uma vez autenticada a sua conta do Google Drive, pode enviar QUALQUER arquivo de URL para a sua conta do Google Drive..</p>
				<p style="font-size: 15px; color: black">Por favor! a ter em mente : este site só suporta links diretos.</p>
				<p style="font-size: 15px; color: black">Nós não salvamos nenhum dos seus dados e uma vez que o servidor e reinicializados os códigos auth são limpos da nossa base de dados também.</p><br>
				<link rel='stylesheet' href='https://d33wubrfki0l68.cloudfront.net/css/ba9da532d588c7d5b6cc3fbc52d26da7538064c8/style.css'/>
				<canvas></canvas>
				<script type='text/javascript' src='https://d33wubrfki0l68.cloudfront.net/js/0332cdafb1bac19d815d6030f67ca9bdb56fe27a/script.js'></script>
	                        </c:when>
                        	<c:otherwise>	                         
                        		<p style="font-size: 20px; color: green">Hi, <c:out value="${user.name}" default="Guest" />. </p>   
	                            <p style="font-size: 15px; color: green; word-wrap:break-word">Parabéns! Você já esta autenticado com sucesso e usando a sua conta do Google: <c:out value="${user.email}"/>. </p>
                                 <button id="auth-btn" class="btn btn-link btn-responsive" style="font-size: larger;" onclick="location.href = '${pageContext.request.contextPath}/new_upload'">
                                     Click aqui para fazer Upload dos Arquivos para o seu Drive.
                                 </button><br>
					<iframe src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-5435553179213419&output=html&h=250&slotname=1921571160&w=300&fwr_io=true&fwrn=4&fwrnh=100&format=300x250&url=https%3A%2F%2Fwww.tricksbystg.org" height="310" width="100%" frameborder="0"></iframe>
	                        </c:otherwise>
	                    </c:choose>
                    </div>
                </div>
            </div>
        </section>
    </jsp:attribute>
</ui:templete>
