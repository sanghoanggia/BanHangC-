using System;
using System.Collections.Generic;

namespace sieunhanz.Models;

public partial class DatHang
{
    public string HoTen { get; set; } = null!;

    public string Sdt { get; set; } = null!;

    public string? Email { get; set; }

    public string? SanPham { get; set; }

    public int? Tongtien { get; set; }

    public string? Ghichu { get; set; }
}
