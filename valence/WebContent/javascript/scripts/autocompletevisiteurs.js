$(document).ready(function(){$("#nomarechercher").autocomplete({source:function(req,reponse){$.ajax({url:"/valence/jsp/accueil/listeauto.jsp",data:{term:req.term},cache:false,dataType:"json",success:function(data,type){reponse($.map(data,function(objet){return{label:objet.name,value:objet.id};}));}});},minLength:3,select:function(event,ui){window.location.href="/valence/controleur?action=recherchernomprenom&numero="+ui.item.value;return false;}});});