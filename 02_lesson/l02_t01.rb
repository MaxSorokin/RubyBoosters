
puts "Введите сумму кредита"
sumCurrent = gets.to_i
puts "Введите ежемесеч. сумму оплаты"
monthly = gets.to_i # ежемесечная сумма
puts("----1----|----2----|----3----|----4----|----5----|")

time = 0 # месяцы
while(sumCurrent > 0)
    time += 1
    paymentNeeded = sumCurrent / 100 # надо заплатить в этом месяце
    pogashenie = monthly - paymentNeeded
    sumCurrent -= pogashenie
    years = (time/12).round
    months = time % 12
    print("%9s") %[years, '.y', months, '.m']
    print("%9s") % [sumCurrent, '|']
    print("%9s") % [paymentNeeded, '|']
    print("%9s") % [monthly, '|']
    print("%9s") % [pogashenie, '|']
end