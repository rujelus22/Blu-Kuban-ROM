.class public final Lcom/google/zxing/e/b/d;
.super Lcom/google/zxing/j;
.source "SourceFile"


# instance fields
.field private final a:F

.field private b:I


# direct methods
.method constructor <init>(FFF)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/zxing/e/b/d;-><init>(FFFI)V

    .line 35
    return-void
.end method

.method private constructor <init>(FFFI)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/j;-><init>(FF)V

    .line 39
    iput p3, p0, Lcom/google/zxing/e/b/d;->a:F

    .line 40
    iput p4, p0, Lcom/google/zxing/e/b/d;->b:I

    .line 41
    return-void
.end method


# virtual methods
.method final a(FFF)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/google/zxing/e/b/d;->b()F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_32

    invoke-virtual {p0}, Lcom/google/zxing/e/b/d;->a()F

    move-result v1

    sub-float v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_32

    .line 61
    iget v1, p0, Lcom/google/zxing/e/b/d;->a:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 62
    const/high16 v2, 0x3f80

    cmpg-float v2, v1, v2

    if-lez v2, :cond_31

    iget v2, p0, Lcom/google/zxing/e/b/d;->a:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_32

    :cond_31
    const/4 v0, 0x1

    .line 64
    :cond_32
    return v0
.end method

.method final b(FFF)Lcom/google/zxing/e/b/d;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/google/zxing/e/b/d;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 74
    iget v1, p0, Lcom/google/zxing/e/b/d;->b:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/zxing/e/b/d;->a()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v1, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 75
    iget v2, p0, Lcom/google/zxing/e/b/d;->b:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/zxing/e/b/d;->b()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 76
    iget v3, p0, Lcom/google/zxing/e/b/d;->b:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/zxing/e/b/d;->a:F

    mul-float/2addr v3, v4

    add-float/2addr v3, p3

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 77
    new-instance v4, Lcom/google/zxing/e/b/d;

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/google/zxing/e/b/d;-><init>(FFFI)V

    return-object v4
.end method

.method public final c()F
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/google/zxing/e/b/d;->a:F

    return v0
.end method

.method final d()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/google/zxing/e/b/d;->b:I

    return v0
.end method
