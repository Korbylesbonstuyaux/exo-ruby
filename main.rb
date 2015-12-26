# EXERCICES OF RUBY

#Fct Surface of a triangle
def surface(base, height)
  if ((base.is_a? Float)  && (base.is_a? Float))
    if ((base >= 0) && (base >= 0))
      puts "La surface est de : #{(base * height) / 2}."
    else puts "Un ou des paramètres envoyés ne sont pas positifs."
    end
  else puts "Un ou des paramètres envoyés ne sont pas des floats."
  end
end

#Fct Price TTC
def priceTTC(price_ht_unit, tva_rate, quantity)
  if ((price_ht_unit.is_a? Float)  && (tva_rate.is_a? Float) && (quantity.is_a? Float))
    if ((price_ht_unit >= 0)  && (tva_rate >= 0) && (quantity >= 0))
      puts "Prix total en TTC :  #{(price_ht_unit + (price_ht_unit * tva_rate / 100)) * quantity} €."
    else puts "Un ou des paramètres envoyés ne sont pas positifs."
    end
  else puts "Un ou des paramètres envoyés ne sont pas des floats."
  end
end

#Fct Average with weighting
def average(note_array, weighting_array)
  if(note_array.length > 0 && note_array.length == weighting_array.length)
    note_som = 0
    weig_som = 0;

    for index in 0...note_array.length
      note_som += note_array[index] * weighting_array[index]
      weig_som += weighting_array[index]
    end

    per_cent = (note_som / weig_som) * 100 / 20
    puts "La moyenne est de #{per_cent} %."
  else puts "Le nombre de notes n'est pas égal au nombre de pondération."
  end
end

#Fct Sum of digits of number with char function
def sumWithFctChar(string)
  sum = 0
  string.each_char do
    |chr|
    sum += chr.to_i
  end
  puts "La somme des chiffres de \"#{string}\" est égal à #{sum}"
end

#Fct maximum of 2 numbers
def max2nb(nb1, nb2)
  if((nb1.is_a? Float) && (nb2.is_a? Float))
    if(nb1 != nb2)
      if (nb1 > nb2)
        puts "Le maximum entre ces 2 nombres #{nb1} et #{nb2} est #{nb1}."
      else puts "Le maximum entre ces 2 nombres #{nb1} et #{nb2} est #{nb2}."
      end
    else puts "Le maximum entre ces 2 nombres #{nb1} et #{nb2} est #{nb2}."
    end
  else puts "Un ou des paramètres ne sont pas de type float."
  end
end

#Fct maximum of 3 numbers
def max3nb(nb1, nb2, nb3)
  if((nb1.is_a? Float) && (nb2.is_a? Float) && (nb3.is_a? Float))
    if(nb1 == nb2 && nb1 == nb3)
      puts "Le maximum entre ces 3 nombres #{nb1}, #{nb2} et #{nb3} est #{nb3}."
    else if (nb1 <= nb2)
           if(nb2 <= nb3)
             puts "Le maximum entre ces 3 nombres #{nb1}, #{nb2} et #{nb3} est #{nb3}."
           else puts "Le maximum entre ces 3 nombres #{nb1}, #{nb2} et #{nb3} est #{nb2}."
           end
         else if(nb1 <= nb3)
                puts "Le maximum entre ces 3 nombres #{nb1}, #{nb2} et #{nb3} est #{nb3}."
              else puts "Le maximum entre ces 3 nombres #{nb1}, #{nb2} et #{nb3} est #{nb1}."
              end
       end
    end
  else puts "Un ou des paramètres ne sont pas de type float."
  end
end

#Fct sign
def sign(nb)
  if(nb.is_a? Float)
    if(nb == 0)
      puts "Le nombre #{nb} est nul"
    else if(nb < 0)
           puts "Le nombre #{nb} est négatif."
         else puts "Le nombre #{nb} est positif."
         end
    end
  else puts "Un ou des paramètres ne sont pas de type float."
  end
