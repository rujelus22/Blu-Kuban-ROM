.class public Laj/x;
.super Laj/b;
.source "SourceFile"


# instance fields
.field b:F

.field c:F


# direct methods
.method public constructor <init>(ILaj/j;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Laj/b;-><init>(ILaj/j;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Laj/x;->b:F

    return v0
.end method

.method public a(FF)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x4000

    .line 19
    div-float v0, p1, v1

    iput v0, p0, Laj/x;->b:F

    .line 20
    div-float v0, p2, v1

    iput v0, p0, Laj/x;->c:F

    .line 21
    return-void
.end method

.method public b()F
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Laj/x;->c:F

    return v0
.end method

.method public c()F
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Laj/x;->b:F

    return v0
.end method

.method public d()F
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Laj/x;->c:F

    return v0
.end method

.method public e()F
    .registers 5

    .prologue
    .line 45
    iget-object v0, p0, Laj/x;->a:Laj/j;

    invoke-virtual {v0}, Laj/j;->c()F

    move-result v0

    .line 46
    iget-object v1, p0, Laj/x;->a:Laj/j;

    invoke-virtual {v1}, Laj/j;->a()F

    move-result v1

    .line 47
    iget-object v2, p0, Laj/x;->a:Laj/j;

    invoke-virtual {v2}, Laj/j;->b()F

    move-result v2

    iget v3, p0, Laj/x;->c:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 48
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
