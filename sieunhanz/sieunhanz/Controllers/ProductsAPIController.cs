using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using sieunhanz.Models;

namespace sieunhanz.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductsAPIController : ControllerBase
    {
        MovieWebContext db = new MovieWebContext();
        [HttpGet]
        public List<Hang> GetAllProducts()
        {
            var sanPham = db.Hangs.ToList();
            return sanPham;
        }
        [HttpGet("{maloai}")]
        public List<Hang> GetProductsByCategory(string maLoai)
        {
            var lstSp = db.Hangs.Where(x => x.MaDanhMuc == maLoai).ToList();
            return lstSp;
        }
    }
}