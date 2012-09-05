.class public Lcom/google/android/apps/books/util/FadeAnimationController;
.super Ljava/lang/Object;
.source "FadeAnimationController.java"


# instance fields
.field private mCurrentAnimator:Landroid/animation/Animator;

.field private final mView:Landroid/view/View;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/apps/books/util/FadeAnimationController;->mView:Landroid/view/View;

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, p0, Lcom/google/android/apps/books/util/FadeAnimationController;->mVisible:Z

    .line 31
    return-void

    .line 30
    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/util/FadeAnimationController;)Landroid/animation/Animator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/books/util/FadeAnimationController;->mCurrentAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/books/util/FadeAnimationController;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/android/apps/books/util/FadeAnimationController;->mCurrentAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/util/FadeAnimationController;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/apps/books/util/FadeAnimationController;->mView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public getVisible()Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/apps/books/util/FadeAnimationController;->mVisible:Z

    return v0
.end method

.method public setVisible(Z)V
    .registers 9
    .parameter "visible"

    .prologue
    const/4 v6, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 38
    iget-boolean v5, p0, Lcom/google/android/apps/books/util/FadeAnimationController;->mVisible:Z

    if-eq p1, v5, :cond_4f

    .line 39
    iput-boolean p1, p0, Lcom/google/android/apps/books/util/FadeAnimationController;->mVisible:Z

    .line 42
    iget-object v5, p0, Lcom/google/android/apps/books/util/FadeAnimationController;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v5, :cond_47

    .line 43
    iget-object v5, p0, Lcom/google/android/apps/books/util/FadeAnimationController;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v1

    .line 48
    .local v1, fromAlpha:F
    :goto_14
    if-eqz p1, :cond_4d

    move v2, v4

    .line 50
    .local v2, toAlpha:F
    :goto_17
    if-eqz p1, :cond_1e

    .line 51
    iget-object v3, p0, Lcom/google/android/apps/books/util/FadeAnimationController;->mView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 54
    :cond_1e
    iget-object v3, p0, Lcom/google/android/apps/books/util/FadeAnimationController;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_27

    .line 55
    iget-object v3, p0, Lcom/google/android/apps/books/util/FadeAnimationController;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 58
    :cond_27
    iget-object v3, p0, Lcom/google/android/apps/books/util/FadeAnimationController;->mView:Landroid/view/View;

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v1, v5, v6

    const/4 v6, 0x1

    aput v2, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 60
    .local v0, animator:Landroid/animation/Animator;
    new-instance v3, Lcom/google/android/apps/books/util/FadeAnimationController$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/google/android/apps/books/util/FadeAnimationController$1;-><init>(Lcom/google/android/apps/books/util/FadeAnimationController;Landroid/animation/Animator;Z)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 78
    iput-object v0, p0, Lcom/google/android/apps/books/util/FadeAnimationController;->mCurrentAnimator:Landroid/animation/Animator;

    .line 80
    iget-object v3, p0, Lcom/google/android/apps/books/util/FadeAnimationController;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 86
    .end local v0           #animator:Landroid/animation/Animator;
    .end local v1           #fromAlpha:F
    .end local v2           #toAlpha:F
    :cond_46
    :goto_46
    return-void

    .line 45
    :cond_47
    if-eqz p1, :cond_4b

    move v1, v3

    .restart local v1       #fromAlpha:F
    :goto_4a
    goto :goto_14

    .end local v1           #fromAlpha:F
    :cond_4b
    move v1, v4

    goto :goto_4a

    .restart local v1       #fromAlpha:F
    :cond_4d
    move v2, v3

    .line 48
    goto :goto_17

    .line 82
    .end local v1           #fromAlpha:F
    :cond_4f
    const-string v3, "FadeAnimController"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 83
    const-string v3, "FadeAnimController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVisible() was a no-op because visible is already "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method
