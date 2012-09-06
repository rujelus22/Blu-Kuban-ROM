.class public Laj/A;
.super Laj/B;
.source "SourceFile"


# direct methods
.method public constructor <init>(Laj/l;)V
    .registers 2
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Laj/B;-><init>(Laj/l;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected a(F)F
    .registers 6
    .parameter

    .prologue
    .line 31
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

.method protected a(Laj/h;I)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-virtual {p1, p2}, Laj/h;->a(I)F

    move-result v0

    return v0
.end method

.method protected b(Laj/h;I)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-virtual {p1, p2}, Laj/h;->b(I)F

    move-result v0

    return v0
.end method

.method protected b(Laj/j;)Z
    .registers 3
    .parameter

    .prologue
    .line 36
    const-string v0, "t"

    invoke-virtual {p0, v0}, Laj/A;->a(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Laj/A;->a:Laj/l;

    invoke-interface {v0, p1}, Laj/l;->b(Laj/j;)Z

    move-result v0

    return v0
.end method

.method protected d(Laj/j;)V
    .registers 3
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Laj/A;->a:Laj/l;

    invoke-interface {v0, p1}, Laj/l;->c(Laj/j;)V

    .line 43
    return-void
.end method

.method protected f(Laj/j;)Z
    .registers 3
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Laj/A;->a:Laj/l;

    invoke-interface {v0, p1}, Laj/l;->a(Laj/j;)Z

    move-result v0

    return v0
.end method
