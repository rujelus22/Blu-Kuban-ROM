.class public Lcom/google/android/music/SizableTrackSeekBar;
.super Landroid/widget/SeekBar;
.source "SizableTrackSeekBar.java"


# instance fields
.field private mEnableAccessibility:Z

.field private mIsTablet:Z

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbAlpha:F

.field private mTrackHeight:I

.field private mTrackPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumbAlpha:F

    .line 29
    iput-boolean v5, p0, Lcom/google/android/music/SizableTrackSeekBar;->mEnableAccessibility:Z

    .line 33
    sget-object v3, Lcom/google/android/music/R$styleable;->SizableSeekbar:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 35
    .local v2, trackHeight:I
    if-ne v2, v4, :cond_2a

    .line 36
    const/high16 v3, 0x4110

    invoke-virtual {p0, v3}, Lcom/google/android/music/SizableTrackSeekBar;->setTrackHeightDip(F)V

    .line 40
    :goto_1c
    invoke-static {p1, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    .line 42
    .local v1, preferences:Lcom/google/android/music/jumper/MusicPreferences;
    :try_start_20
    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/music/SizableTrackSeekBar;->mIsTablet:Z
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_2e

    .line 44
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 46
    return-void

    .line 38
    .end local v1           #preferences:Lcom/google/android/music/jumper/MusicPreferences;
    :cond_2a
    invoke-virtual {p0, v2}, Lcom/google/android/music/SizableTrackSeekBar;->setTrackHeight(I)V

    goto :goto_1c

    .line 44
    .restart local v1       #preferences:Lcom/google/android/music/jumper/MusicPreferences;
    :catchall_2e
    move-exception v3

    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v3
.end method

.method private configureThumbPadding()V
    .registers 13

    .prologue
    const/4 v7, 0x0

    .line 63
    iget-object v8, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_62

    .line 64
    iget-boolean v8, p0, Lcom/google/android/music/SizableTrackSeekBar;->mIsTablet:Z

    if-eqz v8, :cond_50

    .line 65
    iget-object v8, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Lcom/google/android/music/SizableTrackSeekBar;->mTrackPadding:I

    .line 74
    :goto_18
    iget-object v8, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_65

    move v5, v7

    .line 75
    .local v5, thumbHeight:I
    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getPaddingRight()I

    move-result v3

    .line 76
    .local v3, paddingRight:I
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getPaddingLeft()I

    move-result v2

    .line 77
    .local v2, paddingLeft:I
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getPaddingTop()I

    move-result v4

    .line 78
    .local v4, paddingTop:I
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getPaddingBottom()I

    move-result v1

    .line 79
    .local v1, paddingBottom:I
    iget v6, p0, Lcom/google/android/music/SizableTrackSeekBar;->mTrackHeight:I

    .line 81
    .local v6, trackHeight:I
    sub-int v8, v5, v6

    div-int/lit8 v0, v8, 0x2

    .line 83
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

    .line 86
    invoke-virtual {p0, v7}, Lcom/google/android/music/SizableTrackSeekBar;->setThumbOffset(I)V

    .line 87
    return-void

    .line 67
    .end local v0           #gapForCenteringTrack:I
    .end local v1           #paddingBottom:I
    .end local v2           #paddingLeft:I
    .end local v3           #paddingRight:I
    .end local v4           #paddingTop:I
    .end local v5           #thumbHeight:I
    .end local v6           #trackHeight:I
    :cond_50
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09005f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p0, Lcom/google/android/music/SizableTrackSeekBar;->mTrackPadding:I

    goto :goto_18

    .line 71
    :cond_62
    iput v7, p0, Lcom/google/android/music/SizableTrackSeekBar;->mTrackPadding:I

    goto :goto_18

    .line 74
    :cond_65
    iget-object v8, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    goto :goto_1d
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .registers 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 51
    invoke-direct {p0}, Lcom/google/android/music/SizableTrackSeekBar;->configureThumbPadding()V

    .line 52
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 135
    :goto_7
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 129
    :pswitch_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/SizableTrackSeekBar;->mEnableAccessibility:Z

    goto :goto_7

    .line 132
    :pswitch_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/SizableTrackSeekBar;->mEnableAccessibility:Z

    goto :goto_7

    .line 127
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
    .line 118
    iget-boolean v0, p0, Lcom/google/android/music/SizableTrackSeekBar;->mEnableAccessibility:Z

    if-eqz v0, :cond_7

    .line 119
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->sendAccessibilityEvent(I)V

    .line 121
    :cond_7
    return-void
.end method

.method public setEnableAccessibility(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/google/android/music/SizableTrackSeekBar;->mEnableAccessibility:Z

    .line 144
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "thumb"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-direct {p0}, Lcom/google/android/music/SizableTrackSeekBar;->configureThumbPadding()V

    .line 59
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 60
    return-void
.end method

.method public setThumbAlpha(I)V
    .registers 4
    .parameter "alpha"

    .prologue
    .line 104
    int-to-float v0, p1

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumbAlpha:F

    .line 105
    iget-object v0, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_f

    .line 106
    iget-object v0, p0, Lcom/google/android/music/SizableTrackSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 108
    :cond_f
    invoke-direct {p0}, Lcom/google/android/music/SizableTrackSeekBar;->configureThumbPadding()V

    .line 109
    return-void
.end method

.method public setTrackHeight(I)V
    .registers 2
    .parameter "size"

    .prologue
    .line 95
    iput p1, p0, Lcom/google/android/music/SizableTrackSeekBar;->mTrackHeight:I

    .line 96
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->requestLayout()V

    .line 97
    return-void
.end method

.method public setTrackHeightDip(F)V
    .registers 3
    .parameter "size"

    .prologue
    .line 90
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

    .line 91
    invoke-virtual {p0}, Lcom/google/android/music/SizableTrackSeekBar;->requestLayout()V

    .line 92
    return-void
.end method
