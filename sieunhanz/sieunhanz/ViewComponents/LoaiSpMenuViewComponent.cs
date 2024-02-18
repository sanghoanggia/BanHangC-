using sieunhanz.Models;
using sieunhanz.Repository;
using Microsoft.AspNetCore.Mvc;
namespace sieunhanz.ViewComponents
{
    public class LoaiSpMenuViewComponent: ViewComponent
    {
        private readonly ILoaiSpRepository _loaiSp;
        public LoaiSpMenuViewComponent(ILoaiSpRepository loaiSpRepository)
        {
            _loaiSp = loaiSpRepository;
        }
        public IViewComponentResult Invoke()
        {
            var loaisp = _loaiSp.GetAllLoaiSp().OrderBy (x => x.TenDanhMuc);
            return View(loaisp);
        }
    }
}
