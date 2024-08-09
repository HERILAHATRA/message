<script>
$(document).ready(function(){
    //charger les données de la table lors lu chargement de la page
    $.ajax({
        url:'get.php',
        type:'GET',
        success: function(reponse){
            //parcours le tableau du textes et les affichar lans la balise <p>
        
        var $affichage = $ (' .affichage');
        $.each(JSON.parse(reponse),function(index, text){
            var $p = $('<p>').addClass('message').text(text);
            $affichage.append($p);
        });
        
        }
    })
    //recuperation  le contenu du champ de texte à chaque clic sur le bouton envoyer
    $('button').click(function(){
        var texte = $('#text').val();
    //envoyer les donnees avec ajax
    $.ajax({
        url:'insert.php',
        type :'POST',
        data:{
            texte:texte
        },
        success: function(reponse){
            //ajouter le nouveau texte à la balise <p>
            var $p = $('<p>').addClass('message').text(texte);
            $('.affichage').appand($p);
            //vider le champ de texte
            $('#texte').val('');
        }
    });

    });
    
});
</script>