using APITestTrello.Config;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace APITestTrello.Tests
{
    public class CardTest : TrelloAPITest
    {
        [Fact]
        public async Task CreateCard_ShouldReturnSuccess()
        {
            
            string listId = "id_da_lista"; 
            var request = CriarRequest($"cards", Method.Post);
            request.AddQueryParameter("idList", listId);
            request.AddQueryParameter("name", "Test Card");

            
            var response = await client.ExecuteAsync(request);

            Assert.Equal(200, (int)response.StatusCode);
            Assert.Contains("Test Card", response.Content);
        }
    }
}
