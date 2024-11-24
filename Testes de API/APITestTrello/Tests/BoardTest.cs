using APITestTrello.Config;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RestSharp;
using Xunit;

namespace APITestTrello.Tests
{
    public class BoardTest : TrelloAPITest
    {
        public string _boardId;

        [Fact]
        public async Task CreateBoard()
        {
            
            var request = CriarRequest("boards", Method.Post);
            request.AddQueryParameter("name", "Teste1");
            request.AddQueryParameter("key", ApiKey);
            request.AddQueryParameter("token", Token);

            var response = await client.ExecuteAsync(request);

            Console.WriteLine($"Status Code: {(int)response.StatusCode}");
            Console.WriteLine($"Response Content: {response.Content}");
            Console.WriteLine($"Error Message: {response.ErrorMessage}");

            Assert.Equal(200, (int)response.StatusCode);
            Assert.Contains("Test Board", response.Content);
            Console.WriteLine($"URL Final: {client.BuildUri(request)}");
        }

        [Fact]
        public async Task GetBoards_ShouldReturnBoardsList()
        {
            var request = CriarRequest("members/me/boards", Method.Get);

            var response = await client.ExecuteAsync(request);

            Console.WriteLine($"Status Code: {(int)response.StatusCode}");
            Console.WriteLine($"Response Content: {response.Content}");
            Console.WriteLine($"Error Message: {response.ErrorMessage}");

            Assert.Equal(200, (int)response.StatusCode);
            Assert.NotNull(response.Content);
        }

        [Fact]
        public async Task DeleteBoard_ShouldReturnSuccess()
        {
            if (string.IsNullOrEmpty(_boardId))
            {
                throw new InvalidOperationException("O board ID não foi gerado.");
            }

            var request = CriarRequest($"boards/{_boardId}", Method.Delete);

            var response = await client.ExecuteAsync(request);

            Console.WriteLine($"Status Code: {(int)response.StatusCode}");
            Console.WriteLine($"Response Content: {response.Content}");
            Console.WriteLine($"Error Message: {response.ErrorMessage}");

            Assert.Equal(200, (int)response.StatusCode);
        }

    }
}
