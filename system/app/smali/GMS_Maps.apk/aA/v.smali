.class public LaA/v;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:LaA/w;

.field private c:Z

.field private d:Landroid/view/MotionEvent;

.field private e:Landroid/view/MotionEvent;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:J

.field private t:F

.field private u:F

.field private v:F

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;LaA/w;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object p1, p0, LaA/v;->a:Landroid/content/Context;

    iput-object p2, p0, LaA/v;->b:LaA/w;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, LaA/v;->t:F

    return-void
.end method

.method private static a(Landroid/view/MotionEvent;I)F
    .registers 4

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private static b(Landroid/view/MotionEvent;I)F
    .registers 4

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .registers 14

    const/high16 v1, -0x4080

    const/high16 v11, 0x3f00

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, LaA/v;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_f

    iget-object v0, p0, LaA/v;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_f
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, LaA/v;->e:Landroid/view/MotionEvent;

    iput v1, p0, LaA/v;->n:F

    iput v1, p0, LaA/v;->o:F

    iput v1, p0, LaA/v;->p:F

    iget-object v0, p0, LaA/v;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sub-float/2addr v3, v1

    sub-float/2addr v4, v2

    sub-float/2addr v7, v5

    sub-float/2addr v8, v6

    iput v3, p0, LaA/v;->j:F

    iput v4, p0, LaA/v;->k:F

    iput v7, p0, LaA/v;->l:F

    iput v8, p0, LaA/v;->m:F

    mul-float/2addr v7, v11

    add-float/2addr v5, v7

    iput v5, p0, LaA/v;->f:F

    mul-float v5, v8, v11

    add-float/2addr v5, v6

    iput v5, p0, LaA/v;->g:F

    mul-float/2addr v3, v11

    add-float/2addr v1, v3

    iput v1, p0, LaA/v;->h:F

    mul-float v1, v4, v11

    add-float/2addr v1, v2

    iput v1, p0, LaA/v;->i:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, LaA/v;->s:J

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, LaA/v;->q:F

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, LaA/v;->r:F

    return-void
.end method