end

#Fct include
def isInclude(nb1, nb2, nb3, borned)
  if((nb1.is_a? Float) && (nb2.is_a? Float) && (nb3.is_a? Float))
    if(!borned)
      if( ((nb1 > nb2) && (nb1 < nb3)) || ((nb1 < nb2) && (nb1 > nb3)) )
        puts "Le nombre #{nb1} est bien compris #{nb2} et #{nb3}."
      else puts "Le nombre #{nb1} N'est PAS compris #{nb2} et #{nb3}."
      end
    else if( ((nb1 >= nb2) && (nb1 <= nb3)) || ((nb1 <= nb2) && (nb1 >= nb3)))
           puts "Le nombre #{nb1} est bien compris #{nb2} et #{nb3} (bornes comprises)."
         else puts "Le nombre #{nb1} N'est PAS compris #{nb2} et #{nb3} (bornes comprises)."
         end
    end
  else puts "Un ou des paramètres ne sont pas de type float."
  end
end

#Fct nomber of days by month
def daysByMonth(num)
  if(num.is_a? Integer)
    case num
    when 2
      puts "Ce mois comporte 28 jours."
    when 4, 6, 9, 11
      puts "Ce mois comporte 30 jours."
    when 1, 3, 5, 7, 8, 10, 12
      puts "Ce mois comporte 31 jours."
    else puts "Ce mois n'existe pas. Le chiffre doit être entre 1 et 12."
    end
  else puts "Ce n'est pas un Integer."
  end
end

#Fct is a bissextille year
def bissextille(year)
  if(year.is_a? Integer)
    if( (year % 400 == 0) || ((year % 100 != 0) && (year % 4 == 0)) )
      puts "L'Année #{year} bissextile."
    else puts "L'Annnée #{year} est NON bissextile."
    end
  else "L'Année n'est pas un entier."
  end
end

#Fct is a valid date : day, month and year (4int)
def isValidDate(day, month, year)
  if((day.is_a? Integer) && (month.is_a? Integer) && (year.is_a? Integer))
    max_day = 31
    if((month >= 1) && (month <= 12))
      case month
      when 2
        max_day = 28
      when 4, 6, 9, 11
        max_day = 30
      end

      if((day >= 1) && (day <= max_day))
        puts "La date est valide."
      else puts "Le jour de la date n'est pas correct avec le mois."
      end

    else puts "Le mois de la date n'est pas correct."
    end
  else puts "La date n'est pas correcte."
  end
end

#Fct correct place on alternative parking
def correctAlternativeParking(day, num)
  if((day.is_a? Integer) && (num.is_a? Integer) && (day >= 1 && day <= 31))
    if((day >= 1) && (day <=15))
      puts num % 2 == 1 ?  "Vous êtes bien garés" : "Vous N'êtes PAS bien garé."
    else puts num % 2 == 0 ? "Vous êtes bien garés" : "Vous N'êtes PAS bien garé."
    end
  else puts "Le jour et/ou le numéro ne sont pas un entier. Le jour doit être compris entre 1 et 31."
  end
end

puts "Liste des programmes à tester :"
puts "1: Calcule la surface d'un triangle."
puts "2: Prix TTC en fonction du prix HT, la TVA en % et la quantité souhaitée."
puts "3: Permutation de valeurs de 2 variables SANS UTILISER DE FONCTION."
puts "4: Note moyenne en pourcentage avec en paramètres 3 notes sur 20 et des pondération pour chaque note."
puts "5: Somme des chiffres en utilisant les fonctions sur le type String."
puts "6: Le maximum de 2 nombres donnés."
puts "7: Le maximum de 3 nombres donnés."
puts "8: Indique le signe d'un nombre."
puts "9: Indique si le premier nombre est compris entre les deux autres."
puts "10: Nombre de jours dans un mois."
puts "11: Indique si une année est bissextile ou pas."
puts "12: Indique si une date est valide."
puts "13: Le stationnement alternatif - Indique si vous êtes bien stationné
(du 1 au 15 du mois, on se gare du côté des maisons ayant un numéro impair, et le reste du mois, du côté pair)"
puts "Entrez s'il vous plaît le numéro associé au programme souhaité."
choice = gets.chomp.to_i
puts "========================================================================="

