.class public Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;
.super Ljava/lang/Object;
.source "MultiTouchGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;,
        Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$OnMultiTouchGestureListener;,
        Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;
    }
.end annotation


# static fields
.field private static final TOUCH_TOLERANCE:F = 2.0f


# instance fields
.field mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

.field private mIsMultiTouchEnd:Z

.field private mIsMultiTouchStart:Z

.field private mListener:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;

.field mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

.field private mScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;)V
    .registers 5
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    .line 141
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    .line 154
    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mListener:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mIsMultiTouchStart:Z

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mIsMultiTouchEnd:Z

    .line 158
    new-instance v0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;-><init>(Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    .line 159
    new-instance v0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;-><init>(Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    .line 161
    return-void
.end method

.method private julery_isqrt(I)I
    .registers 8
    .parameter "val"

    .prologue
    .line 342
    const/4 v3, 0x0

    .local v3, g:I
    const v0, 0x8000

    .local v0, b:I
    const/16 v1, 0xf

    .local v1, bshft:I
    move v2, v1

    .line 344
    .end local v1           #bshft:I
    .local v2, bshft:I
    :goto_7
    shl-int/lit8 v5, v3, 0x1

    add-int/2addr v5, v0

    add-int/lit8 v1, v2, -0x1

    .end local v2           #bshft:I
    .restart local v1       #bshft:I
    shl-int v4, v5, v2

    .local v4, temp:I
    if-lt p1, v4, :cond_12

    .line 345
    add-int/2addr v3, v0

    .line 346
    sub-int/2addr p1, v4

    .line 348
    :cond_12
    shr-int/lit8 v0, v0, 0x1

    if-gtz v0, :cond_17

    .line 349
    return v3

    :cond_17
    move v2, v1

    .end local v1           #bshft:I
    .restart local v2       #bshft:I
    goto :goto_7
.end method

.method private reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 294
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    if-eqz v0, :cond_12

    .line 295
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 296
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iput-object v1, v0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    .line 298
    :cond_12
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    if-eqz v0, :cond_23

    .line 299
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 300
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iput-object v1, v0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    .line 302
    :cond_23
    return-void
.end method

.method private set(Landroid/view/MotionEvent;)V
    .registers 9
    .parameter "curr"

    .prologue
    const/high16 v3, -0x4080

    const/4 v6, 0x1

    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    .line 271
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    if-eqz v1, :cond_13

    .line 272
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 274
    :cond_13
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    .line 276
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iput v3, v1, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->length:F

    .line 277
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iput v3, v1, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->length:F

    .line 278
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mScaleFactor:F

    .line 280
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget-object v0, v1, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    .line 282
    .local v0, prev:Landroid/view/MotionEvent;
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->fingerDiffX:F

    .line 283
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->fingerDiffY:F

    .line 284
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->fingerDiffX:F

    .line 285
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->fingerDiffY:F

    .line 287
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->fingerDiffX:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->focusX:F

    .line 288
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->fingerDiffY:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->focusY:F

    .line 290
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->fingerDiffX:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->focusX:F

    .line 291
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->fingerDiffY:F

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    iput v2, v1, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->focusY:F

    .line 292
    return-void
.end method


# virtual methods
.method public getCurrentSpan()F
    .registers 6

    .prologue
    .line 316
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->length:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_21

    .line 317
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v0, v2, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->fingerDiffX:F

    .line 318
    .local v0, cvx:F
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v1, v2, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->fingerDiffY:F

    .line 319
    .local v1, cvy:F
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->julery_isqrt(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->length:F

    .line 321
    .end local v0           #cvx:F
    .end local v1           #cvy:F
    :cond_21
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->length:F

    return v2
.end method

.method public getFocusX()F
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->focusX:F

    return v0
.end method

.method public getFocusY()F
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->focusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .registers 6

    .prologue
    .line 325
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->length:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_21

    .line 326
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v0, v2, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->fingerDiffX:F

    .line 327
    .local v0, pvx:F
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v1, v2, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->fingerDiffY:F

    .line 328
    .local v1, pvy:F
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->julery_isqrt(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->length:F

    .line 330
    .end local v0           #pvx:F
    .end local v1           #pvy:F
    :cond_21
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->length:F

    return v2
.end method

.method public getScaleFactor()F
    .registers 3

    .prologue
    .line 334
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mScaleFactor:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    .line 335
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mScaleFactor:F

    .line 337
    :cond_13
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public isMultiTouch()Z
    .registers 2

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mIsMultiTouchStart:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "ev"

    .prologue
    const/high16 v12, 0x4000

    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 175
    .local v0, action:I
    const/4 v5, 0x1

    .line 177
    .local v5, handled:Z
    iget-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mIsMultiTouchStart:Z

    if-nez v10, :cond_48

    .line 178
    const/4 v10, 0x5

    if-eq v0, v10, :cond_14

    const/16 v10, 0x105

    if-ne v0, v10, :cond_33

    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_33

    .line 180
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->reset()V

    .line 182
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v11

    iput-object v11, v10, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    .line 184
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->set(Landroid/view/MotionEvent;)V

    .line 186
    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mIsMultiTouchStart:Z

    .line 187
    iput-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mIsMultiTouchEnd:Z

    .line 188
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mListener:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;->onMultiTouchDown()Z

    .line 266
    :cond_32
    :goto_32
    return v5

    .line 191
    :cond_33
    iget-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mIsMultiTouchEnd:Z

    if-nez v9, :cond_42

    .line 193
    if-ne v0, v6, :cond_32

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ne v9, v6, :cond_32

    .line 194
    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mIsMultiTouchEnd:Z

    goto :goto_32

    .line 197
    :cond_42
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mListener:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;

    invoke-virtual {v9, p1}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;->onSingleTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_32

    .line 201
    :cond_48
    sparse-switch v0, :sswitch_data_148

    goto :goto_32

    .line 228
    :sswitch_4c
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->set(Landroid/view/MotionEvent;)V

    .line 230
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v10, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v10, v10

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget-object v11, v11, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v11, v11

    sub-int v1, v10, v11

    .line 231
    .local v1, deltaX0:I
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v10, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v10, v10

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget-object v11, v11, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    sub-int v3, v10, v9

    .line 233
    .local v3, deltaY0:I
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v9, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v10, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v10, v10

    sub-int v2, v9, v10

    .line 234
    .local v2, deltaX1:I
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v9, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget-object v10, v10, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v10, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v10, v10

    sub-int v4, v9, v10

    .line 236
    .local v4, deltaY1:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v9, v12

    if-gez v9, :cond_a9

    .line 237
    const/4 v1, 0x0

    .line 238
    :cond_a9
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v9, v12

    if-gez v9, :cond_b3

    .line 239
    const/4 v3, 0x0

    .line 240
    :cond_b3
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v9, v12

    if-gez v9, :cond_bd

    .line 241
    const/4 v2, 0x0

    .line 242
    :cond_bd
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v9, v12

    if-gez v9, :cond_c7

    .line 243
    const/4 v4, 0x0

    .line 246
    :cond_c7
    mul-int v9, v1, v2

    if-gtz v9, :cond_cf

    mul-int v9, v3, v4

    if-lez v9, :cond_12e

    .line 247
    :cond_cf
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v9, v9, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->focusX:F

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v10, v10, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->focusX:F

    sub-float v7, v9, v10

    .line 248
    .local v7, scrollX:F
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v9, v9, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->focusY:F

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v10, v10, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->focusY:F

    sub-float v8, v9, v10

    .line 251
    .local v8, scrollY:F
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mListener:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;

    invoke-virtual {v9, v7, v8}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;->onMultiTouchScroll(FF)Z

    .line 260
    .end local v7           #scrollX:F
    .end local v8           #scrollY:F
    :cond_e8
    :goto_e8
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget-object v9, v9, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 261
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mPrev:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    iput-object v10, v9, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->event:Landroid/view/MotionEvent;

    goto/16 :goto_32

    .line 205
    .end local v1           #deltaX0:I
    .end local v2           #deltaX1:I
    .end local v3           #deltaY0:I
    .end local v4           #deltaY1:I
    :sswitch_f9
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->set(Landroid/view/MotionEvent;)V

    .line 208
    const v10, 0xff00

    and-int/2addr v10, v0

    shr-int/lit8 v10, v10, 0x8

    if-nez v10, :cond_120

    .line 210
    .local v6, id:I
    :goto_104
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    iput v11, v10, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->focusX:F

    .line 211
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    iput v11, v10, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->focusY:F

    .line 213
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mListener:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;->onMultiTouchUp()Z

    .line 214
    iput-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mIsMultiTouchStart:Z

    .line 216
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->reset()V

    goto/16 :goto_32

    .end local v6           #id:I
    :cond_120
    move v6, v9

    .line 208
    goto :goto_104

    .line 220
    :sswitch_122
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mListener:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;->onMultiTouchUp()Z

    .line 221
    iput-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mIsMultiTouchStart:Z

    .line 223
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->reset()V

    goto/16 :goto_32

    .line 254
    .restart local v1       #deltaX0:I
    .restart local v2       #deltaX1:I
    .restart local v3       #deltaY0:I
    .restart local v4       #deltaY1:I
    :cond_12e
    mul-int v9, v1, v2

    if-ltz v9, :cond_136

    mul-int v9, v3, v4

    if-gez v9, :cond_e8

    .line 257
    :cond_136
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mListener:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->getScaleFactor()F

    move-result v10

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v11, v11, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->focusX:F

    iget-object v12, p0, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->mCurr:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;

    iget v12, v12, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$MultiTouchInfo;->focusY:F

    invoke-virtual {v9, v10, v11, v12}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;->onMultiTouchScale(FFF)Z

    goto :goto_e8

    .line 201
    :sswitch_data_148
    .sparse-switch
        0x2 -> :sswitch_4c
        0x3 -> :sswitch_122
        0x6 -> :sswitch_f9
        0x106 -> :sswitch_f9
    .end sparse-switch
.end method
