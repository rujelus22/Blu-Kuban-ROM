.class public Lcom/google/android/music/widgets/ActionBarItem;
.super Landroid/widget/FrameLayout;
.source "ActionBarItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/widgets/ActionBarItem$FadeBackgroundAnimation;
    }
.end annotation


# instance fields
.field private final mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private final mFadeBGAnimation:Landroid/view/animation/Animation;

.field private final mFocusBackground:Landroid/graphics/drawable/BitmapDrawable;

.field private final mMaxAlpha:I

.field private mMaxAlphaSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-boolean v4, p0, Lcom/google/android/music/widgets/ActionBarItem;->mMaxAlphaSet:Z

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 39
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x7f0a0006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/music/widgets/ActionBarItem;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 40
    const v2, 0x7f02015e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/google/android/music/widgets/ActionBarItem;->mFocusBackground:Landroid/graphics/drawable/BitmapDrawable;

    .line 42
    iget-object v2, p0, Lcom/google/android/music/widgets/ActionBarItem;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v2

    iput v2, p0, Lcom/google/android/music/widgets/ActionBarItem;->mMaxAlpha:I

    .line 43
    iget-object v2, p0, Lcom/google/android/music/widgets/ActionBarItem;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 44
    iget-object v2, p0, Lcom/google/android/music/widgets/ActionBarItem;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v2}, Lcom/google/android/music/widgets/ActionBarItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    new-instance v2, Lcom/google/android/music/widgets/ActionBarItem$FadeBackgroundAnimation;

    invoke-direct {v2, p0}, Lcom/google/android/music/widgets/ActionBarItem$FadeBackgroundAnimation;-><init>(Lcom/google/android/music/widgets/ActionBarItem;)V

    iput-object v2, p0, Lcom/google/android/music/widgets/ActionBarItem;->mFadeBGAnimation:Landroid/view/animation/Animation;

    .line 47
    iget-object v2, p0, Lcom/google/android/music/widgets/ActionBarItem;->mFadeBGAnimation:Landroid/view/animation/Animation;

    const v3, 0x10e0001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/widgets/ActionBarItem;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/google/android/music/widgets/ActionBarItem;->mMaxAlpha:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/music/widgets/ActionBarItem;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/google/android/music/widgets/ActionBarItem;->mMaxAlphaSet:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/music/widgets/ActionBarItem;)Landroid/graphics/drawable/ColorDrawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/music/widgets/ActionBarItem;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 96
    if-eqz p1, :cond_b

    .line 97
    iget-object v0, p0, Lcom/google/android/music/widgets/ActionBarItem;->mFocusBackground:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/ActionBarItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :goto_a
    return-void

    .line 99
    :cond_b
    iget-object v0, p0, Lcom/google/android/music/widgets/ActionBarItem;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/ActionBarItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-virtual {p0}, Lcom/google/android/music/widgets/ActionBarItem;->clearAnimation()V

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 55
    .local v0, action:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    if-ne v0, v2, :cond_17

    .line 56
    :cond_d
    iget-object v1, p0, Lcom/google/android/music/widgets/ActionBarItem;->mFadeBGAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/google/android/music/widgets/ActionBarItem;->startAnimation(Landroid/view/animation/Animation;)V

    .line 65
    :cond_12
    :goto_12
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 57
    :cond_17
    iget-boolean v1, p0, Lcom/google/android/music/widgets/ActionBarItem;->mMaxAlphaSet:Z

    if-nez v1, :cond_12

    .line 58
    iput-boolean v2, p0, Lcom/google/android/music/widgets/ActionBarItem;->mMaxAlphaSet:Z

    .line 59
    iget-object v1, p0, Lcom/google/android/music/widgets/ActionBarItem;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/google/android/music/widgets/ActionBarItem;->mMaxAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 60
    iget-object v1, p0, Lcom/google/android/music/widgets/ActionBarItem;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v1}, Lcom/google/android/music/widgets/ActionBarItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/music/widgets/ActionBarItem;->invalidate()V

    goto :goto_12
.end method