case choice
when 1
  puts "Programme choisi : Calcule la surface d'un triangle."
  print "Veuillez entrer une valeur pour la base : "
  base = gets.chomp.to_f
  print "Veuillez entrer une valeur pour la hauteur : "
  height = gets.chomp.to_f
  surface(base, height)

when 2
  puts "Programme choisi : Prix TTC en fonction du prix HT, la TVA et la quantité souhaitée."
  print "Veuillez entrer une valeur pour le prix TTC : "
  price_ht_unit = gets.chomp.to_f
  print "Veuillez entrer une valeur pour la TVA : "
  tva_rate = gets.chomp.to_f
  print "Veuillez entrer un quantité : "
  quantity = gets.chomp.to_f
  priceTTC(price_ht_unit, tva_rate, quantity)

when 3
  puts "Programme choisi : Permutation de valeurs de 2 variables SANS UTILISER DE FONCTION."
  print "Veuillez entrer une valeur pour la variable 1 :"
  var1 = gets.chomp
  print "Veuillez entrer une valeur pour la varaible 2 :"
  var2 = gets.chomp
  puts "AVANT la permutation : la variable 1 = #{var1} && la variable 2 = #{var2}."
  var3 = var1
  var1 = var2
  var2 = var3
  puts "APRES la permutation : la variable 1 = #{var1} && la variable 2 = #{var2}."

when 4
  puts "Programme choisi : Note moyenne en pourcentage."
  puts "Veuillez entrer 3 notes sur 20."
  notes = Array.new
  nb = 0
  loop do
    print "Valeur de la note #{nb+1} : "
    val = gets.chomp.to_f
    if (val >= 0 && val <= 20)
      notes.push(val)
      nb += 1
    end
    break if nb >= 3
  end
  puts "Veuillez entrer les pondérations associées."
  weights = Array.new
  nb = 0
  loop do
    print "Valeur de la pondération pour la note #{nb+1} : "
    val = gets.chomp.to_f
    if (val >= 0)
      weights.push(val)
      nb += 1
    end
    break if nb >= 3
  end
  average(notes, weights)

when 5
  puts "Programme choisi : Somme des chiffres."
  puts "Veuillez entrer des chiffres (les autres caractères seront considérés comme des 0)."
  string = gets.chomp.gsub(/[^\d]/, '')
  sumWithFctChar(string)

when 6
  puts "Programme choisi : Le maximum de 2 nombres donnés."
  nombres = Array.new
  nb = 0
  loop do
    print "Choississez le nombre #{nb+1} : "
    val = gets.chomp.to_f
    nombres.push(val)
    nb += 1
    break if nb >= 2
  end
  max2nb(nombres[0], nombres[1])

when 7
  puts "Programme choisi : Le maximum de 3 nombres donnés."
  nombres = Array.new
  nb = 0
  loop do
    print "Choississez le nombre #{nb+1} : "
    val = gets.chomp.to_f
    nombres.push(val)
    nb += 1
    break if nb >= 3
  end
  max3nb(nombres[0], nombres[1], nombres[2])

when 8
  puts "Programme choisi : Indique le signe d'un nombre."
  puts "Veuillez entrer un nombre."
  nombre = gets.chomp.to_f
  sign(nombre)

