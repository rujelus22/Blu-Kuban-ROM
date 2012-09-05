.class public Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;
.super Lcom/google/android/music/MediaPlaybackLayout;
.source "MediaPlaybackLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaPlaybackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PortraitCompactMediaPlaybackLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackLayout;-><init>(Landroid/content/Context;)V

    .line 266
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 269
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MediaPlaybackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 274
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/MediaPlaybackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 275
    return-void
.end method


# virtual methods
.method public animate(ZJLandroid/view/animation/Interpolator;)V
    .registers 37
    .parameter "toCollapsed"
    .parameter "animationDuration"
    .parameter "interpolator"

    .prologue
    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->shouldOffsetAlbumArt()Z

    move-result v7

    if-eqz v7, :cond_193

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->isCollapsed()Z

    move-result v7

    move/from16 v0, p1

    if-ne v0, v7, :cond_f

    .line 382
    :goto_e
    return-void

    .line 309
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getLoadingProgress()Landroid/widget/ProgressBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v26, v0

    .line 310
    .local v26, loadingProgressWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getLoadingProgress()Landroid/widget/ProgressBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v25, v0

    .line 311
    .local v25, loadingProgressHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getAlbumSize()I

    move-result v7

    sub-int v7, v7, v26

    div-int/lit8 v23, v7, 0x2

    .line 312
    .local v23, loadProgressHorizontalOffset:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getAlbumSize()I

    move-result v7

    sub-int v7, v7, v25

    div-int/lit8 v24, v7, 0x2

    .line 313
    .local v24, loadProgressVerticalOffset:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getAlbumArt()Lcom/google/android/music/AsyncAlbumArtImageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/music/AsyncAlbumArtImageView;->getLeft()I

    move-result v7

    add-int v29, v7, v23

    .line 314
    .local v29, oldX:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getAlbumArt()Lcom/google/android/music/AsyncAlbumArtImageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/music/AsyncAlbumArtImageView;->getTop()I

    move-result v7

    add-int v30, v7, v24

    .line 316
    .local v30, oldY:I
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->setIsCollapsed(Z)V

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->requestLayout()V

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getScalingFactor()F

    move-result v31

    .line 321
    .local v31, scaleFactor:F
    if-eqz p1, :cond_173

    const/high16 v7, 0x3f80

    div-float v3, v7, v31

    .line 322
    .local v3, fromScale:F
    :goto_5b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getExpandedAlbumSize()I

    move-result v20

    .line 324
    .local v20, expandedSize:I
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v15, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 325
    .local v15, albumSet:Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f80

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v5, v3

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 329
    .local v2, albumAnimation:Landroid/view/animation/Animation;
    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 330
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 331
    invoke-virtual {v15, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getWidth()I

    move-result v7

    sub-int v7, v7, v20

    div-int/lit8 v18, v7, 0x2

    .line 335
    .local v18, dx:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getHeight()I

    move-result v7

    sub-int v7, v7, v20

    div-int/lit8 v19, v7, 0x2

    .line 336
    .local v19, dy:I
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    if-eqz p1, :cond_177

    move/from16 v0, v18

    int-to-float v6, v0

    :goto_98
    const/4 v7, 0x0

    if-eqz p1, :cond_17d

    const/4 v8, 0x0

    :goto_9c
    const/4 v9, 0x0

    if-eqz p1, :cond_180

    move/from16 v0, v19

    int-to-float v10, v0

    :goto_a2
    const/4 v11, 0x0

    if-eqz p1, :cond_186

    const/4 v12, 0x0

    :goto_a6
    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 341
    .local v4, albumTranslate:Landroid/view/animation/Animation;
    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 342
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 343
    invoke-virtual {v15, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 346
    new-instance v22, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 347
    .local v22, frameSet:Landroid/view/animation/AnimationSet;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getFrame()Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 350
    .local v21, frameLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f80

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    move-object/from16 v0, v21

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    neg-int v8, v8

    int-to-float v11, v8

    const/4 v12, 0x0

    move-object/from16 v0, v21

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    neg-int v8, v8

    int-to-float v13, v8

    move v6, v3

    move v8, v3

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 354
    .local v5, albumFrameAnimation:Landroid/view/animation/Animation;
    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 355
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 356
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 357
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getLoadingProgress()Landroid/widget/ProgressBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v7

    if-nez v7, :cond_161

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getAlbumSize()I

    move-result v7

    sub-int v7, v7, v26

    div-int/lit8 v23, v7, 0x2

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getAlbumSize()I

    move-result v7

    sub-int v7, v7, v25

    div-int/lit8 v24, v7, 0x2

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getAlbumArt()Lcom/google/android/music/AsyncAlbumArtImageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/music/AsyncAlbumArtImageView;->getLeft()I

    move-result v7

    add-int v27, v7, v23

    .line 364
    .local v27, newX:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getAlbumArt()Lcom/google/android/music/AsyncAlbumArtImageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/music/AsyncAlbumArtImageView;->getTop()I

    move-result v7

    add-int v28, v7, v24

    .line 365
    .local v28, newY:I
    sub-int v7, v27, v29

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int v16, v7, v18

    .line 366
    .local v16, difX:I
    sub-int v7, v28, v30

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int v17, v7, v19

    .line 367
    .local v17, difY:I
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->isCollapsed()Z

    move-result v8

    if-eqz v8, :cond_189

    move/from16 v0, v16

    int-to-float v8, v0

    :goto_13f
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->isCollapsed()Z

    move-result v12

    if-eqz v12, :cond_18e

    move/from16 v0, v17

    int-to-float v12, v0

    :goto_14b
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 372
    .local v6, progressTranslate:Landroid/view/animation/TranslateAnimation;
    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 373
    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getLoadingProgress()Landroid/widget/ProgressBar;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 377
    .end local v6           #progressTranslate:Landroid/view/animation/TranslateAnimation;
    .end local v16           #difX:I
    .end local v17           #difY:I
    .end local v27           #newX:I
    .end local v28           #newY:I
    :cond_161
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getAlbumArt()Lcom/google/android/music/AsyncAlbumArtImageView;

    move-result-object v7

    invoke-virtual {v7, v15}, Lcom/google/android/music/AsyncAlbumArtImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getFrame()Landroid/widget/ImageView;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_e

    .end local v2           #albumAnimation:Landroid/view/animation/Animation;
    .end local v3           #fromScale:F
    .end local v4           #albumTranslate:Landroid/view/animation/Animation;
    .end local v5           #albumFrameAnimation:Landroid/view/animation/Animation;
    .end local v15           #albumSet:Landroid/view/animation/AnimationSet;
    .end local v18           #dx:I
    .end local v19           #dy:I
    .end local v20           #expandedSize:I
    .end local v21           #frameLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v22           #frameSet:Landroid/view/animation/AnimationSet;
    :cond_173
    move/from16 v3, v31

    .line 321
    goto/16 :goto_5b

    .line 336
    .restart local v2       #albumAnimation:Landroid/view/animation/Animation;
    .restart local v3       #fromScale:F
    .restart local v15       #albumSet:Landroid/view/animation/AnimationSet;
    .restart local v18       #dx:I
    .restart local v19       #dy:I
    .restart local v20       #expandedSize:I
    :cond_177
    move/from16 v0, v18

    neg-int v7, v0

    int-to-float v6, v7

    goto/16 :goto_98

    :cond_17d
    const/4 v8, 0x0

    goto/16 :goto_9c

    :cond_180
    move/from16 v0, v19

    neg-int v10, v0

    int-to-float v10, v10

    goto/16 :goto_a2

    :cond_186
    const/4 v12, 0x0

    goto/16 :goto_a6

    .line 367
    .restart local v4       #albumTranslate:Landroid/view/animation/Animation;
    .restart local v5       #albumFrameAnimation:Landroid/view/animation/Animation;
    .restart local v16       #difX:I
    .restart local v17       #difY:I
    .restart local v21       #frameLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v22       #frameSet:Landroid/view/animation/AnimationSet;
    .restart local v27       #newX:I
    .restart local v28       #newY:I
    :cond_189
    move/from16 v0, v16

    neg-int v8, v0

    int-to-float v8, v8

    goto :goto_13f

    :cond_18e
    move/from16 v0, v17

    neg-int v12, v0

    int-to-float v12, v12

    goto :goto_14b

    .line 380
    .end local v2           #albumAnimation:Landroid/view/animation/Animation;
    .end local v3           #fromScale:F
    .end local v4           #albumTranslate:Landroid/view/animation/Animation;
    .end local v5           #albumFrameAnimation:Landroid/view/animation/Animation;
    .end local v15           #albumSet:Landroid/view/animation/AnimationSet;
    .end local v16           #difX:I
    .end local v17           #difY:I
    .end local v18           #dx:I
    .end local v19           #dy:I
    .end local v20           #expandedSize:I
    .end local v21           #frameLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v22           #frameSet:Landroid/view/animation/AnimationSet;
    .end local v23           #loadProgressHorizontalOffset:I
    .end local v24           #loadProgressVerticalOffset:I
    .end local v25           #loadingProgressHeight:I
    .end local v26           #loadingProgressWidth:I
    .end local v27           #newX:I
    .end local v28           #newY:I
    .end local v29           #oldX:I
    .end local v30           #oldY:I
    .end local v31           #scaleFactor:F
    :cond_193
    invoke-super/range {p0 .. p4}, Lcom/google/android/music/MediaPlaybackLayout;->animate(ZJLandroid/view/animation/Interpolator;)V

    goto/16 :goto_e
.end method

.method protected onLayout(ZIIII)V
    .registers 21
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getExpandedAlbumSize()I

    move-result v3

    .line 282
    .local v3, expandedAlbumSize:I
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getAlbumArt()Lcom/google/android/music/AsyncAlbumArtImageView;

    move-result-object v9

    invoke-virtual {v9, v3, v3}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVirtualSize(II)V

    .line 283
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->shouldOffsetAlbumArt()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->isCollapsed()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 284
    :cond_17
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->layoutArtUpperLeft(II)V

    .line 300
    :goto_1e
    invoke-super/range {p0 .. p5}, Lcom/google/android/music/MediaPlaybackLayout;->onLayout(ZIIII)V

    .line 301
    return-void

    .line 286
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getAlbumSize()I

    move-result v8

    .line 287
    .local v8, size:I
    add-int v9, p2, p4

    div-int/lit8 v2, v9, 0x2

    .line 288
    .local v2, center:I
    div-int/lit8 v9, v8, 0x2

    sub-int v5, v2, v9

    .line 289
    .local v5, left:I
    div-int/lit8 v9, v8, 0x2

    add-int v7, v2, v9

    .line 290
    .local v7, right:I
    sub-int v9, p5, v8

    div-int/lit8 v6, v9, 0x2

    .line 291
    .local v6, offset:I
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getAlbumArt()Lcom/google/android/music/AsyncAlbumArtImageView;

    move-result-object v9

    sub-int v10, p5, v6

    invoke-virtual {v9, v5, v6, v7, v10}, Lcom/google/android/music/AsyncAlbumArtImageView;->layout(IIII)V

    .line 293
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getFrame()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 295
    .local v4, frameLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackLayout$PortraitCompactMediaPlaybackLayout;->getFrame()Landroid/widget/ImageView;

    move-result-object v9

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v5

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v6

    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v12, v7, v12

    sub-int v13, p5, v6

    iget v14, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1e
.end method
