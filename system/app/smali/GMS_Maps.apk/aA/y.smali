.class public LaA/y;
.super LaA/B;


# direct methods
.method public constructor <init>(LaA/l;)V
    .registers 4

    invoke-direct {p0, p1}, LaA/B;-><init>(LaA/l;)V

    const v0, 0x3d4ccccd

    iput v0, p0, LaA/y;->d:F

    const-wide v0, 0x3fd657184ae74487L

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, LaA/y;->e:F

    return-void
.end method


# virtual methods
.method protected a(F)F
    .registers 6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method protected a(LaA/h;I)F
    .registers 4

    invoke-virtual {p1, p2}, LaA/h;->b(I)F

    move-result v0

    return v0
.end method

.method protected b(LaA/h;I)F
    .registers 4

    invoke-virtual {p1, p2}, LaA/h;->a(I)F

    move-result v0

    return v0
.end method

.method protected b(LaA/j;)Z
    .registers 3

    const-string v0, "s"

    invoke-virtual {p0, v0}, LaA/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, LaA/y;->a:LaA/l;

    invoke-interface {v0, p1}, LaA/l;->h(LaA/j;)Z

    move-result v0

    return v0
.end method

.method protected d(LaA/j;)V
    .registers 3

    iget-object v0, p0, LaA/y;->a:LaA/l;

    invoke-interface {v0, p1}, LaA/l;->i(LaA/j;)V

    return-void
.end method

.method protected f(LaA/j;)Z
    .registers 3

    iget-object v0, p0, LaA/y;->a:LaA/l;

    invoke-interface {v0, p1}, LaA/l;->g(LaA/j;)Z

    move-result v0

    return v0
.end method