.method private h()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, LaA/v;->d:Landroid/view/MotionEvent;

    if-eqz v0, :cond_d

    iget-object v0, p0, LaA/v;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v2, p0, LaA/v;->d:Landroid/view/MotionEvent;

    :cond_d
    iget-object v0, p0, LaA/v;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_18

    iget-object v0, p0, LaA/v;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v2, p0, LaA/v;->e:Landroid/view/MotionEvent;

    :cond_18
    iput-boolean v1, p0, LaA/v;->w:Z

    iput-boolean v1, p0, LaA/v;->c:Z

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    iget v0, p0, LaA/v;->f:F

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 13

    const v5, 0xff00

    const/4 v4, 0x2

    const/high16 v10, -0x4080

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-boolean v3, p0, LaA/v;->c:Z

    if-nez v3, :cond_14f

    const/4 v3, 0x5

    if-eq v2, v3, :cond_17

    const/16 v3, 0x105

    if-ne v2, v3, :cond_b9

    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-lt v3, v4, :cond_b9

    iget-object v2, p0, LaA/v;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, p0, LaA/v;->t:F

    sub-float/2addr v3, v4

    iput v3, p0, LaA/v;->u:F

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, p0, LaA/v;->t:F

    sub-float/2addr v2, v3

    iput v2, p0, LaA/v;->v:F

    invoke-direct {p0}, LaA/v;->h()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, LaA/v;->d:Landroid/view/MotionEvent;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, LaA/v;->s:J

    invoke-direct {p0, p1}, LaA/v;->b(Landroid/view/MotionEvent;)V

    iget v2, p0, LaA/v;->t:F

    iget v4, p0, LaA/v;->u:F

    iget v5, p0, LaA/v;->v:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-static {p1, v1}, LaA/v;->a(Landroid/view/MotionEvent;I)F

    move-result v7

    invoke-static {p1, v1}, LaA/v;->b(Landroid/view/MotionEvent;I)F

    move-result v8

    cmpg-float v9, v3, v2

    if-ltz v9, :cond_6d

    cmpg-float v9, v6, v2

    if-ltz v9, :cond_6d

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_6d

    cmpl-float v3, v6, v5

    if-lez v3, :cond_8a

    :cond_6d
    move v3, v1

    :goto_6e
    cmpg-float v6, v7, v2

    if-ltz v6, :cond_7e

    cmpg-float v2, v8, v2

    if-ltz v2, :cond_7e

    cmpl-float v2, v7, v4

    if-gtz v2, :cond_7e

    cmpl-float v2, v8, v5

    if-lez v2, :cond_8c

    :cond_7e
    move v2, v1

    :goto_7f
    if-eqz v3, :cond_8e

    if-eqz v2, :cond_8e

    iput v10, p0, LaA/v;->f:F

    iput v10, p0, LaA/v;->g:F

    iput-boolean v1, p0, LaA/v;->w:Z

    :cond_89
    :goto_89
    return v1

    :cond_8a
    move v3, v0

    goto :goto_6e

    :cond_8c
    move v2, v0

    goto :goto_7f

    :cond_8e
    if-eqz v3, :cond_9f

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, LaA/v;->f:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, LaA/v;->g:F

    iput-boolean v1, p0, LaA/v;->w:Z

    goto :goto_89

    :cond_9f
    if-eqz v2, :cond_b0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, LaA/v;->f:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, LaA/v;->g:F

    iput-boolean v1, p0, LaA/v;->w:Z

    goto :goto_89

    :cond_b0
    iget-object v2, p0, LaA/v;->b:LaA/w;

    invoke-interface {v2, p0, v0, v0}, LaA/w;->b(LaA/v;ZZ)Z

    move-result v0

    iput-boolean v0, p0, LaA/v;->c:Z

    goto :goto_89

    :cond_b9
    if-ne v2, v4, :cond_130

    iget-boolean v3, p0, LaA/v;->w:Z

    if-eqz v3, :cond_130

    iget v2, p0, LaA/v;->t:F

    iget v4, p0, LaA/v;->u:F

    iget v5, p0, LaA/v;->v:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-static {p1, v1}, LaA/v;->a(Landroid/view/MotionEvent;I)F

    move-result v7

    invoke-static {p1, v1}, LaA/v;->b(Landroid/view/MotionEvent;I)F

    move-result v8

    cmpg-float v9, v3, v2

    if-ltz v9, :cond_e5

    cmpg-float v9, v6, v2

    if-ltz v9, :cond_e5

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_e5

    cmpl-float v3, v6, v5

    if-lez v3, :cond_100

    :cond_e5
    move v3, v1

    :goto_e6
    cmpg-float v6, v7, v2

    if-ltz v6, :cond_f6

    cmpg-float v2, v8, v2

    if-ltz v2, :cond_f6

    cmpl-float v2, v7, v4

    if-gtz v2, :cond_f6

    cmpl-float v2, v8, v5

    if-lez v2, :cond_102

    :cond_f6
    move v2, v1

    :goto_f7
    if-eqz v3, :cond_104

    if-eqz v2, :cond_104

    iput v10, p0, LaA/v;->f:F

    iput v10, p0, LaA/v;->g:F

    goto :goto_89

    :cond_100
    move v3, v0

    goto :goto_e6

    :cond_102
    move v2, v0

    goto :goto_f7

    :cond_104
    if-eqz v3, :cond_114

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, LaA/v;->f:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, LaA/v;->g:F

    goto/16 :goto_89

    :cond_114
    if-eqz v2, :cond_124

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, LaA/v;->f:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, LaA/v;->g:F

    goto/16 :goto_89

    :cond_124
    iput-boolean v0, p0, LaA/v;->w:Z

    iget-object v2, p0, LaA/v;->b:LaA/w;

    invoke-interface {v2, p0, v0, v0}, LaA/w;->b(LaA/v;ZZ)Z

    move-result v0

    iput-boolean v0, p0, LaA/v;->c:Z

    goto/16 :goto_89

    :cond_130
    const/4 v3, 0x6

    if-eq v2, v3, :cond_137

    const/16 v3, 0x106

    if-ne v2, v3, :cond_89

    :cond_137
    iget-boolean v3, p0, LaA/v;->w:Z

    if-eqz v3, :cond_89

    and-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_141

    move v0, v1

    :cond_141
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, LaA/v;->f:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, LaA/v;->g:F

    goto/16 :goto_89

    :cond_14f
    sparse-switch v2, :sswitch_data_1ac

    goto/16 :goto_89

    :sswitch_154
    invoke-direct {p0, p1}, LaA/v;->b(Landroid/view/MotionEvent;)V

    iget v2, p0, LaA/v;->q:F

    iget v3, p0, LaA/v;->r:F

    div-float/2addr v2, v3

    const v3, 0x3f2b851f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_89

    iget-object v2, p0, LaA/v;->b:LaA/w;

    invoke-interface {v2, p0, v0, v0}, LaA/w;->a(LaA/v;ZZ)Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, LaA/v;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, LaA/v;->d:Landroid/view/MotionEvent;

    goto/16 :goto_89

    :sswitch_178
    invoke-direct {p0, p1}, LaA/v;->b(Landroid/view/MotionEvent;)V

    and-int/2addr v2, v5

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_19b

    move v2, v1

    :goto_181
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, LaA/v;->f:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, LaA/v;->g:F

    iget-boolean v2, p0, LaA/v;->w:Z

    if-nez v2, :cond_196

    iget-object v2, p0, LaA/v;->b:LaA/w;

    invoke-interface {v2, p0, v0, v0}, LaA/w;->c(LaA/v;ZZ)V

    :cond_196
    invoke-direct {p0}, LaA/v;->h()V

    goto/16 :goto_89

    :cond_19b
    move v2, v0

    goto :goto_181

    :sswitch_19d
    iget-boolean v2, p0, LaA/v;->w:Z

    if-nez v2, :cond_1a6

    iget-object v2, p0, LaA/v;->b:LaA/w;

    invoke-interface {v2, p0, v0, v0}, LaA/w;->c(LaA/v;ZZ)V

    :cond_1a6
    invoke-direct {p0}, LaA/v;->h()V

    goto/16 :goto_89

    nop

    :sswitch_data_1ac
    .sparse-switch
        0x2 -> :sswitch_154
        0x3 -> :sswitch_19d
        0x6 -> :sswitch_178
        0x106 -> :sswitch_178
    .end sparse-switch
