.class public Lcom/google/android/opengl/glview/Scroller;
.super Lcom/google/android/opengl/glview/GLViewGroup;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/glview/Scroller$ScrollBar;,
        Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_EVENTS:Ljava/lang/Boolean;


# instance fields
.field private mBackgroundView:Lcom/google/android/opengl/glview/GLView;

.field private mBar:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

.field private mHideThumbIfContentFits:Z

.field private mHorizontalScrolling:Z

.field private mOverlay:Lcom/google/android/opengl/glview/GLView;

.field private mOverlayFollowsThumb:Z

.field private mOverlayNeedsLayout:Z

.field private mStartMargin:F

.field private mStopMargin:F

.field private mThumbVisible:Z

.field private mTransformer:Lcom/google/android/opengl/glview/Transformer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/opengl/glview/Scroller;->DEBUG_LOG_EVENTS:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(IFF)V
    .registers 6
    .parameter "id"
    .parameter "minSizeW"
    .parameter "minSizeH"

    .prologue
    const/4 v0, 0x1

    .line 410
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLViewGroup;-><init>(I)V

    .line 15
    iput-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlayNeedsLayout:Z

    .line 17
    iput-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller;->mThumbVisible:Z

    .line 411
    new-instance v0, Lcom/google/android/opengl/glview/Transformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lcom/google/android/opengl/glview/Transformer;-><init>(IFF)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;

    .line 412
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/Transformer;->setOwnerThread()V

    .line 413
    new-instance v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;-><init>(Lcom/google/android/opengl/glview/Scroller;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBar:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    .line 414
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Scroller;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 415
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBar:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Scroller;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 416
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/opengl/glview/Scroller;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 6
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller;->mThumbVisible:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/opengl/glview/Scroller;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    iput-boolean p1, p0, Lcom/google/android/opengl/glview/Scroller;->mThumbVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/GLView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/opengl/glview/Scroller;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 6
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlayNeedsLayout:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/opengl/glview/Scroller;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    iput-boolean p1, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlayNeedsLayout:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/opengl/glview/Scroller;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 6
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlayFollowsThumb:Z

    return v0
.end method

.method static synthetic access$400()Ljava/lang/Boolean;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/android/opengl/glview/Scroller;->DEBUG_LOG_EVENTS:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/opengl/glview/Scroller;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 6
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller;->mHideThumbIfContentFits:Z

    return v0
.end method

.method private layout()V
    .registers 5

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller;->x()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller;->y()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller;->width()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller;->height()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/opengl/glview/Scroller;->setContentRect(FFFF)V

    .line 506
    return-void
.end method


# virtual methods
.method public childExtentChanged(Lcom/google/android/opengl/glview/GLView;)V
    .registers 2
    .parameter "child"

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/google/android/opengl/glview/Scroller;->layout()V

    .line 511
    return-void
.end method

.method public getChildTransformer()Lcom/google/android/opengl/glview/Transformer;
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;

    return-object v0
.end method

.method public getMinLength(Z)F
    .registers 7
    .parameter "horizontal"

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller;->getChildCount()I

    move-result v0

    .line 496
    .local v0, childCount:I
    const/4 v2, 0x0

    .line 497
    .local v2, length:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v0, :cond_17

    .line 498
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/Scroller;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v3

    .line 499
    .local v3, v:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v3, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 501
    .end local v3           #v:Lcom/google/android/opengl/glview/GLView;
    :cond_17
    return v2
.end method

.method public layout(ZFF)V
    .registers 12
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 468
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/Scroller;->internalLayout(ZFF)V

    .line 469
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/opengl/glview/Transformer;->layout(ZFF)V

    .line 471
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBackgroundView:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_11

    .line 472
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBackgroundView:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 476
    :cond_11
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller;->mHorizontalScrolling:Z

    if-ne p1, v0, :cond_3f

    .line 478
    iget v0, p0, Lcom/google/android/opengl/glview/Scroller;->mStartMargin:F

    add-float v7, p2, v0

    .line 479
    .local v7, barStart:F
    iget v0, p0, Lcom/google/android/opengl/glview/Scroller;->mStartMargin:F

    sub-float v0, p3, v0

    iget v1, p0, Lcom/google/android/opengl/glview/Scroller;->mStopMargin:F

    sub-float v6, v0, v1

    .line 480
    .local v6, barLength:F
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBar:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    invoke-virtual {v0, p1, v7, v6}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->layout(ZFF)V

    .line 487
    .end local v7           #barStart:F
    :goto_26
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlayFollowsThumb:Z

    if-nez v0, :cond_3e

    .line 489
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;

    iget-object v1, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v4

    const/16 v5, 0x9

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    .line 491
    :cond_3e
    return-void

    .line 483
    .end local v6           #barLength:F
    :cond_3f
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBar:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->getMinLength(Z)F

    move-result v6

    .line 484
    .restart local v6       #barLength:F
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBar:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    add-float v1, p2, p3

    sub-float/2addr v1, v6

    invoke-virtual {v0, p1, v1, v6}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->layout(ZFF)V

    goto :goto_26
.end method

.method public listen(IILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .parameter "msg"
    .parameter "senderId"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 515
    const/4 v0, 0x6

    if-ne p1, v0, :cond_c

    .line 516
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBar:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    if-eqz v0, :cond_c

    .line 517
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBar:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->updateThumbPosition()V

    .line 520
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/GLViewGroup;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAutoFade(Z)V
    .registers 3
    .parameter "autoFade"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBar:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->setAutoFade(Z)V

    .line 440
    return-void
.end method

.method public setBackgroundView(Lcom/google/android/opengl/glview/GLView;)V
    .registers 4
    .parameter "background"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBackgroundView:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_e

    .line 448
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBackgroundView:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Scroller;->removeView(Lcom/google/android/opengl/glview/GLView;)V

    .line 449
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBackgroundView:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 451
    :cond_e
    iput-object p1, p0, Lcom/google/android/opengl/glview/Scroller;->mBackgroundView:Lcom/google/android/opengl/glview/GLView;

    .line 452
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBackgroundView:Lcom/google/android/opengl/glview/GLView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/opengl/glview/Scroller;->addView(Lcom/google/android/opengl/glview/GLView;I)V

    .line 453
    invoke-direct {p0}, Lcom/google/android/opengl/glview/Scroller;->layout()V

    .line 454
    return-void
.end method

.method public setMaximumOverScroll(FF)V
    .registers 4
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/opengl/glview/Transformer;->setMaxOverScroll(FF)V

    .line 458
    return-void
.end method

.method public setScrollParameters(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;ZZFFZ)V
    .registers 10
    .parameter "thumb"
    .parameter "track"
    .parameter "overlay"
    .parameter "horizontal"
    .parameter "overlayFollowsThumb"
    .parameter "startMargin"
    .parameter "stopMargin"
    .parameter "hideThumbIfContentFits"

    .prologue
    .line 425
    iput-boolean p4, p0, Lcom/google/android/opengl/glview/Scroller;->mHorizontalScrolling:Z

    .line 426
    iput-boolean p5, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlayFollowsThumb:Z

    .line 427
    iput p6, p0, Lcom/google/android/opengl/glview/Scroller;->mStartMargin:F

    .line 428
    iput p7, p0, Lcom/google/android/opengl/glview/Scroller;->mStopMargin:F

    .line 429
    iput-boolean p8, p0, Lcom/google/android/opengl/glview/Scroller;->mHideThumbIfContentFits:Z

    .line 430
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBar:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    invoke-virtual {v0, p1, p2, p4}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->setViews(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Z)V

    .line 431
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_18

    .line 432
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 434
    :cond_18
    iput-object p3, p0, Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;

    .line 435
    invoke-direct {p0}, Lcom/google/android/opengl/glview/Scroller;->layout()V

    .line 436
    return-void
.end method

.method public setScrollerVisibility(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mBar:Lcom/google/android/opengl/glview/Scroller$ScrollBar;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->setVisibility(Z)V

    .line 444
    return-void
.end method

.method public setVisibilityMargin(FFFF)V
    .registers 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/Transformer;->setVisibilityMargin(FFFF)V

    .line 463
    return-void
.end method
