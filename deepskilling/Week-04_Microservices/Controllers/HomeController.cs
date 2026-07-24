using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace JwtAuthenticationAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class HomeController : ControllerBase
    {
        [Authorize]
        [HttpGet("welcome")]
        public IActionResult Welcome()
        {
            return Ok("Welcome! You have accessed a protected API.");
        }
    }
}