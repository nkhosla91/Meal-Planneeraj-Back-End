require 'rest-client'
require 'json'

pageCounter = 0



url = "https://api.nutritionix.com/v1_1/search/%20?results=#{pageCounter}:#{pageCounter+50}&fields=item_name,nf_protein,nf_total_fat,nf_calories,nf_total_carbohydrate&appId=60095755&appKey=f87036e49379fc107fb105af63eb747f"
request = RestClient.get url







while pageCounter < 1001
    request = RestClient.get url
    request_array = JSON.parse(request)

    request_array["hits"].each do |food|
        Food.create({
            name: food["fields"]["item_name"],
            carbs: food["fields"]["nf_total_carbohydrate"],
            fat: food["fields"]["nf_total_fat"],
            protein: food["fields"]["nf_protein"],
            calories: food["fields"]["nf_calories"]
        })
    end

    pageCounter += 50

end
