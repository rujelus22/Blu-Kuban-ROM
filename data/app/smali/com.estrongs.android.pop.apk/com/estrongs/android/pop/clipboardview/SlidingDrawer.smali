.class public Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;
.super Landroid/view/ViewGroup;


# instance fields
.field private A:Z

.field private B:Z

.field private final C:I

.field private final D:I

.field private final E:I

.field private final F:I

.field private final G:I

.field private final H:I

.field private final a:I

.field private final b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/Rect;

.field private g:Z

.field private h:Z

.field private i:Landroid/view/VelocityTracker;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcom/estrongs/android/pop/clipboardview/g;

.field private q:Lcom/estrongs/android/pop/clipboardview/f;

.field private r:Lcom/estrongs/android/pop/clipboardview/h;

.field private final s:Landroid/os/Handler;

.field private t:F

.field private u:F

.field private v:F

.field private w:J

.field private x:J

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f00

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->e:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->f:Landroid/graphics/Rect;

    new-instance v0, Lcom/estrongs/android/pop/clipboardview/i;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/estrongs/android/pop/clipboardview/i;-><init>(Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;Lcom/estrongs/android/pop/clipboardview/i;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->s:Landroid/os/Handler;

    sget-object v0, Lcom/estrongs/android/pop/e;->b:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v0, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v1, :cond_5a

    move v0, v1

    :goto_2c
    iput-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->j:Z

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->l:I

    const/4 v0, 0x4

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    const/4 v0, 0x5

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->A:Z

    const/4 v0, 0x6

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->B:Z

    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-nez v0, :cond_5c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    move v0, v2

    goto :goto_2c

    :cond_5c
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-nez v1, :cond_6a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    if-ne v0, v1, :cond_74

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content and handle attributes must refer to different children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    iput v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->a:I

    iput v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->b:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40c0

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->C:I

    const/high16 v1, 0x42c8

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->D:I

    const/high16 v1, 0x4316

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->E:I

    const/high16 v1, 0x4348

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->F:I

    const/high16 v1, 0x44fa

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->G:I

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->H:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method private a(I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c(I)V

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->G:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->a(IFZ)V

    return-void
.end method

.method private a(IFZ)V
    .registers 9

    const/16 v4, 0x3e8

    const/4 v2, 0x0

    int-to-float v0, p1

    iput v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->v:F

    iput p2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->u:F

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k:Z

    if-eqz v0, :cond_67

    if-nez p3, :cond_28

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->F:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_28

    iget v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->j:Z

    if-eqz v0, :cond_57

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->n:I

    :goto_1d
    add-int/2addr v0, v1

    if-le p1, v0, :cond_5a

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->F:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_5a

    :cond_28
    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->G:I

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->t:F

    cmpg-float v0, p2, v2

    if-gez v0, :cond_33

    iput v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->u:F

    :cond_33
    :goto_33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->w:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->x:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->z:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->s:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->s:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->x:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->l()V

    return-void

    :cond_57
    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->o:I

    goto :goto_1d

    :cond_5a
    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->G:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->t:F

    cmpl-float v0, p2, v2

    if-lez v0, :cond_33

    iput v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->u:F

    goto :goto_33

    :cond_67
    if-nez p3, :cond_95

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->F:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_84

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->j:Z

    if-eqz v0, :cond_90

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getHeight()I

    move-result v0

    :goto_78
    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_95

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->F:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_95

    :cond_84
    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->G:I

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->t:F

    cmpg-float v0, p2, v2

    if-gez v0, :cond_33

    iput v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->u:F

    goto :goto_33

    :cond_90
    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_78

    :cond_95
    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->G:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->t:F

    cmpl-float v0, p2, v2

    if-lez v0, :cond_33

    iput v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->u:F

    goto :goto_33
.end method

.method static synthetic a(Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->h:Z

    return v0
.end method

.method private b(I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c(I)V

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->G:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->a(IFZ)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->B:Z

    return v0
.end method

.method private c(I)V
    .registers 7

    const/16 v4, 0x3e8

    const/4 v1, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->g:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->i:Landroid/view/VelocityTracker;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k:Z

    if-eqz v0, :cond_49

    move v0, v1

    :goto_11
    if-eqz v0, :cond_53

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->G:I

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->t:F

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->F:I

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->u:F

    iget v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->l:I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->j:Z

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->n:I

    sub-int/2addr v0, v3

    :goto_2a
    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->v:F

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->v:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d(I)V

    iput-boolean v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->z:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->s:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->w:J

    const-wide/16 v3, 0x10

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->x:J

    iput-boolean v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->z:Z

    :goto_48
    return-void

    :cond_49
    move v0, v2

    goto :goto_11

    :cond_4b
    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->o:I

    sub-int/2addr v0, v3

    goto :goto_2a

    :cond_53
    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->z:Z

    if-eqz v0, :cond_5e

    iput-boolean v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->z:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->s:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5e
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d(I)V

    goto :goto_48
.end method

.method static synthetic c(Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m()V

    return-void
.end method

.method private d(I)V
    .registers 11

    const/4 v8, 0x0

    const/16 v7, -0x2711

    const/16 v6, -0x2712

    iget-object v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getRight()I

    move-result v5

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->j:Z

    if-eqz v0, :cond_93

    if-ne p1, v7, :cond_2b

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->invalidate()V

    :goto_2a
    return-void

    :cond_2b
    if-ne p1, v6, :cond_40

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->l:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v3

    iget v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->n:I

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->invalidate()V

    goto :goto_2a

    :cond_40
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v0, p1, v4

    iget v5, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    if-ge p1, v5, :cond_80

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    sub-int/2addr v0, v4

    :cond_4d
    :goto_4d
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->e:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->f:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v0

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getWidth()I

    move-result v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v3, v8, v1, v4, v0}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_2a

    :cond_80
    iget v5, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->l:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v3

    iget v6, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->n:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    if-le v0, v5, :cond_4d

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->l:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v3

    iget v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->n:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v4

    goto :goto_4d

    :cond_93
    if-ne p1, v7, :cond_a3

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->invalidate()V

    goto :goto_2a

    :cond_a3
    if-ne p1, v6, :cond_b9

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->l:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v4

    iget v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->o:I

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->invalidate()V

    goto/16 :goto_2a

    :cond_b9
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v0, p1, v2

    iget v3, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    if-ge p1, v3, :cond_fa

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    sub-int/2addr v0, v2

    :cond_c6
    :goto_c6
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->e:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->f:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getHeight()I

    move-result v2

    invoke-virtual {v3, v1, v8, v0, v2}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_2a

    :cond_fa
    iget v3, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->l:I

    add-int/2addr v3, v5

    sub-int/2addr v3, v4

    iget v6, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->o:I

    sub-int/2addr v3, v6

    sub-int/2addr v3, v2

    if-le v0, v3, :cond_c6

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->l:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v4

    iget v3, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->o:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    goto :goto_c6
.end method

.method private k()V
    .registers 9

    const/4 v7, 0x0

    const/high16 v6, 0x4000

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->z:Z

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_4a

    iget-boolean v5, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->j:Z

    if-eqz v5, :cond_5a

    iget v5, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->n:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v5

    iget v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    sub-int/2addr v0, v1

    sub-int v1, v3, v2

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    add-int/2addr v0, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    add-int/2addr v2, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v4, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_4a
    :goto_4a
    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    invoke-virtual {v4}, Landroid/view/View;->buildDrawingCache()V

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_5a
    iget-object v5, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int v2, v3, v2

    sub-int/2addr v2, v5

    iget v3, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    sub-int/2addr v2, v3

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sub-int/2addr v0, v1

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v4, v2, v0}, Landroid/view/View;->measure(II)V

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    add-int/2addr v0, v5

    iget v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    add-int/2addr v1, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v4, v0, v7, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_4a
.end method

.method private l()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->g:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->r:Lcom/estrongs/android/pop/clipboardview/h;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->r:Lcom/estrongs/android/pop/clipboardview/h;

    invoke-interface {v0}, Lcom/estrongs/android/pop/clipboardview/h;->d()V

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->i:Landroid/view/VelocityTracker;

    :cond_1d
    return-void
.end method

.method private m()V
    .registers 5

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->z:Z

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->n()V

    iget v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->v:F

    iget v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->l:I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->j:Z

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getHeight()I

    move-result v0

    :goto_14
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_27

    iput-boolean v3, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->z:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->o()V

    :cond_21
    :goto_21
    return-void

    :cond_22
    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_14

    :cond_27
    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->v:F

    iget v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_36

    iput-boolean v3, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->z:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->p()V

    goto :goto_21

    :cond_36
    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->v:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d(I)V

    iget-wide v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->x:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->x:J

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->s:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->x:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_21
.end method

.method private n()V
    .registers 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->w:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    iget v3, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->v:F

    iget v4, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->u:F

    iget v5, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->t:F

    mul-float v6, v4, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f00

    mul-float/2addr v6, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    iput v3, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->v:F

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->u:F

    iput-wide v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->w:J

    return-void
.end method

.method private o()V
    .registers 3

    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k:Z

    if-nez v0, :cond_16

    :cond_15
    :goto_15
    return-void

    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->q:Lcom/estrongs/android/pop/clipboardview/f;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->q:Lcom/estrongs/android/pop/clipboardview/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/clipboardview/f;->a()V

    goto :goto_15
.end method

.method private p()V
    .registers 3

    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k:Z

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->p:Lcom/estrongs/android/pop/clipboardview/g;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->p:Lcom/estrongs/android/pop/clipboardview/g;

    invoke-interface {v0}, Lcom/estrongs/android/pop/clipboardview/g;->b()V

    goto :goto_f
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k:Z

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->p()V

    :goto_7
    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->requestLayout()V

    return-void

    :cond_e
    invoke-direct {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->o()V

    goto :goto_7
.end method

.method public a(Lcom/estrongs/android/pop/clipboardview/f;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->q:Lcom/estrongs/android/pop/clipboardview/f;

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/clipboardview/g;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->p:Lcom/estrongs/android/pop/clipboardview/g;

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/clipboardview/h;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->r:Lcom/estrongs/android/pop/clipboardview/h;

    return-void
.end method

.method public b()V
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->e()V

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d()V

    goto :goto_7
.end method

.method public c()V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->o()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->requestLayout()V

    return-void
.end method

.method public d()V
    .registers 3

    invoke-direct {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k()V

    iget-object v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->r:Lcom/estrongs/android/pop/clipboardview/h;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/estrongs/android/pop/clipboardview/h;->c()V

    :cond_a
    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->j:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_14
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->a(I)V

    if-eqz v1, :cond_1c

    invoke-interface {v1}, Lcom/estrongs/android/pop/clipboardview/h;->d()V

    :cond_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_14
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getDrawingTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c:Landroid/view/View;

    iget-boolean v5, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->j:Z

    invoke-virtual {p0, p1, v4, v2, v3}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget-boolean v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->g:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->z:Z

    if-eqz v1, :cond_57

    :cond_16
    iget-object v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_32

    if-eqz v5, :cond_29

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v6, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_28

    :cond_32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v5, :cond_4f

    move v1, v0

    :goto_38
    int-to-float v1, v1

    if-eqz v5, :cond_42

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    iget v4, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    sub-int/2addr v0, v4

    :cond_42
    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_28

    :cond_4f
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v6, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    sub-int/2addr v1, v6

    goto :goto_38

    :cond_57
    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_28
.end method

.method public e()V
    .registers 3

    invoke-direct {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k()V

    iget-object v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->r:Lcom/estrongs/android/pop/clipboardview/h;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/estrongs/android/pop/clipboardview/h;->c()V

    :cond_a
    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->j:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_14
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->b(I)V

    if-eqz v1, :cond_1c

    invoke-interface {v1}, Lcom/estrongs/android/pop/clipboardview/h;->d()V

    :cond_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_14
.end method

.method public f()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d:Landroid/view/View;

    return-object v0
.end method

.method public g()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->h:Z

    return-void
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->h:Z

    return-void
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k:Z

    return v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->g:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->z:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method protected onFinishInflate()V
    .registers 4

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->a:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c:Landroid/view/View;

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/clipboardview/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/pop/clipboardview/e;-><init>(Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;Lcom/estrongs/android/pop/clipboardview/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->b:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d:Landroid/view/View;

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->h:Z

    if-eqz v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->e:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-boolean v7, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->g:Z

    if-nez v7, :cond_26

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_26
    if-nez v2, :cond_4f

    iput-boolean v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->g:Z

    invoke-virtual {v6, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k()V

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->r:Lcom/estrongs/android/pop/clipboardview/h;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->r:Lcom/estrongs/android/pop/clipboardview/h;

    invoke-interface {v0}, Lcom/estrongs/android/pop/clipboardview/h;->c()V

    :cond_39
    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->j:Z

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    float-to-int v2, v4

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->y:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c(I)V

    :goto_4a
    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4f
    move v0, v1

    goto :goto_6

    :cond_51
    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    float-to-int v2, v3

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->y:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c(I)V

    goto :goto_4a
.end method

.method protected onLayout(ZIIII)V
    .registers 18

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->g:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sub-int v0, p4, p2

    sub-int v2, p5, p3

    iget-object v3, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d:Landroid/view/View;

    iget-boolean v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->j:Z

    if-eqz v1, :cond_4f

    sub-int/2addr v0, v4

    div-int/lit8 v1, v0, 0x2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k:Z

    if-eqz v0, :cond_49

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    :goto_22
    const/4 v2, 0x0

    iget v7, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    add-int/2addr v7, v5

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    add-int/2addr v9, v5

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    :goto_35
    add-int v2, v1, v4

    add-int v4, v0, v5

    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->n:I

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->o:I

    goto :goto_4

    :cond_49
    sub-int v0, v2, v5

    iget v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->l:I

    add-int/2addr v0, v2

    goto :goto_22

    :cond_4f
    iget-boolean v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k:Z

    if-eqz v1, :cond_70

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    :goto_55
    sub-int v1, v2, v5

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    add-int/2addr v2, v4

    const/4 v7, 0x0

    iget v8, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    add-int/2addr v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_35

    :cond_70
    sub-int/2addr v0, v4

    iget v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->l:I

    add-int/2addr v0, v1

    goto :goto_55
.end method

.method protected onMeasure(II)V
    .registers 9

    const/high16 v5, 0x4000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eqz v0, :cond_16

    if-nez v2, :cond_1e

    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->measureChild(Landroid/view/View;II)V

    iget-boolean v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->j:Z

    if-eqz v2, :cond_41

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v3, v0

    iget v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d:Landroid/view/View;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/view/View;->measure(II)V

    :goto_3d
    invoke-virtual {p0, v1, v3}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->setMeasuredDimension(II)V

    return-void

    :cond_41
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v1, v0

    iget v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d:Landroid/view/View;

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/view/View;->measure(II)V

    goto :goto_3d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15

    const/4 v3, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->h:Z

    if-eqz v0, :cond_9

    move v0, v3

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->getRight()I

    move-result v8

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->g:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_134

    :cond_29
    :goto_29
    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->g:Z

    if-nez v0, :cond_128

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->z:Z

    if-nez v0, :cond_128

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_128

    move v0, v4

    goto :goto_8

    :pswitch_39
    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->j:Z

    if-eqz v0, :cond_49

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_41
    float-to-int v0, v0

    iget v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->y:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->d(I)V

    goto :goto_29

    :cond_49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_41

    :pswitch_4e
    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->i:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->H:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-boolean v9, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->j:Z

    if-eqz v9, :cond_cc

    cmpg-float v2, v1, v10

    if-gez v2, :cond_ca

    move v2, v3

    :goto_66
    cmpg-float v10, v0, v10

    if-gez v10, :cond_6b

    neg-float v0, v0

    :cond_6b
    iget v10, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->E:I

    int-to-float v10, v10

    cmpl-float v10, v0, v10

    if-lez v10, :cond_12e

    iget v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->E:I

    int-to-float v0, v0

    move v12, v2

    move v2, v1

    move v1, v0

    move v0, v12

    :goto_79
    float-to-double v10, v1

    float-to-double v1, v2

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    if-eqz v0, :cond_12b

    neg-float v0, v1

    :goto_83
    iget-object v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->D:I

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_11f

    if-eqz v9, :cond_e7

    iget-boolean v7, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k:Z

    if-eqz v7, :cond_a7

    iget v7, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->C:I

    iget v8, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    add-int/2addr v7, v8

    if-lt v1, v7, :cond_b7

    :cond_a7
    iget-boolean v7, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k:Z

    if-nez v7, :cond_102

    iget v7, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->l:I

    add-int/2addr v5, v7

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->n:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->C:I

    sub-int/2addr v5, v6

    if-le v1, v5, :cond_102

    :cond_b7
    iget-boolean v5, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->A:Z

    if-eqz v5, :cond_114

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->playSoundEffect(I)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k:Z

    if-eqz v0, :cond_10b

    if-eqz v9, :cond_109

    move v0, v1

    :goto_c5
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->a(I)V

    goto/16 :goto_29

    :cond_ca
    move v2, v4

    goto :goto_66

    :cond_cc
    cmpg-float v2, v0, v10

    if-gez v2, :cond_e5

    move v2, v3

    :goto_d1
    cmpg-float v10, v1, v10

    if-gez v10, :cond_d6

    neg-float v1, v1

    :cond_d6
    iget v10, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->E:I

    int-to-float v10, v10

    cmpl-float v10, v1, v10

    if-lez v10, :cond_12e

    iget v1, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->E:I

    int-to-float v1, v1

    move v12, v2

    move v2, v1

    move v1, v0

    move v0, v12

    goto :goto_79

    :cond_e5
    move v2, v4

    goto :goto_d1

    :cond_e7
    iget-boolean v5, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k:Z

    if-eqz v5, :cond_f2

    iget v5, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->C:I

    iget v6, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->m:I

    add-int/2addr v5, v6

    if-lt v2, v5, :cond_b7

    :cond_f2
    iget-boolean v5, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->k:Z

    if-nez v5, :cond_102

    iget v5, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->l:I

    add-int/2addr v5, v8

    sub-int/2addr v5, v7

    iget v6, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->o:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->C:I

    sub-int/2addr v5, v6

    if-gt v2, v5, :cond_b7

    :cond_102
    if-eqz v9, :cond_11d

    :goto_104
    invoke-direct {p0, v1, v0, v4}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->a(IFZ)V

    goto/16 :goto_29

    :cond_109
    move v0, v2

    goto :goto_c5

    :cond_10b
    if-eqz v9, :cond_112

    :goto_10d
    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->b(I)V

    goto/16 :goto_29

    :cond_112
    move v1, v2

    goto :goto_10d

    :cond_114
    if-eqz v9, :cond_11b

    :goto_116
    invoke-direct {p0, v1, v0, v4}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->a(IFZ)V

    goto/16 :goto_29

    :cond_11b
    move v1, v2

    goto :goto_116

    :cond_11d
    move v1, v2

    goto :goto_104

    :cond_11f
    if-eqz v9, :cond_126

    :goto_121
    invoke-direct {p0, v1, v0, v4}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->a(IFZ)V

    goto/16 :goto_29

    :cond_126
    move v1, v2

    goto :goto_121

    :cond_128
    move v0, v3

    goto/16 :goto_8

    :cond_12b
    move v0, v1

    goto/16 :goto_83

    :cond_12e
    move v12, v2

    move v2, v1

    move v1, v0

    move v0, v12

    goto/16 :goto_79

    :pswitch_data_134
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_39
        :pswitch_4e
    .end packed-switch
.end method
