.class public Lcom/google/googlenav/ui/android/p;
.super Lcom/google/googlenav/ui/s;
.source "SourceFile"

# interfaces
.implements Lat/r;


# static fields
.field private static final A:Landroid/graphics/Rect;

.field private static final z:Landroid/graphics/Rect;


# instance fields
.field private e:I

.field private f:F

.field private g:I

.field private final h:Landroid/graphics/PointF;

.field private i:Z

.field private final j:Landroid/graphics/PointF;

.field private k:F

.field private l:J

.field private m:Landroid/graphics/PointF;

.field private n:Landroid/graphics/PointF;

.field private o:Landroid/graphics/PointF;

.field private p:F

.field private q:Z

.field private r:Landroid/graphics/Paint;

.field private s:Z

.field private t:J

.field private u:J

.field private v:Lcom/google/googlenav/ui/android/L;

.field private w:Lcom/google/googlenav/ui/bL;

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 259
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/p;->z:Landroid/graphics/Rect;

    .line 260
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/p;->A:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lat/p;Lcom/google/googlenav/ui/android/L;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/high16 v1, 0x3f80

    .line 269
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/s;-><init>(Lat/p;)V

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/p;->e:I

    .line 192
    iput v1, p0, Lcom/google/googlenav/ui/android/p;->f:F

    .line 203
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/p;->h:Landroid/graphics/PointF;

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->i:Z

    .line 209
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/p;->j:Landroid/graphics/PointF;

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/android/p;->k:F

    .line 215
    iput-wide v2, p0, Lcom/google/googlenav/ui/android/p;->l:J

    .line 218
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/p;->m:Landroid/graphics/PointF;

    .line 221
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/p;->n:Landroid/graphics/PointF;

    .line 224
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/p;->o:Landroid/graphics/PointF;

    .line 227
    iput v1, p0, Lcom/google/googlenav/ui/android/p;->p:F

    .line 233
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/p;->r:Landroid/graphics/Paint;

    .line 239
    iput-wide v2, p0, Lcom/google/googlenav/ui/android/p;->t:J

    .line 271
    iput-object p2, p0, Lcom/google/googlenav/ui/android/p;->v:Lcom/google/googlenav/ui/android/L;

    .line 273
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->r:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 274
    return-void
.end method

.method private a(F)V
    .registers 3
    .parameter

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->w:Lcom/google/googlenav/ui/bL;

    if-eqz v0, :cond_9

    .line 462
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->w:Lcom/google/googlenav/ui/bL;

    invoke-interface {v0}, Lcom/google/googlenav/ui/bL;->a()V

    .line 464
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->a:Lat/p;

    invoke-virtual {v0}, Lat/p;->c()Lat/Y;

    move-result-object v0

    invoke-virtual {v0}, Lat/Y;->a()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/p;->g:I

    .line 465
    iget v0, p0, Lcom/google/googlenav/ui/android/p;->g:I

    iput v0, p0, Lcom/google/googlenav/ui/android/p;->e:I

    .line 469
    iget v0, p0, Lcom/google/googlenav/ui/android/p;->f:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/googlenav/ui/android/p;->f:F

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->d:Z

    .line 473
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/p;->p()V

    .line 474
    return-void
.end method

.method private a(ILandroid/graphics/PointF;F)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 551
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->h:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 552
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->h:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    .line 553
    iget v0, p0, Lcom/google/googlenav/ui/android/p;->k:F

    .line 558
    iget v3, p0, Lcom/google/googlenav/ui/android/p;->p:F

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5e

    .line 562
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 564
    invoke-static {p2, p3, v0}, Lcom/google/googlenav/ui/android/p;->a(Landroid/graphics/PointF;FLandroid/graphics/PointF;)V

    .line 565
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 566
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 571
    :goto_1f
    iget v2, p0, Lcom/google/googlenav/ui/android/p;->x:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 572
    iget v3, p0, Lcom/google/googlenav/ui/android/p;->y:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 573
    mul-float v4, p3, v2

    sub-float v2, v4, v2

    add-float/2addr v1, v2

    .line 574
    mul-float v2, p3, v3

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 577
    iget-object v2, p0, Lcom/google/googlenav/ui/android/p;->a:Lat/p;

    invoke-static {p1}, Lat/Y;->b(I)Lat/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lat/p;->a(Lat/Y;)V

    .line 579
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x230

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/googlenav/ui/android/p;->u:J

    .line 583
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    neg-int v1, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    neg-int v0, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/googlenav/ui/android/p;->a(IIZ)V

    .line 586
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/p;->c(I)V

    .line 587
    return-void

    :cond_5e
    move p3, v0

    move v0, v1

    move v1, v2

    goto :goto_1f
