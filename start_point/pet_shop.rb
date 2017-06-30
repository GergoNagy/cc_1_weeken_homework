def pet_shop_name(shop_name)
  return shop_name[:name]
end

def total_cash(all_cash)
  return all_cash[:admin][:total_cash]
end

def add_or_remove_cash(add_cash, total_cash)
  return add_cash[:admin][:total_cash] += total_cash
end

def pets_sold(pets)
  return pets[:admin][:pets_sold]
end

