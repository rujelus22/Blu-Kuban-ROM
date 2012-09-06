.class public Lcom/google/android/music/SizableTrackSeekBar;
.super Lcom/google/android/music/SafePostSeekBar;
.source "SizableTrackSeekBar.java"


# instance fields
.field private mEnableAccessibility:Z

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbAlpha:F

.field private mTrackHeight:I

.field private mTrackPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/SafePostSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumbAlpha:F

    .line 27
    iput-boolean v4, p0, Lcom/google/android/music/SizableTrackSeekBar;->mEnableAccessibility:Z

    .line 31
    sget-object v2, Lcom/google/android/music/R$styleable;->SizableSeekbar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 33
    .local v1, trackHeight:I
    if-ne v1, v3, :cond_1d

    .line 34
    const/high16 v2, 0x4110

    invoke-virtual {p0, v2}, Lcom/google/android/music/SizableTrackSeekBar;->setTrackHeightDip(F)V

    .line 38
    :goto_1c
    return-void

    .line 36
    :cond_1d
    invoke-virtual {p0, v1}, Lcom/google/android/music/SizableTrackSeekBar;->setTrackHeight(I)V

    goto :goto_1c
.end method

.method private configureThumbPadding()V
    .registers 13

    .prologue
    const/4 v7, 0x0

    .line 55
    iget-object v8, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_4c

    .line 56
    iget-object v8, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Lcom/google/android/music/SizableTrackSeekBar;->mTrackPadding:I

    .line 61
    :goto_14
    iget-object v8, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_4f

    move v5, v7

    .line 62
    .local v5, thumbHeight:I
    :goto_19
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getPaddingRight()I

    move-result v3

    .line 63
    .local v3, paddingRight:I
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getPaddingLeft()I

    move-result v2

    .line 64
    .local v2, paddingLeft:I
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getPaddingTop()I

    move-result v4

    .line 65
    .local v4, paddingTop:I
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getPaddingBottom()I

    move-result v1

    .line 66
    .local v1, paddingBottom:I
    iget v6, p0, Lcom/google/android/music/SizableTrackSeekBar;->mTrackHeight:I

    .line 68
    .local v6, trackHeight:I
    sub-int v8, v5, v6

    div-int/lit8 v0, v8, 0x2

    .line 70
    .local v0, gapForCenteringTrack:I
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget v9, p0, Lcom/google/android/music/SizableTrackSeekBar;->mTrackPadding:I

    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getWidth()I

    move-result v10

    sub-int/2addr v10, v3

    sub-int/2addr v10, v2

    iget v11, p0, Lcom/google/android/music/SizableTrackSeekBar;->mTrackPadding:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getHeight()I

    move-result v11

    sub-int/2addr v11, v1

    sub-int/2addr v11, v0

    sub-int/2addr v11, v4

    invoke-virtual {v8, v9, v0, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 73
    invoke-virtual {p0, v7}, Lcom/google/android/music/SizableTrackSeekBar;->setThumbOffset(I)V

    .line 74
    return-void

    .line 58
    .end local v0           #gapForCenteringTrack:I
    .end local v1           #paddingBottom:I
    .end local v2           #paddingLeft:I
    .end local v3           #paddingRight:I
    .end local v4           #paddingTop:I
    .end local v5           #thumbHeight:I
    .end local v6           #trackHeight:I
    :cond_4c
    iput v7, p0, Lcom/google/android/music/SizableTrackSeekBar;->mTrackPadding:I

    goto :goto_14

    .line 61
    :cond_4f
    iget-object v8, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    goto :goto_19
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .registers 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 42
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/music/SafePostSeekBar;->onSizeChanged(IIII)V

    .line 43
    invoke-direct {p0}, Lcom/google/android/music/SizableTrackSeekBar;->configureThumbPadding()V

    .line 44
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 122
    :goto_7
    invoke-super {p0, p1}, Lcom/google/android/music/SafePostSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 116
    :pswitch_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/SizableTrackSeekBar;->mEnableAccessibility:Z

    goto :goto_7

    .line 119
    :pswitch_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/SizableTrackSeekBar;->mEnableAccessibility:Z

    goto :goto_7

    .line 114
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3
    .parameter "eventType"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/google/android/music/SizableTrackSeekBar;->mEnableAccessibility:Z

    if-eqz v0, :cond_7

    .line 106
    invoke-super {p0, p1}, Lcom/google/android/music/SafePostSeekBar;->sendAccessibilityEvent(I)V

    .line 108
    :cond_7
    return-void
.end method

.method public setEnableAccessibility(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/google/android/music/SizableTrackSeekBar;->mEnableAccessibility:Z

    .line 131
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "thumb"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-direct {p0}, Lcom/google/android/music/SizableTrackSeekBar;->configureThumbPadding()V

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/music/SafePostSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method

.method public setThumbAlpha(I)V
    .registers 4
    .parameter "alpha"

    .prologue
    .line 91
    int-to-float v0, p1

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumbAlpha:F

    .line 92
    iget-object v0, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 93
    iget-object v0, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 95
    :cond_f
    invoke-direct {p0}, Lcom/google/android/music/SizableTrackSeekBar;->configureThumbPadding()V

    .line 96
    return-void
.end method

.method public setTrackHeight(I)V
    .registers 2
    .parameter "size"

    .prologue
    .line 82
    iput p1, p0, Lcom/google/android/music/SizableTrackSeekBar;->mTrackHeight:I

    .line 83
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->requestLayout()V

    .line 84
    return-void
.end method

.method public setTrackHeightDip(F)V
    .registers 3
    .parameter "size"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/music/SizableTrackSeekBar;->mTrackHeight:I

    .line 78
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->requestLayout()V

    .line 79
    return-void
.end method
