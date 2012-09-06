.class public Laj/y;
.super Laj/B;
.source "SourceFile"


# direct methods
.method public constructor <init>(Laj/l;)V
    .registers 4
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Laj/B;-><init>(Laj/l;)V

    .line 17
    const v0, 0x3d4ccccd

    iput v0, p0, Laj/y;->d:F

    .line 20
    const-wide v0, 0x3fd657184ae74487L

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Laj/y;->e:F

    .line 21
    return-void
.end method


# virtual methods
.method protected a(F)F
    .registers 6
    .parameter

    .prologue
    .line 35
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 36
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method protected a(Laj/h;I)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-virtual {p1, p2}, Laj/h;->b(I)F

    move-result v0

    return v0
.end method

.method protected b(Laj/h;I)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p1, p2}, Laj/h;->a(I)F

    move-result v0

    return v0
.end method

.method protected b(Laj/j;)Z
    .registers 3
    .parameter

    .prologue
    .line 41
    const-string v0, "s"

    invoke-virtual {p0, v0}, Laj/y;->a(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Laj/y;->a:Laj/l;

    invoke-interface {v0, p1}, Laj/l;->h(Laj/j;)Z

    move-result v0

    return v0
.end method

.method protected d(Laj/j;)V
    .registers 3
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Laj/y;->a:Laj/l;

    invoke-interface {v0, p1}, Laj/l;->i(Laj/j;)V

    .line 48
    return-void
.end method

.method protected f(Laj/j;)Z
    .registers 3
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Laj/y;->a:Laj/l;

    invoke-interface {v0, p1}, Laj/l;->g(Laj/j;)Z

    move-result v0

    return v0
.end method
