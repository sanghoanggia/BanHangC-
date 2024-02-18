using sieunhanz.Models;
using sieunhanz.Models.Authentication;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using System.Drawing;
using X.PagedList;

namespace sieunhanz.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Route("admin")]
    public class HomeAdminController : Controller
    {
        MovieWebContext db = new MovieWebContext();
        [Route("")]
        [Route("Index")]

        [Authentication]
        public IActionResult Index()
        {
            return View();
        }

        [Authentication]
        [Route("danhmucsanpham")]
        public IActionResult DanhMucSanPham(int? page)
        {
            int pageSize = 8;//số sản phẩm trên 1 trang
            int pageNumber = page == null || page < 0 ? 1 : page.Value;

            var lstsanpham = db.Hangs.AsNoTracking().OrderBy(x => x.TenHang);
            PagedList<Hang> pagelst = new PagedList<Hang>(lstsanpham, pageNumber, pageSize);
            return View(pagelst);
        }

        [Route("ThemSanPham")]
        [HttpGet]
        public IActionResult ThemSanPham()
        {
            ViewBag.MaDanhMuc = new SelectList(db.DanhMucs.OrderBy
                    (x => x.TenDanhMuc), "MaDanhMuc", "TenDanhMuc");
            return View();

        }
        [Route("ThemSanPham")]
        [ValidateAntiForgeryToken]
        [HttpPost]
        public IActionResult ThemSanPham(Hang hang)
        {
            if (ModelState.IsValid)
            {
                db.Hangs.Add(hang);
                db.SaveChanges();
                return RedirectToAction("DanhMucSanPham");
            }
            return View(hang);
        }

        [Route("SuaSanPham")]
        [HttpGet]
        public IActionResult SuaSanPham(String maHang)
        {
            Hang sanpham = db.Hangs.Find(maHang);
            ViewBag.MaDanhMuc = new SelectList(db.DanhMucs.OrderBy
                    (x => x.TenDanhMuc), "MaDanhMuc", "TenDanhMuc");
            return View(sanpham);
        }

        [Route("SuaSanPham")]
        [ValidateAntiForgeryToken]
        [HttpPost]
        public IActionResult SuaSanPham(Hang hang)
        {
            if (ModelState.IsValid)
            {
                db.Hangs.Update(hang);
                db.SaveChanges();
                return RedirectToAction("DanhMucSanPham");
            }
            return View(hang);
        }

        [Route("ChitietSanPham")]
        [HttpGet]
        public IActionResult ChitietSanPham(string maHang)
        {
            Hang hang = db.Hangs.Find(maHang);
            string danhMuc = db.DanhMucs.Find(hang.MaDanhMuc).TenDanhMuc.ToString();
            ViewBag.ChatLieu = danhMuc;
            return View(hang);
        }

        [Route("XoaSanPham")]
        [HttpGet]
        public IActionResult XoaSanPham(string maHang)
        {
            TempData["deleteMessage"] = "";
            var hang = db.Hangs.Find(maHang); // Tìm đối tượng Hàng cần xóa dựa trên khóa chính MaHang.
            if (hang == null)
            {
                return NotFound(); // Nếu không tìm thấy Hàng, trả về trang 404.
            }

            // Kiểm tra các điều kiện liên quan đến Hàng.
            if (db.ChiTietHdbs.Any(c => c.MaHang == maHang))
            {
                TempData["deleteMessage"] = "Không thể xóa Hàng vì đã được bán.";
                return RedirectToAction("DanhMucSanPham");
            }

            if (db.ChiTietHdns.Any(c => c.MaHang == maHang))
            {
                TempData["deleteMessage"] = "Không thể xóa Hàng vì đã được nhập.";
                return RedirectToAction("DanhMucSanPham");
            }

            if (db.ChiTietPnks.Any(c => c.MaHang == maHang))
            {
                TempData["deleteMessage"] = "Không thể xóa Hàng vì đã được nhập.";
                return RedirectToAction("DanhMucSanPham");
            }

            if (db.ChiTietPxks.Any(c => c.MaHang == maHang))
            {
                TempData["deleteMessage"] = "Không thể xóa Hàng vì đã được bán.";
                return RedirectToAction("DanhMucSanPham");
            }

            if (db.ChiTietGhs.Any(c => c.MaHang == maHang))
            {
                TempData["deleteMessage"] = "Không thể xóa Hàng vì đã được nhập.";
                return RedirectToAction("DanhMucSanPham");
            }

            var listAnh = db.Anhs.Where(a => a.MaHang == maHang).ToList(); // Tìm tất cả các bản ghi ảnh liên quan đến Hàng.
            if (listAnh.Any())
            {
                db.Anhs.RemoveRange(listAnh); // Xóa tất cả các bản ghi ảnh liên quan đến Hàng.
            }

            db.Hangs.Remove(hang); // Xóa Hàng.
            db.SaveChanges(); // Lưu thay đổi vào cơ sở dữ liệu.

            TempData["deleteMessage"] = "Xóa Hàng thành công.";
            return RedirectToAction("DanhMucSanPham");
        }

        [Authentication]
        //Quan tri ve khách hàng
        [Route("danhmuckhachhang")]
        public IActionResult DanhMucKhachHang(int? page)
        {
            int pageSize = 8;//số khách hàng trên 1 trang
            int pageNumber = page == null || page < 0 ? 1 : page.Value;

            var lstkhachhang = db.KhachHangs.AsNoTracking().OrderBy(x => x.TenKh);
            PagedList<KhachHang> pagelst = new PagedList<KhachHang>(lstkhachhang, pageNumber, pageSize);
            return View(pagelst);
        }

        [Route("ThemKhachHang")]
        [HttpGet]
        public IActionResult ThemKhachHang()
        {
            ViewBag.TenTaiKhoan = new SelectList(db.TaiKhoanUsers.OrderBy
                    (x => x.TenTaiKhoan), "MaKH", "TenTaiKhoan");
            return View();

        }
        [Route("ThemKhachHang")]
        [ValidateAntiForgeryToken]
        [HttpPost]
        public IActionResult ThemKhachHang(KhachHang khachHang)
        {
            if (ModelState.IsValid)
            {
                db.KhachHangs.Add(khachHang);
                db.SaveChanges();
                return RedirectToAction("DanhMucKhachHang");
            }
            return View(khachHang);
        }


        [Authentication]
        //Quan tri ve hoa don ban
        [Route("danhmuchoadonban")]
        public IActionResult DanhMucHoaDonBan(int? page)
        {
            int pageSize = 8;//số khách hàng trên 1 trang
            int pageNumber = page == null || page < 0 ? 1 : page.Value;
            var lsthdb = db.Hdbans.Include(x => x.MaNvNavigation).Include(x => x.MaKhNavigation).OrderBy(x => x.MaHdb);

            PagedList<Hdban> pagelst = new PagedList<Hdban>(lsthdb, pageNumber, pageSize);
            return View(pagelst);
        }

        [Route("ChiTietHoaDonBan")]
        public IActionResult ChiTietHoaDonBan(string maHdb)
        {

            var lstcthdb = db.ChiTietHdbs.Where(x => x.MaHdb == maHdb)
                .Include(x => x.MaHangNavigation).Include(x => x.MaHdbNavigation).ToList();
            var hoaDonBan = db.Hdbans
                    .Include(x => x.MaNvNavigation)
                    .Include(x => x.MaKhNavigation)
                    .SingleOrDefault(x => x.MaHdb == maHdb);
            ViewBag.TenNv = hoaDonBan?.MaNvNavigation?.TenNv;
            ViewBag.NgayLap = hoaDonBan?.NgayLap;
            ViewBag.TenKh = hoaDonBan?.MaKhNavigation?.TenKh;
            ViewBag.TongTien = hoaDonBan?.TongTien;
            return View(lstcthdb);
        }
        [Route("dondangdat")]
        public IActionResult dondangdat(int? page)
        {
            int pageSize = 8;//số khách hàng trên 1 trang
            int pageNumber = page == null || page < 0 ? 1 : page.Value;

            var lstkhachhang = db.DonDatUser1s.AsNoTracking().OrderBy(x => x.Sdt);
            PagedList<DonDatUser1> pagelst = new PagedList<DonDatUser1>(lstkhachhang, pageNumber, pageSize);
            return View(pagelst);
        }

        [Route("SuaDonDat")]
        [HttpGet]
        public IActionResult SuaDonDat(string maPhongsua)
        {
            ViewBag.TenTaiKhoan = new SelectList(db.DonDatUser1s.OrderBy
                    (x => x.TenTaiKhoan), "TenTaiKhoan", "DonDatUser1");
            var maPhong = db.DonDatUser1s.Find(maPhongsua);
            return View(maPhong);
        }

        [Route("SuaDonDat")]
        [ValidateAntiForgeryToken]
        [HttpPost]
        public IActionResult SuaDonDat(DonDatUser1 maPhong)
        {
            if (ModelState.IsValid)
            {
                db.Entry(maPhong).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("dondangdat");
            }
            return View(maPhong);
        }

        [Route("SuaDonDat1")]
        [ValidateAntiForgeryToken]
        [HttpPost]
        public IActionResult SuaDonDat1(DonDatUser1 maPhong)
        {
            if (ModelState.IsValid)
            {
                var donDat = db.DonDatUser1s.Find(maPhong);
                if (donDat == null)
                {
                    return NotFound();
                }
                donDat.TrangThai = maPhong.TrangThai;
                db.SaveChanges();
                return RedirectToAction("dondangdat");
            }
            return View(maPhong);
        }
        [Route("SuaSanPham2")]
        [HttpGet]
        public IActionResult SuaSanPham2(String maHang)
        {
            DonDatUser1 sanpham = db.DonDatUser1s.Find(maHang);
            return View(sanpham);
        }

        [Route("SuaSanPham2")]
        [ValidateAntiForgeryToken]
        [HttpPost]
        public IActionResult SuaSanPham2(DonDatUser1 hang)
        {
            if (ModelState.IsValid)
            {
                db.DonDatUser1s.Update(hang);
                db.SaveChanges();
                return RedirectToAction("dondangdat");
            }
            return View(hang);
        }
        [Route("SuaThongTin")]
        [HttpGet]
        public IActionResult SuaThongTin(string maPhongsua)
        {
            var maPhong = db.DonDatUser1s.Find(maPhongsua);
            return View(maPhong);
        }
        [Route("SuaThongTin")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult SuaThongTin(DonDatUser1 maPhong)
        {
            if (ModelState.IsValid)
            {
                db.Entry(maPhong).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("dondangdat" );
            }
            return View(maPhong);
        }



        [Route("SuaThongTina")]
        [HttpGet]
        public IActionResult SuaThongTina(string maPhongsua)
        {
            var maPhong = db.DonDatUser1s.Find(maPhongsua);
            return View(maPhong);
        }
        [Route("SuaThongTina")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult SuaThongTina(DonDatUser1 maPhong)
        {
            if (ModelState.IsValid)
            {
                db.Update(maPhong);
                db.SaveChanges();
                return RedirectToAction("dondangdat");
            }
            return View(maPhong);
        }

        [Route("SuaSanPhamz")]
        [HttpGet]
        public IActionResult SuaSanPhamz(String maHang)
        {
            DonDatUser1 sanpham = db.DonDatUser1s.Find(maHang);
            return View(sanpham);
        }

        [Route("SuaSanPhamz")]
        [ValidateAntiForgeryToken]
        [HttpPost]
        public IActionResult SuaSanPhamz(DonDatUser1 hang)
        {
            if (ModelState.IsValid)
            {
                db.DonDatUser1s.Update(hang);
                db.SaveChanges();
                return RedirectToAction("dondangdat");
            }
            return View(hang);
        }

    }
}
