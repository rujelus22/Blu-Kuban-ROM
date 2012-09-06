.class public Lu/i;
.super Lu/q;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .registers 3
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lu/q;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/i;->d:Z

    .line 27
    invoke-virtual {p0, p1}, Lu/i;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lu/i;->b:F

    return v0
.end method

.method public a(F)V
    .registers 3
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lu/i;->d:Z

    if-nez v0, :cond_8

    .line 52
    invoke-virtual {p0, p1, p1}, Lu/i;->a(FF)V

    .line 57
    :goto_7
    return-void

    .line 54
    :cond_8
    iget v0, p0, Lu/i;->c:F

    iput v0, p0, Lu/i;->a:F

    .line 55
    iput p1, p0, Lu/i;->b:F

    goto :goto_7
.end method

.method public a(FF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 35
    iput p1, p0, Lu/i;->a:F

    .line 36
    iput p2, p0, Lu/i;->b:F

    .line 37
    iput p1, p0, Lu/i;->c:F

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/i;->d:Z

    .line 39
    return-void
.end method

.method public b()F
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lu/i;->c:F

    return v0
.end method

.method public b(J)V
    .registers 7
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lu/i;->c(J)F

    move-result v0

    .line 85
    iget v1, p0, Lu/i;->a:F

    iget v2, p0, Lu/i;->b:F

    iget v3, p0, Lu/i;->a:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lu/i;->c:F

    .line 86
    return-void
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lu/i;->d:Z

    return v0
.end method