when 9
  puts "Programme choisi : Indique si le premier nombre est compris entre les deux autres."
  nombres = Array.new
  nb = 0
  loop do
    print "Choississez le nombre #{nb+1} : "
    val = gets.chomp.to_f
    nombres.push(val)
    nb += 1
    break if nb >= 3
  end
  borned = false
  puts "Activer les bornes : (Tapez \"oui\" sinon rien)"
  resp = gets.chomp
  if (resp === "oui")
    borned = true
  end
  puts borned
  isInclude(nombres[0], nombres[1], nombres[2], borned)

when 10
  puts "Programme choisi : Nombre de jours dans un mois."
  puts "Le chiffre doit être compris entre 1 et 12 (1 pour Janvier et 12 pour Décembre)."
  month = 0
  loop do
    print "Saississez votre mois : "
    month = gets.chomp.to_i
    if (month < 1 || month > 12)
      puts "Ce nombre est invalide."
    end
    break if (month >= 1 && month <= 12)
  end
  daysByMonth(month)

when 11
  puts "Programme choisi : Indique si une année est bissextile ou pas."
  print "Veuillez entrer une année : "
  year = gets.chomp.to_i
  bissextille(year)

when 12
  puts "Programme choisi : Indique si une date est valide."
  puts "Le jour doit être compris entre 1 et 31."
  day = 0
  loop do
    print "Saississez votre jour : "
    day = gets.chomp.to_i
    if (day < 1 || day > 31)
      puts "Ce nombre est invalide."
    end
    break if (day >= 1 && day <= 31)
  end
  puts "Le mois doit être compris entre 1 et 12."
  month = 0
  loop do
    print "Saississez votre mois : "
    month = gets.chomp.to_i
    if (month < 1 || month > 12)
      puts "Ce nombre est invalide."
    end
    break if (month >= 1 && month <= 12)
  end
  print "Saississez votre année : "
  year = gets.chomp.to_i
  isValidDate(day, month, year)

when 13
  puts "Programme choisi : Le stationnement alternatif - Indique si vous êtes bien stationné."
  puts "Le jour doit être compris entre 1 et 31."
  day = 0
  loop do
    print "Saississez votre jour : "
    day = gets.chomp.to_i
    if (day < 1 || day > 31)
      puts "Ce nombre est invalide."
    end
    break if (day >= 1 && day <= 31)
  end
  num = 0
  loop do
    print "Saississez votre numéro de rue : "
    num = gets.chomp.to_i
    if (num <= 0 )
      puts "Ce nombre est invalide."
    end
    break if (num > 0)
  end
  correctAlternativeParking(day, num)

else puts "Ce programme n'existe pas dans la liste."

end


#Fct Swap
def swap(a, b)
  c = a
  a = b
  b = c
end

#Fct Sum of digits of number
def sum(nb)
  nb = nb.gsub(/[^\d]/, '').to_i(10)
  if(nb.is_a? Integer)
      som = 0
      while nb != 0
        som += nb % 10
        nb = nb / 10
      end
      puts "Somme des chiffres du nombre : #{som}"
  end
end

# ==== partie "Les boucles avec Ruby"

#Fct displayNfirsts
def displayNfirsts(n)
  if ((n.is_a? Integer) && n > 0)
    i = 0
    puts "N premiers entiers strictement positifs :"
    loop do
      i += 1
      puts "#{i}"
      break if i >= n
    end

    puts "N premiers entiers strictement positifs décroissant :"
    loop do
      puts "#{i}"
      i -= 1
      break if i <= 0
    end

    puts "N premiers carrés parfaits :"
    loop do
      i += 1
      puts "#{i*i}"
      break if i >= n
    end

    puts "N premiers entiers strictement positifs impairs :"
    j = 0
    while (i > 0)
      j += 1
      if (j % 2 == 1)
        i -= 1
        puts "#{j}"
      end
    end

    puts "Premiers entiers strictement positifs impairs (inf. ou égaux à N) :"
    j = 1
    while (j <= n)
      if (j % 2 == 1)
        puts "#{j}"
      end
      j += 1
    end

  end
