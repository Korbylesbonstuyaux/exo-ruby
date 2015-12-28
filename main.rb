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

#Fct if a number is first or note
def isFirst(nb)
  first = true

  if((nb.is_a? Integer) && (nb >= 0))
    limit = Math.sqrt(nb)

    if (nb > 2)
      i = 2
      while ((i <= limit) && first)
        if (nb % i == 0)
          first = false
        end
        i += 1
      end
    else first = false
    end

  else first = false
  end

  return first
end

def displayNFirsts(nb)
  if((nb.is_a? Integer) && (nb > 0))
    array = Array.new
    n = 0
    puts "Voici les #{nb} premiers entiers: "
    while (array.length < nb)
      if isFirst(n)
        array.push(n)
      end
      n += 1
    end

    array.each do
      |x|
      print "#{x} "
    end
    puts "\n"
  else puts "Le paramètre n'est pas un entier positif."
  end
end

def displayNFirstsDESC(nb)
  if((nb.is_a? Integer) && (nb > 0))
    array = Array.new
    n = 0
    puts "Voici les #{nb} premiers entiers (en ordre décroissant): "
    while (array.length < nb)
      if isFirst(n)
        array.push(n)
      end
      n += 1
    end

    array.reverse!
    array.each do
      |x|
      print "#{x} "
    end
    puts "\n"
  else puts "Le paramètre n'est pas un entier positif."
  end
end

def displayNSquareFirsts(nb)
  if((nb.is_a? Integer) && (nb > 0))
    array = Array.new
    n = 0
    puts "Voici les #{nb} premiers entiers carrés parfaits: "
    while (array.length < nb)
      if isFirst(n)
        array.push(n)
      end
      n += 1
    end

    array.each do
      |x|
      print "#{x*x} "
    end
    puts "\n"
  else puts "Le paramètre n'est pas un entier positif."
  end
end

#Fct max of an array of numbers
def maxNumber(array)
  max = 0
  array.each do
    |n|
    max = n if (n > max)
  end
  puts "Le nombre ayant la plus grande valeur est #{max}."
end

#Fct multiple of 3
def multipleOf3(array)
  array.each do
    |n|
    puts "#{n} est un multiple de 3" if (n % 3 == 0)
  end
end

#Fct fait k=les suites
def suites(terme)
  if((terme.is_a? Integer) && (terme >= 0))

    puts "- Suite \"Le pas croissant\""
    sum = 1;

    for i in 0..terme
      sum += i
      print "#{sum} "
    end

    puts "\n"
    puts "- Suite \"La boiteuse\": "

    sum = 0;
    for i in 0..terme
      if((i % 2 == 0) && (i != 0))
        sum += 2
      else sum += 1
      end
      print "#{sum} "
    end

    puts "\n"

    puts "- Suite \"Fibonacci\":"

    tmp = 0;
    first = 0;
    second = 1;

    for i in 0..terme
      if (i > 1)
        tmp = first + second;
        first = second;
        second = tmp;
        print "#{second} "
      else  if(i == 0)
              print "#{first} "
            else print "#{second} "
            end
      end
    end

    puts "\n"

  else puts "Le terme n'est pas entier positif."
  end
end

#Fct factorial
def factorial(n)
  if ((n.is_a? Integer) && (n >= 0))
    total = 1;
    for i in 0..n
      if(i > 0)
        total *=  i
      end
    end
    puts "#{n}! = #{total}"
  else puts "N n'est pas entier ou n'est pas supérieur ou égal 0."
  end
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
      puts "Somme des chiffres du nombre est de #{som}."
  end
end

