var filiere = document.querySelector("#filiere");
var blockEtu = document.querySelector(".block-etu");
var matiere = document.querySelector("#matiere");

matiere.addEventListener("change", displayInfo);
filiere.addEventListener("change", displayInfo);


function displayInfo() { 
    var url = "../../saisie/recupereEtudiant2.php?idu=" + filiere.value + "&idd=" + matiere.value;
    var xhr = new XMLHttpRequest(); 
    xhr.open('GET', url);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var reponse = JSON.parse(xhr.responseText);
            blockEtu.innerHTML = ""; 
            reponse.forEach(function(etudiant, index) { 
                var tr = document.createElement("tr");
                var donnee = '<td>' + (index+1) + '</td><td>' + etudiant.nom + '</td><td>' + etudiant.prenoms + '</td><td><input type="number" name="etudiantnote' + index + '" id="etudiant' + index + '" min="0" max="20" class="note" value="'+ etudiant.note +'" disabled> <input type="text" name="etudiant' + index + '" id="ima" style="display: none;" value="' + etudiant.numma + '"> </td>';
                tr.innerHTML = donnee;
                blockEtu.appendChild(tr);
            });
        }
    };
    xhr.send();
};

displayInfo();