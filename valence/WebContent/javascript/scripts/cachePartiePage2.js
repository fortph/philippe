function cache(){$("#decalage").hide();var val=$("input:radio[name='acceptation']:checked").val();var refus=$("input:radio[name='refus']:checked").val();if(val=="non"){$("#refus").show();$("#decalage").show();$("#dateecheance").css("color","white");}else{$("#refus").hide();$("#datefin").val("");$("#dateecheance").css("color","black");};}