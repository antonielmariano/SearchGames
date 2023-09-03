import com.google.gson.Gson
import java.net.URI
import java.net.http.HttpClient
import java.net.http.HttpRequest
import java.net.http.HttpResponse.BodyHandlers.*
import java.util.Scanner

fun main() {
    val terminalRead = Scanner(System.`in`)
    val apiURL = "https://www.cheapshark.com/api/1.0/games?id="
    println("Digite o id do jogo")
    val inputData = terminalRead.nextLine()

    val client: HttpClient = HttpClient.newHttpClient()
    val request: HttpRequest = HttpRequest.newBuilder()
        .uri(URI.create(apiURL+inputData))
        .build()
    val response = client.send(request, ofString())
    val responseData = response.body()
    val gson = Gson()
    val infoGame = gson.fromJson(responseData, InfoGame::class.java)
    val gameSelected = Game(infoGame.info.title, infoGame.info.thumb, infoGame.info.steamAppID)

    println(gameSelected)

}