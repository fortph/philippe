<%@include file="pages/templates/entete.jsp"%>
<%@include file="pages/templates/menugeneral.html"%>
<script>
	document.title = "accueil";
</script>
<!--  on positionne les 2 imports sur la meme ligne-->
<div style="display: inline">
	<%@include file="pages/templates/menu.jsp"%>
	<%@include file="pages/templates/caroussel.html"%>
</div>

<!--  pr�sentation-->
<body onload="attention('Ce site est mont� sur un serveur Tomcat, lui m�me install� sur un Raspberry PI 2');" >
<div class="texte">
<p><span class="fa fa-spinner fa-spin fa-lg"></span> Pour tout renseignement compl�mentaire, vous pouvez me joindre par courriel en cliquant sur cet ic�ne <a href="mailto:philippe_informatique@orange.fr"><span class="glyphicon glyphicon-envelope"></span> </a>, ou par t�l�phone au 05.63.29.13.85</p>

</div>
</body>
<%@include file="pages/templates/pied.jsp"%>