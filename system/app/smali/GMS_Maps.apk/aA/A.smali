.class public LaA/A;
.super LaA/B;


# direct methods
.method public constructor <init>(LaA/l;)V
    .registers 2

    invoke-direct {p0, p1}, LaA/B;-><init>(LaA/l;)V

    return-void
.end method


# virtual methods
.method protected a(F)F
    .registers 6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ff921fb54442d18L

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected a(LaA/h;I)F
    .registers 4

    invoke-virtual {p1, p2}, LaA/h;->a(I)F

    move-result v0

    return v0
.end method

.method protected b(LaA/h;I)F
    .registers 4

    invoke-virtual {p1, p2}, LaA/h;->b(I)F

    move-result v0

    return v0
.end method

.method protected b(LaA/j;)Z
    .registers 3

    const-string v0, "t"

    invoke-virtual {p0, v0}, LaA/A;->a(Ljava/lang/String;)V

    iget-object v0, p0, LaA/A;->a:LaA/l;

    invoke-interface {v0, p1}, LaA/l;->b(LaA/j;)Z

    move-result v0

    return v0
.end method

.method protected d(LaA/j;)V
    .registers 3

    iget-object v0, p0, LaA/A;->a:LaA/l;

    invoke-interface {v0, p1}, LaA/l;->c(LaA/j;)V

    return-void
.end method

.method protected f(LaA/j;)Z
    .registers 3

    iget-object v0, p0, LaA/A;->a:LaA/l;

    invoke-interface {v0, p1}, LaA/l;->a(LaA/j;)Z

    move-result v0

    return v0
.end method