end

#Fct max of numbers
def maxNumbers(array)
  max = 0
  array.each do
    |n|
    max = n if (n > max)
  end
  puts "Le max est : #{max}"
end

#Fct multiple of 3
def multipleOf3(array)
  array.each do
    |n|
    puts "#{n} est un multiple de 3" if (n % 3 == 0)
  end
end

#Fct fait k=les suites
def suites(limit)
  puts "1/ Le pas croissant"
  som = 0;
  for i in 1..limit
    if(i == 1)
      som += 1
    else som += (i - 1)
    end
    print "#{som} "
  end

  puts ""
  puts "2/ La boiteuse"

  som = 0;
  for i in 1..limit
    if(i == 1)
      som += 1
    else if (i % 2 == 0)
          som += 1
        else som += 2
        end
    end
    print "#{som} "
  end

  puts ""
  puts "3/ Fibonacci"

  tmp = 0;
  first = 0;
  second = 1;

  if (limit < 1)
    print "#{first} "
  end

  if (limit < 2)
    print "#{first} #{second} "
  end

  if (limit >= 2)
    print "#{first} #{second} "
    for i in 2..limit
      tmp = first + second;
      first = second;
      second = tmp;
      print "#{tmp} "
    end
  end

end

#Fct factorielle
def factorielle(n)
  if ((n.is_a? Integer) && (n >= 0))
    total = 1;
    for i in 2..n
           total *=  i
    end
    puts "#{n}! = #{total}"
  else "N n'est pas entier ou n n'est pas supérieur ou égal 0"
  end
end

def gameFourchette()
  n = rand(1..100)
  essai = 0
  puts "Jeu de la fourchette : trouvez le nombre quelconque compris entre 1 et 100 inclus, tiré au sort par l’ordinateur !"
  loop do
    puts "Saississez votre nombre, s'il vous plaît :"
    val = gets.chomp.to_i
    essai += 1

    if (val < n)
      puts "Le nombre donné trop petit"
    end
    if (val > n)
      puts "Le nombre donné trop grand"
    end
    break if ((val == n) || (essai > 8))
   end


   if(essai <= 8)
     puts "C'est gagné ! Le nombre était bien #{n} en #{essai} essais"
   else puts "Dommage vous avez perdu !"
   end
end

# displayNfirsts(4)

# array = [2, 1, 4, 8, 7, 15, 12, 17, 9, 6]
# maxNumbers(array)

# array = [2, 1, 4, 8, 7, 15, 12, 17, 9, 6]
# multipleOf3(array)

# suites(8)

# factorielle(5)

# puts "Saississez votre nombre, s'il vous plaît :"
# val = gets.chomp
# sum(val)

# gameFourchette()


# ==== partie "Les structures de données"

#Fct summe of integers of an array
def sumArray(array)
  sum = 0
  array.each do
    |n|
    sum += n.to_i
  end
  puts "Somme : #{sum}"
end

#Fct maxmium and minium on an array
def maxAndMinArray(array)
  max = 0;
  min = 0;
  array.each do
    |n|
    if n > max
      max = n
    end

    if ((n < min) || (min == 0))
      min = n
    end
  end
  puts "MAX : #{max} et MIN : #{min}"
end

#Fct numbers in an array
def arrayLength(array)
  puts "Nombre d'éléments : #{array.length}"
end

#Fct max ecart on array
def maxGapArray(array)
  before_last = 0
  index = 0
  gap = 0

  array.each do
    |n|

    if (index != 0)
      if (gap < (before_last - n).abs)
        gap = (before_last - n).abs
      end
    end

    before_last = n
    index += 1
  end

  puts "L'écart le plus grand : #{gap}"
end

