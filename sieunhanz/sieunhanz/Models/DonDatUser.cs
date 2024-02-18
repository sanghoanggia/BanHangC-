using System;
using System.Collections.Generic;

namespace sieunhanz.Models;

public partial class DonDatUser
{
    public string Cmt { get; set; } = null!;

    public string? HoTen { get; set; }

    public string? Gmail { get; set; }

    public string? DoHang { get; set; }

    public string? Sdt { get; set; }

    public int? TrangThai { get; set; }

    public int? TongTien { get; set; }

    public string? TenTaiKhoan { get; set; }

    public virtual TaiKhoanUser? TenTaiKhoanNavigation { get; set; }
}
