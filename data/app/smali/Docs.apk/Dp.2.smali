.class public LDp;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements LCZ;


# instance fields
.field private a:I

.field private a:J

.field private a:LDo;

.field private a:LDq;

.field final synthetic a:Lcom/google/android/apps/docs/editors/text/TextView;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 4
    .parameter

    .prologue
    .line 8429
    iput-object p1, p0, LDp;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8426
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LDp;->a:J

    .line 8430
    invoke-virtual {p0}, LDp;->c()V

    .line 8431
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 7
    .parameter

    .prologue
    .line 8512
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 8513
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_26

    .line 8514
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    .line 8515
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    .line 8516
    iget-object v4, p0, LDp;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/apps/docs/editors/text/TextView;->a(II)I

    move-result v2

    .line 8517
    iget v3, p0, LDp;->a:I

    if-ge v2, v3, :cond_1d

    iput v2, p0, LDp;->a:I

    .line 8518
    :cond_1d
    iget v3, p0, LDp;->b:I

    if-le v2, v3, :cond_23

    iput v2, p0, LDp;->b:I

    .line 8513
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 8520
    :cond_26
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 8523
    iget v0, p0, LDp;->a:I

    return v0
.end method

.method public a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 8435
    iget-object v0, p0, LDp;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->s()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8448
    :goto_9
    return-void

    .line 8440
    :cond_a
    iget-object v0, p0, LDp;->a:LDq;

    if-nez v0, :cond_17

    new-instance v0, LDq;

    iget-object v1, p0, LDp;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-direct {v0, v1, v2}, LDq;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;LCR;)V

    iput-object v0, p0, LDp;->a:LDq;

    .line 8441
    :cond_17
    iget-object v0, p0, LDp;->a:LDo;

    if-nez v0, :cond_24

    new-instance v0, LDo;

    iget-object v1, p0, LDp;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-direct {v0, v1, v2}, LDo;-><init>(Lcom/google/android/apps/docs/editors/text/TextView;LCR;)V

    iput-object v0, p0, LDp;->a:LDo;

    .line 8443
    :cond_24
    iget-object v0, p0, LDp;->a:LDq;

    invoke-virtual {v0}, LDq;->b()V

    .line 8444
    iget-object v0, p0, LDp;->a:LDo;

    invoke-virtual {v0}, LDo;->b()V

    .line 8446
    iget-object v0, p0, LDp;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->b(Lcom/google/android/apps/docs/editors/text/TextView;)V

    .line 8447
    iget-object v0, p0, LDp;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)LCJ;

    move-result-object v0

    invoke-virtual {v0}, LCJ;->b()V

    goto :goto_9
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 8539
    iget-object v0, p0, LDp;->a:LDq;

    if-eqz v0, :cond_e

    iget-object v0, p0, LDp;->a:LDq;

    invoke-virtual {v0}, LDq;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter

    .prologue
    .line 8461
    iget-object v0, p0, LDp;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->d(Lcom/google/android/apps/docs/editors/text/TextView;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, LDp;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->e(Lcom/google/android/apps/docs/editors/text/TextView;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 8462
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_64

    .line 8505
    :cond_17
    :goto_17
    :pswitch_17
    const/4 v0, 0x0

    return v0

    .line 8464
    :pswitch_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 8465
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 8469
    iget-object v2, p0, LDp;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/docs/editors/text/TextView;->a(II)I

    move-result v2

    iput v2, p0, LDp;->b:I

    iput v2, p0, LDp;->a:I

    .line 8472
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, LDp;->a:J

    sub-long/2addr v2, v4

    .line 8473
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    .line 8474
    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_42

    .line 8475
    iget-object v2, p0, LDp;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/editors/text/TextView;->c()Z

    .line 8485
    :cond_42
    iput v0, p0, LDp;->c:I

    .line 8486
    iput v1, p0, LDp;->d:I

    goto :goto_17

    .line 8494
    :pswitch_47
    iget-object v0, p0, LDp;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 8496
    invoke-direct {p0, p1}, LDp;->a(Landroid/view/MotionEvent;)V

    goto :goto_17

    .line 8501
    :pswitch_5d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LDp;->a:J

    goto :goto_17

    .line 8462
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_19
        :pswitch_5d
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_47
        :pswitch_47
    .end packed-switch
.end method

.method public b()I
    .registers 2

    .prologue
    .line 8527
    iget v0, p0, LDp;->b:I

    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 8452
    iget-object v0, p0, LDp;->a:LDq;

    if-eqz v0, :cond_9

    iget-object v0, p0, LDp;->a:LDq;

    invoke-virtual {v0}, LDq;->d()V

    .line 8453
    :cond_9
    iget-object v0, p0, LDp;->a:LDo;

    if-eqz v0, :cond_12

    iget-object v0, p0, LDp;->a:LDo;

    invoke-virtual {v0}, LDo;->d()V

    .line 8454
    :cond_12
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 8531
    const/4 v0, -0x1

    iput v0, p0, LDp;->b:I

    iput v0, p0, LDp;->a:I

    .line 8532
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 8551
    iget-object v0, p0, LDp;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 8552
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 8554
    iget-object v0, p0, LDp;->a:LDq;

    if-eqz v0, :cond_12

    iget-object v0, p0, LDp;->a:LDq;

    invoke-virtual {v0}, LDq;->f()V

    .line 8555
    :cond_12
    iget-object v0, p0, LDp;->a:LDo;

    if-eqz v0, :cond_1b

    iget-object v0, p0, LDp;->a:LDo;

    invoke-virtual {v0}, LDo;->f()V

    .line 8556
    :cond_1b
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .registers 2
    .parameter

    .prologue
    .line 8544
    if-nez p1, :cond_5

    .line 8545
    invoke-virtual {p0}, LDp;->b()V

    .line 8547
    :cond_5
    return-void
.end method