#Fct is an ordonned array
def isOrdonnedArray(array)
  i = 0
  tmp = 0
  ordonned = true

  while ((i < array.length) && ordonned)
    if (i != 0)
      if (tmp < array[i])
        tmp = array[i]
      else ordonned = false
      end
    else tmp = array[i]
    end
    i += 1
  end

  if (ordonned)
    puts "Le tableau est bien ordonné"
  else puts "Le tableau N'est PAS bien ordonné"
  end
end

#Fct reverse an array
def reverseArray(array)
  tmp_array = Array.new(array.length)
  index = array.length - 1

  for i in 0...array.length
    tmp_array[index] = array[i]
    index -= 1
    # puts "#{i} = #{array[i]}"
  end

  array = tmp_array
  print array
end

#Fct occurence of digits
def occurence(nb)
  nb = nb.to_i
  array = Array.new()

  if(nb.is_a? Integer)
      while nb != 0
        if (array[nb % 10].nil?)
          array[nb % 10] = 1
        else array[nb % 10] += 1
        end
        nb = nb / 10
      end
  end

  # display
  for i in 0...26
    if (!array[i].nil?)
      puts "Le chiffre #{i} apparait #{array[i]} fois"
    end
  end
end

# array = [2, 1, 4, 8, 7]
# sumArray(array)

# array = [2, 1, 4, 8, -7, 15, -12, 17, 9, 6]
# maxAndMinArray(array)

# array = [1, 2, 3, 4, 5, 6]
# arrayLength(array)

# array = [1, 2, -1, 4, 6, 6]
# maxGapArray(array)

# array = [-1, 1, 8, 6, 7]
# isOrdonnedArray(array)

# array = [1, 7, 3, 8, 5]
# reverseArray(array)

# occurence(55486854352)


# ==== partie "Blocs et tri"

#Fct the maximum of 2 numbers
def max2nbV2(nb1, nb2)
  if(nb1 != nb2)
    if (nb1 > nb2)
      return nb1
    else return nb2
    end
  else return nb2
  end
end

#Fct the maximum of 2 numbers
def max4nb(nb1, nb2, nb3, nb4)
  return max2nbV2(max2nbV2(nb1, nb2), max2nbV2(nb3, nb4))
end

#Fct Cesar
def cesar(string, k)
  string.each_char do
    |chr|
    if((chr.ord != 160) && (chr.ord != 32))
      print "#{((chr.ord + k - 65) % 26 + 65).chr}"
    else print " "
    end
  end
  puts ""
end
# puts "Echange de variables"
# puts "Saississez votre 1er nombre (var1), s'il vous plaît :"
# var1 = gets.chomp.to_i(10)
# puts "Saississez votre 2eme nombre (var2), s'il vous plaît :"
# var2 = gets.chomp.to_i(10)
# swap(var1, var2)
# puts "Nouvelles valeurs des variables après l'échange dans une fonction swap :"
# puts "Var1 = #{var1} et var2 = #{var2}"

# puts "Maximum entre 2 nombres"
# puts "Saississez votre 1er nombre (var1), s'il vous plaît :"
# var1 = gets.chomp.to_i(10)
# puts "Saississez votre 2eme nombre (var2), s'il vous plaît :"
# var2 = gets.chomp.to_i(10)
# puts "Le maximum des 2 nombres est le #{max2nbV2(var1, var2)}"

# puts "Maximum entre 4 nombres"
# puts "Saississez votre 1er nombre (var1), s'il vous plaît :"
# var1 = gets.chomp.to_i(10)
# puts "Saississez votre 2eme nombre (var2), s'il vous plaît :"
# var2 = gets.chomp.to_i(10)
# puts "Saississez votre 1er nombre (var3), s'il vous plaît :"
# var3 = gets.chomp.to_i(10)
# puts "Saississez votre 2eme nombre (var4), s'il vous plaît :"
# var4 = gets.chomp.to_i(10)
# puts "Le maximum des 4 nombres est le #{max4nb(var1, var2, var3, var4)}"

# cesar("BONJOUR LE MONDE",2)
