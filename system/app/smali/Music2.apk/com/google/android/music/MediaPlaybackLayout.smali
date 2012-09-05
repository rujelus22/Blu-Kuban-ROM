.class public abstract Lcom/google/android/music/MediaPlaybackLayout;
.super Landroid/view/ViewGroup;
.source "MediaPlaybackLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/MediaPlaybackLayout$LandscapeCompactMediaPlaybackLayout;,
        Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;
    }
.end annotation


# instance fields
.field private mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

.field private mBelow:Landroid/view/View;

.field private mBuyPanel:Landroid/view/View;

.field private mFrame:Landroid/widget/ImageView;

.field private mIsCollapsed:Z

.field private mLoadingProgress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method


# virtual methods
.method public animate(ZJLandroid/view/animation/Interpolator;)V
    .registers 31
    .parameter "toCollapsed"
    .parameter "animationDuration"
    .parameter "interpolator"

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/music/MediaPlaybackLayout;->mIsCollapsed:Z

    move/from16 v0, p1

    if-ne v0, v6, :cond_9

    .line 206
    :goto_8
    return-void

    .line 154
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/MediaPlaybackLayout;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v0, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v20, v0

    .line 155
    .local v20, loadingProgressWidth:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/MediaPlaybackLayout;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    .line 156
    .local v19, loadingProgressHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumSize()I

    move-result v6

    sub-int v6, v6, v20

    div-int/lit8 v17, v6, 0x2

    .line 157
    .local v17, loadProgressHorizontalOffset:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumSize()I

    move-result v6

    sub-int v6, v6, v19

    div-int/lit8 v18, v6, 0x2

    .line 158
    .local v18, loadProgressVerticalOffset:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v6}, Lcom/google/android/music/AsyncAlbumArtImageView;->getLeft()I

    move-result v6

    add-int v23, v6, v17

    .line 159
    .local v23, oldX:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v6}, Lcom/google/android/music/AsyncAlbumArtImageView;->getTop()I

    move-result v6

    add-int v24, v6, v18

    .line 161
    .local v24, oldY:I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/MediaPlaybackLayout;->mIsCollapsed:Z

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->requestLayout()V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getScalingFactor()F

    move-result v25

    .line 166
    .local v25, scaleFactor:F
    if-eqz p1, :cond_111

    const/high16 v6, 0x3f80

    div-float v3, v6, v25

    .line 168
    .local v3, fromScale:F
    :goto_58
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f80

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v5, v3

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 172
    .local v2, albumAnimation:Landroid/view/animation/Animation;
    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 173
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getFrame()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 179
    .local v16, frameLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f80

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    move-object/from16 v0, v16

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    neg-int v7, v7

    int-to-float v10, v7

    const/4 v11, 0x0

    move-object/from16 v0, v16

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    neg-int v7, v7

    int-to-float v12, v7

    move v5, v3

    move v7, v3

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 183
    .local v4, albumFrameAnimation:Landroid/view/animation/Animation;
    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 184
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/MediaPlaybackLayout;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v6

    if-nez v6, :cond_101

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumSize()I

    move-result v6

    sub-int v6, v6, v20

    div-int/lit8 v17, v6, 0x2

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumSize()I

    move-result v6

    sub-int v6, v6, v19

    div-int/lit8 v18, v6, 0x2

    .line 190
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v6}, Lcom/google/android/music/AsyncAlbumArtImageView;->getLeft()I

    move-result v6

    add-int v21, v6, v17

    .line 191
    .local v21, newX:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v6}, Lcom/google/android/music/AsyncAlbumArtImageView;->getTop()I

    move-result v6

    add-int v22, v6, v18

    .line 192
    .local v22, newY:I
    sub-int v6, v21, v23

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 193
    .local v14, difX:I
    sub-int v6, v22, v24

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 194
    .local v15, difY:I
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/android/music/MediaPlaybackLayout;->mIsCollapsed:Z

    if-eqz v7, :cond_115

    int-to-float v7, v14

    :goto_e1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/music/MediaPlaybackLayout;->mIsCollapsed:Z

    if-eqz v11, :cond_118

    int-to-float v11, v15

    :goto_eb
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 199
    .local v5, progressTranslate:Landroid/view/animation/TranslateAnimation;
    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 200
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/music/MediaPlaybackLayout;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v5}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 204
    .end local v5           #progressTranslate:Landroid/view/animation/TranslateAnimation;
    .end local v14           #difX:I
    .end local v15           #difY:I
    .end local v21           #newX:I
    .end local v22           #newY:I
    :cond_101
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumArt()Lcom/google/android/music/AsyncAlbumArtImageView;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout;->getFrame()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_8

    .end local v2           #albumAnimation:Landroid/view/animation/Animation;
    .end local v3           #fromScale:F
    .end local v4           #albumFrameAnimation:Landroid/view/animation/Animation;
    .end local v16           #frameLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_111
    move/from16 v3, v25

    .line 166
    goto/16 :goto_58

    .line 194
    .restart local v2       #albumAnimation:Landroid/view/animation/Animation;
    .restart local v3       #fromScale:F
    .restart local v4       #albumFrameAnimation:Landroid/view/animation/Animation;
    .restart local v14       #difX:I
    .restart local v15       #difY:I
    .restart local v16       #frameLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v21       #newX:I
    .restart local v22       #newY:I
    :cond_115
    neg-int v7, v14

    int-to-float v7, v7

    goto :goto_e1

    :cond_118
    neg-int v11, v15

    int-to-float v11, v11

    goto :goto_eb
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 148
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 138
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 143
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAlbumArt()Lcom/google/android/music/AsyncAlbumArtImageView;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    return-object v0
.end method