#Fct game of the fourchette
def fourchetteGame()
  n = rand(1..100)
  essai = 0
  puts "Trouvez le nombre quelconque compris entre 1 et 100 inclus, tiré au sort par l’ordinateur !"
  loop do
    puts "Saississez votre nombre, s'il vous plaît :"
    val = gets.chomp.to_i
    essai += 1

    if (val < n)
      puts "Le nombre donné est trop petit."
    end
    if (val > n)
      puts "Le nombre donné est trop grand."
    end
    break if ((val == n) || (essai > 8))
   end


   if(essai <= 8)
     puts "C'est gagné ! Le nombre était bien #{n} (trouvé en #{essai} essais)"
   else puts "Dommage vous avez perdu !"
   end
end

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
  puts "Le maximum est #{max} et le minimum est #{min}."
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

  puts "L'écart le plus grand : #{gap}."
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
    puts "Le tableau est bien ordonné."
  else puts "Le tableau N'est PAS bien ordonné."
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

  return tmp_array
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

#Fct Swap
def swap(a, b)
  c = a
  a = b
  b = c
end

#Fct the maximum of 2 numbers
def getMax2nb(nb1, nb2)
  if(nb1 != nb2)
    if (nb1 > nb2)
      return nb1
    else return nb2
    end
  else return nb2
  end
end

#Fct the maximum of 4 numbers with getmax2nb
def getMax4nb(nb1, nb2, nb3, nb4)
  return max2nbV2(max2nbV2(nb1, nb2), max2nbV2(nb3, nb4))
end

#Fct Cesar
def cesar(string, k)
  string.each_char do
    |chr|
    if((chr.ord >= 65) && (chr.ord <= 90))
      print "#{((chr.ord + k - 65) % 26 + 65).chr}"
    else print "#{chr}"
    end
  end
  puts ""
end

#Fct is a day
def isADay(day)
  if((day.is_a? Integer) && (day >= 1) && (day <= 31))
    return true
  else return false
  end
end

#Fct is a month
def isAMonth(month)
  if((month.is_a? Integer) && (month >= 1) && (month <= 12))
    return true
  else return false
  end
end

#Fct is a year
def isAYear(year)
  if(year.is_a? Integer)
    return true
  else return false
  end
end

#Fct is a correct date
def isADate(day, month, year)
  if(isADay(day) && isAMonth(month) && isAYear(year))
    max_day = 31
    case month
    when 2
      max_day = 28
    when 4, 6, 9, 11
      max_day = 30
    end

    if(day <= max_day)
      puts "Vrai"
    else puts "Faux"
    end
  else puts "Faux"
  end
end

#fct display a rectangle
def displayRect(length, width)
  #Line
  for i in 0...width
    #Col
    for j in 0...length
      #Draw 0 each coin
      if((i == 0 && j == 0) || (i == width - 1 && j == length - 1) || (i == 0 && j == length - 1) || (i == width - 1 && j == 0))
        print "O"
      else
            need_space = true
            #Draw | by see col
            if((j == 0) || (j == length - 1))
              print "|"
              need_space = false
            end
            #Draw - by see line
            if((i == 0) || (i == width - 1))
              print "-"
              need_space = false
            end

            if (need_space)
              print " "
            end
      end
    end
    puts "\n"
  end
end

