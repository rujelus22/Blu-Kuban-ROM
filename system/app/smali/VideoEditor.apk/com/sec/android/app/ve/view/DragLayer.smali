.class public Lcom/sec/android/app/ve/view/DragLayer;
.super Landroid/widget/RelativeLayout;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/view/DragLayer$DragListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_SCALE_UP_DURATION:I = 0x6e

.field private static final ANIMATION_STATE_DONE:I = 0x3

.field private static final ANIMATION_STATE_RUNNING:I = 0x2

.field private static final ANIMATION_STATE_STARTING:I = 0x1

.field private static final ANIMATION_TYPE_SCALE:I = 0x1

.field private static final DRAG_SCALE:F = 24.0f

.field private static final VIBRATE_DURATION:I = 0x23


# instance fields
.field private mAnimationDuration:I

.field private mAnimationFrom:F

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationTo:F

.field private mAnimationType:I

.field private mBitmapOffsetX:I

.field private mBitmapOffsetY:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragPaint:Landroid/graphics/Paint;

.field private mDragRect:Landroid/graphics/Rect;

.field private mDragRegion:Landroid/graphics/RectF;

.field private mDragging:Z

.field private mEnteredRegion:Z

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

.field private mOriginator:Landroid/view/View;

.field private mRect:Landroid/graphics/Rect;

.field private mShouldDrop:Z

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private final mTrashPaint:Landroid/graphics/Paint;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mRect:Landroid/graphics/Rect;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragging:Z

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mAnimationState:I

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragRect:Landroid/graphics/Rect;

    .line 84
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mVibrator:Landroid/os/Vibrator;

    .line 85
    return-void
.end method

.method private endDrag()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragging:Z

    if-eqz v0, :cond_29

    .line 126
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragging:Z

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 130
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    if-eqz v0, :cond_26

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    iget v1, p0, Lcom/sec/android/app/ve/view/DragLayer;->mLastMotionX:F

    iget v2, p0, Lcom/sec/android/app/ve/view/DragLayer;->mLastMotionY:F

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/ve/view/DragLayer$DragListener;->onDragEnd(FF)V

    .line 135
    :cond_26
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/DragLayer;->invalidate()V

    .line 137
    :cond_29
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const/4 v5, 0x2

    const/high16 v9, 0x4000

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 373
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 375
    iget-boolean v3, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragging:Z

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_49

    .line 376
    iget v3, p0, Lcom/sec/android/app/ve/view/DragLayer;->mAnimationState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/ve/view/DragLayer;->mAnimationStartTime:J

    .line 378
    iput v5, p0, Lcom/sec/android/app/ve/view/DragLayer;->mAnimationState:I

    .line 381
    :cond_1e
    iget v3, p0, Lcom/sec/android/app/ve/view/DragLayer;->mAnimationState:I

    if-ne v3, v5, :cond_85

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sec/android/app/ve/view/DragLayer;->mAnimationStartTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    .line 383
    iget v4, p0, Lcom/sec/android/app/ve/view/DragLayer;->mAnimationDuration:I

    int-to-float v4, v4

    .line 382
    div-float v1, v3, v4

    .line 384
    .local v1, normalized:F
    cmpl-float v3, v1, v7

    if-ltz v3, :cond_36

    .line 385
    const/4 v3, 0x3

    iput v3, p0, Lcom/sec/android/app/ve/view/DragLayer;->mAnimationState:I

    .line 387
    :cond_36
    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 388
    iget v3, p0, Lcom/sec/android/app/ve/view/DragLayer;->mAnimationFrom:F

    iget v4, p0, Lcom/sec/android/app/ve/view/DragLayer;->mAnimationTo:F

    iget v5, p0, Lcom/sec/android/app/ve/view/DragLayer;->mAnimationFrom:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float v2, v3, v4

    .line 390
    .local v2, value:F
    iget v3, p0, Lcom/sec/android/app/ve/view/DragLayer;->mAnimationType:I

    packed-switch v3, :pswitch_data_a0

    .line 410
    .end local v1           #normalized:F
    .end local v2           #value:F
    :cond_49
    :goto_49
    return-void

    .line 392
    .restart local v1       #normalized:F
    .restart local v2       #value:F
    :pswitch_4a
    iget-object v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 393
    .local v0, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 394
    iget v3, p0, Lcom/sec/android/app/ve/view/DragLayer;->mLastMotionX:F

    iget v4, p0, Lcom/sec/android/app/ve/view/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/ve/view/DragLayer;->mBitmapOffsetX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 395
    iget v4, p0, Lcom/sec/android/app/ve/view/DragLayer;->mLastMotionY:F

    iget v5, p0, Lcom/sec/android/app/ve/view/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/ve/view/DragLayer;->mBitmapOffsetY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 394
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 396
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v7, v2

    mul-float/2addr v3, v4

    div-float/2addr v3, v9

    .line 397
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v7, v2

    mul-float/2addr v4, v5

    div-float/2addr v4, v9

    .line 396
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 398
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 399
    iget-object v3, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 400
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_49

    .line 405
    .end local v0           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v1           #normalized:F
    .end local v2           #value:F
    :cond_85
    iget-object v3, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 406
    iget v4, p0, Lcom/sec/android/app/ve/view/DragLayer;->mLastMotionX:F

    iget v5, p0, Lcom/sec/android/app/ve/view/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/ve/view/DragLayer;->mBitmapOffsetX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 407
    iget v5, p0, Lcom/sec/android/app/ve/view/DragLayer;->mLastMotionY:F

    iget v6, p0, Lcom/sec/android/app/ve/view/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/ve/view/DragLayer;->mBitmapOffsetY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/ve/view/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    .line 405
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_49

    .line 390
    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_4a
    .end packed-switch
