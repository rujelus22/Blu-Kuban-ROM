.class Lcom/google/android/opengl/glview/Scroller$ScrollBar;
.super Lcom/google/android/opengl/glview/GLViewGroup;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/Scroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollBar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;
    }
.end annotation


# instance fields
.field protected mHorizontalScrolling:Z

.field private mOverlayState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

.field protected mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

.field protected mThumb:Lcom/google/android/opengl/glview/GLView;

.field protected mTrack:Lcom/google/android/opengl/glview/GLView;

.field protected mVisible:Z

.field final synthetic this$0:Lcom/google/android/opengl/glview/Scroller;


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/glview/Scroller;)V
    .registers 4
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLViewGroup;-><init>()V

    .line 123
    new-instance v0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    .line 124
    new-instance v0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mOverlayState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    .line 284
    return-void
.end method

.method static synthetic access$500(Lcom/google/android/opengl/glview/Scroller$ScrollBar;Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->setU(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private getScrollBarUnitPosition()F
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 387
    iget-object v10, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-static {v10}, Lcom/google/android/opengl/glview/Scroller;->access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/android/opengl/glview/Transformer;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v5

    .line 388
    .local v5, transformerChild:Lcom/google/android/opengl/glview/GLView;
    if-nez v5, :cond_11

    move v7, v9

    .line 404
    :goto_10
    return v7

    .line 391
    :cond_11
    iget-boolean v1, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    .line 392
    .local v1, horizontal:Z
    invoke-virtual {v5, v1}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v0

    .line 393
    .local v0, childLength:F
    iget-object v10, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-static {v10}, Lcom/google/android/opengl/glview/Scroller;->access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/google/android/opengl/glview/Transformer;->length(Z)F

    move-result v6

    .line 394
    .local v6, transformerLength:F
    sub-float v4, v0, v6

    .line 395
    .local v4, scrollSize:F
    cmpg-float v10, v4, v9

    if-gtz v10, :cond_39

    move v2, v7

    .line 396
    .local v2, noScroll:Z
    :goto_28
    iget-object v10, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mHideThumbIfContentFits:Z
    invoke-static {v10}, Lcom/google/android/opengl/glview/Scroller;->access$700(Lcom/google/android/opengl/glview/Scroller;)Z

    move-result v10

    if-eqz v10, :cond_35

    .line 397
    if-nez v2, :cond_3b

    :goto_32
    invoke-virtual {p0, v7}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->setThumbVisible(Z)V

    .line 399
    :cond_35
    if-eqz v2, :cond_3d

    move v7, v9

    .line 400
    goto :goto_10

    .end local v2           #noScroll:Z
    :cond_39
    move v2, v8

    .line 395
    goto :goto_28

    .restart local v2       #noScroll:Z
    :cond_3b
    move v7, v8

    .line 397
    goto :goto_32

    .line 402
    :cond_3d
    if-eqz v1, :cond_56

    iget-object v7, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-static {v7}, Lcom/google/android/opengl/glview/Scroller;->access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/opengl/glview/Transformer;->offsetX()F

    move-result v3

    .line 404
    .local v3, offset:F
    :goto_49
    const/high16 v7, 0x3f80

    neg-float v8, v3

    div-float/2addr v8, v4

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    goto :goto_10

    .line 402
    .end local v3           #offset:F
    :cond_56
    iget-object v7, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-static {v7}, Lcom/google/android/opengl/glview/Scroller;->access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/opengl/glview/Transformer;->offsetY()F

    move-result v3

    goto :goto_49
.end method

.method private setU(Landroid/view/MotionEvent;)V
    .registers 20
    .parameter "e"

    .prologue
    .line 332
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    .line 333
    .local v4, horizontal:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v15, v4}, Lcom/google/android/opengl/glview/GLView;->start(Z)F

    move-result v9

    .line 334
    .local v9, start:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v15, v4}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v5

    .line 336
    .local v5, length:F
    if-eqz v4, :cond_8b

    .line 337
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 341
    .local v11, u:F
    :goto_1a
    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    sub-float v17, v11, v9

    div-float v17, v17, v5

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 345
    .local v12, unitU:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-static {v15}, Lcom/google/android/opengl/glview/Scroller;->access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/opengl/glview/Transformer;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v10

    .line 346
    .local v10, transformerChild:Lcom/google/android/opengl/glview/GLView;
    if-eqz v10, :cond_87

    .line 347
    const/4 v2, 0x0

    .line 348
    .local v2, dx:F
    const/4 v3, 0x0

    .line 349
    .local v3, dy:F
    const/4 v1, 0x0

    .line 350
    .local v1, doScroll:Z
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    if-eqz v15, :cond_92

    .line 351
    invoke-virtual {v10}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-static/range {v16 .. v16}, Lcom/google/android/opengl/glview/Scroller;->access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/opengl/glview/Transformer;->width()F

    move-result v16

    sub-float v8, v15, v16

    .line 352
    .local v8, scrollSize:F
    const/4 v15, 0x0

    cmpl-float v15, v8, v15

    if-lez v15, :cond_90

    const/4 v1, 0x1

    .line 353
    :goto_5d
    if-eqz v1, :cond_6f

    .line 354
    mul-float v13, v12, v8

    .line 355
    .local v13, x:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-static {v15}, Lcom/google/android/opengl/glview/Scroller;->access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/opengl/glview/Transformer;->offsetX()F

    move-result v6

    .line 356
    .local v6, offsetX:F
    add-float v2, v13, v6

    .line 367
    .end local v6           #offsetX:F
    .end local v13           #x:F
    :cond_6f
    :goto_6f
    if-eqz v1, :cond_87

    .line 368
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-static {v15}, Lcom/google/android/opengl/glview/Scroller;->access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/opengl/glview/Transformer;->cancelOffsetAnimation()V

    .line 369
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-static {v15}, Lcom/google/android/opengl/glview/Scroller;->access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Lcom/google/android/opengl/glview/Transformer;->adjustOffset(FF)V

    .line 373
    .end local v1           #doScroll:Z
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v8           #scrollSize:F
    :cond_87
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->updateThumbPosition()V

    .line 374
    return-void

    .line 339
    .end local v10           #transformerChild:Lcom/google/android/opengl/glview/GLView;
    .end local v11           #u:F
    .end local v12           #unitU:F
    :cond_8b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .restart local v11       #u:F
    goto :goto_1a

    .line 352
    .restart local v1       #doScroll:Z
    .restart local v2       #dx:F
    .restart local v3       #dy:F
    .restart local v8       #scrollSize:F
    .restart local v10       #transformerChild:Lcom/google/android/opengl/glview/GLView;
    .restart local v12       #unitU:F
    :cond_90
    const/4 v1, 0x0

    goto :goto_5d

    .line 359
    .end local v8           #scrollSize:F
    :cond_92
    invoke-virtual {v10}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    move-object/from16 v16, v0

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-static/range {v16 .. v16}, Lcom/google/android/opengl/glview/Scroller;->access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/opengl/glview/Transformer;->height()F

    move-result v16

    sub-float v8, v15, v16

    .line 360
    .restart local v8       #scrollSize:F
    const/4 v15, 0x0

    cmpl-float v15, v8, v15

    if-lez v15, :cond_bf

    const/4 v1, 0x1

    .line 361
    :goto_ac
    if-eqz v1, :cond_6f

    .line 362
    mul-float v14, v12, v8

    .line 363
    .local v14, y:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-static {v15}, Lcom/google/android/opengl/glview/Scroller;->access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/opengl/glview/Transformer;->offsetY()F

    move-result v7

    .line 364
    .local v7, offsetY:F
    add-float v3, v14, v7

    goto :goto_6f

    .line 360
    .end local v7           #offsetY:F
    .end local v14           #y:F
    :cond_bf
    const/4 v1, 0x0

    goto :goto_ac
