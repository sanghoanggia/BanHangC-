using sieunhanz.Models;
using sieunhanz.Repository;

namespace sieunhanz.Repository
{
    public class LoaiSpRepository : ILoaiSpRepository
    {
        private readonly MovieWebContext _context;
        public LoaiSpRepository(MovieWebContext context)
        {
            _context = context;
        }

        public DanhMuc Add(DanhMuc loaiSp)
        {
            _context.DanhMucs.Add(loaiSp);
            _context.SaveChanges();
            return loaiSp;
        }

        public DanhMuc Delete(string maloaiSp)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<DanhMuc> GetAllLoaiSp()
        {
            return _context.DanhMucs;
        }

        public DanhMuc GetLoaiSp(string maloaiSp)
        {
            return _context.DanhMucs.Find(maloaiSp);
        }

        public DanhMuc Update(DanhMuc loaiSp)
        {
            _context.Update(loaiSp);
            _context.SaveChanges();
            return loaiSp;
        }
    }
}
