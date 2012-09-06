.class public Lu/j;
.super Lu/q;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .registers 3
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lu/q;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/j;->d:Z

    .line 42
    invoke-virtual {p0, p1}, Lu/j;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 43
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lu/j;->b:I

    return v0
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lu/j;->d:Z

    if-nez v0, :cond_8

    .line 67
    invoke-virtual {p0, p1, p1}, Lu/j;->a(II)V

    .line 72
    :goto_7
    return-void

    .line 69
    :cond_8
    iget v0, p0, Lu/j;->c:I

    iput v0, p0, Lu/j;->a:I

    .line 70
    iput p1, p0, Lu/j;->b:I

    goto :goto_7
.end method

.method public a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lu/j;->a:I

    .line 51
    iput p2, p0, Lu/j;->b:I

    .line 52
    iput p1, p0, Lu/j;->c:I

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/j;->d:Z

    .line 54
    return-void
.end method

.method public a(J)V
    .registers 7
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Lu/j;->c(J)F

    move-result v0

    .line 100
    iget v1, p0, Lu/j;->a:I

    int-to-float v1, v1

    iget v2, p0, Lu/j;->b:I

    iget v3, p0, Lu/j;->a:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lu/j;->c:I

    .line 101
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lu/j;->c:I

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lu/j;->d:Z

    return v0
.end method
