# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

begin
  Month.destroy_all
  for i in (1929..1956)
    file = File.open("hadoop/#{i}/part-r-00000")
    puts("opening hadoop/#{i}/part-r-00000")
    while (line = file.gets)
      mes = Hash.new
      dados = line.split(" ")
      mes[:mes_ano] = Date.new(dados[0][0...4].to_i, dados[0][4..6].to_i,1)
      mes[:media_temp] = dados[1].to_f
      mes[:mediah_temp] = dados[2].to_f
      mes[:desvio_temp] = dados[3].to_f
      mes[:var_temp] = dados[4].to_f
      mes[:cvp_temp] = dados[5].to_f
      mes[:a_temp] = dados[6].to_f
      mes[:b_temp] = dados[7].to_f
      mes[:media_dewp] = dados[8].to_f
      mes[:mediah_dewp] = dados[9].to_f
      mes[:desvio_dewp] = dados[10].to_f
      mes[:var_dewp] = dados[11].to_f
      mes[:cvp_dewp] = dados[12].to_f
      mes[:a_dewp] = dados[13].to_f
      mes[:b_dewp] = dados[14].to_f
      mes[:media_w] = dados[15].to_f
      mes[:mediah_w] = dados[16].to_f
      mes[:desvio_w] = dados[17].to_f
      mes[:var_w] = dados[18].to_f
      mes[:cvp_w] = dados[19].to_f
      mes[:a_w] = dados[20].to_f
      mes[:b_w] = dados[21].to_f
      Month.create!(mes)
    end
    file.close
  end
  puts("criado #{Month.all.size} meses")
rescue
  puts("erro ao ler o arquivo")
end
