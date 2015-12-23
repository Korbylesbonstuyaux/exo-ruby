# PART 3
# ==== Partie "Introduction à Ruby"

#Fct Surface of a triangle : bas eand height
def surface(base, height)
  puts (base * height) / 2
end

#Fct Price TTC with a TVA
def priceTTC(price_ht_unit, tva_rate, quantity)
  puts "Prix total en TTC :  #{(price_ht_unit + (price_ht_unit * tva_rate / 100)) * quantity} €"
end

#Fct Swap
def swap(a, b)
  c = a
  a = b
  b = c
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
    puts "Average : #{per_cent} %"
  else puts "Error"
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
      puts "Somme des chiffres du nombre : #{som}"
  end
end

# surface(3, 5)

# priceTTC(100.5, 10, 2)

# c = 5
# d = 6
# swap(c, d)
# puts "c = #{c}"

# n_array = [10, 10, 12]
# w_array = [1, 2, 3]
# average(n_array, w_array)

# sum(987)

# ==== Partie "Les structures de contrôle"

#Fct maximum of 2 numbers
def max2nb(nb1, nb2)
  if(nb1 != nb2)
    if (nb1 > nb2)
      puts "MAX : #{nb1}"
    else puts "MAX : #{nb2}"
    end
  else puts "MAX : #{nb2}"
  end
end

#Fct maximum of 3 numbers
def max3nb(nb1, nb2, nb3)
  if(nb1 == nb2 && nb1 == nb3)
    puts "MAX : #{nb3}"
  else if (nb1 <= nb2)
         if(nb2 <= nb3)
           puts "MAX : #{nb3}"
         else puts "MAX : #{nb2}"
         end
       else if(nb1 <= nb3)
              puts "MAX : #{nb3}"
            else puts "MAX : #{nb1}"
            end
     end
  end
end

#Fct sign
def sign(nb)
    if(nb == 0)
      puts "NUL"
    else if(nb < 0)
           puts "INF"
         else puts "SUP"
         end
    end
end

#Fct include
def isInclude(nb1, nb2, nb3, borned)
  if(borned)
    if( ((nb1 > nb2) && (nb1 < nb3)) || ((nb1 < nb2) && (nb1 > nb3)) )
      puts "Le nombre 1 est bien compris"
    else puts "Le nombre 1 N'est PAS bien compris"
    end
  else if( ((nb1 >= nb2) && (nb1 <= nb3)) || ((nb1 <= nb2) && (nb1 >= nb3)))
         puts "Le nombre 1 est bien compris (bornes comprises)"
       else puts "Le nombre 1 N'est PAS bien compris (bornes comprises)"
       end
  end
end

#Fct nomber of days by month
def daysByMonth(num)
  if(num.is_a? Integer)
    case num
    when 2
      puts "Ce mois comporte 28 jours"
    when 4, 6, 9, 11
      puts "Ce mois comporte 30 jours"
    when 1, 3, 5, 7, 8, 10, 12
      puts "Ce mois comporte 31 jours"
    else puts "Ce mois n'existe pas"
    end
  else puts "Ce n'est pas un chiffre compris entre 1 et 12"
  end
end

#Fct is a bissextille year
def bissextilleYear(year)
  if(year.is_a? Integer)
    if( (year % 400 == 0) || ((year % 100 != 0) && (year % 4 == 0)) )
      puts "Année bissextile"
    else puts "Annnée NON bissextile"
    end
  else "Ce n'est pas un entier"
  end
end

#Fct is a valid date : day, month and year (4int)
def isValidDate(day, month, year)
  if((day.is_a? Integer) && (month.is_a? Integer) && (year.is_a? Integer))

    max_day = 31
    error = false

    case month
    when 2
      max_day = 28
    when 4, 6, 9, 11
      max_day = 30
    else error = true
    end

    if(!error && (day >= 1) && (day <= max_day))
      puts "La date est valide"
    else puts "La date n'est pas valide. Erreur dans dans le mois ou le jour"
    end

  else puts "Date n'est pas du type day (00), month (00) and year (0000). Ex : 1/2/1980"
  end
end

#Fct correct place on alternative parking
def correctAlternativeParking(day, num)
  if ((day.is_a? Integer) && (num.is_a? Integer) && (day >= 1 && day <= 31))
    if day === 1..15
      puts day % 2 == 1 ?  "Vous êtes bien garés" : "Vous N'êtes PAS bien garé"
    else puts day % 2 == 0 ? "Vous êtes bien garés" : "Vous N'êtes PAS bien garé"
    end
  else puts "Le jour et/ou le numéro ne sont pas un entier. Le jour doit être compris entre 1 et 31."
  end
end

# max2nb(2,4)

# max3nb(8,7,6)

# sign(-6)

# isInclude(2,7,0, false)

# daysByMonth(3)

# bissextilleYear(2012)

# isValidDate(9, 2, 1940)

# correctAlternativeParking(3, 3)


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