.method protected getAlbumMarginLeft()I
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0
.end method

.method protected getAlbumMarginRight()I
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return v0
.end method

.method protected getAlbumMarginTop()I
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return v0
.end method

.method protected getAlbumSize()I
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mIsCollapsed:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mBelow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getExpandedAlbumSize()I

    move-result v0

    goto :goto_a
.end method

.method protected getExpandedAlbumSize()I
    .registers 5

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumMarginTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 102
    .local v0, albumMaxHeight:I
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumMarginLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumMarginRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 104
    .local v1, maxWidth:I
    if-le v1, v0, :cond_29

    .line 105
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int v1, v0, v2

    .line 108
    .end local v1           #maxWidth:I
    :cond_29
    return v1
.end method

.method public getFrame()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mFrame:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLoadingProgress()Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mLoadingProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method protected getScalingFactor()F
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mBelow:Landroid/view/View;

    if-nez v0, :cond_7

    .line 83
    const/high16 v0, 0x3f80

    .line 85
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mBelow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getExpandedAlbumSize()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_6
.end method

.method protected isCollapsed()Z
    .registers 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mIsCollapsed:Z

    return v0
.end method

.method protected layoutArtUpperLeft(II)V
    .registers 11
    .parameter "l"
    .parameter "t"

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumSize()I

    move-result v1

    .line 253
    .local v1, size:I
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumArt()Lcom/google/android/music/AsyncAlbumArtImageView;

    move-result-object v2

    add-int v3, p1, v1

    add-int v4, p2, v1

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/google/android/music/AsyncAlbumArtImageView;->layout(IIII)V

    .line 255
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getFrame()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 257
    .local v0, frameLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getFrame()Landroid/widget/ImageView;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, p1

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, p2

    add-int v5, p1, v1

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    add-int v6, p2, v1

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 261
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 210
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 211
    const v0, 0x7f100018

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 212
    const v0, 0x7f100019

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mFrame:Landroid/widget/ImageView;

    .line 213
    const v0, 0x7f100049

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mBuyPanel:Landroid/view/View;

    .line 214
    const v0, 0x7f10001a

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mLoadingProgress:Landroid/widget/ProgressBar;

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MediaPlaybackLayout;->mIsCollapsed:Z

    .line 216
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 229
    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackLayout;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 230
    .local v4, loadingProgressWidth:I
    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackLayout;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 232
    .local v3, loadingProgressHeight:I
    if-lez v4, :cond_14

    if-gtz v3, :cond_1c

    .line 233
    :cond_14
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "loadingProgress width/height should be exact"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 236
    :cond_1c
    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v5}, Lcom/google/android/music/AsyncAlbumArtImageView;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    div-int/lit8 v1, v5, 0x2

    .line 237
    .local v1, loadProgressHorizontalOffset:I
    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v5}, Lcom/google/android/music/AsyncAlbumArtImageView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v2, v5, 0x2

    .line 238
    .local v2, loadProgressVerticalOffset:I
    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackLayout;->mLoadingProgress:Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v6}, Lcom/google/android/music/AsyncAlbumArtImageView;->getLeft()I

    move-result v6

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v7}, Lcom/google/android/music/AsyncAlbumArtImageView;->getTop()I

    move-result v7

    add-int/2addr v7, v2

    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v8}, Lcom/google/android/music/AsyncAlbumArtImageView;->getRight()I

    move-result v8

    sub-int/2addr v8, v1

    iget-object v9, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v9}, Lcom/google/android/music/AsyncAlbumArtImageView;->getBottom()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 243
    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackLayout;->mBuyPanel:Landroid/view/View;

    if-eqz v5, :cond_7d

    .line 244
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 245
    .local v0, buyBarHeight:I
    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackLayout;->mBuyPanel:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v6}, Lcom/google/android/music/AsyncAlbumArtImageView;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v7}, Lcom/google/android/music/AsyncAlbumArtImageView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v0

    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v8}, Lcom/google/android/music/AsyncAlbumArtImageView;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/music/MediaPlaybackLayout;->mAlbumArt:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v9}, Lcom/google/android/music/AsyncAlbumArtImageView;->getBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 249
    .end local v0           #buyBarHeight:I
    :cond_7d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/google/android/music/MediaPlaybackLayout;->measureChildren(II)V

    .line 222
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/google/android/music/MediaPlaybackLayout;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/google/android/music/MediaPlaybackLayout;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/MediaPlaybackLayout;->setMeasuredDimension(II)V

    .line 224
    return-void
.end method

.method protected setIsCollapsed(Z)V
    .registers 2
    .parameter "collapsed"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/google/android/music/MediaPlaybackLayout;->mIsCollapsed:Z

    .line 130
    return-void
.end method

.method public setViewBelow(Landroid/view/View;)V
    .registers 2
    .parameter "below"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackLayout;->mBelow:Landroid/view/View;

    .line 94
    return-void
.end method

.method protected shouldOffsetAlbumArt()Z
    .registers 5

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumMarginTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 119
    .local v0, albumMaxHeight:I
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumMarginLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout;->getAlbumMarginRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 121
    .local v1, maxWidth:I
    if-le v1, v0, :cond_1d

    const/4 v2, 0x1

    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method