.end method

.method public dropDrag()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragging:Z

    if-eqz v0, :cond_1c

    .line 141
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragging:Z

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :cond_19
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/DragLayer;->invalidate()V

    .line 150
    :cond_1c
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 413
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 414
    const-string v0, "DragLayer inflated"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "ev"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 99
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 100
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 102
    .local v2, y:F
    packed-switch v0, :pswitch_data_1e

    .line 121
    :goto_f
    :pswitch_f
    iget-boolean v3, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragging:Z

    return v3

    .line 108
    :pswitch_12
    iput v1, p0, Lcom/sec/android/app/ve/view/DragLayer;->mLastMotionX:F

    .line 109
    iput v2, p0, Lcom/sec/android/app/ve/view/DragLayer;->mLastMotionY:F

    goto :goto_f

    .line 116
    :pswitch_17
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/ve/view/DragLayer;->mShouldDrop:Z

    .line 118
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/DragLayer;->endDrag()V

    goto :goto_f

    .line 102
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_12
        :pswitch_17
        :pswitch_f
        :pswitch_17
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 26
    .parameter "ev"

    .prologue
    .line 241
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/ve/view/DragLayer;->mDragging:Z

    move/from16 v20, v0

    if-nez v20, :cond_b

    .line 242
    const/16 v20, 0x0

    .line 368
    :goto_a
    return v20

    .line 245
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 246
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    .line 247
    .local v18, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    .line 249
    .local v19, y:F
    packed-switch v4, :pswitch_data_146

    .line 368
    :cond_1a
    :goto_1a
    const/16 v20, 0x1

    goto :goto_a

    .line 253
    :pswitch_1d
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/view/DragLayer;->mLastMotionX:F

    .line 254
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/view/DragLayer;->mLastMotionY:F

    goto :goto_1a

    .line 268
    :pswitch_2a
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/ve/view/DragLayer;->mTouchOffsetX:F

    .line 269
    .local v15, touchX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/view/DragLayer;->mTouchOffsetY:F

    move/from16 v16, v0

    .line 271
    .local v16, touchY:F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/ve/view/DragLayer;->mBitmapOffsetX:I

    .line 272
    .local v10, offsetX:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/ve/view/DragLayer;->mBitmapOffsetY:I

    .line 274
    .local v11, offsetY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/view/DragLayer;->mLastMotionX:F

    move/from16 v20, v0

    sub-float v20, v20, v15

    int-to-float v0, v10

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v9, v0

    .line 275
    .local v9, left:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/view/DragLayer;->mLastMotionY:F

    move/from16 v20, v0

    sub-float v20, v20, v16

    int-to-float v0, v11

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v14, v0

    .line 277
    .local v14, top:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/ve/view/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 278
    .local v5, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 279
    .local v17, width:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 281
    .local v6, height:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/ve/view/DragLayer;->mRect:Landroid/graphics/Rect;

    .line 282
    .local v12, rect:Landroid/graphics/Rect;
    add-int/lit8 v20, v9, -0x1

    add-int/lit8 v21, v14, -0x1

    add-int v22, v9, v17

    add-int/lit8 v22, v22, 0x1

    add-int v23, v14, v6

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 284
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/view/DragLayer;->mLastMotionX:F

    .line 285
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/view/DragLayer;->mLastMotionY:F

    .line 287
    sub-float v20, v18, v15

    int-to-float v0, v10

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v9, v0

    .line 288
    sub-float v20, v19, v16

    int-to-float v0, v11

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v14, v0

    .line 291
    add-int/lit8 v20, v9, -0x1

    add-int/lit8 v21, v14, -0x1

    add-int v22, v9, v17

    add-int/lit8 v22, v22, 0x1

    add-int v23, v14, v6

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/view/DragLayer;->mListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_dd

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/view/DragLayer;->mListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/view/DragLayer;->mLastMotionX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/view/DragLayer;->mLastMotionY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/view/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-interface/range {v20 .. v23}, Lcom/sec/android/app/ve/view/DragLayer$DragListener;->onDragging(FFLandroid/graphics/Paint;)V

    .line 316
    :cond_dd
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/ve/view/DragLayer;->invalidate(Landroid/graphics/Rect;)V

    .line 320
    const/4 v7, 0x0

    .line 321
    .local v7, inDragRegion:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/view/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1a

    .line 322
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/ve/view/DragLayer;->mDragRegion:Landroid/graphics/RectF;

    .line 323
    .local v13, region:Landroid/graphics/RectF;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v8

    .line 324
    .local v8, inRegion:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/ve/view/DragLayer;->mEnteredRegion:Z

    move/from16 v20, v0

    if-nez v20, :cond_120

    if-eqz v8, :cond_120

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/view/DragLayer;->mTrashPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/view/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 326
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/ve/view/DragLayer;->mEnteredRegion:Z

    .line 327
    const/4 v7, 0x1

    goto/16 :goto_1a

    .line 328
    :cond_120
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/ve/view/DragLayer;->mEnteredRegion:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1a

    if-nez v8, :cond_1a

    .line 329
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/view/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 330
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/ve/view/DragLayer;->mEnteredRegion:Z

    goto/16 :goto_1a

    .line 361
    .end local v5           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v6           #height:I
    .end local v7           #inDragRegion:Z
    .end local v8           #inRegion:Z
    .end local v9           #left:I
    .end local v10           #offsetX:I
    .end local v11           #offsetY:I
    .end local v12           #rect:Landroid/graphics/Rect;
    .end local v13           #region:Landroid/graphics/RectF;
    .end local v14           #top:I
    .end local v15           #touchX:F
    .end local v16           #touchY:F
    .end local v17           #width:I
    :pswitch_13c
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/ve/view/DragLayer;->endDrag()V

    goto/16 :goto_1a

    .line 365
    :pswitch_141
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/ve/view/DragLayer;->endDrag()V

    goto/16 :goto_1a

    .line 249
    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_13c
        :pswitch_2a
        :pswitch_141
    .end packed-switch
