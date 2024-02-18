using sieunhanz.Models;
using sieunhanz.Models.API;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace sieunhanz.Controllers.API
{
    [Route("api/[controller]")]
    [ApiController]
    public class CartAPIController : ControllerBase
    {
        MovieWebContext db = new MovieWebContext();
        [HttpGet]
        public IEnumerable<CTGH> GetAllProducts()
        {
            var userName = HttpContext.Session.GetString("UserName");
            if (userName == null)
            {
                return new List<CTGH>();
            }
            var cart = db.GioHangs.SingleOrDefault(x => x.TenTaiKhoan.Equals(userName.ToString()));
            if(cart == null)
            {
               return new List<CTGH>();
            }
            IList<CTGH> products = new List<CTGH>();
            var lstCTGH = db.ChiTietGhs.Where(x => x.MaGh == cart.MaGh).ToList();
            foreach (var s in lstCTGH)
            {
                products.Add(new CTGH
                {
                    MaGh = s.MaGh,
                    MaHang = s.MaHang,
                    TenHang = db.Hangs.Single(h => h.MaHang == s.MaHang).TenHang,
                    DonGiaBan = db.Hangs.Single(h => h.MaHang == s.MaHang).DonGiaBan,
                    SoLuong = s.SoLuong,
                    Anh = db.Hangs.Single(h => h.MaHang == s.MaHang).AnhDaiDien
                });
            }
            return products;
        }

        [HttpPost]
        public bool AddProductToCart(string mahang, int? quantity)
        {
            var userName = HttpContext.Session.GetString("UserName");
            var cart = db.GioHangs.SingleOrDefault(x => x.TenTaiKhoan.Equals(userName.ToString()));
            if (cart == null || mahang == null || quantity == null)
            {
                return false;
            }
            ChiTietGh gh = new ChiTietGh();
            var sp = db.ChiTietGhs.SingleOrDefault(x => x.MaGh == cart.MaGh && x.MaHang == mahang);
            if (sp == null)
            {
                var SP = db.Hangs.SingleOrDefault(x => x.MaHang == mahang);
                if (SP == null)
                {
                    return false;
                }
                gh.MaGh = cart.MaGh;
                gh.MaHang = mahang;
                gh.SoLuong = quantity;
                gh.DonGia = SP.DonGiaBan;
            }
            else
            {
                sp.SoLuong += quantity;
                db.ChiTietGhs.Update(sp);
            }
            try
            {
                db.ChiTietGhs.Add(gh);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        [HttpGet("{mahang}")]
        public bool DeleteProductFromCart(string? mahang)
        {
            if (mahang == null || mahang.Length == 0) { return false; }
            var userName = HttpContext.Session.GetString("UserName");
            var cart = db.GioHangs.SingleOrDefault(x => x.TenTaiKhoan.Equals(userName.ToString()));
            if (cart == null)
            {
                return false;
            }
            var sp = db.ChiTietGhs.SingleOrDefault(x => x.MaGh == cart.MaGh && x.MaHang == mahang);
            if (sp == null)
            {
                return false;
            }
            try
            {
                db.ChiTietGhs.Remove(sp);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
