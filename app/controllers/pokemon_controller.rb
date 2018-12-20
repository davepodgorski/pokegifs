class PokemonController < ApplicationController


  def show
    res = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{params[:id]}/")
    body = JSON.parse(res.body)
    name  = body["name"]

  #   pokemon.each do |pokemon|
  # #
  #     {name: pokemon ["name"]}
  #
  #   end

  res = HTTParty.get("https://api.giphy.com/v1/gifs/search?api_key=MYGIPHYKEY&q=pikachu&rating=g")
  body = JSON.parse(res.body)
  gif_url = body["data"][0]["url"]


  render json:
  {

  "name": name

}
#   end
#
# }
#
    end



end
