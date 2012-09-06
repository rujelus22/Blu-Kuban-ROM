.class public Lbb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(F)V
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lbb/b;->a:F

    .line 26
    return-void
.end method

.method private a(FFFF)F
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 77
    div-float v0, p4, v3

    div-float v0, p1, v0

    const/high16 v1, 0x3f80

    cmpg-float v1, v0, v1

    if-gez v1, :cond_13

    .line 78
    div-float v1, p3, v3

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    .line 80
    :goto_12
    return v0

    :cond_13
    div-float v1, p3, v3

    sub-float/2addr v0, v3

    mul-float v2, v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    goto :goto_12
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 42
    iget v0, p0, Lbb/b;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbb/b;->c:I

    iget v1, p0, Lbb/b;->b:I

    if-ge v0, v1, :cond_1b

    .line 43
    iget v0, p0, Lbb/b;->c:I

    int-to-float v0, v0

    iget v1, p0, Lbb/b;->d:F

    iget v2, p0, Lbb/b;->e:F

    iget v3, p0, Lbb/b;->b:I

    int-to-float v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lbb/b;->a(FFFF)F

    move-result v0

    iput v0, p0, Lbb/b;->a:F

    .line 48
    :cond_1a
    :goto_1a
    return-void

    .line 44
    :cond_1b
    iget-boolean v0, p0, Lbb/b;->f:Z

    if-eqz v0, :cond_1a

    .line 45
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4069

    mul-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Lbb/b;->b(F)V

    .line 46
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4034

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Lbb/b;->a(I)V

    goto :goto_1a
.end method

.method public a(F)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput p1, p0, Lbb/b;->d:F

    .line 64
    return-void
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lbb/b;->b:I

    .line 74
    return-void
.end method

.method public b()F
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lbb/b;->a:F

    return v0
.end method

.method public b(F)V
    .registers 3
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lbb/b;->a:F

    iput v0, p0, Lbb/b;->d:F

    .line 68
    iget v0, p0, Lbb/b;->d:F

    sub-float v0, p1, v0

    iput v0, p0, Lbb/b;->e:F

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lbb/b;->c:I

    .line 70
    return-void
.end method

.method public c()F
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lbb/b;->e:F

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lbb/b;->b:I

    return v0
.end method
