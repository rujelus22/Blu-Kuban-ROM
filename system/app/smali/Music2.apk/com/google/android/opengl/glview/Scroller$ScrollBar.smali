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
    .line 282
    iput-object p1, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLViewGroup;-><init>()V

    .line 122
    new-instance v0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    .line 123
    new-instance v0, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mOverlayState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    .line 283
    return-void
.end method

.method static synthetic access$500(Lcom/google/android/opengl/glview/Scroller$ScrollBar;Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->setU(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private getScrollBarUnitPosition()F
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 386
    iget-object v10, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-static {v10}, Lcom/google/android/opengl/glview/Scroller;->access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/android/opengl/glview/Transformer;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v5

    .line 387
    .local v5, transformerChild:Lcom/google/android/opengl/glview/GLView;
    if-nez v5, :cond_11

    move v7, v9

    .line 403
    :goto_10
    return v7

    .line 390
    :cond_11
    iget-boolean v1, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    .line 391
    .local v1, horizontal:Z
    invoke-virtual {v5, v1}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v0

    .line 392
    .local v0, childLength:F
    iget-object v10, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-static {v10}, Lcom/google/android/opengl/glview/Scroller;->access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/google/android/opengl/glview/Transformer;->length(Z)F

    move-result v6

    .line 393
    .local v6, transformerLength:F
    sub-float v4, v0, v6

    .line 394
    .local v4, scrollSize:F
    cmpg-float v10, v4, v9

    if-gtz v10, :cond_39

    move v2, v7

    .line 395
    .local v2, noScroll:Z
    :goto_28
    iget-object v10, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mHideThumbIfContentFits:Z
    invoke-static {v10}, Lcom/google/android/opengl/glview/Scroller;->access$700(Lcom/google/android/opengl/glview/Scroller;)Z

    move-result v10

    if-eqz v10, :cond_35

    .line 396
    if-nez v2, :cond_3b

    :goto_32
    invoke-virtual {p0, v7}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->setThumbVisible(Z)V

    .line 398
    :cond_35
    if-eqz v2, :cond_3d

    move v7, v9

    .line 399
    goto :goto_10

    .end local v2           #noScroll:Z
    :cond_39
    move v2, v8

    .line 394
    goto :goto_28

    .restart local v2       #noScroll:Z
    :cond_3b
    move v7, v8

    .line 396
    goto :goto_32

    .line 401
    :cond_3d
    if-eqz v1, :cond_56

    iget-object v7, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-static {v7}, Lcom/google/android/opengl/glview/Scroller;->access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/opengl/glview/Transformer;->offsetX()F

    move-result v3

    .line 403
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

    .line 401
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
    .line 331
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    .line 332
    .local v4, horizontal:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v15, v4}, Lcom/google/android/opengl/glview/GLView;->start(Z)F

    move-result v9

    .line 333
    .local v9, start:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v15, v4}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v5

    .line 335
    .local v5, length:F
    if-eqz v4, :cond_8b

    .line 336
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 340
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

    .line 344
    .local v12, unitU:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-static {v15}, Lcom/google/android/opengl/glview/Scroller;->access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/opengl/glview/Transformer;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v10

    .line 345
    .local v10, transformerChild:Lcom/google/android/opengl/glview/GLView;
    if-eqz v10, :cond_87

    .line 346
    const/4 v2, 0x0

    .line 347
    .local v2, dx:F
    const/4 v3, 0x0

    .line 348
    .local v3, dy:F
    const/4 v1, 0x0

    .line 349
    .local v1, doScroll:Z
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    if-eqz v15, :cond_92

    .line 350
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

    .line 351
    .local v8, scrollSize:F
    const/4 v15, 0x0

    cmpl-float v15, v8, v15

    if-lez v15, :cond_90

    const/4 v1, 0x1

    .line 352
    :goto_5d
    if-eqz v1, :cond_6f

    .line 353
    mul-float v13, v12, v8

    .line 354
    .local v13, x:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-static {v15}, Lcom/google/android/opengl/glview/Scroller;->access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/opengl/glview/Transformer;->offsetX()F

    move-result v6

    .line 355
    .local v6, offsetX:F
    add-float v2, v13, v6

    .line 366
    .end local v6           #offsetX:F
    .end local v13           #x:F
    :cond_6f
    :goto_6f
    if-eqz v1, :cond_87

    .line 367
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-static {v15}, Lcom/google/android/opengl/glview/Scroller;->access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/opengl/glview/Transformer;->cancelOffsetAnimation()V

    .line 368
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-static {v15}, Lcom/google/android/opengl/glview/Scroller;->access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Lcom/google/android/opengl/glview/Transformer;->adjustOffset(FF)V

    .line 372
    .end local v1           #doScroll:Z
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v8           #scrollSize:F
    :cond_87
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->updateThumbPosition()V

    .line 373
    return-void

    .line 338
    .end local v10           #transformerChild:Lcom/google/android/opengl/glview/GLView;
    .end local v11           #u:F
    .end local v12           #unitU:F
    :cond_8b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .restart local v11       #u:F
    goto :goto_1a

    .line 351
    .restart local v1       #doScroll:Z
    .restart local v2       #dx:F
    .restart local v3       #dy:F
    .restart local v8       #scrollSize:F
    .restart local v10       #transformerChild:Lcom/google/android/opengl/glview/GLView;
    .restart local v12       #unitU:F
    :cond_90
    const/4 v1, 0x0

    goto :goto_5d

    .line 358
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

    .line 359
    .restart local v8       #scrollSize:F
    const/4 v15, 0x0

    cmpl-float v15, v8, v15

    if-lez v15, :cond_bf

    const/4 v1, 0x1

    .line 360
    :goto_ac
    if-eqz v1, :cond_6f

    .line 361
    mul-float v14, v12, v8

    .line 362
    .local v14, y:F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mTransformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-static {v15}, Lcom/google/android/opengl/glview/Scroller;->access$600(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/Transformer;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/opengl/glview/Transformer;->offsetY()F

    move-result v7

    .line 363
    .local v7, offsetY:F
    add-float v3, v14, v7

    goto :goto_6f

    .line 359
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

    .line 319
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

    .line 320
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->setU(Landroid/view/MotionEvent;)V

    .line 321
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->setFlags(I)V

    .line 322
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_26

    .line 323
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->setFlags(I)V

    .line 325
    :cond_26
    new-instance v0, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar$ScrollBarTracker;-><init>(Lcom/google/android/opengl/glview/Scroller$ScrollBar;)V

    .line 327
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

    .line 287
    iget-object v3, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v3, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v0

    .line 288
    .local v0, thumbLength:F
    :goto_b
    iget-object v3, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    if-eqz v3, :cond_1c

    iget-object v2, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v2, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v1

    .line 289
    .local v1, trackLength:F
    :goto_15
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    .end local v0           #thumbLength:F
    .end local v1           #trackLength:F
    :cond_1a
    move v0, v2

    .line 287
    goto :goto_b

    .restart local v0       #thumbLength:F
    :cond_1c
    move v1, v2

    .line 288
    goto :goto_15
.end method

.method public getThumbPosition()F
    .registers 9

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->getScrollBarUnitPosition()F

    move-result v5

    .line 377
    .local v5, unitU:F
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    .line 378
    .local v0, horizontal:Z
    iget-object v6, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v6, v0}, Lcom/google/android/opengl/glview/GLView;->start(Z)F

    move-result v2

    .line 379
    .local v2, start:F
    iget-object v6, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v6, v0}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v1

    .line 380
    .local v1, length:F
    iget-object v6, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v6, v0}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v3

    .line 381
    .local v3, thumbLength:F
    mul-float v6, v5, v1

    add-float/2addr v6, v2

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v3

    sub-float v4, v6, v7

    .line 382
    .local v4, thumbPos:F
    return v4
