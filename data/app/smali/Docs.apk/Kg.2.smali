.class public LKg;
.super Ljava/lang/Object;
.source "KixWebView.java"


# instance fields
.field private a:Landroid/animation/Animator;

.field private final a:Landroid/view/animation/DecelerateInterpolator;

.field final synthetic a:Lcom/google/android/apps/docs/kixwebview/KixWebView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/docs/kixwebview/KixWebView;)V
    .registers 3
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, LKg;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, LKg;->a:Landroid/animation/Animator;

    .line 36
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, LKg;->a:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/docs/kixwebview/KixWebView;LKe;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, LKg;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebView;)V

    return-void
.end method

.method private a(IF)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x12c

    const/4 v6, 0x0

    .line 47
    invoke-virtual {p0}, LKg;->a()V

    .line 48
    iget-object v0, p0, LKg;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->getScrollX()I

    move-result v2

    .line 49
    sub-int v0, p1, v2

    mul-int/lit16 v0, v0, 0x3e8

    int-to-float v3, v0

    cmpl-float v0, p2, v6

    if-eqz v0, :cond_2e

    const/high16 v0, 0x4000

    div-float v0, p2, v0

    :goto_19
    div-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 51
    if-le v0, v1, :cond_26

    move v0, v1

    .line 56
    :cond_26
    if-nez v0, :cond_31

    .line 57
    iget-object v0, p0, LKg;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->setAnimationScroll(I)V

    .line 78
    :goto_2d
    return-void

    .line 49
    :cond_2e
    const/high16 v0, 0x447a

    goto :goto_19

    .line 60
    :cond_31
    iget-object v1, p0, LKg;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    const-string v3, "animationScroll"

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v2, 0x1

    aput p1, v4, v2

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, LKg;->a:Landroid/animation/Animator;

    .line 61
    iget-object v1, p0, LKg;->a:Landroid/animation/Animator;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 62
    cmpl-float v0, p2, v6

    if-eqz v0, :cond_55

    .line 64
    iget-object v0, p0, LKg;->a:Landroid/animation/Animator;

    iget-object v1, p0, LKg;->a:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 66
    :cond_55
    iget-object v0, p0, LKg;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 67
    iget-object v0, p0, LKg;->a:Landroid/animation/Animator;

    new-instance v1, LKh;

    invoke-direct {v1, p0}, LKh;-><init>(LKg;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2d
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, LKg;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_c

    .line 82
    iget-object v0, p0, LKg;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, LKg;->a:Landroid/animation/Animator;

    .line 85
    :cond_c
    return-void
.end method

.method public a(F)V
    .registers 3
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, LKg;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v0, p1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;F)I

    move-result v0

    invoke-direct {p0, v0, p1}, LKg;->a(IF)V

    .line 40
    return-void
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, LKg;->a:Lcom/google/android/apps/docs/kixwebview/KixWebView;

    invoke-static {v0, p1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(Lcom/google/android/apps/docs/kixwebview/KixWebView;I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LKg;->a(IF)V

    .line 44
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, LKg;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_e

    iget-object v0, p0, LKg;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
