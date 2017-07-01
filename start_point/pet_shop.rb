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

def increase_pets_sold(sold_pets, sold_pets_number)
  return sold_pets[:admin][:pets_sold] += sold_pets_number
end

def stock_count(stock)
  return stock[:pets].count 
end

def pets_by_breed(pet_shop, breed)
  found_pets = []
  for pet in pet_shop[:pets]
    found_pets << pet if pet[:breed] == breed
  end
  return found_pets
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, remove_pet)
  for pet in pet_shop[:pets]
    pet.delete_if{|pet| remove_pet == remove_pet}
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_pet_count(customers_pets)
  return customers_pets[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  return customer[:pets] << new_pet
end

# Optional homework

def customer_can_afford_pet(customer_cash, pet_cost)
  return customer_cash[:cash] >= pet_cost[:price]
end