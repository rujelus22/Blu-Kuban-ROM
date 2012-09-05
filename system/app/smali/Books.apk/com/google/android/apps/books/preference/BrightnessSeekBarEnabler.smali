.class public Lcom/google/android/apps/books/preference/BrightnessSeekBarEnabler;
.super Landroid/widget/FrameLayout;
.source "BrightnessSeekBarEnabler.java"


# instance fields
.field private mBrightnessScrub:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method private enableSeekBar()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessSeekBarEnabler;->mBrightnessScrub:Landroid/widget/SeekBar;

    if-eqz v0, :cond_a

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessSeekBarEnabler;->mBrightnessScrub:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 60
    :cond_a
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/apps/books/preference/BrightnessSeekBarEnabler;->enableSeekBar()V

    .line 44
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/apps/books/preference/BrightnessSeekBarEnabler;->enableSeekBar()V

    .line 53
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 36
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 38
    const v0, 0x7f0f0052

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/preference/BrightnessSeekBarEnabler;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessSeekBarEnabler;->mBrightnessScrub:Landroid/widget/SeekBar;

    .line 39
    return-void
.end method
