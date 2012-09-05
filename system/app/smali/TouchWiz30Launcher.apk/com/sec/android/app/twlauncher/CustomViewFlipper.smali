.class public Lcom/sec/android/app/twlauncher/CustomViewFlipper;
.super Ljava/lang/Object;
.source "CustomViewFlipper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;,
        Lcom/sec/android/app/twlauncher/CustomViewFlipper$CustomFlipView;,
        Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;
    }
.end annotation


# instance fields
.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mB1:Landroid/graphics/Bitmap;

.field private mB2:Landroid/graphics/Bitmap;

.field private mBackColor:I

.field private mBackPaint:Landroid/graphics/Paint;

.field mFlipPhases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAnimating:Z

.field private mListener:Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mIsAnimating:Z

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mAlphaPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mBackPaint:Landroid/graphics/Paint;

    .line 39
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mListener:Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mBackColor:I

    .line 42
    return-void
.end method

.method private centerRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 9
    .parameter "r1"
    .parameter "r2"

    .prologue
    .line 142
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private drawPhases(Landroid/graphics/Canvas;I)V
    .registers 6
    .parameter "c"
    .parameter "progress"

    .prologue
    .line 225
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 246
    :goto_8
    return-void

    .line 229
    :cond_9
    if-gtz p2, :cond_18

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->drawState(Landroid/graphics/Canvas;Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;)V

    goto :goto_8

    .line 234
    :cond_18
    const/16 v1, 0x190

    if-gt v1, p2, :cond_2f

    .line 235
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->drawState(Landroid/graphics/Canvas;Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;)V

    .line 238
    :cond_2f
    const/4 v0, 0x1

    .line 239
    .local v0, i:I
    :goto_30
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    iget v1, v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    if-gt p2, v1, :cond_5e

    .line 245
    :cond_44
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    invoke-direct {p0, v1, v2, p2}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->intermediateState(Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;I)Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->drawState(Landroid/graphics/Canvas;Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;)V

    goto :goto_8

    .line 243
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_30
.end method

.method private drawState(Landroid/graphics/Canvas;Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;)V
    .registers 8
    .parameter "c"
    .parameter "s"

    .prologue
    const/4 v4, 0x0

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 176
    iget-object v0, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 177
    iget v0, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mBackgroundAlpha:I

    if-lez v0, :cond_22

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mBackPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mBackColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mBackPaint:Landroid/graphics/Paint;

    iget v1, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mBackgroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 180
    iget-object v0, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mRegion:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 182
    :cond_22
    iget v0, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mAlpha1:I

    if-lez v0, :cond_3f

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mAlpha1:I

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 187
    :cond_3f
    iget v0, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mAlpha2:I

    if-lez v0, :cond_5c

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mAlpha2:I

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 192
    :cond_5c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 193
    return-void
.end method

.method private drawStill(Landroid/graphics/Canvas;)Z
    .registers 7
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, -0x100

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1c

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 294
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return v0

    .line 291
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1a

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1a
.end method