.end method


# virtual methods
.method protected gestureDown(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 4
    .parameter "e0"

    .prologue
    const/4 v1, 0x1

    .line 320
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->visible()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mThumbVisible:Z
    invoke-static {v0}, Lcom/google/android/opengl/glview/Scroller;->access$000(Lcom/google/android/opengl/glview/Scroller;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 321
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->setU(Landroid/view/MotionEvent;)V

    .line 322
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->setFlags(I)V

    .line 323
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_26

    .line 324
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->setFlags(I)V

    .line 326
    :cond_26
    new-instance v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;-><init>(Lcom/google/android/opengl/glview/Scroller$ScrollBar;)V

    .line 328
    :goto_2b
    return-object v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public getMinLength(Z)F
    .registers 6
    .parameter "horizontal"

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v3, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v3, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v0

    .line 289
    .local v0, thumbLength:F
    :goto_b
    iget-object v3, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    if-eqz v3, :cond_1c

    iget-object v2, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v2, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v1

    .line 290
    .local v1, trackLength:F
    :goto_15
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    .end local v0           #thumbLength:F
    .end local v1           #trackLength:F
    :cond_1a
    move v0, v2

    .line 288
    goto :goto_b

    .restart local v0       #thumbLength:F
    :cond_1c
    move v1, v2

    .line 289
    goto :goto_15
.end method

.method public getThumbPosition()F
    .registers 9

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->getScrollBarUnitPosition()F

    move-result v5

    .line 378
    .local v5, unitU:F
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    .line 379
    .local v0, horizontal:Z
    iget-object v6, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v6, v0}, Lcom/google/android/opengl/glview/GLView;->start(Z)F

    move-result v2

    .line 380
    .local v2, start:F
    iget-object v6, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v6, v0}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v1

    .line 381
    .local v1, length:F
    iget-object v6, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v6, v0}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v3

    .line 382
    .local v3, thumbLength:F
    mul-float v6, v5, v1

    add-float/2addr v6, v2

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v3

    sub-float v4, v6, v7

    .line 383
    .local v4, thumbPos:F
    return v4