.end method

.method private a(J)V
    .registers 8
    .parameter

    .prologue
    const/high16 v4, 0x437f

    .line 792
    iget-wide v0, p0, Lcom/google/googlenav/ui/android/p;->t:J

    const-wide/16 v2, 0xe6

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_18

    .line 793
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/p;->p()V

    .line 794
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/p;->q()V

    .line 798
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->r:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 806
    :goto_17
    return-void

    .line 802
    :cond_18
    iget-wide v0, p0, Lcom/google/googlenav/ui/android/p;->t:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x4366

    div-float/2addr v0, v1

    .line 804
    mul-float/2addr v0, v4

    sub-float v0, v4, v0

    float-to-int v0, v0

    .line 805
    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->r:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_17
.end method

.method private a(Landroid/graphics/PointF;F)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->i:Z

    .line 515
    iget v0, p0, Lcom/google/googlenav/ui/android/p;->k:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/google/googlenav/ui/android/p;->k:F

    .line 516
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/android/p;->l:J

    .line 520
    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->h:Landroid/graphics/PointF;

    .line 521
    iget v0, p0, Lcom/google/googlenav/ui/android/p;->f:F

    .line 522
    iget v2, p0, Lcom/google/googlenav/ui/android/p;->p:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2a

    .line 525
    iget v0, p0, Lcom/google/googlenav/ui/android/p;->p:F

    .line 526
    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->m:Landroid/graphics/PointF;

    .line 530
    iget v2, p0, Lcom/google/googlenav/ui/android/p;->p:F

    iput v2, p0, Lcom/google/googlenav/ui/android/p;->f:F

    .line 534
    :cond_2a
    iget-object v2, p0, Lcom/google/googlenav/ui/android/p;->o:Landroid/graphics/PointF;

    invoke-virtual {v2, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 535
    iget v2, p0, Lcom/google/googlenav/ui/android/p;->k:F

    div-float/2addr v2, v0

    invoke-static {p1, v2, v1}, Lcom/google/googlenav/ui/android/p;->a(Landroid/graphics/PointF;FLandroid/graphics/PointF;)V

    .line 537
    iget-object v2, p0, Lcom/google/googlenav/ui/android/p;->n:Landroid/graphics/PointF;

    invoke-virtual {v2, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 538
    iput v0, p0, Lcom/google/googlenav/ui/android/p;->p:F

    .line 539
    return-void
.end method

.method private static a(Landroid/graphics/PointF;FLandroid/graphics/PointF;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 758
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 759
    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    .line 761
    mul-float v2, v0, p1

    sub-float v0, v2, v0

    .line 762
    mul-float v2, v1, p1

    sub-float v1, v2, v1

    .line 764
    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float v0, v2, v0

    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 765
    iget v0, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/PointF;->y:F

    .line 766
    return-void
.end method

.method private b(J)V
    .registers 8
    .parameter

    .prologue
    .line 837
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->i:Z

    if-nez v0, :cond_19

    .line 838
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->m:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->n:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 839
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->m:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->n:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 840
    iget v0, p0, Lcom/google/googlenav/ui/android/p;->k:F

    iput v0, p0, Lcom/google/googlenav/ui/android/p;->p:F

    .line 870
    :goto_18
    return-void

    .line 845
    :cond_19
    iget-wide v0, p0, Lcom/google/googlenav/ui/android/p;->l:J

    const-wide/16 v2, 0x14a

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_45

    .line 848
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->i:Z

    .line 849
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->m:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->n:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 850
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->m:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->n:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 851
    iget v0, p0, Lcom/google/googlenav/ui/android/p;->k:F

    iput v0, p0, Lcom/google/googlenav/ui/android/p;->p:F

    .line 856
    iget v0, p0, Lcom/google/googlenav/ui/android/p;->k:F

    iput v0, p0, Lcom/google/googlenav/ui/android/p;->f:F

    .line 857
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->h:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->n:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto :goto_18

    .line 862
    :cond_45
    iget-wide v0, p0, Lcom/google/googlenav/ui/android/p;->l:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x43a5

    div-float/2addr v0, v1

    .line 863
    iget v1, p0, Lcom/google/googlenav/ui/android/p;->f:F

    iget v2, p0, Lcom/google/googlenav/ui/android/p;->k:F

    iget v3, p0, Lcom/google/googlenav/ui/android/p;->f:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/googlenav/ui/android/p;->p:F

    .line 866
    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->m:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/p;->o:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/google/googlenav/ui/android/p;->n:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/google/googlenav/ui/android/p;->o:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 868
    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->m:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/p;->o:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/google/googlenav/ui/android/p;->n:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/google/googlenav/ui/android/p;->o:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto :goto_18
.end method

.method private c(I)V
    .registers 4
    .parameter

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->a:Lat/p;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->a:Lat/p;

    invoke-virtual {v1}, Lat/p;->d()Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/p;->e(Lat/B;)I

    move-result v0

    .line 598
    if-le p1, v0, :cond_17

    .line 599
    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->a:Lat/p;

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    invoke-virtual {v1, v0}, Lat/p;->a(Lat/Y;)V

    .line 601
    :cond_17
    return-void
.end method

.method private static d(I)F
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 609
    if-ltz p0, :cond_7

    .line 610
    shl-int v0, v2, p0

    int-to-float v0, v0

    .line 612
    :goto_6
    return v0

    :cond_7
    const/high16 v0, 0x3f80

    neg-int v1, p0

    shl-int v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_6
.end method

.method private m()V
    .registers 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->a:Lat/p;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->a:Lat/p;

    invoke-virtual {v1}, Lat/p;->d()Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/p;->d(Lat/B;)V

    .line 366
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/googlenav/ui/android/p;->u:J

    .line 367
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->w:Lcom/google/googlenav/ui/bL;

    if-eqz v0, :cond_1b

    .line 368
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->w:Lcom/google/googlenav/ui/bL;

    invoke-interface {v0}, Lcom/google/googlenav/ui/bL;->b()V

    .line 370
    :cond_1b
    return-void
.end method

.method private n()V
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->v:Lcom/google/googlenav/ui/android/L;

    if-nez v0, :cond_5

    .line 381
    :cond_4
    :goto_4
    return-void

    .line 377
    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->v:Lcom/google/googlenav/ui/android/L;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/L;->c()Landroid/view/View;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_4

    .line 379
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_4
.end method

.method private o()V
    .registers 5

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/p;->r()I

    move-result v0

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/google/googlenav/ui/android/p;->x:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/googlenav/ui/android/p;->y:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/p;->a(ILandroid/graphics/PointF;)V

    .line 483
    return-void
.end method

.method private p()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 697
    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->q:Z

    .line 698
    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->s:Z

    .line 699
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->r:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 700
    return-void
.end method

.method private q()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 706
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/p;->e:I

    .line 707
    iput v1, p0, Lcom/google/googlenav/ui/android/p;->f:F

    .line 708
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->h:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->i:Z

    .line 710
    iput v1, p0, Lcom/google/googlenav/ui/android/p;->k:F

    .line 711
    iput v1, p0, Lcom/google/googlenav/ui/android/p;->p:F

    .line 712
    return-void
.end method

.method private r()I
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    .line 723
    iget v0, p0, Lcom/google/googlenav/ui/android/p;->f:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_19

    move v3, v4

    .line 724
    :goto_b
    if-eqz v3, :cond_1b

    iget v0, p0, Lcom/google/googlenav/ui/android/p;->f:F

    div-float v0, v2, v0

    .line 725
    :goto_11
    float-to-int v2, v0

    .line 727
    :goto_12
    if-le v2, v4, :cond_1e

    .line 728
    shr-int/lit8 v2, v2, 0x1

    .line 729
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_19
    move v3, v1

    .line 723
    goto :goto_b

    .line 724
    :cond_1b
    iget v0, p0, Lcom/google/googlenav/ui/android/p;->f:F

    goto :goto_11

    .line 735
    :cond_1e
    const-wide/high16 v4, 0x3ff0

    float-to-double v6, v0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fd0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_35

    .line 736
    add-int/lit8 v0, v1, 0x1

    .line 738
    :goto_2e
    iget v1, p0, Lcom/google/googlenav/ui/android/p;->e:I

    if-eqz v3, :cond_33

    neg-int v0, v0

    :cond_33
    add-int/2addr v0, v1

    return v0

    :cond_35
    move v0, v1

    goto :goto_2e
.end method


# virtual methods
.method public a(I)I
    .registers 4
    .parameter

    .prologue
    .line 881
    iget v0, p0, Lcom/google/googlenav/ui/android/p;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 882
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->i:Z

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/google/googlenav/ui/android/p;->p:F

    .line 883
    :goto_b
    iget v1, p0, Lcom/google/googlenav/ui/android/p;->e:I

    invoke-static {v1}, Lat/Y;->b(I)Lat/Y;

    move-result-object v1

    invoke-virtual {v1, p1}, Lat/Y;->a(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 885
    :goto_18
    return v0

    .line 882
    :cond_19
    iget v0, p0, Lcom/google/googlenav/ui/android/p;->f:F

    goto :goto_b

    .line 885
    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->a:Lat/p;

    invoke-virtual {v0}, Lat/p;->c()Lat/Y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lat/Y;->a(I)I

    move-result v0

    goto :goto_18
.end method

.method public a(ILandroid/graphics/PointF;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 494
    iget v0, p0, Lcom/google/googlenav/ui/android/p;->e:I

    sub-int v0, p1, v0

    invoke-static {v0}, Lcom/google/googlenav/ui/android/p;->d(I)F

    move-result v1

    .line 496
    invoke-direct {p0, p2, v1}, Lcom/google/googlenav/ui/android/p;->a(Landroid/graphics/PointF;F)V

    .line 499
    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/p;->q:Z

    iget v0, p0, Lcom/google/googlenav/ui/android/p;->e:I

    if-eq p1, v0, :cond_19

    const/4 v0, 0x1

    :goto_12
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->q:Z

    .line 501
    invoke-direct {p0, p1, p2, v1}, Lcom/google/googlenav/ui/android/p;->a(ILandroid/graphics/PointF;F)V

    .line 502
    return-void

    .line 499
    :cond_19
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public a(LZ/b;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 423
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->i:Z

    if-eqz v0, :cond_6

    .line 452
    :goto_5
    return-void

    .line 430
    :cond_6
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->s:Z

    if-eqz v0, :cond_11

    .line 431
    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/p;->s:Z

    .line 432
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 435
    :cond_11
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->q:Z

    if-eqz v0, :cond_4d

    invoke-virtual {p1}, LZ/b;->e()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 436
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->h:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->h:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/p;->k()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/android/p;->h:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/p;->l()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 439
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->m:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->m:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/p;->k()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/android/p;->m:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/p;->l()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 442
    :cond_4d
    if-eqz p2, :cond_5b

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->d:Z

    if-eqz v0, :cond_5b

    iget v0, p0, Lcom/google/googlenav/ui/android/p;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5b

    .line 447
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/p;->o()V

    .line 451
    :cond_5b
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/s;->a(LZ/b;Z)V

    goto :goto_5
.end method

.method public a(Landroid/graphics/Point;)V
    .registers 6
    .parameter

    .prologue
    .line 896
    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->h:Landroid/graphics/PointF;

    .line 897
    iget v0, p0, Lcom/google/googlenav/ui/android/p;->f:F

    .line 898
    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/p;->i:Z

    if-eqz v2, :cond_c

    .line 899
    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->m:Landroid/graphics/PointF;

    .line 900
    iget v0, p0, Lcom/google/googlenav/ui/android/p;->p:F

    .line 902
    :cond_c
    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget v3, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/p;->k()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 903
    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/p;->l()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 904
    return-void
.end method

.method protected a(Lat/Y;II)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 626
    if-nez p1, :cond_3

    .line 632
    :goto_2
    return-void

    .line 630
    :cond_3
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/p;->a(F)V

    .line 631
    invoke-virtual {p1}, Lat/Y;->a()I

    move-result v0

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/p;->a(ILandroid/graphics/PointF;)V

    goto :goto_2
.end method

.method public a(Lcom/google/googlenav/ui/bL;)V
    .registers 2
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/googlenav/ui/android/p;->w:Lcom/google/googlenav/ui/bL;

    .line 279
    return-void
.end method

.method public a(LT/e;LS/f;IIIIIIII)Z
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 390
    if-nez p2, :cond_4

    .line 401
    :cond_3
    :goto_3
    return v0

    .line 393
    :cond_4
    check-cast p2, LT/f;

    invoke-virtual {p2}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 394
    if-eqz v1, :cond_3

    .line 397
    sget-object v0, Lcom/google/googlenav/ui/android/p;->z:Landroid/graphics/Rect;

    add-int v2, p7, p9

    add-int v3, p8, p10

    invoke-virtual {v0, p7, p8, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 398
    sget-object v0, Lcom/google/googlenav/ui/android/p;->A:Landroid/graphics/Rect;

    add-int v2, p3, p5

    add-int v3, p4, p6

    invoke-virtual {v0, p3, p4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 400
    invoke-virtual {p1}, LT/e;->f()Landroid/graphics/Canvas;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/android/p;->z:Landroid/graphics/Rect;

    sget-object v3, Lcom/google/googlenav/ui/android/p;->A:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/googlenav/ui/android/p;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 401
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public a(Laj/t;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x1

    .line 643
    invoke-virtual {p1}, Laj/t;->i()Z

    move-result v2

    if-eqz v2, :cond_3f

    iget v2, p0, Lcom/google/googlenav/ui/android/p;->e:I

    if-eq v2, v4, :cond_15

    iget v2, p0, Lcom/google/googlenav/ui/android/p;->e:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/p;->r()I

    move-result v3

    if-ne v2, v3, :cond_3f

    .line 647
    :cond_15
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/p;->q()V

    .line 650
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/p;->p()V

    .line 653
    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->a:Lat/p;

    invoke-virtual {v1}, Lat/p;->c()Lat/Y;

    move-result-object v1

    invoke-virtual {v1}, Lat/Y;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lat/Y;->b(I)Lat/Y;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/p;->a:Lat/p;

    invoke-virtual {v2}, Lat/p;->t()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/google/googlenav/ui/android/p;->a:Lat/p;

    invoke-virtual {v3}, Lat/p;->s()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/googlenav/ui/android/p;->a(Lat/Y;II)V

    .line 690
    :goto_3e
    return v0

    .line 659
    :cond_3f
    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/p;->i:Z

    if-eqz v2, :cond_45

    move v0, v1

    .line 661
    goto :goto_3e

    .line 665
    :cond_45
    invoke-virtual {p1}, Laj/t;->f()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 666
    invoke-virtual {p1}, Laj/t;->e()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/android/p;->a(F)V

    goto :goto_3e

    .line 668
    :cond_53
    invoke-virtual {p1}, Laj/t;->g()Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/p;->d:Z

    if-eqz v2, :cond_a7

    iget v2, p0, Lcom/google/googlenav/ui/android/p;->e:I

    if-eq v2, v4, :cond_a7

    .line 670
    invoke-virtual {p1}, Laj/t;->e()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fefae147ae147aeL

    cmpl-double v2, v2, v4

    if-lez v2, :cond_7f

    invoke-virtual {p1}, Laj/t;->e()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3ff003afb7e90ff9L

    cmpg-double v2, v2, v4

    if-gez v2, :cond_7f

    move v0, v1

    .line 674
    goto :goto_3e

    .line 676
    :cond_7f
    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->j:Landroid/graphics/PointF;

    invoke-virtual {p1}, Laj/t;->a()F

    move-result v2

    invoke-virtual {p1}, Laj/t;->b()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 679
    iget v1, p0, Lcom/google/googlenav/ui/android/p;->f:F

    invoke-virtual {p1}, Laj/t;->e()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/google/googlenav/ui/android/p;->f:F

    .line 680
    iget-object v1, p0, Lcom/google/googlenav/ui/android/p;->j:Landroid/graphics/PointF;

    invoke-virtual {p1}, Laj/t;->e()F

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/android/p;->h:Landroid/graphics/PointF;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/android/p;->a(Landroid/graphics/PointF;FLandroid/graphics/PointF;)V

    .line 684
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/p;->r()I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/android/p;->g:I

    goto :goto_3e

    .line 686
    :cond_a7
    invoke-virtual {p1}, Laj/t;->h()Z

    move-result v2

    if-eqz v2, :cond_b9

    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/p;->d:Z

    if-eqz v2, :cond_b9

    iget v2, p0, Lcom/google/googlenav/ui/android/p;->e:I

    if-eq v2, v4, :cond_b9

    .line 687
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/p;->o()V

    goto :goto_3e

    :cond_b9
    move v0, v1

    .line 690
    goto :goto_3e
.end method

.method protected b(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 409
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/s;->b(II)V

    .line 412
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->r:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 413
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/p;->q()V

    .line 414
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/p;->p()V

    .line 415
    return-void
.end method

.method public b(Lcom/google/googlenav/ui/u;)V
    .registers 15
    .parameter

    .prologue
    const/high16 v12, 0x4000

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 296
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->b()LS/e;

    move-result-object v1

    .line 297
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->e()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/p;->x:I

    .line 298
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->f()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/p;->y:I

    .line 301
    iget v2, p0, Lcom/google/googlenav/ui/android/p;->f:F

    .line 302
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->h:Landroid/graphics/PointF;

    .line 303
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v8

    .line 306
    iget-boolean v3, p0, Lcom/google/googlenav/ui/android/p;->s:Z

    if-nez v3, :cond_ca

    iget-boolean v3, p0, Lcom/google/googlenav/ui/android/p;->q:Z

    if-eqz v3, :cond_ca

    iget-boolean v3, p0, Lcom/google/googlenav/ui/android/p;->d:Z

    if-nez v3, :cond_ca

    move v5, v4

    .line 309
    :goto_31
    if-eqz v5, :cond_cd

    iget-boolean v3, p0, Lcom/google/googlenav/ui/android/p;->i:Z

    if-nez v3, :cond_cd

    iget-object v3, p0, Lcom/google/googlenav/ui/android/p;->a:Lat/p;

    iget-object v6, p0, Lcom/google/googlenav/ui/android/p;->a:Lat/p;

    invoke-virtual {v6}, Lat/p;->d()Lat/B;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Lat/p;->a(Lat/B;Z)Z

    move-result v3

    if-eqz v3, :cond_cd

    move v3, v4

    .line 313
    :goto_46
    if-nez v3, :cond_54

    if-eqz v5, :cond_58

    iget-wide v5, p0, Lcom/google/googlenav/ui/android/p;->l:J

    sub-long v5, v8, v5

    const-wide/16 v10, 0x3a98

    cmp-long v3, v5, v10

    if-lez v3, :cond_58

    .line 314
    :cond_54
    iput-boolean v4, p0, Lcom/google/googlenav/ui/android/p;->s:Z

    .line 315
    iput-wide v8, p0, Lcom/google/googlenav/ui/android/p;->t:J

    .line 318
    :cond_58
    iget-boolean v3, p0, Lcom/google/googlenav/ui/android/p;->s:Z

    if-eqz v3, :cond_5f

    .line 319
    invoke-direct {p0, v8, v9}, Lcom/google/googlenav/ui/android/p;->a(J)V

    .line 322
    :cond_5f
    iget-boolean v3, p0, Lcom/google/googlenav/ui/android/p;->i:Z

    if-eqz v3, :cond_6e

    iget-boolean v3, p0, Lcom/google/googlenav/ui/android/p;->d:Z

    if-nez v3, :cond_6e

    .line 323
    invoke-direct {p0, v8, v9}, Lcom/google/googlenav/ui/android/p;->b(J)V

    .line 324
    iget v2, p0, Lcom/google/googlenav/ui/android/p;->p:F

    .line 325
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->m:Landroid/graphics/PointF;

    .line 328
    :cond_6e
    iget-wide v3, p0, Lcom/google/googlenav/ui/android/p;->u:J

    cmp-long v3, v3, v8

    if-gez v3, :cond_77

    .line 329
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/p;->m()V

    .line 333
    :cond_77
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/google/googlenav/ui/android/p;->x:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/p;->k()I

    move-result v4

    add-int/2addr v3, v4

    .line 334
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/google/googlenav/ui/android/p;->y:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v12

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/p;->l()I

    move-result v4

    add-int/2addr v4, v0

    .line 336
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->b:LS/f;

    invoke-interface {v0}, LS/f;->b()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    .line 337
    iget-object v5, p0, Lcom/google/googlenav/ui/android/p;->b:LS/f;

    invoke-interface {v5}, LS/f;->a()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    .line 338
    check-cast v1, LT/e;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/p;->b:LS/f;

    float-to-int v5, v5

    float-to-int v6, v0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->b:LS/f;

    invoke-interface {v0}, LS/f;->a()I

    move-result v9

    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->b:LS/f;

    invoke-interface {v0}, LS/f;->b()I

    move-result v10

    move-object v0, p0

    move v8, v7

    invoke-virtual/range {v0 .. v10}, Lcom/google/googlenav/ui/android/p;->a(LT/e;LS/f;IIIIIIII)Z

    .line 345
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/p;->i()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 346
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/p;->n()V

    .line 348
    :cond_c9
    return-void

    :cond_ca
    move v5, v7

    .line 306
    goto/16 :goto_31

    :cond_cd
    move v3, v7

    .line 309
    goto/16 :goto_46
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/google/googlenav/ui/android/p;->r:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 773
    invoke-super {p0}, Lcom/google/googlenav/ui/s;->f()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->i:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->s:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->q:Z

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->i:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->s:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/p;->s:Z

    return v0
.end method