.end method

.method public b()F
    .registers 2

    iget v0, p0, LaA/v;->g:F

    return v0
.end method

.method public c()F
    .registers 2

    iget v0, p0, LaA/v;->h:F

    return v0
.end method

.method public d()F
    .registers 2

    iget v0, p0, LaA/v;->i:F

    return v0
.end method

.method public e()F
    .registers 3

    iget v0, p0, LaA/v;->n:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    iget v0, p0, LaA/v;->l:F

    iget v1, p0, LaA/v;->m:F

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, LaA/v;->n:F

    :cond_17
    iget v0, p0, LaA/v;->n:F

    return v0
.end method

.method public f()F
    .registers 3

    iget v0, p0, LaA/v;->o:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    iget v0, p0, LaA/v;->j:F

    iget v1, p0, LaA/v;->k:F

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, LaA/v;->o:F

    :cond_17
    iget v0, p0, LaA/v;->o:F

    return v0
.end method

.method public g()F
    .registers 3

    iget v0, p0, LaA/v;->p:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    invoke-virtual {p0}, LaA/v;->e()F

    move-result v0

    invoke-virtual {p0}, LaA/v;->f()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, LaA/v;->p:F

    :cond_13
    iget v0, p0, LaA/v;->p:F

    return v0
.end method
