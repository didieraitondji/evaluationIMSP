var filiere = document.querySelector("#filiere");
var blockEtu = document.querySelector(".block-etu");

var stocknote = document.querySelector(".stocknote");
filiere.addEventListener("change", displayInfo);

var ima = document.querySelector('#ima');

function displayInfo() { 
    var url = "../../saisie/recupereEtudiant.php?id=" + filiere.value;
    var xhr = new XMLHttpRequest(); 
    xhr.open('GET', url);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) { 
            var reponse = JSON.parse(xhr.responseText);
            blockEtu.innerHTML = ""; 
            reponse.forEach(function(etudiant, index) { 
                var tr = document.createElement("tr");
                var donnee = '<td>' + (index+1) + '</td><td>' + etudiant.nom + '</td><td>' + etudiant.prenoms + '</td><td><input type="number" name="etudiantnote' + index + '" id="etudiant' + index + '" min="0" max="20" class="note"> <input type="text" name="etudiant' + index + '" id="ima" style="display: none;" value="' + etudiant.numma + '"> </td>';
                tr.innerHTML = donnee;
                blockEtu.appendChild(tr);
                ima.setAttribute("value", (index+1));
            });
            
        }
    };
    xhr.send();
}