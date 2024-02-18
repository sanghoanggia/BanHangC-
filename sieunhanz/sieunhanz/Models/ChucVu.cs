using System;
using System.Collections.Generic;

namespace sieunhanz.Models;

public partial class ChucVu
{
    public string MaChucVu { get; set; } = null!;

    public string? TenChucVu { get; set; }

    public virtual ICollection<NhanVien> NhanViens { get; set; } = new List<NhanVien>();
}
