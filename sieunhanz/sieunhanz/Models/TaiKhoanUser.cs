using System;
using System.Collections.Generic;

namespace sieunhanz.Models;

public partial class TaiKhoanUser
{
    public string TenTaiKhoan { get; set; } = null!;

    public string? MatKhau { get; set; }

    public virtual ICollection<DonDatUser> DonDatUsers { get; set; } = new List<DonDatUser>();

    public virtual ICollection<GioHang> GioHangs { get; set; } = new List<GioHang>();

    public virtual ICollection<KhachHang> KhachHangs { get; set; } = new List<KhachHang>();
}
