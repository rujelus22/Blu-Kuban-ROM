.class public LaA/x;
.super LaA/b;


# instance fields
.field b:F

.field c:F


# direct methods
.method public constructor <init>(ILaA/j;)V
    .registers 3

    invoke-direct {p0, p1, p2}, LaA/b;-><init>(ILaA/j;)V

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    iget v0, p0, LaA/x;->b:F

    return v0
.end method

.method public a(FF)V
    .registers 5

    const/high16 v1, 0x4000

    div-float v0, p1, v1

    iput v0, p0, LaA/x;->b:F

    div-float v0, p2, v1

    iput v0, p0, LaA/x;->c:F

    return-void
.end method

.method public b()F
    .registers 2

    iget v0, p0, LaA/x;->c:F

    return v0
.end method

.method public c()F
    .registers 2

    iget v0, p0, LaA/x;->b:F

    return v0
.end method

.method public d()F
    .registers 2

    iget v0, p0, LaA/x;->c:F

    return v0
.end method

.method public e()F
    .registers 5

    iget-object v0, p0, LaA/x;->a:LaA/j;

    invoke-virtual {v0}, LaA/j;->c()F

    move-result v0

    iget-object v1, p0, LaA/x;->a:LaA/j;

    invoke-virtual {v1}, LaA/j;->a()F

    move-result v1

    iget-object v2, p0, LaA/x;->a:LaA/j;

    invoke-virtual {v2}, LaA/j;->b()F

    move-result v2

    iget v3, p0, LaA/x;->c:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    sub-float v0, v1, v0

    mul-float/2addr v0, v2

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4070

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
