.class public Lba/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:F

.field private final d:[[Lba/c;

.field private final e:Lbb/f;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F


# direct methods
.method public constructor <init>(Lba/e;IIFLbb/f;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/high16 v8, 0x4000

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lba/d;->f:F

    .line 25
    const v0, 0x3727c5ac

    iput v0, p0, Lba/d;->g:F

    .line 28
    iput v2, p0, Lba/d;->j:F

    .line 29
    iput v2, p0, Lba/d;->k:F

    .line 34
    iput p2, p0, Lba/d;->a:I

    .line 35
    iput p3, p0, Lba/d;->b:I

    .line 36
    iput p4, p0, Lba/d;->c:F

    .line 37
    iput-object p5, p0, Lba/d;->e:Lbb/f;

    .line 39
    int-to-float v0, p3

    div-float/2addr v0, p4

    float-to-int v0, v0

    int-to-float v2, p2

    div-float/2addr v2, p4

    float-to-int v2, v2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, Lba/c;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lba/c;

    iput-object v0, p0, Lba/d;->d:[[Lba/c;

    move v2, v1

    .line 40
    :goto_31
    int-to-float v0, p3

    div-float/2addr v0, p4

    float-to-int v0, v0

    if-ge v2, v0, :cond_69

    move v0, v1

    .line 41
    :goto_37
    int-to-float v3, p2

    div-float/2addr v3, p4

    float-to-int v3, v3

    if-ge v0, v3, :cond_65

    .line 42
    iget-object v3, p0, Lba/d;->d:[[Lba/c;

    aget-object v3, v3, v2

    new-instance v4, Lba/c;

    int-to-float v5, v0

    div-float v6, p4, v8

    add-float/2addr v5, v6

    int-to-float v6, v2

    div-float v7, p4, v8

    add-float/2addr v6, v7

    invoke-direct {v4, p0, v5, v6}, Lba/c;-><init>(Lba/d;FF)V

    aput-object v4, v3, v0

    .line 43
    iget-object v3, p0, Lba/d;->d:[[Lba/c;

    aget-object v3, v3, v2

    aget-object v3, v3, v0

    int-to-float v4, v0

    mul-float/2addr v4, p4

    div-float v5, p4, v8

    add-float/2addr v4, v5

    int-to-float v5, v2

    mul-float/2addr v5, p4

    div-float v6, p4, v8

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lba/c;->a(FF)V

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 40
    :cond_65
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_31

    .line 46
    :cond_69
    return-void
.end method


# virtual methods
.method a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 70
    iget v0, p0, Lba/d;->h:F

    iget v2, p0, Lba/d;->j:F

    add-float/2addr v0, v2

    iput v0, p0, Lba/d;->h:F

    .line 71
    iget v0, p0, Lba/d;->i:F

    iget v2, p0, Lba/d;->k:F

    add-float/2addr v0, v2

    iput v0, p0, Lba/d;->i:F

    move v0, v1

    .line 73
    :goto_10
    iget v2, p0, Lba/d;->b:I

    int-to-float v2, v2

    iget v3, p0, Lba/d;->c:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    if-ge v0, v2, :cond_5d

    move v2, v1

    .line 74
    :goto_1a
    iget v3, p0, Lba/d;->a:I

    int-to-float v3, v3

    iget v4, p0, Lba/d;->c:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    if-ge v2, v3, :cond_5a

    .line 75
    int-to-float v3, v2

    iget v4, p0, Lba/d;->c:F

    mul-float/2addr v3, v4

    .line 76
    int-to-float v3, v0

    iget v4, p0, Lba/d;->c:F

    mul-float/2addr v3, v4

    .line 77
    const/high16 v3, 0x42b4

    .line 78
    const/high16 v4, 0x4307

    .line 79
    add-float/2addr v3, v4

    float-to-double v3, v3

    const-wide v5, 0x3f91df46a2529d39L

    mul-double/2addr v3, v5

    iget-object v5, p0, Lba/d;->d:[[Lba/c;

    aget-object v5, v5, v0

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lba/c;->c()F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3ff921fb54442d18L

    sub-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iput v3, p0, Lba/d;->l:F

    .line 81
    iget-object v3, p0, Lba/d;->d:[[Lba/c;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    iget v4, p0, Lba/d;->l:F

    invoke-virtual {v3, v4}, Lba/c;->a(F)V

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 73
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 84
    :cond_5d
    iget v0, p0, Lba/d;->f:F

    iget v1, p0, Lba/d;->g:F

    add-float/2addr v0, v1

    iput v0, p0, Lba/d;->f:F

    .line 85
    return-void
.end method

.method public a(Lbb/f;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p1, p1}, Lbb/f;->a(Lbb/f;)V

    move v0, v1

    .line 62
    :goto_5
    iget v2, p0, Lba/d;->b:I

    int-to-float v2, v2

    iget v3, p0, Lba/d;->c:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    if-ge v0, v2, :cond_27

    move v2, v1

    .line 63
    :goto_f
    iget v3, p0, Lba/d;->a:I

    int-to-float v3, v3

    iget v4, p0, Lba/d;->c:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    if-ge v2, v3, :cond_24

    .line 64
    iget-object v3, p0, Lba/d;->d:[[Lba/c;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lba/c;->b()V

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 62
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 67
    :cond_27
    return-void
.end method

.method public a()[[Lba/c;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lba/d;->d:[[Lba/c;

    return-object v0
.end method

.method public b()F
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lba/d;->c:F

    return v0
.end method

.method public c()Lbb/f;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lba/d;->e:Lbb/f;

    return-object v0
.end method
