function valider(){var vcourriel=document.getElementById("mail").value;var naiss=document.getElementById("naissance").value;var nom=document.getElementById("nom").value;var prenom=document.getElementById("prenom").value;if(nom==""){document.form1.nom.focus();attentionComplet("Le nom doit &ecirc;tre renseign&eacute;  !!!!");return false;}if(prenom==""){document.form1.prenom.focus();attentionComplet("Le pr&eacute;nom doit &ecirc;tre renseign&eacute;  !!!!");return false;}if(naiss==""){document.form1.naissance.focus();attentionComplet(" La date de naissance doit &ecirc;tre renseign&eacute;e  !!!!");return false;}var expr=new RegExp("^[a-zA-Z0-9._-]+@[a-z0-9.-]{2,}[.][a-z]{2,4}$");if(vcourriel!=""&!expr.test(vcourriel)){document.form1.mail.focus();attentionComplet("Le courriel doit avoir un format correct : xxxxx@xxxxx.xx  !!!!");return false;}document.form1.submit();return true;}function validerformulaire(){if(document.layers){document.captureEvents(Event.KEYDOWN);}document.onkeydown=function(evt){var keyCode=evt?(evt.which?evt.which:evt.keyCode):event.keyCode;if(keyCode==13){valider();}};}