.end method

.method public layout(ZFF)V
    .registers 11
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 294
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->internalLayout(ZFF)V

    .line 295
    const/4 v6, 0x0

    .line 296
    .local v6, thumbLength:F
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_1b

    .line 297
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v6

    .line 298
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    if-ne v0, p1, :cond_2f

    .line 299
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->getThumbPosition()F

    move-result v1

    invoke-virtual {v0, p1, v1, v6}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 304
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_2e

    .line 305
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    if-ne v0, p1, :cond_35

    .line 306
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    const/high16 v1, 0x3f00

    mul-float/2addr v1, v6

    add-float/2addr v1, p2

    sub-float v2, p3, v6

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 315
    :cond_2e
    :goto_2e
    return-void

    .line 301
    :cond_2f
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0, p1, p2, v6}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    goto :goto_1b

    .line 310
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
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, animating:Z
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->getFrameTime()J

    move-result-wide v1

    .line 167
    .local v1, frameTime:J
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v4, v1, v2, p2}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->animate(JF)Z

    move-result v4

    or-int/2addr v0, v4

    .line 168
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mOverlayState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v4, v1, v2, p2}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->animate(JF)Z

    move-result v4

    or-int/2addr v0, v4

    .line 170
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->getAlpha()F

    move-result v3

    .line 172
    .local v3, oldAlpha:F
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->visible()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 173
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->getFadeInFactor()F

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/opengl/glview/GLCanvas;->setAlpha(F)V

    .line 174
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    if-eqz v4, :cond_33

    .line 175
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/opengl/glview/GLView;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v4

    or-int/2addr v0, v4

    .line 177
    :cond_33
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v4, :cond_46

    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mThumbVisible:Z
    invoke-static {v4}, Lcom/google/android/opengl/glview/Scroller;->access$000(Lcom/google/android/opengl/glview/Scroller;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 178
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/opengl/glview/GLView;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v4

    or-int/2addr v0, v4

    .line 181
    :cond_46
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mOverlayState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->visible()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 182
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;
    invoke-static {v4}, Lcom/google/android/opengl/glview/Scroller;->access$100(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v4

    if-eqz v4, :cond_6a

    .line 183
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mOverlayState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->getFadeInFactor()F

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/opengl/glview/GLCanvas;->setAlpha(F)V

    .line 184
    iget-object v4, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;
    invoke-static {v4}, Lcom/google/android/opengl/glview/Scroller;->access$100(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/google/android/opengl/glview/GLView;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v4

    or-int/2addr v0, v4

    .line 187
    :cond_6a
    invoke-virtual {p1, v3}, Lcom/google/android/opengl/glview/GLCanvas;->setAlpha(F)V

    .line 188
    return v0
.end method

.method public setAutoFade(Z)V
    .registers 3
    .parameter "autoFade"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->setAutoFade(Z)V

    .line 127
    return-void
.end method

.method protected setOverlayVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 233
    iget-object v1, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mOverlayState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v1, v0}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->setState(I)V

    .line 236
    return-void

    .line 233
    :cond_9
    const/4 v0, 0x2

    goto :goto_5
.end method

.method protected setThumbVisible(Z)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #setter for: Lcom/google/android/opengl/glview/Scroller;->mThumbVisible:Z
    invoke-static {v0, p1}, Lcom/google/android/opengl/glview/Scroller;->access$002(Lcom/google/android/opengl/glview/Scroller;Z)Z

    .line 193
    return-void
.end method

.method public setViews(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Z)V
    .registers 5
    .parameter "thumb"
    .parameter "track"
    .parameter "horizontalScrolling"

    .prologue
    .line 137
    iput-boolean p3, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    .line 139
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_10

    .line 140
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->removeView(Lcom/google/android/opengl/glview/GLView;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 143
    :cond_10
    iput-object p2, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    .line 145
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_20

    .line 146
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->removeView(Lcom/google/android/opengl/glview/GLView;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 149
    :cond_20
    iput-object p1, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    .line 154
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_2b

    .line 155
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mTrack:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 157
    :cond_2b
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_34

    .line 158
    iget-object v0, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 160
    :cond_34
    return-void
.end method

.method public setVisibility(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mVisible:Z

    .line 131
    iget-object v1, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {v1, v0}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->setState(I)V

    .line 133
    return-void

    .line 131
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

    .line 196
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->x()F

    move-result v6

    .line 197
    .local v6, x:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->y()F

    move-result v7

    .line 198
    .local v7, y:F
    move v0, v6

    .line 199
    .local v0, oldX:F
    move v1, v7

    .line 200
    .local v1, oldY:F
    iget-boolean v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    if-eqz v8, :cond_88

    .line 201
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->getThumbPosition()F

    move-result v6

    .line 205
    :goto_16
    cmpl-float v8, v6, v0

    if-nez v8, :cond_1e

    cmpl-float v8, v7, v1

    if-eqz v8, :cond_3d

    .line 206
    :cond_1e
    iget-boolean v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mVisible:Z

    if-eqz v8, :cond_27

    .line 207
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mScrollbarState:Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;

    invoke-virtual {v8, v11}, Lcom/google/android/opengl/glview/Scroller$FadeStateMachine;->setState(I)V

    .line 209
    :cond_27
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    iget-object v9, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v9}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v9

    iget-object v10, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v10}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v10

    invoke-virtual {v8, v6, v7, v9, v10}, Lcom/google/android/opengl/glview/GLView;->setContentRect(FFFF)V

    .line 210
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #setter for: Lcom/google/android/opengl/glview/Scroller;->mOverlayNeedsLayout:Z
    invoke-static {v8, v11}, Lcom/google/android/opengl/glview/Scroller;->access$202(Lcom/google/android/opengl/glview/Scroller;Z)Z

    .line 213
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

    .line 214
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;
    invoke-static {v8}, Lcom/google/android/opengl/glview/Scroller;->access$100(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v3

    .line 215
    .local v3, overlayWidth:F
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;
    invoke-static {v8}, Lcom/google/android/opengl/glview/Scroller;->access$100(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v2

    .line 218
    .local v2, overlayHeight:F
    iget-boolean v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mHorizontalScrolling:Z

    if-eqz v8, :cond_8d

    .line 220
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->mThumb:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v8}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v8

    sub-float/2addr v8, v3

    mul-float/2addr v8, v12

    add-float v4, v6, v8

    .line 221
    .local v4, overlayX:F
    sub-float v5, v7, v2

    .line 227
    .local v5, overlayY:F
    :goto_79
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #getter for: Lcom/google/android/opengl/glview/Scroller;->mOverlay:Lcom/google/android/opengl/glview/GLView;
    invoke-static {v8}, Lcom/google/android/opengl/glview/Scroller;->access$100(Lcom/google/android/opengl/glview/Scroller;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v8

    invoke-virtual {v8, v4, v5, v3, v2}, Lcom/google/android/opengl/glview/GLView;->setContentRect(FFFF)V

    .line 228
    iget-object v8, p0, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->this$0:Lcom/google/android/opengl/glview/Scroller;

    #setter for: Lcom/google/android/opengl/glview/Scroller;->mOverlayNeedsLayout:Z
    invoke-static {v8, v13}, Lcom/google/android/opengl/glview/Scroller;->access$202(Lcom/google/android/opengl/glview/Scroller;Z)Z

    .line 230
    .end local v2           #overlayHeight:F
    .end local v3           #overlayWidth:F
    .end local v4           #overlayX:F
    .end local v5           #overlayY:F
    :cond_87
    return-void

    .line 203
    :cond_88
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Scroller$ScrollBar;->getThumbPosition()F

    move-result v7

    goto :goto_16

    .line 224
    .restart local v2       #overlayHeight:F
    .restart local v3       #overlayWidth:F
    :cond_8d
    sub-float v4, v6, v3

    .line 225
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
