<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recherche par critere</title>
<link rel="stylesheet" href="/valence/css/formation/affichagestat.css">

<script type="text/javascript" src="/valence/dwr/engine.js"></script>
<script type="text/javascript" src="/valence/dwr/util.js"></script>
<script type="text/javascript"
	src="/valence/dwr/interface/NiveauFormation.js"></script>
<script type="text/javascript"
	src="/valence/dwr/interface/ListeFormationsDAO.js"></script>
	
	
	
	<script type="text/javascript"
			src="/valence/javascript/scripts/attention.js"></script>
<script type="text/javascript">
	function valider(formulaire) {

		//liste des champs qui doivent etre renseign�s ou dont le 
		//contenu est a verifier
		
		var form = document.getElementById("nomformation").value;
		
		if (form == "Toutes") {
			document.form1.nomformation.focus();
			// Afficher un message d'erreur
			attentionComplet("Une formation doit �tre s�lectionn�e !!!!");
			return false;
		}
		formulaire.submit();
		return true;
	}
</script>
</head>
<body>


	<div id="body">
	<p><%@ include file='/menus/menugeneral/menu.html' %></p><br>
		<div id="creation">FILTRE PAR FORMATION PYRAMIDE</div>
		
		<h3>S�lection des crit�res � int�grer � votre recherche</h3>
		<hr>
		<br />
		<form method="post" name="form1" action="/valence/controleur">
			<input type="hidden" name="action" value="statformationautre" />
			<table class="affichage">
				
				<tr>
											
					<td><label for="nomformation" class="nom" >NOM DE LA FORMATION</label></td>
					<td><select id="nomformation" name="nomformation"
						onfocus="recupererlisteToutesFormations();">
							<option selected="selected">Toutes</option>
					</select></td></tr>
					<tr>
									
					<td colspan="2">(liste de toutes les formations <strong>actives</strong>)
					</td>
					
				</tr>
				
			</table>
			<br>

			<table class="affichage">
			<caption class="rouge">AUTRES CRITERES</caption>
				
				<tr>

					<td><label for="sexe">Sexe :</label></td>
					<td><select name="sexe" class="largeur" id="sexe">
							<option value="vide" selected="selected"></option>
							<option value="FEMININ">FEMININ</option>
							<option value="MASCULIN">MASCULIN</option>
					</select></td>
				</tr>


				<tr>
					<td><label for="age">Age :</label></td>
					<td><select name="age" class="largeur" id="age">
							<option value="vide" selected="selected"></option>
							<option value="moins de 25 ans">jusqu'� 25 ans</option>
							<option value="de 26 � 49 ans">de 26 � 49 ans</option>
							<option value="50 ans et plus">50 ans et plus</option>
					</select></td>
				</tr>


				<tr>
				<tr>
					<td>FORMATION SCOLAIRE :</td>
					<td><select name="niveauformation" id="niveauformation"
						class="largeur" onfocus="recupererNiveau();">
							<option value="vide" selected="selected"></option>
					</select></td>
				</tr>
				<tr>


					<td><label for="pole">Pole Emploi :</label></td>
					<td><select name="pole" id="pole" class="largeur">
							<option value="vide" selected="selected"></option>
							<optgroup label="Inscrit">
								<option value="moins de 1an">moins de 1 an</option>
								<option value="plus de 1 an">plus de 1 an</option>
							</optgroup>
							<option value="Non inscrit">Non Inscrit</option>
					</select></td>
				</tr>
				<tr>
					<td><label for="origine">Origine G�ographique</label></td>
					<td><select name="origine" id="origine" class="largeur">
							<option value="vide" selected="selected"></option>
							<option value="Valence d'Agen">VALENCE D'AGEN</option>
							<option value="cc2r">CC2R</option>
							<option value="Tarn et Garonne">Tarn et Garonne</option>
							<option value="47">Lot et Garonne</option>
							<option value="Region">R�gion
								Midi-Pyr�n�es</option>
					</select></td>
				</tr>
				<tr>
					<td></td>
				</tr>



			</table>
			<br>
			<div id="fin">
				<input type="button" value="Rechercher" class="boutonvert" onclick="valider(form1);" /><input
					type="reset" class="boutonrouge"  value="Effacer" />
			</div>
		</form>

	</div>


	<script type="text/javascript"
		src="/valence/javascript/scripts/instructions.js"></script>
</body>
</html>