.class public Lcom/google/googlenav/ui/android/q;
.super Lcom/google/googlenav/ui/A;

# interfaces
.implements LaJ/r;


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

.field private v:Lcom/google/googlenav/ui/android/z;

.field private w:Lcom/google/googlenav/ui/bR;

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/q;->z:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/q;->A:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(LaJ/p;Lcom/google/googlenav/ui/android/z;)V
    .registers 7

    const-wide/16 v2, 0x0

    const/high16 v1, 0x3f80

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/A;-><init>(LaJ/p;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/q;->e:I

    iput v1, p0, Lcom/google/googlenav/ui/android/q;->f:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/q;->h:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->i:Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/q;->j:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/android/q;->k:F

    iput-wide v2, p0, Lcom/google/googlenav/ui/android/q;->l:J

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/q;->m:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/q;->n:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/q;->o:Landroid/graphics/PointF;

    iput v1, p0, Lcom/google/googlenav/ui/android/q;->p:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/q;->r:Landroid/graphics/Paint;

    iput-wide v2, p0, Lcom/google/googlenav/ui/android/q;->t:J

    iput-object p2, p0, Lcom/google/googlenav/ui/android/q;->v:Lcom/google/googlenav/ui/android/z;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->r:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method private a(F)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->w:Lcom/google/googlenav/ui/bR;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->w:Lcom/google/googlenav/ui/bR;

    invoke-interface {v0}, Lcom/google/googlenav/ui/bR;->a()V

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->a:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->c()LaJ/Y;

    move-result-object v0

    invoke-virtual {v0}, LaJ/Y;->a()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/q;->g:I

    iget v0, p0, Lcom/google/googlenav/ui/android/q;->g:I

    iput v0, p0, Lcom/google/googlenav/ui/android/q;->e:I

    iget v0, p0, Lcom/google/googlenav/ui/android/q;->f:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/googlenav/ui/android/q;->f:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->d:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/q;->p()V

    return-void
.end method

.method private a(ILandroid/graphics/PointF;F)V
    .registers 10

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->h:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->h:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget v0, p0, Lcom/google/googlenav/ui/android/q;->k:F

    iget v3, p0, Lcom/google/googlenav/ui/android/q;->p:F

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5e

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {p2, p3, v0}, Lcom/google/googlenav/ui/android/q;->a(Landroid/graphics/PointF;FLandroid/graphics/PointF;)V

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    :goto_1f
    iget v2, p0, Lcom/google/googlenav/ui/android/q;->x:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/googlenav/ui/android/q;->y:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float v4, p3, v2

    sub-float v2, v4, v2

    add-float/2addr v1, v2

    mul-float v2, p3, v3

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/android/q;->a:LaJ/p;

    invoke-static {p1}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v3

    invoke-virtual {v2, v3}, LaJ/p;->a(LaJ/Y;)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->v()Laf/a;

    move-result-object v2

    invoke-interface {v2}, Laf/a;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x230

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/googlenav/ui/android/q;->u:J

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    neg-int v1, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    neg-int v0, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/googlenav/ui/android/q;->a(IIZ)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/q;->c(I)V

    return-void

    :cond_5e
    move p3, v0

    move v0, v1

    move v1, v2

    goto :goto_1f
.end method

.method private a(J)V
    .registers 8

    const/high16 v4, 0x437f

    iget-wide v0, p0, Lcom/google/googlenav/ui/android/q;->t:J

    const-wide/16 v2, 0xe6

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_18

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/q;->p()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/q;->q()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->r:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_17
    return-void

    :cond_18
    iget-wide v0, p0, Lcom/google/googlenav/ui/android/q;->t:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x4366

    div-float/2addr v0, v1

    mul-float/2addr v0, v4

    sub-float v0, v4, v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->r:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_17
.end method

.method private a(Landroid/graphics/PointF;F)V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->i:Z

    iget v0, p0, Lcom/google/googlenav/ui/android/q;->k:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/google/googlenav/ui/android/q;->k:F

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/android/q;->l:J

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->h:Landroid/graphics/PointF;

    iget v0, p0, Lcom/google/googlenav/ui/android/q;->f:F

    iget v2, p0, Lcom/google/googlenav/ui/android/q;->p:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2a

    iget v0, p0, Lcom/google/googlenav/ui/android/q;->p:F

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->m:Landroid/graphics/PointF;

    iget v2, p0, Lcom/google/googlenav/ui/android/q;->p:F

    iput v2, p0, Lcom/google/googlenav/ui/android/q;->f:F

    :cond_2a
    iget-object v2, p0, Lcom/google/googlenav/ui/android/q;->o:Landroid/graphics/PointF;

    invoke-virtual {v2, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget v2, p0, Lcom/google/googlenav/ui/android/q;->k:F

    div-float/2addr v2, v0

    invoke-static {p1, v2, v1}, Lcom/google/googlenav/ui/android/q;->a(Landroid/graphics/PointF;FLandroid/graphics/PointF;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/android/q;->n:Landroid/graphics/PointF;

    invoke-virtual {v2, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iput v0, p0, Lcom/google/googlenav/ui/android/q;->p:F

    return-void
.end method

.method private static a(Landroid/graphics/PointF;FLandroid/graphics/PointF;)V
    .registers 6

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    mul-float v2, v0, p1

    sub-float v0, v2, v0

    mul-float v2, v1, p1

    sub-float v1, v2, v1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float v0, v2, v0

    iput v0, p2, Landroid/graphics/PointF;->x:F

    iget v0, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private b(J)V
    .registers 8

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->i:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->m:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->n:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->m:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->n:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget v0, p0, Lcom/google/googlenav/ui/android/q;->k:F

    iput v0, p0, Lcom/google/googlenav/ui/android/q;->p:F

    :goto_18
    return-void

    :cond_19
    iget-wide v0, p0, Lcom/google/googlenav/ui/android/q;->l:J

    const-wide/16 v2, 0x14a

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_45

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->i:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->m:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->n:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->m:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->n:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget v0, p0, Lcom/google/googlenav/ui/android/q;->k:F

    iput v0, p0, Lcom/google/googlenav/ui/android/q;->p:F

    iget v0, p0, Lcom/google/googlenav/ui/android/q;->k:F

    iput v0, p0, Lcom/google/googlenav/ui/android/q;->f:F

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->h:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->n:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto :goto_18

    :cond_45
    iget-wide v0, p0, Lcom/google/googlenav/ui/android/q;->l:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x43a5

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/googlenav/ui/android/q;->f:F

    iget v2, p0, Lcom/google/googlenav/ui/android/q;->k:F

    iget v3, p0, Lcom/google/googlenav/ui/android/q;->f:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/googlenav/ui/android/q;->p:F

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->m:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/q;->o:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/google/googlenav/ui/android/q;->n:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/google/googlenav/ui/android/q;->o:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->m:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/q;->o:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/google/googlenav/ui/android/q;->n:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/google/googlenav/ui/android/q;->o:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto :goto_18
.end method

.method private c(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->a:LaJ/p;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->a:LaJ/p;

    invoke-virtual {v1}, LaJ/p;->d()LaJ/B;

    move-result-object v1

    invoke-virtual {v0, v1}, LaJ/p;->f(LaJ/B;)I

    move-result v0

    if-le p1, v0, :cond_17

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->a:LaJ/p;

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    invoke-virtual {v1, v0}, LaJ/p;->a(LaJ/Y;)V

    :cond_17
    return-void
.end method

.method private static d(I)F
    .registers 4

    const/4 v2, 0x1

    if-ltz p0, :cond_7

    shl-int v0, v2, p0

    int-to-float v0, v0

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

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->a:LaJ/p;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->a:LaJ/p;

    invoke-virtual {v1}, LaJ/p;->d()LaJ/B;

    move-result-object v1

    invoke-virtual {v0, v1}, LaJ/p;->e(LaJ/B;)V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/googlenav/ui/android/q;->u:J

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->w:Lcom/google/googlenav/ui/bR;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->w:Lcom/google/googlenav/ui/bR;

    invoke-interface {v0}, Lcom/google/googlenav/ui/bR;->b()V

    :cond_1b
    return-void
.end method

.method private n()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->v:Lcom/google/googlenav/ui/android/z;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->v:Lcom/google/googlenav/ui/android/z;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/z;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_4
.end method

.method private o()V
    .registers 5

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/q;->r()I

    move-result v0

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/google/googlenav/ui/android/q;->x:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/googlenav/ui/android/q;->y:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/q;->a(ILandroid/graphics/PointF;)V

    return-void
.end method

.method private p()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->q:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->s:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->r:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private q()V
    .registers 4

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/q;->e:I

    iput v1, p0, Lcom/google/googlenav/ui/android/q;->f:F

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->h:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->i:Z

    iput v1, p0, Lcom/google/googlenav/ui/android/q;->k:F

    iput v1, p0, Lcom/google/googlenav/ui/android/q;->p:F

    return-void
.end method

.method private r()I
    .registers 9

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    iget v0, p0, Lcom/google/googlenav/ui/android/q;->f:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_19

    move v3, v4

    :goto_b
    if-eqz v3, :cond_1b

    iget v0, p0, Lcom/google/googlenav/ui/android/q;->f:F

    div-float v0, v2, v0

    :goto_11
    float-to-int v2, v0

    :goto_12
    if-le v2, v4, :cond_1e

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_19
    move v3, v1

    goto :goto_b

    :cond_1b
    iget v0, p0, Lcom/google/googlenav/ui/android/q;->f:F

    goto :goto_11

    :cond_1e
    const-wide/high16 v4, 0x3ff0

    float-to-double v6, v0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fd0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_35

    add-int/lit8 v0, v1, 0x1

    :goto_2e
    iget v1, p0, Lcom/google/googlenav/ui/android/q;->e:I

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

    iget v0, p0, Lcom/google/googlenav/ui/android/q;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->i:Z

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/google/googlenav/ui/android/q;->p:F

    :goto_b
    iget v1, p0, Lcom/google/googlenav/ui/android/q;->e:I

    invoke-static {v1}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v1

    invoke-virtual {v1, p1}, LaJ/Y;->a(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_18
    return v0

    :cond_19
    iget v0, p0, Lcom/google/googlenav/ui/android/q;->f:F

    goto :goto_b

    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->a:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->c()LaJ/Y;

    move-result-object v0

    invoke-virtual {v0, p1}, LaJ/Y;->a(I)I

    move-result v0

    goto :goto_18
.end method

.method public a(ILandroid/graphics/PointF;)V
    .registers 6

    iget v0, p0, Lcom/google/googlenav/ui/android/q;->e:I

    sub-int v0, p1, v0

    invoke-static {v0}, Lcom/google/googlenav/ui/android/q;->d(I)F

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/google/googlenav/ui/android/q;->a(Landroid/graphics/PointF;F)V

    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/q;->q:Z

    iget v0, p0, Lcom/google/googlenav/ui/android/q;->e:I

    if-eq p1, v0, :cond_19

    const/4 v0, 0x1

    :goto_12
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->q:Z

    invoke-direct {p0, p1, p2, v1}, Lcom/google/googlenav/ui/android/q;->a(ILandroid/graphics/PointF;F)V

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected a(LaJ/Y;II)V
    .registers 8

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/q;->a(F)V

    invoke-virtual {p1}, LaJ/Y;->a()I

    move-result v0

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/q;->a(ILandroid/graphics/PointF;)V

    goto :goto_2
.end method

.method public a(Landroid/graphics/Point;)V
    .registers 6

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->h:Landroid/graphics/PointF;

    iget v0, p0, Lcom/google/googlenav/ui/android/q;->f:F

    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/q;->i:Z

    if-eqz v2, :cond_c

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->m:Landroid/graphics/PointF;

    iget v0, p0, Lcom/google/googlenav/ui/android/q;->p:F

    :cond_c
    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget v3, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/q;->k()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/q;->l()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public a(Laq/c;Z)V
    .registers 7

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->i:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->s:Z

    if-eqz v0, :cond_11

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/q;->s:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_11
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->q:Z

    if-eqz v0, :cond_4d

    invoke-virtual {p1}, Laq/c;->e()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->h:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->h:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/q;->k()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/android/q;->h:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/q;->l()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->m:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->m:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/q;->k()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/android/q;->m:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/q;->l()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    :cond_4d
    if-eqz p2, :cond_5b

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->d:Z

    if-eqz v0, :cond_5b

    iget v0, p0, Lcom/google/googlenav/ui/android/q;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5b

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/q;->o()V

    :cond_5b
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/A;->a(Laq/c;Z)V

    goto :goto_5
.end method

.method public a(Lcom/google/googlenav/ui/bR;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/q;->w:Lcom/google/googlenav/ui/bR;

    return-void
.end method

.method public a(LaA/t;)Z
    .registers 8

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x1

    invoke-virtual {p1}, LaA/t;->i()Z

    move-result v2

    if-eqz v2, :cond_3f

    iget v2, p0, Lcom/google/googlenav/ui/android/q;->e:I

    if-eq v2, v4, :cond_15

    iget v2, p0, Lcom/google/googlenav/ui/android/q;->e:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/q;->r()I

    move-result v3

    if-ne v2, v3, :cond_3f

    :cond_15
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/q;->q()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/q;->p()V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->a:LaJ/p;

    invoke-virtual {v1}, LaJ/p;->c()LaJ/Y;

    move-result-object v1

    invoke-virtual {v1}, LaJ/Y;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/q;->a:LaJ/p;

    invoke-virtual {v2}, LaJ/p;->r()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/google/googlenav/ui/android/q;->a:LaJ/p;

    invoke-virtual {v3}, LaJ/p;->q()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/googlenav/ui/android/q;->a(LaJ/Y;II)V

    :goto_3e
    return v0

    :cond_3f
    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/q;->i:Z

    if-eqz v2, :cond_45

    move v0, v1

    goto :goto_3e

    :cond_45
    invoke-virtual {p1}, LaA/t;->f()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-virtual {p1}, LaA/t;->e()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/android/q;->a(F)V

    goto :goto_3e

    :cond_53
    invoke-virtual {p1}, LaA/t;->g()Z

    move-result v2

    if-eqz v2, :cond_a7

    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/q;->d:Z

    if-eqz v2, :cond_a7

    iget v2, p0, Lcom/google/googlenav/ui/android/q;->e:I

    if-eq v2, v4, :cond_a7

    invoke-virtual {p1}, LaA/t;->e()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fefae147ae147aeL

    cmpl-double v2, v2, v4

    if-lez v2, :cond_7f

    invoke-virtual {p1}, LaA/t;->e()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3ff003afb7e90ff9L

    cmpg-double v2, v2, v4

    if-gez v2, :cond_7f

    move v0, v1

    goto :goto_3e

    :cond_7f
    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->j:Landroid/graphics/PointF;

    invoke-virtual {p1}, LaA/t;->a()F

    move-result v2

    invoke-virtual {p1}, LaA/t;->b()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    iget v1, p0, Lcom/google/googlenav/ui/android/q;->f:F

    invoke-virtual {p1}, LaA/t;->e()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/google/googlenav/ui/android/q;->f:F

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->j:Landroid/graphics/PointF;

    invoke-virtual {p1}, LaA/t;->e()F

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/android/q;->h:Landroid/graphics/PointF;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/android/q;->a(Landroid/graphics/PointF;FLandroid/graphics/PointF;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/q;->r()I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/android/q;->g:I

    goto :goto_3e

    :cond_a7
    invoke-virtual {p1}, LaA/t;->h()Z

    move-result v2

    if-eqz v2, :cond_b9

    iget-boolean v2, p0, Lcom/google/googlenav/ui/android/q;->d:Z

    if-eqz v2, :cond_b9

    iget v2, p0, Lcom/google/googlenav/ui/android/q;->e:I

    if-eq v2, v4, :cond_b9

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/q;->o()V

    goto :goto_3e

    :cond_b9
    move v0, v1

    goto :goto_3e
.end method

.method public a(Lai/e;Lah/f;IIIIIIII)Z
    .registers 16

    const/4 v0, 0x0

    if-nez p2, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    check-cast p2, Lai/f;

    invoke-virtual {p2}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/google/googlenav/ui/android/q;->z:Landroid/graphics/Rect;

    add-int v2, p7, p9

    add-int v3, p8, p10

    invoke-virtual {v0, p7, p8, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v0, Lcom/google/googlenav/ui/android/q;->A:Landroid/graphics/Rect;

    add-int v2, p3, p5

    add-int v3, p4, p6

    invoke-virtual {v0, p3, p4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Lai/e;->f()Landroid/graphics/Canvas;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/android/q;->z:Landroid/graphics/Rect;

    sget-object v3, Lcom/google/googlenav/ui/android/q;->A:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/googlenav/ui/android/q;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v0, 0x1

    goto :goto_3
.end method

.method protected b(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/A;->b(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->r:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/q;->q()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/q;->p()V

    return-void
.end method

.method public b(Lcom/google/googlenav/ui/C;)V
    .registers 15

    const/high16 v12, 0x4000

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->b()Lah/e;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->e()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/q;->x:I

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->f()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/q;->y:I

    iget v2, p0, Lcom/google/googlenav/ui/android/q;->f:F

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->h:Landroid/graphics/PointF;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v3

    invoke-virtual {v3}, Laf/b;->v()Laf/a;

    move-result-object v3

    invoke-interface {v3}, Laf/a;->b()J

    move-result-wide v8

    iget-boolean v3, p0, Lcom/google/googlenav/ui/android/q;->s:Z

    if-nez v3, :cond_ca

    iget-boolean v3, p0, Lcom/google/googlenav/ui/android/q;->q:Z

    if-eqz v3, :cond_ca

    iget-boolean v3, p0, Lcom/google/googlenav/ui/android/q;->d:Z

    if-nez v3, :cond_ca

    move v5, v4

    :goto_31
    if-eqz v5, :cond_cd

    iget-boolean v3, p0, Lcom/google/googlenav/ui/android/q;->i:Z

    if-nez v3, :cond_cd

    iget-object v3, p0, Lcom/google/googlenav/ui/android/q;->a:LaJ/p;

    iget-object v6, p0, Lcom/google/googlenav/ui/android/q;->a:LaJ/p;

    invoke-virtual {v6}, LaJ/p;->d()LaJ/B;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, LaJ/p;->a(LaJ/B;Z)Z

    move-result v3

    if-eqz v3, :cond_cd

    move v3, v4

    :goto_46
    if-nez v3, :cond_54

    if-eqz v5, :cond_58

    iget-wide v5, p0, Lcom/google/googlenav/ui/android/q;->l:J

    sub-long v5, v8, v5

    const-wide/16 v10, 0x3a98

    cmp-long v3, v5, v10

    if-lez v3, :cond_58

    :cond_54
    iput-boolean v4, p0, Lcom/google/googlenav/ui/android/q;->s:Z

    iput-wide v8, p0, Lcom/google/googlenav/ui/android/q;->t:J

    :cond_58
    iget-boolean v3, p0, Lcom/google/googlenav/ui/android/q;->s:Z

    if-eqz v3, :cond_5f

    invoke-direct {p0, v8, v9}, Lcom/google/googlenav/ui/android/q;->a(J)V

    :cond_5f
    iget-boolean v3, p0, Lcom/google/googlenav/ui/android/q;->i:Z

    if-eqz v3, :cond_6e

    iget-boolean v3, p0, Lcom/google/googlenav/ui/android/q;->d:Z

    if-nez v3, :cond_6e

    invoke-direct {p0, v8, v9}, Lcom/google/googlenav/ui/android/q;->b(J)V

    iget v2, p0, Lcom/google/googlenav/ui/android/q;->p:F

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->m:Landroid/graphics/PointF;

    :cond_6e
    iget-wide v3, p0, Lcom/google/googlenav/ui/android/q;->u:J

    cmp-long v3, v3, v8

    if-gez v3, :cond_77

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/q;->m()V

    :cond_77
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/google/googlenav/ui/android/q;->x:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v12

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/q;->k()I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/google/googlenav/ui/android/q;->y:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v12

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/q;->l()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->b:Lah/f;

    invoke-interface {v0}, Lah/f;->b()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v5, p0, Lcom/google/googlenav/ui/android/q;->b:Lah/f;

    invoke-interface {v5}, Lah/f;->a()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    check-cast v1, Lai/e;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/q;->b:Lah/f;

    float-to-int v5, v5

    float-to-int v6, v0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->b:Lah/f;

    invoke-interface {v0}, Lah/f;->a()I

    move-result v9

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->b:Lah/f;

    invoke-interface {v0}, Lah/f;->b()I

    move-result v10

    move-object v0, p0

    move v8, v7

    invoke-virtual/range {v0 .. v10}, Lcom/google/googlenav/ui/android/q;->a(Lai/e;Lah/f;IIIIIIII)Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/q;->i()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/q;->n()V

    :cond_c9
    return-void

    :cond_ca
    move v5, v7

    goto/16 :goto_31

    :cond_cd
    move v3, v7

    goto/16 :goto_46
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/q;->r:Landroid/graphics/Paint;

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

    invoke-super {p0}, Lcom/google/googlenav/ui/A;->f()Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->i:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->s:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->q:Z

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

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->i:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->s:Z

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

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/q;->s:Z

    return v0
.end method