.end method

.method public removeDragListener()V
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/DragLayer;->mListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    .line 93
    return-void
.end method

.method public setDragListener(Lcom/sec/android/app/ve/view/DragLayer$DragListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/app/ve/view/DragLayer;->mListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    .line 89
    return-void
.end method

.method public startDragging(Landroid/view/View;)V
    .registers 16
    .parameter "v"

    .prologue
    const/high16 v13, 0x3f80

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 158
    if-eqz p1, :cond_d7

    .line 159
    const-string v2, "DL:::Drag arg --> View v is not null"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/sec/android/app/ve/view/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v2, :cond_1d

    .line 163
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v12, "input_method"

    invoke-virtual {v2, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 162
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/sec/android/app/ve/view/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 165
    :cond_1d
    iget-object v2, p0, Lcom/sec/android/app/ve/view/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v12

    invoke-virtual {v2, v12, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 168
    iget-object v9, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragRect:Landroid/graphics/Rect;

    .line 169
    .local v9, r:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v12

    invoke-virtual {v9, v2, v12, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 171
    invoke-virtual {p0, p1, v9}, Lcom/sec/android/app/ve/view/DragLayer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 172
    iget v2, p0, Lcom/sec/android/app/ve/view/DragLayer;->mLastMotionX:F

    iget v12, v9, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    sub-float/2addr v2, v12

    iput v2, p0, Lcom/sec/android/app/ve/view/DragLayer;->mTouchOffsetX:F

    .line 173
    iget v2, p0, Lcom/sec/android/app/ve/view/DragLayer;->mLastMotionY:F

    iget v12, v9, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    sub-float/2addr v2, v12

    iput v2, p0, Lcom/sec/android/app/ve/view/DragLayer;->mTouchOffsetY:F

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 176
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v11

    .line 179
    .local v11, willNotCache:Z
    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v7

    .line 185
    .local v7, color:I
    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 187
    if-eqz v7, :cond_5f

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 190
    :cond_5f
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    .local v0, viewBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_d7

    .line 193
    const-string v2, "DL::: bitmap from drawing cache not null"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 195
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 197
    .local v4, height:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 198
    .local v5, scale:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v10, v2

    .line 199
    .local v10, scaleFactor:F
    const/high16 v2, 0x41c0

    add-float/2addr v2, v10

    div-float v10, v2, v10

    .line 200
    invoke-virtual {v5, v10, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 202
    iput v13, p0, Lcom/sec/android/app/ve/view/DragLayer;->mAnimationTo:F

    .line 203
    div-float v2, v13, v10

    iput v2, p0, Lcom/sec/android/app/ve/view/DragLayer;->mAnimationFrom:F

    .line 204
    const/16 v2, 0x6e

    iput v2, p0, Lcom/sec/android/app/ve/view/DragLayer;->mAnimationDuration:I

    .line 205
    iput v6, p0, Lcom/sec/android/app/ve/view/DragLayer;->mAnimationState:I

    .line 206
    iput v6, p0, Lcom/sec/android/app/ve/view/DragLayer;->mAnimationType:I

    move v2, v1

    .line 208
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 210
    invoke-virtual {p1, v11}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 211
    invoke-virtual {p1, v7}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 214
    iget-object v8, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 215
    .local v8, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sec/android/app/ve/view/DragLayer;->mBitmapOffsetX:I

    .line 216
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sec/android/app/ve/view/DragLayer;->mBitmapOffsetY:I

    .line 222
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragPaint:Landroid/graphics/Paint;

    .line 223
    iput-boolean v6, p0, Lcom/sec/android/app/ve/view/DragLayer;->mDragging:Z

    .line 224
    iput-boolean v6, p0, Lcom/sec/android/app/ve/view/DragLayer;->mShouldDrop:Z

    .line 225
    iput-object p1, p0, Lcom/sec/android/app/ve/view/DragLayer;->mOriginator:Landroid/view/View;

    .line 229
    iget-object v2, p0, Lcom/sec/android/app/ve/view/DragLayer;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v12, 0x23

    invoke-virtual {v2, v12, v13}, Landroid/os/Vibrator;->vibrate(J)V

    .line 231
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/DragLayer;->mEnteredRegion:Z

    .line 233
    iget-object v1, p0, Lcom/sec/android/app/ve/view/DragLayer;->mListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    if-eqz v1, :cond_d4

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/ve/view/DragLayer;->mListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    invoke-interface {v1, p1}, Lcom/sec/android/app/ve/view/DragLayer$DragListener;->onDragStart(Landroid/view/View;)V

    .line 235
    :cond_d4
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/DragLayer;->invalidate()V

    .line 238
    .end local v0           #viewBitmap:Landroid/graphics/Bitmap;
    .end local v3           #width:I
    .end local v4           #height:I
    .end local v5           #scale:Landroid/graphics/Matrix;
    .end local v7           #color:I
    .end local v8           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v9           #r:Landroid/graphics/Rect;
    .end local v10           #scaleFactor:F
    .end local v11           #willNotCache:Z
    :cond_d7
    return-void
.end method