.end method

.method public layout(ZFF)V
    .registers 11
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 295
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->internalLayout(ZFF)V

    .line 296
    const/4 v6, 0x0

    .line 297
    .local v6, thumbLength:F
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_1b

    .line 298
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v6

    .line 299
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    if-ne v0, p1, :cond_2f

    .line 300
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->getThumbPosition()F

    move-result v1

    invoke-virtual {v0, p1, v1, v6}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 305
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_2e

    .line 306
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    if-ne v0, p1, :cond_35

    .line 307
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    const/high16 v1, 0x3f00

    mul-float/2addr v1, v6

    add-float/2addr v1, p2

    sub-float v2, p3, v6

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 316
    :cond_2e
    :goto_2e
    return-void

    .line 302
    :cond_2f
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, p1, p2, v6}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    goto :goto_1b

    .line 311
    :cond_35
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    iget-object v1, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v4

    const/16 v5, 0x9

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/opengl/glview/GLView;->layout(ZFFFI)V

    goto :goto_2e
.end method

.method public onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .registers 8
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, animating:Z
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->getFrameTime()J

    move-result-wide v1

    .line 168
    .local v1, frameTime:J
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v4, v1, v2, p2}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->animate(JF)Z

    move-result v4

    or-int/2addr v0, v4

    .line 169
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mOverlayState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v4, v1, v2, p2}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->animate(JF)Z

    move-result v4

    or-int/2addr v0, v4

    .line 171
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->getAlpha()F

    move-result v3

    .line 173
    .local v3, oldAlpha:F
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->visible()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 174
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->getFadeInFactor()F

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/opengl/glview/GLCanvas;->setAlpha(F)V

    .line 175
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    if-eqz v4, :cond_33

    .line 176
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/opengl/glview/GLView;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v4

    or-int/2addr v0, v4

    .line 178
    :cond_33
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v4, :cond_46

    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mThumbVisible:Z
    invoke-static {v4}, Lcom/google/android/opengl/glview/Scroller;->access$000(Lcom/google/android/opengl/glview/Scroller;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 179
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/opengl/glview/GLView;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v4

    or-int/2addr v0, v4

    .line 182
    :cond_46
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mOverlayState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->visible()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 183
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;
    invoke-static {v4}, Lcom/google/android/opengl/glview/Scroller;->access$100(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v4

    if-eqz v4, :cond_6a

    .line 184
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mOverlayState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->getFadeInFactor()F

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/opengl/glview/GLCanvas;->setAlpha(F)V

    .line 185
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;
    invoke-static {v4}, Lcom/google/android/opengl/glview/Scroller;->access$100(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/google/android/opengl/glview/GLView;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v4

    or-int/2addr v0, v4

    .line 188
    :cond_6a
    invoke-virtual {p1, v3}, Lcom/google/android/opengl/glview/GLCanvas;->setAlpha(F)V

    .line 189
    return v0
.end method

.method public setAutoFade(Z)V
    .registers 3
    .parameter "autoFade"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->setAutoFade(Z)V

    .line 128
    return-void
.end method

.method protected setOverlayVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 234
    iget-object v1, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mOverlayState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v1, v0}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->setState(I)V

    .line 237
    return-void

    .line 234
    :cond_9
    const/4 v0, 0x2

    goto :goto_5
.end method

.method protected setThumbVisible(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #setter for: Lcom/google/android/opengl/glview/Scroller;->mThumbVisible:Z
    invoke-static {v0, p1}, Lcom/google/android/opengl/glview/Scroller;->access$002(Lcom/google/android/opengl/glview/Scroller;Z)Z

    .line 194
    return-void
.end method

.method public setViews(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Z)V
    .registers 5
    .parameter "thumb"
    .parameter "track"
    .parameter "horizontalScrolling"

    .prologue
    .line 138
    iput-boolean p3, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    .line 140
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_10

    .line 141
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->removeView(Lcom/google/android/opengl/glview/GLView;)V

    .line 142
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 144
    :cond_10
    iput-object p2, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    .line 146
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_20

    .line 147
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->removeView(Lcom/google/android/opengl/glview/GLView;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 150
    :cond_20
    iput-object p1, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    .line 155
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_2b

    .line 156
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 158
    :cond_2b
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_34

    .line 159
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 161
    :cond_34
    return-void
.end method

.method public setVisibility(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mVisible:Z

    .line 132
    iget-object v1, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {v1, v0}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->setState(I)V

    .line 134
    return-void

    .line 132
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public updateThumbPosition()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x3f00

    const/4 v11, 0x1

    .line 197
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->x()F

    move-result v6

    .line 198
    .local v6, x:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->y()F

    move-result v7

    .line 199
    .local v7, y:F
    move v0, v6

    .line 200
    .local v0, oldX:F
    move v1, v7

    .line 201
    .local v1, oldY:F
    iget-boolean v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    if-eqz v8, :cond_88

    .line 202
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->getThumbPosition()F

    move-result v6

    .line 206
    :goto_16
    cmpl-float v8, v6, v0

    if-nez v8, :cond_1e

    cmpl-float v8, v7, v1

    if-eqz v8, :cond_3d

    .line 207
    :cond_1e
    iget-boolean v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mVisible:Z

    if-eqz v8, :cond_27

    .line 208
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v8, v11}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->setState(I)V

    .line 210
    :cond_27
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    iget-object v9, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v9}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v9

    iget-object v10, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v10}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v10

    invoke-virtual {v8, v6, v7, v9, v10}, Lcom/google/android/opengl/glview/GLView;->setContentRect(FFFF)V

    .line 211
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #setter for: Lcom/google/android/opengl/glview/Scroller;->mOverlayNeedsLayout:Z
    invoke-static {v8, v11}, Lcom/google/android/opengl/glview/Scroller;->access$202(Lcom/google/android/opengl/glview/Scroller;Z)Z

    .line 214
    :cond_3d
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mOverlayFollowsThumb:Z
    invoke-static {v8}, Lcom/google/android/opengl/glview/Scroller;->access$300(Lcom/google/android/opengl/glview/Scroller;)Z

    move-result v8

    if-eqz v8, :cond_87

    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;
    invoke-static {v8}, Lcom/google/android/opengl/glview/Scroller;->access$100(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v8

    if-eqz v8, :cond_87

    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mOverlayNeedsLayout:Z
    invoke-static {v8}, Lcom/google/android/opengl/glview/Scroller;->access$200(Lcom/google/android/opengl/glview/Scroller;)Z

    move-result v8

    if-eqz v8, :cond_87

    .line 215
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;
    invoke-static {v8}, Lcom/google/android/opengl/glview/Scroller;->access$100(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v3

    .line 216
    .local v3, overlayWidth:F
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;
    invoke-static {v8}, Lcom/google/android/opengl/glview/Scroller;->access$100(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v2

    .line 219
    .local v2, overlayHeight:F
    iget-boolean v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    if-eqz v8, :cond_8d

    .line 221
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v8}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v8

    sub-float/2addr v8, v3

    mul-float/2addr v8, v12

    add-float v4, v6, v8

    .line 222
    .local v4, overlayX:F
    sub-float v5, v7, v2

    .line 228
    .local v5, overlayY:F
    :goto_79
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;
    invoke-static {v8}, Lcom/google/android/opengl/glview/Scroller;->access$100(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v8

    invoke-virtual {v8, v4, v5, v3, v2}, Lcom/google/android/opengl/glview/GLView;->setContentRect(FFFF)V

    .line 229
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #setter for: Lcom/google/android/opengl/glview/Scroller;->mOverlayNeedsLayout:Z
    invoke-static {v8, v13}, Lcom/google/android/opengl/glview/Scroller;->access$202(Lcom/google/android/opengl/glview/Scroller;Z)Z

    .line 231
    .end local v2           #overlayHeight:F
    .end local v3           #overlayWidth:F
    .end local v4           #overlayX:F
    .end local v5           #overlayY:F
    :cond_87
    return-void

    .line 204
    :cond_88
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->getThumbPosition()F

    move-result v7

    goto :goto_16

    .line 225
    .restart local v2       #overlayHeight:F
    .restart local v3       #overlayWidth:F
    :cond_8d
    sub-float v4, v6, v3

    .line 226
    .restart local v4       #overlayX:F
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v8}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v8

    sub-float/2addr v8, v2

    mul-float/2addr v8, v12

    add-float v5, v7, v8

    .restart local v5       #overlayY:F
    goto :goto_79
.end method
