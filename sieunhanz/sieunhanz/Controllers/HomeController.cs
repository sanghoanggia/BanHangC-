using Azure;
using sieunhanz.Models;
using sieunhanz.Models.Authentication;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using X.PagedList;

namespace sieunhanz.Controllers
{
    public class HomeController : Controller
    {
        MovieWebContext db = new MovieWebContext();
        private readonly ILogger<HomeController> _logger;

        public object TaiKhoanUsers { get; private set; }

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }
        public IActionResult Index(int? page)
        {
            int pageSize = 8;
            int pageNumber = page == null || page < 0 ? 1 : page.Value;
            var lstsanpham = db.Hangs.AsNoTracking().OrderBy(x => x.TenHang);
            PagedList<Hang> lst = new PagedList<Hang>(lstsanpham, pageNumber, pageSize);
            return View(lst);
        }
        public IActionResult PhongTheoLoai(String mahang, int? page)
        {
            int pageSize = 8;
            int pageNumber = page == null || page < 0 ? 1 : page.Value;
            var lstsampham = db.Hangs.AsNoTracking().Where(x => x.MaDanhMuc == mahang).OrderBy(x => x.TenHang);
            PagedList<Hang> lst = new PagedList<Hang>(lstsampham, pageNumber, pageSize);
            ViewBag.mahang = mahang;
            return View(lst);
        }


        [Route("sanpham")]
        public IActionResult SanPham(int? page)
        {
            int pageSize = 8;
            int pageNumber = page == null || page < 0 ? 1 : page.Value;
            var lstsanpham = db.Hangs.AsNoTracking().OrderBy(x => x.TenHang);
            PagedList<Hang> lst = new PagedList<Hang>(lstsanpham, pageNumber, pageSize);
            return View(lst);
        }
        public IActionResult SanPhamTheoLoai(string maloai, int? page)
        {
            int pageSize = 8;
            int pageNumber = page == null || page < 0 ? 1 : page.Value;
            var lstsanpham = db.Hangs.AsNoTracking().Where(x => x.MaDanhMuc == maloai).OrderBy(x => x.TenHang);
            PagedList<Hang> lst = new PagedList<Hang>(lstsanpham, pageNumber, pageSize);
            ViewBag.maloai = maloai;
            return View(lst);
        }
        [Route("product/{mahang}")]
        public IActionResult ProductDetail(string mahang)
        {
            var sanPham = db.Hangs.SingleOrDefault(x => x.MaHang == mahang);
            var anhSanPham = db.Anhs.Where(x => x.MaHang == mahang).ToList();
            ViewBag.lstAnh = anhSanPham;
            return View(sanPham);
        }
        [Authentication]
        [Route("cart")]
        public IActionResult GioHang()
        {
            return View();
        }
        //

        [Route("DatThem")]
        [HttpGet]
        public IActionResult DatThem(int? page)
        {
            return View();
        }
        [Route("DatThem")]
        [HttpPost]
        public IActionResult DatThem(DatHang maPhong)
        {
            if (ModelState.IsValid)
            {
                db.DatHangs.Add(maPhong);
                db.SaveChanges();
                return RedirectToAction("Index", "Home");
            }
            return View(maPhong);
        }


        [Route("DatHang")]
        [HttpGet]
        public IActionResult DatHang(int? page)
        {
            return View();
        }
        [Route("DatHang")]
        [HttpPost]
        public IActionResult DatHang(DonDatUser1 maPhong)
        {
            if (ModelState.IsValid)
            {
                db.DonDatUser1s.Add(maPhong);
                db.SaveChanges();
                return RedirectToAction("Index", "Home");
            }
            return View(maPhong);
        }
        [Authentication]
        [Route("dondangdat2")]
        public IActionResult dondangdat2(int? page)
        {
            string username1 = HttpContext.Session.GetString("UserName");
            int pageSize = 8;//số khách hàng trên 1 trang
            int pageNumber = page == null || page < 0 ? 1 : page.Value;
            
            var lstkhachhang = db.DonDatUser1s.AsNoTracking().Where(x => x.TenTaiKhoan == username1).OrderBy(x => x.Sdt);
            PagedList<DonDatUser1> pagelst = new PagedList<DonDatUser1>(lstkhachhang, pageNumber, pageSize);
            return View(pagelst);
        }
        [Authentication]
        [Route("thongtinkhach")]
        public IActionResult thongtinkhach(int? page)
        {
            string username1 = HttpContext.Session.GetString("UserName");
            int pageSize = 8;//số khách hàng trên 1 trang
            int pageNumber = page == null || page < 0 ? 1 : page.Value;

            var lstkhachhang = db.KhachHangs.AsNoTracking().Where(x => x.TenTaiKhoan == username1).OrderBy(x => x.Sdt);
            PagedList<KhachHang> pagelst = new PagedList<KhachHang>(lstkhachhang, pageNumber, pageSize);
            return View(pagelst);
        }




        [Route("DatHangz")]
        [HttpGet]
        public IActionResult DatHangz(int? page)
        {
            return View();
        }
        [Route("DatHangz")]
        [HttpPost]
        public IActionResult DatHangz(DonDatUser1 maPhong)
        {
            if (ModelState.IsValid)
            {
                db.DonDatUser1s.Add(maPhong);
                db.SaveChanges();
                return RedirectToAction("Index", "Home");
            }
            return View(maPhong);
        }
        [Route("SuaThongTinKhach")]
        [HttpGet]
        public IActionResult SuaThongTinKhach(string maPhongsua)
        {
  
            var maPhong = db.KhachHangs.Find(maPhongsua);
            return View(maPhong);
        }
        [Route("SuaThongTinKhach")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult SuaThongTinKhach(KhachHang maPhong)
        {
            if (ModelState.IsValid)
            {
                db.Entry(maPhong).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("thongtinkhach");
            }
            return View(maPhong);
        }


        [Route("DatHangKhach1")]
        [HttpGet]
        public IActionResult DatHangKhach1(int? page)
        {
            return View();
        }
        [Route("DatHangKhach1")]
        [HttpPost]
        public IActionResult DatHangKhach1(DonDatUser maPhong)
        {
            if (ModelState.IsValid)
            {
                db.DonDatUsers.Add(maPhong);
                db.SaveChanges();
                return RedirectToAction("Index", "Home");
            }
            return View(maPhong);
        }


        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}