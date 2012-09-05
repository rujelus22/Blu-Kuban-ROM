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

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-boolean v4, p0, Lcom/google/android/music/widgets/ActionBarItem;->mMaxAlphaSet:Z

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 37
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x7f0a0003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/music/widgets/ActionBarItem;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 38
    const v2, 0x7f0201e1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/google/android/music/widgets/ActionBarItem;->mFocusBackground:Landroid/graphics/drawable/BitmapDrawable;

    .line 40
    iget-object v2, p0, Lcom/google/android/music/widgets/ActionBarItem;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v2

    iput v2, p0, Lcom/google/android/music/widgets/ActionBarItem;->mMaxAlpha:I

    .line 41
    iget-object v2, p0, Lcom/google/android/music/widgets/ActionBarItem;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 42
    iget-object v2, p0, Lcom/google/android/music/widgets/ActionBarItem;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v2}, Lcom/google/android/music/widgets/ActionBarItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    new-instance v2, Lcom/google/android/music/widgets/ActionBarItem$FadeBackgroundAnimation;

    invoke-direct {v2, p0}, Lcom/google/android/music/widgets/ActionBarItem$FadeBackgroundAnimation;-><init>(Lcom/google/android/music/widgets/ActionBarItem;)V

    iput-object v2, p0, Lcom/google/android/music/widgets/ActionBarItem;->mFadeBGAnimation:Landroid/view/animation/Animation;

    .line 45
    iget-object v2, p0, Lcom/google/android/music/widgets/ActionBarItem;->mFadeBGAnimation:Landroid/view/animation/Animation;

    const v3, 0x10e0001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 46
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
    .line 93
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 94
    if-eqz p1, :cond_b

    .line 95
    iget-object v0, p0, Lcom/google/android/music/widgets/ActionBarItem;->mFocusBackground:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/ActionBarItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :goto_a
    return-void

    .line 97
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

    .line 51
    invoke-virtual {p0}, Lcom/google/android/music/widgets/ActionBarItem;->clearAnimation()V

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1b

    .line 54
    :cond_11
    iget-object v0, p0, Lcom/google/android/music/widgets/ActionBarItem;->mFadeBGAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/ActionBarItem;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    :cond_16
    :goto_16
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 55
    :cond_1b
    iget-boolean v0, p0, Lcom/google/android/music/widgets/ActionBarItem;->mMaxAlphaSet:Z

    if-nez v0, :cond_16

    .line 56
    iput-boolean v2, p0, Lcom/google/android/music/widgets/ActionBarItem;->mMaxAlphaSet:Z

    .line 57
    iget-object v0, p0, Lcom/google/android/music/widgets/ActionBarItem;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/google/android/music/widgets/ActionBarItem;->mMaxAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 58
    iget-object v0, p0, Lcom/google/android/music/widgets/ActionBarItem;->mBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/ActionBarItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/music/widgets/ActionBarItem;->invalidate()V

    goto :goto_16
.end method
