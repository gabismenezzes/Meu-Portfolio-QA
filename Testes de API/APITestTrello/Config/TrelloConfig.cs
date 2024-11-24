namespace APITestTrello.Config
{
    using RestSharp;
    using Newtonsoft.Json;
    using Xunit;
    public class TrelloAPITest
    {
        public const string ApiKey = "d5cdd31f8ac3cb69f92e730756444594";
        public const string Token = "9aace62b24a39e1ae83eb9b5d2302ee3d6b26c83dce7ddb720d2df65aaef2c48";
        public const string UrlBase = "https://api.trello.com/1/";

        public RestClient client;

        public TrelloAPITest()
        {
            client = new RestClient(UrlBase);
        }

        public RestRequest CriarRequest(string endpoint, Method method)
        {
            var request = new RestRequest(endpoint, method);
            request.AddQueryParameter("key", ApiKey);
            request.AddQueryParameter("token", Token);
            return request;

            
        }

    }
}