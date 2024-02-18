using System;
using System.Collections.Generic;

namespace sieunhanz.Models;

public partial class Hang
{
    public string MaHang { get; set; } = null!;

    public string TenHang { get; set; } = null!;

    public int? DonGiaNhap { get; set; }

    public int? DonGiaBan { get; set; }

    public string? TrongLuong { get; set; }

    public int? Slton { get; set; }

    public int? SoLanMua { get; set; }

    public string? MoTa { get; set; }

    public string? MaDanhMuc { get; set; }

    public string? AnhDaiDien { get; set; }

    public virtual ICollection<Anh> Anhs { get; set; } = new List<Anh>();

    public virtual ICollection<ChiTietGh> ChiTietGhs { get; set; } = new List<ChiTietGh>();

    public virtual DanhMuc? MaDanhMucNavigation { get; set; }
}
