.class LaA/n;
.super Ljava/lang/Object;


# static fields
.field private static final g:I

.field private static final h:I

.field private static final i:I


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private final j:Landroid/os/Handler;

.field private final k:LaA/q;

.field private l:LaA/p;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/view/MotionEvent;

.field private r:Landroid/view/MotionEvent;

.field private s:Z

.field private t:F

.field private u:F

.field private v:Z

.field private w:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, LaA/n;->g:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, LaA/n;->h:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, LaA/n;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LaA/q;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LaA/n;-><init>(Landroid/content/Context;LaA/q;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LaA/q;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    iput v0, p0, LaA/n;->a:I

    if-eqz p3, :cond_1f

    new-instance v0, LaA/o;

    invoke-direct {v0, p0, p3}, LaA/o;-><init>(LaA/n;Landroid/os/Handler;)V

    iput-object v0, p0, LaA/n;->j:Landroid/os/Handler;

    :goto_10
    iput-object p2, p0, LaA/n;->k:LaA/q;

    instance-of v0, p2, LaA/p;

    if-eqz v0, :cond_1b

    check-cast p2, LaA/p;

    invoke-virtual {p0, p2}, LaA/n;->a(LaA/p;)V

    :cond_1b
    invoke-direct {p0, p1}, LaA/n;->a(Landroid/content/Context;)V

    return-void

    :cond_1f
    new-instance v0, LaA/o;

    invoke-direct {v0, p0}, LaA/o;-><init>(LaA/n;)V

    iput-object v0, p0, LaA/n;->j:Landroid/os/Handler;

    goto :goto_10
.end method

.method static synthetic a(LaA/n;)Landroid/view/MotionEvent;
    .registers 2

    iget-object v0, p0, LaA/n;->q:Landroid/view/MotionEvent;

    return-object v0
.end method

.method private a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, LaA/n;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, LaA/n;->j:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, LaA/n;->j:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, LaA/n;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, LaA/n;->w:Landroid/view/VelocityTracker;

    iput-boolean v2, p0, LaA/n;->s:Z

    iput-boolean v2, p0, LaA/n;->m:Z

    iget-boolean v0, p0, LaA/n;->n:Z

    if-eqz v0, :cond_25

    iput-boolean v2, p0, LaA/n;->n:Z

    :cond_25
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    iget-object v0, p0, LaA/n;->k:LaA/q;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OnGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, LaA/n;->v:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, LaA/n;->e:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, LaA/n;->f:I

    mul-int v0, v1, v1

    iput v0, p0, LaA/n;->b:I

    div-int/lit8 v0, v1, 0x4

    div-int/lit8 v1, v1, 0x4

    mul-int/2addr v0, v1

    iput v0, p0, LaA/n;->c:I

    mul-int v0, v2, v2

    iput v0, p0, LaA/n;->d:I

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v0, 0x0

    iget-boolean v1, p0, LaA/n;->p:Z

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget v3, LaA/n;->i:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    mul-int/2addr v1, v1

    mul-int/2addr v2, v2

    add-int/2addr v1, v2

    iget v2, p0, LaA/n;->d:I

    if-ge v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method static synthetic b(LaA/n;)LaA/q;
    .registers 2

    iget-object v0, p0, LaA/n;->k:LaA/q;

    return-object v0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, LaA/n;->j:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LaA/n;->n:Z

    iget-object v0, p0, LaA/n;->k:LaA/q;

    iget-object v1, p0, LaA/n;->q:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, LaA/q;->h(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic c(LaA/n;)V
    .registers 1

    invoke-direct {p0}, LaA/n;->b()V

    return-void
.end method

.method static synthetic d(LaA/n;)LaA/p;
    .registers 2

    iget-object v0, p0, LaA/n;->l:LaA/p;

    return-object v0
.end method

.method static synthetic e(LaA/n;)Z
    .registers 2

    iget-boolean v0, p0, LaA/n;->m:Z

    return v0
.end method


# virtual methods
.method public a(LaA/p;)V
    .registers 2

    iput-object p1, p0, LaA/n;->l:LaA/p;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, LaA/n;->v:Z

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 13

    const/high16 v7, 0x3f80

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, LaA/n;->w:Landroid/view/VelocityTracker;

    if-nez v5, :cond_1c

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, LaA/n;->w:Landroid/view/VelocityTracker;

    :cond_1c
    iget-object v5, p0, LaA/n;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v5, v2, 0xff

    packed-switch v5, :pswitch_data_1da

    :cond_26
    :goto_26
    :pswitch_26
    return v1

    :pswitch_27
    invoke-direct {p0}, LaA/n;->a()V

    goto :goto_26

    :pswitch_2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v9, :cond_26

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_51

    :goto_39
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, LaA/n;->u:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, LaA/n;->t:F

    iget-object v0, p0, LaA/n;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, LaA/n;->w:Landroid/view/VelocityTracker;

    goto :goto_26

    :cond_51
    move v0, v1

    goto :goto_39

    :pswitch_53
    iget-object v2, p0, LaA/n;->l:LaA/p;

    if-eqz v2, :cond_d9

    iget-object v2, p0, LaA/n;->j:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_64

    iget-object v5, p0, LaA/n;->j:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    :cond_64
    iget-object v5, p0, LaA/n;->q:Landroid/view/MotionEvent;

    if-eqz v5, :cond_d1

    iget-object v5, p0, LaA/n;->r:Landroid/view/MotionEvent;

    if-eqz v5, :cond_d1

    if-eqz v2, :cond_d1

    iget-object v2, p0, LaA/n;->q:Landroid/view/MotionEvent;

    iget-object v5, p0, LaA/n;->r:Landroid/view/MotionEvent;

    invoke-direct {p0, v2, v5, p1}, LaA/n;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_d1

    iput-boolean v0, p0, LaA/n;->s:Z

    iget-object v2, p0, LaA/n;->l:LaA/p;

    iget-object v5, p0, LaA/n;->q:Landroid/view/MotionEvent;

    invoke-interface {v2, v5}, LaA/p;->c(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v2, v1

    iget-object v5, p0, LaA/n;->l:LaA/p;

    invoke-interface {v5, p1}, LaA/p;->d(Landroid/view/MotionEvent;)Z

    move-result v5

    or-int/2addr v2, v5

    :goto_8a
    iput v4, p0, LaA/n;->u:F

    iput v3, p0, LaA/n;->t:F

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, LaA/n;->q:Landroid/view/MotionEvent;

    iput-boolean v0, p0, LaA/n;->o:Z

    iput-boolean v0, p0, LaA/n;->p:Z

    iput-boolean v0, p0, LaA/n;->m:Z

    iput-boolean v1, p0, LaA/n;->n:Z

    iget-boolean v1, p0, LaA/n;->v:Z

    if-eqz v1, :cond_b8

    iget-object v1, p0, LaA/n;->j:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, LaA/n;->j:Landroid/os/Handler;

    iget-object v3, p0, LaA/n;->q:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sget v5, LaA/n;->h:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sget v5, LaA/n;->g:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v9, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_b8
    iget-object v1, p0, LaA/n;->j:Landroid/os/Handler;

    iget-object v3, p0, LaA/n;->q:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sget v5, LaA/n;->h:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    iget-object v0, p0, LaA/n;->k:LaA/q;

    invoke-interface {v0, p1}, LaA/q;->e(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int v1, v2, v0

    goto/16 :goto_26

    :cond_d1
    iget-object v2, p0, LaA/n;->j:Landroid/os/Handler;

    sget v5, LaA/n;->i:I

    int-to-long v5, v5

    invoke-virtual {v2, v10, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d9
    move v2, v1

    goto :goto_8a

    :pswitch_db
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v0, :cond_26

    iget v2, p0, LaA/n;->u:F

    sub-float/2addr v2, v4

    iget v5, p0, LaA/n;->t:F

    sub-float/2addr v5, v3

    iget-boolean v6, p0, LaA/n;->s:Z

    if-eqz v6, :cond_f4

    iget-object v0, p0, LaA/n;->l:LaA/p;

    invoke-interface {v0, p1}, LaA/p;->d(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v1, v0

    goto/16 :goto_26

    :cond_f4
    iget-boolean v6, p0, LaA/n;->o:Z

    if-eqz v6, :cond_13b

    iget-object v6, p0, LaA/n;->q:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v6, v4, v6

    float-to-int v6, v6

    iget-object v7, p0, LaA/n;->q:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float v7, v3, v7

    float-to-int v7, v7

    mul-int/2addr v6, v6

    mul-int/2addr v7, v7

    add-int/2addr v6, v7

    iget v7, p0, LaA/n;->c:I

    if-le v6, v7, :cond_1d7

    iget-object v7, p0, LaA/n;->k:LaA/q;

    iget-object v8, p0, LaA/n;->q:Landroid/view/MotionEvent;

    invoke-interface {v7, v8, p1, v2, v5}, LaA/q;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    iput v4, p0, LaA/n;->u:F

    iput v3, p0, LaA/n;->t:F

    :goto_11d
    iget v3, p0, LaA/n;->b:I

    if-le v6, v3, :cond_132

    iput-boolean v1, p0, LaA/n;->o:Z

    iget-object v3, p0, LaA/n;->j:Landroid/os/Handler;

    invoke-virtual {v3, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, LaA/n;->j:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, LaA/n;->j:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_132
    iget v0, p0, LaA/n;->a:I

    if-le v6, v0, :cond_138

    iput-boolean v1, p0, LaA/n;->p:Z

    :cond_138
    move v1, v2

    goto/16 :goto_26

    :cond_13b
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-gez v0, :cond_14b

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_26

    :cond_14b
    iget-object v0, p0, LaA/n;->k:LaA/q;

    iget-object v1, p0, LaA/n;->q:Landroid/view/MotionEvent;

    invoke-interface {v0, v1, p1, v2, v5}, LaA/q;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    iput v4, p0, LaA/n;->u:F

    iput v3, p0, LaA/n;->t:F

    goto/16 :goto_26

    :pswitch_159
    iput-boolean v1, p0, LaA/n;->m:Z

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iget-boolean v3, p0, LaA/n;->s:Z

    if-eqz v3, :cond_187

    iget-object v2, p0, LaA/n;->l:LaA/p;

    invoke-interface {v2, p1}, LaA/p;->d(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v2, v1

    :goto_16a
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, LaA/n;->r:Landroid/view/MotionEvent;

    iget-object v3, p0, LaA/n;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v3, 0x0

    iput-object v3, p0, LaA/n;->w:Landroid/view/VelocityTracker;

    iput-boolean v1, p0, LaA/n;->s:Z

    iget-object v1, p0, LaA/n;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, LaA/n;->j:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    move v1, v2

    goto/16 :goto_26

    :cond_187
    iget-boolean v3, p0, LaA/n;->n:Z

    if-eqz v3, :cond_194

    iget-object v2, p0, LaA/n;->j:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, LaA/n;->n:Z

    move v2, v1

    goto :goto_16a

    :cond_194
    iget-boolean v3, p0, LaA/n;->o:Z

    if-eqz v3, :cond_19f

    iget-object v2, p0, LaA/n;->k:LaA/q;

    invoke-interface {v2, p1}, LaA/q;->g(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_16a

    :cond_19f
    iget-object v3, p0, LaA/n;->w:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, LaA/n;->f:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, LaA/n;->e:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_1c7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, LaA/n;->e:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1d5

    :cond_1c7
    iget-object v5, p0, LaA/n;->k:LaA/q;

    iget-object v6, p0, LaA/n;->q:Landroid/view/MotionEvent;

    invoke-interface {v5, v6, v2, v3, v4}, LaA/q;->b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    goto :goto_16a

    :pswitch_1d0
    invoke-direct {p0}, LaA/n;->a()V

    goto/16 :goto_26

    :cond_1d5
    move v2, v1

    goto :goto_16a

    :cond_1d7
    move v2, v1

    goto/16 :goto_11d

    :pswitch_data_1da
    .packed-switch 0x0
        :pswitch_53
        :pswitch_159
        :pswitch_db
        :pswitch_1d0
        :pswitch_26
        :pswitch_27
        :pswitch_2b
    .end packed-switch
.end method