# MAIN
loop do
  puts "=======================LISTE=DES=PROGRAMMES=============================="
  puts "1: Calcule la surface d'un triangle."
  puts "2: Prix TTC en fonction du prix HT, la TVA en % et la quantité souhaitée."
  puts "3: Permutation de valeurs de 2 variables SANS UTILISER DE FONCTION."
  puts "4: Note moyenne en pourcentage avec en paramètres 3 notes sur 20 et des pondération pour chaque note."
  puts "5: Somme des chiffres en utilisant les fonctions sur le type String."
  puts "6: Affiche le maximum de 2 nombres donnés."
  puts "7: Affiche le maximum de 3 nombres donnés."
  puts "8: Indique le signe d'un nombre."
  puts "9: Indique si le premier nombre est compris entre les deux autres."
  puts "10: Nombre de jours dans un mois."
  puts "11: Indique si une année est bissextile ou pas."
  puts "12: Indique si une date est valide."
  puts "13: Le stationnement alternatif - Indique si vous êtes bien stationné
  (du 1 au 15 du mois, on se gare du côté des maisons ayant un numéro impair, et le reste du mois, du côté pair)"
  puts "14: Lit un naturel N et affiche :
  - les N premiers entiers strictement positifs ;
  - les N premiers entiers strictement positifs en ordre décroissant ;
  - les N premiers carrés parfaits ;"
  puts "15: Affiche le plus grand nombre d'une série."
  puts "16: Affiche les multiples de 3 d'une série."
  puts "17: Affiche les N premiers termes de la suite:  \"Le Pas Croissant\", \"la Boiteuse\" et \"Fibonacci\"."
  puts "18: Factorielle d'un nombre N."
  puts "19: Somme des chiffres en utilisant les fonctions sur le type Integer."
  puts "20: Jeu de la fourchette."
  puts "21: Somme des entiers d'un tableau."
  puts "22: Affiche le nombre maximum ainsi que le minimum compris dans un tableau."
  puts "23: Affiche le nombre d'éléments contenues dans un tableau."
  puts "24: Affiche le plus grand écart entre deux entiers consécutifs dans un tableau."
  puts "25: Affiche vrai si un tableau d'entiers est ordonné (strictement) croissant sur les valeurs, faux sinon."
  puts "26: Permute les valeurs d'un tableau. Le premier élément avec le dernier, le deuxième élément avec l’avant-dernier et ainsi de suite."
  puts "27: Affiche pour chacun des chiffres le nombre de fois qu'il apparait dans un nombre."
  puts "28: Permutation de valeurs de 2 variables EN UTILISANT UNE FONCTION."
  puts "29: Retourne et affiche le maximum de 2 nombres donnés."
  puts "30: Retourne et affiche le maximum de 4 nombres donnés (en utilisant plusieurs fois la fonction utilisée au programme 29)."
  puts "31: Chiffre un message donné par l'utilisateur avec la technique de César, et affiche le message codé."
  puts "32: Indique si une date est valide (utilise plusieurs fonctions par rapport au programme 12)."
  puts "33: Affiche un rectangle en fonction de la longueur et de la largeur."
  puts "==========================FIN=DE=LA=LISTE================================"
  print ">>>> Entrez s'il vous plaît le numéro associé au programme souhaité (ou EXIT pour arrêter): "
  choice = gets.chomp
  break if choice == "EXIT"
  choice = choice.to_i

  case choice
  when 1
    puts "Programme choisi : Calcule la surface d'un triangle."
    print "Veuillez entrer une valeur pour la base: "
    base = gets.chomp.to_f
    print "Veuillez entrer une valeur pour la hauteur: "
    height = gets.chomp.to_f
    surface(base, height)

  when 2
    puts "Programme choisi : Prix TTC en fonction du prix HT, la TVA et la quantité souhaitée."
    print "Veuillez entrer une valeur pour le prix TTC: "
    price_ht_unit = gets.chomp.to_f
    print "Veuillez entrer une valeur pour la TVA: "
    tva_rate = gets.chomp.to_f
    print "Veuillez entrer un quantité: "
    quantity = gets.chomp.to_f
    priceTTC(price_ht_unit, tva_rate, quantity)

  when 3
    puts "Programme choisi : Permutation de valeurs de 2 variables SANS UTILISER DE FONCTION."
    print "Veuillez entrer une valeur pour la variable 1:"
    var1 = gets.chomp
    print "Veuillez entrer une valeur pour la varaible 2:"
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
      print "Valeur de la note #{nb+1}: "
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
      print "Valeur de la pondération pour la note #{nb+1}: "
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
    print "Veuillez entrer des chiffres (les autres caractères seront considérés comme des 0): "
    string = gets.chomp.gsub(/[^\d]/, '')
    sumWithFctChar(string)

  when 6
    puts "Programme choisi : Affiche le maximum de 2 nombres donnés."
    nombres = Array.new
    nb = 0
    loop do
      print "Choisissez le nombre #{nb+1}: "
      val = gets.chomp.to_f
      nombres.push(val)
      nb += 1
      break if nb >= 2
    end
    max2nb(nombres[0], nombres[1])

  when 7
    puts "Programme choisi : Affiche le maximum de 3 nombres donnés."
    nombres = Array.new
    nb = 0
    loop do
      print "Choisissez le nombre #{nb+1}: "
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
      print "Choisissez le nombre #{nb+1}: "
      val = gets.chomp.to_f
      nombres.push(val)
      nb += 1
      break if nb >= 3
    end
    borned = false
    puts "Activer les bornes (Tapez \"oui\" pour l'activer sinon tapez n'importe quoi): "
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
      print "Saisissez votre mois: "
      month = gets.chomp.to_i
      if (month < 1 || month > 12)
        puts "Ce nombre est invalide."
      end
      break if (month >= 1 && month <= 12)
    end
    daysByMonth(month)

  when 11
    puts "Programme choisi : Indique si une année est bissextile ou pas."
    print "Veuillez entrer une année: "
    year = gets.chomp.to_i
    bissextille(year)

  when 12
    puts "Programme choisi : Indique si une date est valide."
    puts "Le jour doit être compris entre 1 et 31."
    day = 0
    loop do
      print "Saisissez votre jour: "
      day = gets.chomp.to_i
      if (day < 1 || day > 31)
        puts "Ce nombre est invalide."
      end
      break if (day >= 1 && day <= 31)
    end
    puts "Le mois doit être compris entre 1 et 12."
    month = 0
    loop do
      print "Saisissez votre mois: "
      month = gets.chomp.to_i
      if (month < 1 || month > 12)
        puts "Ce nombre est invalide."
      end
      break if (month >= 1 && month <= 12)
    end
    print "Saisissez votre année: "
    year = gets.chomp.to_i
    isValidDate(day, month, year)

  when 13
    puts "Programme choisi : Le stationnement alternatif - Indique si vous êtes bien stationné."
    puts "Le jour doit être compris entre 1 et 31."
    day = 0
    loop do
      print "Saisissez votre jour: "
      day = gets.chomp.to_i
      if (day < 1 || day > 31)
        puts "Ce nombre est invalide."
      end
      break if (day >= 1 && day <= 31)
    end
    num = 0
    loop do
      print "Saisissez votre numéro de rue: "
      num = gets.chomp.to_i
      if (num <= 0 )
        puts "Ce nombre est invalide."
      end
      break if (num > 0)
    end
    correctAlternativeParking(day, num)

  when 14
    puts "Programme choisi : Lit un naturel N et affiche les N premiers entiers selon des critères."
    n = 0
    loop do
      print "Saisissez votre N (doit être supérieur à 0): "
      n = gets.chomp.to_i
      if (n <= 0)
        puts "Ce nombre est invalide."
      end
      break if (n > 0)
    end
    displayNFirsts(n)
    displayNFirstsDESC(n)
    displayNSquareFirsts(n)

  when 15
    puts "Programme choisi : Affiche le plus grand nombre d'une série."
    puts "Chaque nombre doit être compris entre 0 et 20. Entrez un nombre négatif pour arrêter la série"
    n = 0
    array = Array.new
    loop do
      print "Saisissez un nombre: "
      n = gets.chomp.to_i
      if ((n >= 0) && (n <= 20))
        array.push(n)
      else if (n > 20)
            puts "Ce nombre est invalide."
           end
      end
      break if (n < 0)
    end
    maxNumber(array)

  when 16
    puts "Programme choisi : Affiche les multiples de 3 d'une série."
    puts "Entrez 0 pour arrêter la série"
    n = 0
    array = Array.new
    loop do
      print "Saisissez un nombre: "
      n = gets.chomp.to_i
      if (n != 0)
        array.push(n)
      end
      break if (n == 0)
    end
    multipleOf3(array)

  when 17
    puts "Programme choisi : Affiche les N premiers termes de la suite:  \"Le Pas Croissant\", \"la Boiteuse\" et \"Fibonacci\"."
    n = 0
    loop do
      print "Saisissez un nombre: "
      n = gets.chomp.to_i
      if (n < 0)
        puts "Ce nombre est invalide."
      end
      break if (n >= 0)
    end
    suites(n)

  when 18
    puts "Programme choisi : Factorielle d'un nombre N."
    n = 0
    loop do
      print "Saisissez un nombre: "
      n = gets.chomp.to_i
      if (n < 0)
        puts "Ce nombre est invalide."
      end
      break if (n >= 0)
    end
    factorial(n)

  when 19
    puts "Programme choisi : Somme des chiffres en utilisant les fonctions sur le type Integer."
    print "Veuillez entrer des chiffres (les autres caractères seront considérés comme des 0): "
    n = gets.chomp
    sum(n)

  when 20
    puts "Programme choisi : Jeu de la fourchette."
    fourchetteGame()

  when 21
    puts "Programme choisi : Somme des entiers d'un tableau."
    puts "Vous devez entrer chaque valeur de la série. Et tapez 0 pour arrêter la série!"
    n = 0
    array = Array.new
    loop do
      print "Saisissez un nombre: "
      n = gets.chomp.to_i
      if (n != 0)
        array.push(n)
      end
      break if (n == 0)
    end
    sumArray(array)

  when 22
    puts "Programme choisi : Affiche le nombre maximum ainsi que le minimum compris dans un tableau."
    puts "Vous devez entrer chaque valeur de la série (2 nombres au minimum). Et tapez 0 pour arrêter la série!"
    n = 0
    min = 0
    array = Array.new
    loop do
      print "Saisissez un nombre: "
      n = gets.chomp.to_i
      if (n != 0)
        array.push(n)
        min += 1
      else if (min < 2)
            puts "Il vous faut un minimum de 2 valeurs pour stopper."
           end
      end
      break if ((n == 0) && (min >= 2))
    end
    maxAndMinArray(array)

  when 23
    puts "Programme choisi : Affiche le nombre d'éléments contenues dans un tableau."
    puts "Vous devez entrer chaque valeur du tableau. Et tapez 0 pour arrêter la série!"
    n = 0
    array = Array.new
    loop do
      print "Saisissez vos caractères: "
      n = gets.chomp
      if (n != "0")
        array.push(n)
      end
      break if (n == "0")
    end
    arrayLength(array)

  when 24
    puts "Programme choisi : Affiche le plus grand écart entre deux entiers consécutifs dans un tableau."
    puts "Vous devez entrer chaque valeur de la série (2 nombres au minimum). Et tapez 0 pour arrêter la série!"
    n = 0
    min = 0
    array = Array.new
    loop do
      print "Saisissez un nombre: "
      n = gets.chomp.to_i
      if (n != 0)
        array.push(n)
        min += 1
      else if (min < 2)
            puts "Il vous faut un minimum de 2 valeurs pour stopper."
           end
      end
      break if ((n == 0) && (min >= 2))
    end
    maxGapArray(array)

  when 25
    puts "Programme choisi : Affiche vrai si un tableau d'entiers est ordonné (strictement) croissant sur les valeurs, faux sinon."
    puts "Vous devez entrer chaque valeur de la série (2 nombres au minimum). Et tapez 0 pour arrêter la série!"
    n = 0
    min = 0
    array = Array.new
    loop do
      print "Saisissez un nombre: "
      n = gets.chomp.to_i
      if (n != 0)
        array.push(n)
        min += 1
      else if (min < 2)
            puts "Il vous faut un minimum de 2 valeurs pour stopper."
           end
      end
      break if ((n == 0) && (min >= 2))
    end
    isOrdonnedArray(array)

  when 26
    puts "Programme choisi : Permute les valeurs d'un tableau. Le premier élément avec le dernier, le deuxième élément avec l’avant-dernier et ainsi de suite."
    puts "Vous devez entrer chaque valeur du tableau. Et tapez 0 pour arrêter la série!"
    n = 0
    min = 0
    array = Array.new
    loop do
      print "Saisissez vos caractères: "
      n = gets.chomp
      if (n != "0")
        array.push(n)
        min += 1
      else if (min < 2)
            puts "Il vous faut un minimum de 2 valeurs pour stopper."
           end
      end
      break if ((n == "0") && (min >= 2))
    end
    print "Tableau avant l'inversion: "
    print "#{array} \n"
    array = reverseArray(array)
    print "Tableau après l'inversion: "
    print "#{array} \n"

  when 27
    puts "Programme choisi : Affiche pour chacun des chiffres le nombre de fois qu'il apparait dans un nombre."
    print "Veuillez entrer un nombre: "
    nb = gets.chomp.to_i
    occurence(nb)

  when 28
    puts "Programme choisi : Permutation de valeurs de 2 variables EN UTILISANT UNE FONCTION."
    print "Veuillez entrer une valeur pour la variable 1: "
    var1 = gets.chomp
    print "Veuillez entrer une valeur pour la varaible 2: "
    var2 = gets.chomp
    puts "AVANT la permutation : la variable 1 = #{var1} && la variable 2 = #{var2}."
    swap(var1, var2)
    puts "APRES la permutation : la variable 1 = #{var1} && la variable 2 = #{var2}."
    puts "ATTENTION : le résultat ne change pas. C'est normal, les paramètres sont passés en copie à la fonction."

  when 29
    puts "Programme choisi : Retourne et affiche le maximum de 2 nombres donnés."
    nombres = Array.new
    nb = 0
    loop do
      print "Choisissez le nombre #{nb+1}: "
      val = gets.chomp.to_f
      nombres.push(val)
      nb += 1
      break if nb >= 2
    end
    puts "Le maximum des 2 nombres est #{getMax2nb(nombres[0], nombres[1])}."

  when 30
    puts "Programme choisi : Retourne et affiche le maximum de 4 nombres donnés."
    nombres = Array.new
    nb = 0
    loop do
      print "Choisissez le nombre #{nb+1}: "
      val = gets.chomp.to_f
      nombres.push(val)
      nb += 1
      break if nb >= 4
    end
    puts "Le maximum des 4 nombres est #{getMax4nb(nombres[0], nombres[1], nombres[2], nombres[3])}."

  when 31
    puts "Programme choisi : Chiffre un message donné par l'utilisateur avec la technique de César, et affiche le message codé."
    print "Veuillez entrer le message à chiffrer: "
    message = gets.chomp.upcase
    print "Veuillez entrer la valeur K (un entier): "
    k = gets.chomp.to_i
    puts "Voci le message codé avec la valeur K = #{k}."
    cesar(message, k)

  when 32
    puts "Programme choisi : Indique si une date est valide (utilise plusieurs fonctions par rapport au programme 12)."
    print "Veuillez entrer un Jour: "
    day = gets.chomp.to_i
    print "Veuillez entrer une Mois: "
    month = gets.chomp.to_i
    print "Veuillez entrer une Année: "
    year = gets.chomp.to_i
    puts "La date est-elle valide ?"
    isADate(day, month, year)

  when 33
    puts "Programme choisi : Affiche un rectangle en fonction de la longueur et de la largeur."
    print "Veuillez entrer une valeur pour la longueur: "
    length = gets.chomp.to_i
    print "Veuillez entrer une valeur pour la largeur: "
    width = gets.chomp.to_i
    displayRect(length, width)

  else puts "Ce programme n'existe pas dans la liste."

  end
end
