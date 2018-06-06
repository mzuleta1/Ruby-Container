# Ecuaciones
class Ecuaciones
  puts 'Ingrese el tipo de poblacion a trabajar:'
  pb = gets.chomp
  puts '¿Conoce la poblacion inicial de ' + pb + '?'
  p_ini = gets.chomp
  if p_ini.eql? 'si'
    puts 'Ingrese P(0): '
    p_zero = gets.chomp.to_f
    puts '¿Conoce P despues de x horas?'
    p_horas = gets.chomp
    if p_horas.eql? 'si'
      puts 'Ingrese las x horas'
      x_horas = gets.chomp
      puts 'Ingrese P(' + x_horas + '):'
      p_uno = gets.chomp.to_f
      puts '¿Desea saber la cantidad de ' + pb + ' despues de t horas?'
      cbact = gets.chomp
      if cbact.eql? 'si'
        unless p_zero.zero? && p_uno.zero?
          k = Math.log(p_uno / p_zero).round(4)
          print 'Segun la solucion del PVI, la cantidad de ' + pb
          puts ' en t horas es:'
          puts 'P(t) = ' + p_zero.to_s + 'e^' + k.to_s + 't'
        end
        print '¿Desea dar un valor a t para saber la cantidad de ' + pb
        puts ' en ese tiempo?'
        cant_pb = gets.chomp
        if cant_pb.eql? 'si'
          puts 'Ingrese la cantidad de horas:'
          cant_horas_pb = gets.chomp
          puts 'La cantidad de ' + pb + ' en ' + cant_horas_pb + ' horas es:'
          p_cant = (p_zero * Math.exp(1)**(k*cant_horas_pb.to_i)).round
          puts 'P(' + cant_horas_pb + ') = ' +  p_cant.to_s + ' ' + pb
          print '¿Desea conocer el tiempo que debe trasncurrir' 
          puts ' para que la poblacion se duplique, triplique, etc.. ?'
          tpx = gets.chomp
          if tpx.eql? 'si'
            puts "Si quiere la poblacion dublique ingrese 2 \nsi quiere que triplique 3, etc..."
            pingre = gets.chomp.to_f
            tiempo_poblacional = (Math.log(pingre)/k).to_i
            puts 'El tiempo para que la poblacion se multiplique X'+(pingre.to_i).to_s+' es: '+tiempo_poblacional.to_s+' horas'
          else
          end
        end
      else
        k = Math.log(p_uno / p_zero).round(4)
        print '¿Desea dar un valor a t para saber la cantidad de ' + pb
        puts 'en ese tiempo?'
        cant_pb = gets.chomp
        if cant_pb.eql? 'si'
          puts 'Ingrese la cantidad de horas:'
          cant_horas_pb = gets.chomp
          puts 'La cantidad de ' + pb + ' en ' + cant_horas_pb + ' horas es:'
          p_cant = (p_zero * Math.exp(1)**(k*cant_horas_pb.to_i)).round
          puts 'P(' + cant_horas_pb + ') = ' +  p_cant.to_s + ' ' + pb
          print '¿Desea conocer el tiempo que debe trasncurrir' 
          puts ' para que la poblacion se duplique, triplique, etc.. ?'
          tpx = gets.chomp
           if tpx.eql? 'si'
            puts "Si quiere la poblacion dublique ingrese 2 \nsi quiere que triplique 3, etc..."
            pingre = gets.chomp.to_f
            tiempo_poblacional = (Math.log(pingre)/k).to_i
            puts 'El tiempo para que la poblacion se multiplique X'+(pingre.to_i).to_s+' es: '+tiempo_poblacional.to_s+' horas'
          else
          end
        else
          puts 'No dio valores para la ecuacion.'
        end
      end
    else
      puts 'Si solo se conoce P(0) debe buscar al menos P(1) para satisfacer la ecuacion.'
    end
  else
    puts 'Para satisfacer la ecuacion se debe conocer la poblacion inicial.'
  end
end
