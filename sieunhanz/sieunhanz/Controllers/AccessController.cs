using sieunhanz.Models;
using Microsoft.AspNetCore.Mvc;

namespace sieunhanz.Controllers
{
    public class AccessController : Controller
    {
        MovieWebContext db = new MovieWebContext();
        [HttpGet]
        public IActionResult Login()
        {
            if (HttpContext.Session.GetString("UserName") == null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }
        }

        [HttpPost]
        public IActionResult Login(string? usernameLogin, string? passwordLogin)
        {
            if (HttpContext.Session.GetString("UserName") == null)
            {
                var user = db.TaiKhoanUsers.Where(x => (x.TenTaiKhoan.Equals(usernameLogin) && x.MatKhau.Equals(passwordLogin))).FirstOrDefault();
                var admin = db.TaiKhoans.Where(x => x.TenTk.Equals(usernameLogin) && x.MatKhau.Equals(passwordLogin)).FirstOrDefault();
                if (user != null)
                {
                    HttpContext.Session.SetString("UserName", user.TenTaiKhoan.ToString());
                    return RedirectToAction("Index", "Home");
                }
                if (admin != null)
                {
                    HttpContext.Session.SetString("AdminName", admin.TenTk.ToString());
                    return RedirectToAction("Index", "Admin");
                }

            }
            return View();
        }


        [HttpGet]
        public IActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Register(TaiKhoanUser u)
        {
            if (ModelState.IsValid)
            {
                db.TaiKhoanUsers.Add(u);
                var totalCart = db.GioHangs.Count();

                db.GioHangs.Add(new GioHang
                {
                    MaGh = "GH" + totalCart.ToString(),
                    TenTaiKhoan = u.TenTaiKhoan
                });
                db.SaveChanges();
                return RedirectToAction("Login", "Access");
            }
            return View();
        }

        public IActionResult Logout()
        {
            HttpContext.Session.Clear();
            HttpContext.Session.Remove("UserName");
            return RedirectToAction("Login", "Access");
        }
    }
}