.method private getBitmapRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .registers 6
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 171
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private getCurrentRect(I)Landroid/graphics/Rect;
    .registers 5
    .parameter "progress"

    .prologue
    .line 249
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_f

    .line 250
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->getBitmapRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v1

    .line 265
    :goto_e
    return-object v1

    .line 252
    :cond_f
    if-gtz p1, :cond_1d

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mRegion:Landroid/graphics/Rect;

    goto :goto_e

    .line 255
    :cond_1d
    const/16 v1, 0x190

    if-gt v1, p1, :cond_34

    .line 256
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mRegion:Landroid/graphics/Rect;

    goto :goto_e

    .line 258
    :cond_34
    const/4 v0, 0x1

    .line 259
    .local v0, i:I
    :goto_35
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_49

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    iget v1, v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    if-gt p1, v1, :cond_62

    .line 265
    :cond_49
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    invoke-direct {p0, v1, v2, p1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->intermediateState(Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;I)Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mRegion:Landroid/graphics/Rect;

    goto :goto_e

    .line 263
    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_35
.end method

.method private getProgress()I
    .registers 5

    .prologue
    .line 298
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x190

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private intermediateState(Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;I)Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;
    .registers 14
    .parameter "s1"
    .parameter "s2"
    .parameter "progress"

    .prologue
    .line 210
    iget v0, p1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    if-gt p3, v0, :cond_5

    .line 221
    .end local p1
    :goto_4
    return-object p1

    .line 212
    .restart local p1
    :cond_5
    iget v0, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    if-gt v0, p3, :cond_b

    move-object p1, p2

    .line 213
    goto :goto_4

    .line 215
    :cond_b
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mRegion:Landroid/graphics/Rect;

    iget v2, p1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    iget-object v3, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mRegion:Landroid/graphics/Rect;

    iget v4, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->interpolateRect(Landroid/graphics/Rect;ILandroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v9

    .line 216
    .local v9, r:Landroid/graphics/Rect;
    iget v1, p1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mBackgroundAlpha:I

    iget v2, p1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mBackgroundAlpha:I

    iget v4, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->interpolateInt(IIIII)I

    move-result v8

    .line 218
    .local v8, ba:I
    iget v1, p1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mAlpha1:I

    iget v2, p1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mAlpha1:I

    iget v4, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->interpolateInt(IIIII)I

    move-result v7

    .line 219
    .local v7, a1:I
    iget v1, p1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mAlpha2:I

    iget v2, p1, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mAlpha2:I

    iget v4, p2, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->interpolateInt(IIIII)I

    move-result v5

    .line 221
    .local v5, a2:I
    new-instance v0, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    move-object v1, p0

    move-object v2, v9

    move v3, v8

    move v4, v7

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    move-object p1, v0

    goto :goto_4
.end method

.method private interpolateInt(IIIII)I
    .registers 8
    .parameter "i1"
    .parameter "w1"
    .parameter "i2"
    .parameter "w2"
    .parameter "p"

    .prologue
    .line 206
    sub-int v0, p4, p5

    mul-int/2addr v0, p1

    sub-int v1, p5, p2

    mul-int/2addr v1, p3

    add-int/2addr v0, v1

    sub-int v1, p4, p2

    div-int/2addr v0, v1

    return v0
.end method

.method private interpolateRect(Landroid/graphics/Rect;ILandroid/graphics/Rect;II)Landroid/graphics/Rect;
    .registers 13
    .parameter "r1"
    .parameter "w1"
    .parameter "r2"
    .parameter "w2"
    .parameter "p"

    .prologue
    .line 196
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 197
    .local v6, r:Landroid/graphics/Rect;
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->interpolateInt(IIIII)I

    move-result v0

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 198
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->interpolateInt(IIIII)I

    move-result v0

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 199
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    move-object v0, p0

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->interpolateInt(IIIII)I

    move-result v0

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 200
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->interpolateInt(IIIII)I

    move-result v0

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 201
    return-object v6
.end method

.method private prepareEnlarge(Landroid/graphics/Rect;)V
    .registers 15
    .parameter "start"

    .prologue
    const/16 v3, 0xc0

    const/16 v4, 0xff

    const/4 v5, 0x0

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    move-object v2, p1

    .line 135
    .local v2, r1:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->getBitmapRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v8

    .line 136
    .local v8, r2:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    move-object v1, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    new-instance v6, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    const/16 v11, 0x60

    const/16 v12, 0x10a

    move-object v7, p0

    move v9, v4

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    new-instance v6, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    const/16 v12, 0x190

    move-object v7, p0

    move v9, v5

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v12}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method private prepareFlip()V
    .registers 5

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->getProgress()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->getCurrentRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 159
    .local v0, r1:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->getBitmapRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v1

    .line 160
    .local v1, r2:Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 161
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->prepareShrink(Landroid/graphics/Rect;)V

    .line 167
    :goto_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mStartTime:J

    .line 168
    return-void

    .line 162
    :cond_1e
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 163
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->prepareEnlarge(Landroid/graphics/Rect;)V

    goto :goto_17

    .line 165
    :cond_28
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->prepareTransfer(Landroid/graphics/Rect;)V

    goto :goto_17
.end method

.method private prepareShrink(Landroid/graphics/Rect;)V
    .registers 15
    .parameter "start"

    .prologue
    const/16 v10, 0x80

    const/16 v4, 0xff

    const/4 v5, 0x0

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 125
    move-object v2, p1

    .line 126
    .local v2, r1:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->getBitmapRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v8

    .line 127
    .local v8, r2:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    const/16 v3, 0xc0

    move-object v1, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    new-instance v6, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    const/16 v12, 0x10a

    move-object v7, p0

    move v9, v4

    move v11, v10

    invoke-direct/range {v6 .. v12}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    new-instance v6, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    const/16 v12, 0x190

    move-object v7, p0

    move v9, v5

    move v10, v5

    move v11, v4

    invoke-direct/range {v6 .. v12}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method private prepareTransfer(Landroid/graphics/Rect;)V
    .registers 14
    .parameter "start"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    move-object v2, p1

    .line 149
    .local v2, r1:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->getBitmapRect(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v11

    .line 150
    .local v11, r2:Landroid/graphics/Rect;
    invoke-direct {p0, v2, v11}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->centerRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    .line 152
    .local v10, cr:Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    const/16 v3, 0xc0

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    const/16 v6, 0xff

    const/16 v7, 0x80

    const/16 v8, 0x80

    const/16 v9, 0xc8

    move-object v4, p0

    move-object v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mFlipPhases:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;

    const/16 v6, 0xc0

    const/4 v7, 0x0

    const/16 v8, 0xff

    const/16 v9, 0x190

    move-object v4, p0

    move-object v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method


# virtual methods
.method public declared-synchronized draw(Landroid/graphics/Canvas;)Z
    .registers 4
    .parameter "c"

    .prologue
    .line 302
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mIsAnimating:Z

    if-nez v1, :cond_b

    .line 303
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->drawStill(Landroid/graphics/Canvas;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1c

    move-result v1

    .line 313
    :goto_9
    monitor-exit p0

    return v1

    .line 306
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->getProgress()I

    move-result v0

    .line 308
    .local v0, progress:I
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->drawPhases(Landroid/graphics/Canvas;I)V

    .line 310
    const/16 v1, 0x190

    if-gt v1, v0, :cond_19

    .line 311
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mIsAnimating:Z

    .line 313
    :cond_19
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mIsAnimating:Z
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_1c

    goto :goto_9

    .line 302
    .end local v0           #progress:I
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized end()V
    .registers 2

    .prologue
    .line 103
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mIsAnimating:Z

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    .line 108
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1c

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    .line 112
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mListener:Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;

    if-eqz v0, :cond_25

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mListener:Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;->onCustomFlipEnd()V
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_27

    .line 115
    :cond_25
    monitor-exit p0

    return-void

    .line 103
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flipTo(Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "b"

    .prologue
    .line 55
    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 56
    :cond_9
    const-string v2, "CustomViewFlipper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flipTo: invalid bitmap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_39

    .line 93
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    .line 59
    :cond_23
    :try_start_23
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    .local v0, copyB:Landroid/graphics/Bitmap;
    if-nez v0, :cond_3c

    .line 61
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Bitmap copy failed!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_39

    .line 55
    .end local v0           #copyB:Landroid/graphics/Bitmap;
    :catchall_39
    move-exception v2

    monitor-exit p0

    throw v2

    .line 63
    .restart local v0       #copyB:Landroid/graphics/Bitmap;
    :cond_3c
    :try_start_3c
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    if-nez v2, :cond_43

    .line 64
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    goto :goto_21

    .line 66
    :cond_43
    const/4 v1, 0x1

    .line 67
    .local v1, needFlip:Z
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_84

    .line 68
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_7a

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_7a

    .line 69
    const/4 v1, 0x0

    .line 70
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 75
    :goto_66
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    .line 85
    :goto_68
    if-eqz v1, :cond_70

    .line 86
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mIsAnimating:Z

    .line 87
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->prepareFlip()V

    .line 89
    :cond_70
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mListener:Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;

    if-eqz v2, :cond_21

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mListener:Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;

    invoke-interface {v2}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;->onCustomFlipStart()V

    goto :goto_21

    .line 72
    :cond_7a
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    goto :goto_66

    .line 77
    :cond_84
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_a5

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_a5

    .line 78
    const/4 v1, 0x0

    .line 79
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 80
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB1:Landroid/graphics/Bitmap;

    goto :goto_68

    .line 82
    :cond_a5
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->mB2:Landroid/graphics/Bitmap;
    :try_end_a7
    .catchall {:try_start_3c .. :try_end_a7} :catchall_39

    goto :goto_68
.end method
