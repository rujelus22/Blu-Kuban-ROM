.class public Lcom/sec/android/socialhub/view/RecipientButton;
.super Landroid/widget/Button;
.source "RecipientButton.java"


# instance fields
.field private mIsDelete:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/RecipientButton;->mIsDelete:Z

    .line 30
    invoke-direct {p0}, Lcom/sec/android/socialhub/view/RecipientButton;->initialize()V

    .line 31
    return-void
.end method

.method private ToBtnDeleteAnim()Landroid/view/animation/AnimationSet;
    .registers 13

    .prologue
    const/high16 v6, 0x3f00

    const v2, 0x3e99999a

    const/4 v5, 0x1

    const/high16 v1, 0x3f80

    .line 82
    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 83
    .local v11, myAnimation:Landroid/view/animation/AnimationSet;
    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v10, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 85
    .local v10, anyAI:Landroid/view/animation/AccelerateInterpolator;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 86
    .local v9, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v3, 0xc8

    invoke-virtual {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 87
    invoke-virtual {v9, v10}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 89
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 91
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 92
    invoke-virtual {v0, v10}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 93
    invoke-virtual {v11, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 94
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 95
    return-object v11
.end method

.method private initialize()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientButton;->ToBtnCreateAnim()Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/view/RecipientButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 36
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/view/RecipientButton;->setHeight(I)V

    .line 37
    invoke-virtual {p0, v2, v1, v2, v1}, Lcom/sec/android/socialhub/view/RecipientButton;->setPadding(IIII)V

    .line 38
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientButton;->setSingleLine()V

    .line 39
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/view/RecipientButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/view/RecipientButton;->setFocusable(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/view/RecipientButton;->setTextColor(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public ToBtnCreateAnim()Landroid/view/animation/AnimationSet;
    .registers 13

    .prologue
    const v1, 0x3f19999a

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    .line 65
    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 66
    .local v11, myAnimation:Landroid/view/animation/AnimationSet;
    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v10, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 68
    .local v10, anyAI:Landroid/view/animation/AccelerateInterpolator;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 69
    .local v9, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v3, 0xc8

    invoke-virtual {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 70
    invoke-virtual {v9, v10}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 72
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 74
    .local v0, scaleAni:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 75
    invoke-virtual {v0, v10}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 76
    invoke-virtual {v11, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 77
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 78
    return-object v11
.end method

.method public delete(Landroid/os/Handler;I)V
    .registers 7
    .parameter "handler"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 100
    iget-boolean v1, p0, Lcom/sec/android/socialhub/view/RecipientButton;->mIsDelete:Z

    if-ne v1, v2, :cond_f

    .line 102
    const-string v1, "RecipientButton"

    const-string v2, "delete()"

    const-string v3, "already button was deleted"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_e
    return-void

    .line 106
    :cond_f
    invoke-direct {p0}, Lcom/sec/android/socialhub/view/RecipientButton;->ToBtnDeleteAnim()Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 108
    .local v0, deleteAni:Landroid/view/animation/AnimationSet;
    new-instance v1, Lcom/sec/android/socialhub/view/RecipientButton$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/socialhub/view/RecipientButton$1;-><init>(Lcom/sec/android/socialhub/view/RecipientButton;Landroid/os/Handler;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientButton;->clearAnimation()V

    .line 121
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/view/RecipientButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 123
    iput-boolean v2, p0, Lcom/sec/android/socialhub/view/RecipientButton;->mIsDelete:Z

    goto :goto_e
.end method

.method public setEnabled(Z)V
    .registers 5
    .parameter "bEnabled"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/RecipientButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020148

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 52
    .local v0, BtnBackground:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_19

    .line 54
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 60
    :goto_15
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/view/RecipientButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    return-void

    .line 58
    :cond_19
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_15
.end method
