.class public Lcom/google/android/apps/translate/editor/InstantTranslateTextView;
.super Landroid/widget/TextView;
.source "InstantTranslateTextView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/editor/InstantTranslateTextView$Callback;,
        Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;
    }
.end annotation


# static fields
.field private static final AUTO_SCROLL_DELAY_MILLIS:I = 0x3e8

.field private static final AUTO_SCROLL_PX_PER_MILLIS:F = 0.2f

.field private static final DEBUG_SCROLL:Z = false

.field private static final MAX_PADDING_CHARS_TO_ELLIPSIZE:I = 0xa

.field private static final PREFIX_COMP_CHARS:I = 0xa

.field private static final SCROLL_INTERVAL_MILLIS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "InstantTranslateTextView"


# instance fields
.field private mAutoScrollHandler:Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;

.field private mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateTextView$Callback;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInitialScrollX:I

.field private mLongPressed:Z

.field private mMaxVisibleTextSizePx:I

.field private mTextBoundLeft:I

.field private mTextBoundRight:I

.field private mTextBoundWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attr"

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;-><init>(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mAutoScrollHandler:Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;

    .line 37
    iput v2, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mInitialScrollX:I

    .line 38
    iput v2, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundLeft:I

    .line 39
    iput v2, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundRight:I

    .line 40
    iput v2, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundWidth:I

    .line 41
    iput v2, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mMaxVisibleTextSizePx:I

    .line 160
    iput-boolean v2, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mLongPressed:Z

    .line 98
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;II)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->scrollToByUpToGivenDistance(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->setBaseScrollX()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;)Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mAutoScrollHandler:Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getPositionWithEllipsesAtStart()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getPositionWithEllipsesAtEnd()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundWidth:I

    return v0
.end method

.method private getDestinationPosition(I)I
    .registers 4
    .parameter "direction"

    .prologue
    .line 194
    iget v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mInitialScrollX:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->isRtl(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, -0x1

    .line 195
    .local v0, isRtl:I
    :goto_9
    mul-int v1, v0, p1

    if-lez v1, :cond_14

    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getPositionWithEllipsesAtEnd()I

    move-result v1

    :goto_11
    return v1

    .line 194
    .end local v0           #isRtl:I
    :cond_12
    const/4 v0, 0x1

    goto :goto_9

    .line 195
    .restart local v0       #isRtl:I
    :cond_14
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getPositionWithEllipsesAtStart()I

    move-result v1

    goto :goto_11
.end method

.method private getPositionWithEllipsesAtEnd()I
    .registers 2

    .prologue
    .line 339
    iget v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mInitialScrollX:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->isRtl(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 340
    iget v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mInitialScrollX:I

    .line 342
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getPositionWithEllipsesAtStart()I
    .registers 5

    .prologue
    .line 324
    const-string v1, "InstantTranslateTextView"

    const-string v2, "getPositionWithEllipsesAtStart START"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, offset:I
    iget v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundWidth:I

    iget v2, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mMaxVisibleTextSizePx:I

    if-lt v1, v2, :cond_2c

    .line 327
    iget v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundRight:I

    iget v2, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mMaxVisibleTextSizePx:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 328
    const-string v1, "InstantTranslateTextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPositionWithEllipsesAtStart offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_2c
    iget v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mInitialScrollX:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->isRtl(I)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 331
    const-string v1, "InstantTranslateTextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPositionWithEllipsesAtStart mInitialScrollX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mInitialScrollX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mInitialScrollX:I

    sub-int v0, v1, v0

    .line 335
    .end local v0           #offset:I
    :goto_52
    return v0

    .line 334
    .restart local v0       #offset:I
    :cond_53
    const-string v1, "InstantTranslateTextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPositionWithEllipsesAtStart END offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52
.end method

.method private init()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mInitialScrollX:I

    .line 110
    iput v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundLeft:I

    .line 111
    iput v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundRight:I

    .line 112
    iput v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundWidth:I

    .line 113
    iput v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mMaxVisibleTextSizePx:I

    .line 114
    return-void
.end method

.method private isLtl(I)Z
    .registers 3
    .parameter "postionX"

    .prologue
    .line 387
    iget v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mMaxVisibleTextSizePx:I

    if-lez v0, :cond_a

    iget v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mMaxVisibleTextSizePx:I

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isRtl(I)Z
    .registers 4
    .parameter "postionX"

    .prologue
    .line 383
    iget v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundWidth:I

    iget v1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mMaxVisibleTextSizePx:I

    if-le v0, v1, :cond_e

    iget v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundWidth:I

    mul-int/lit8 v0, v0, 0x5

    if-le p1, v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private declared-synchronized scrollToByUpToGivenDistance(II)Z
    .registers 10
    .parameter "toPositionX"
    .parameter "scrollDistance"

    .prologue
    const/4 v4, 0x0

    .line 204
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->setBaseScrollX()V

    .line 206
    iget v5, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundWidth:I

    iget v6, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mMaxVisibleTextSizePx:I

    if-ge v5, v6, :cond_1d

    .line 208
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v5}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 211
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->setInstantTranslateToScrollable()V

    .line 212
    const-string v5, "InstantTranslateTextView"

    const-string v6, "scrollByCustom bye: short"

    invoke-static {v5, v6}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_54

    move v2, v4

    .line 243
    :goto_1b
    monitor-exit p0

    return v2

    .line 215
    :cond_1d
    :try_start_1d
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->setInstantTranslateToScrollable()V

    .line 216
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mMaxVisibleTextSizePx:I

    .line 218
    const/4 v2, 0x0

    .line 219
    .local v2, needMoreScrolls:Z
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getScrollX()I

    move-result v0

    .line 220
    .local v0, currentPositionX:I
    if-ne v0, p1, :cond_40

    .line 221
    const-string v5, "InstantTranslateTextView"

    const-string v6, "scrollByCustom bye!"

    invoke-static {v5, v6}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    .line 222
    goto :goto_1b

    .line 224
    :cond_40
    if-ge v0, p1, :cond_57

    const/4 v1, 0x1

    .line 226
    .local v1, direction:I
    :goto_43
    mul-int v4, v1, p2

    add-int v3, v0, v4

    .line 227
    .local v3, newPositionX:I
    sub-int v4, v3, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, p2, :cond_59

    .line 228
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->scrollTo(II)V
    :try_end_53
    .catchall {:try_start_1d .. :try_end_53} :catchall_54

    goto :goto_1b

    .line 204
    .end local v0           #currentPositionX:I
    .end local v1           #direction:I
    .end local v2           #needMoreScrolls:Z
    .end local v3           #newPositionX:I
    :catchall_54
    move-exception v4

    monitor-exit p0

    throw v4

    .line 224
    .restart local v0       #currentPositionX:I
    .restart local v2       #needMoreScrolls:Z
    :cond_57
    const/4 v1, -0x1

    goto :goto_43

    .line 230
    .restart local v1       #direction:I
    .restart local v3       #newPositionX:I
    :cond_59
    const/4 v4, 0x0

    :try_start_5a
    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->scrollTo(II)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_54

    .line 231
    const/4 v2, 0x1

    goto :goto_1b
.end method

.method private declared-synchronized setBaseScrollX()V
    .registers 8

    .prologue
    .line 346
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getScrollX()I

    move-result v3

    .line 347
    .local v3, x:I
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mMaxVisibleTextSizePx:I

    .line 348
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 349
    .local v2, tp:Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, text:Ljava/lang/String;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 351
    .local v0, bounds:Landroid/graphics/Rect;
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v1, v4, v5, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 352
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundLeft:I

    .line 353
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iput v4, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundRight:I

    .line 354
    iget v4, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundLeft:I

    iget v5, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundRight:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundWidth:I

    .line 355
    iget v4, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundWidth:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_69

    iget v4, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundWidth:I

    iget v5, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mMaxVisibleTextSizePx:I

    if-ge v4, v5, :cond_69

    .line 356
    const-string v4, "InstantTranslateTextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBaseScrollX INIT mInitialScrollX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iput v3, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mInitialScrollX:I

    .line 359
    :cond_69
    invoke-direct {p0, v3}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->isLtl(I)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 360
    iget v4, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mInitialScrollX:I

    invoke-direct {p0, v4}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->isRtl(I)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 361
    const-string v4, "InstantTranslateTextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBaseScrollX switch-to-RTL mInitialScrollX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iput v3, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mInitialScrollX:I
    :try_end_91
    .catchall {:try_start_1 .. :try_end_91} :catchall_bc

    .line 378
    :cond_91
    :goto_91
    monitor-exit p0

    return-void

    .line 364
    :cond_93
    :try_start_93
    invoke-direct {p0, v3}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->isRtl(I)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 365
    iget v4, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mInitialScrollX:I

    invoke-direct {p0, v4}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->isLtl(I)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 366
    const-string v4, "InstantTranslateTextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBaseScrollX switch-to-LTR mInitialScrollX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iput v3, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mInitialScrollX:I
    :try_end_bb
    .catchall {:try_start_93 .. :try_end_bb} :catchall_bc

    goto :goto_91

    .line 346
    .end local v0           #bounds:Landroid/graphics/Rect;
    .end local v1           #text:Ljava/lang/String;
    .end local v2           #tp:Landroid/text/TextPaint;
    .end local v3           #x:I
    :catchall_bc
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private setInstantTranslateToScrollable()V
    .registers 2

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 392
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 394
    :cond_a
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 102
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 103
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 106
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mAutoScrollHandler:Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;

    float-to-int v1, p3

    invoke-direct {p0, v1}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getDestinationPosition(I)I

    move-result v1

    const/high16 v2, 0x447a

    div-float v2, p3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;->startScroll(IFI)V

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method onLongPause(Landroid/widget/EditText;)V
    .registers 4
    .parameter "editText"

    .prologue
    .line 267
    const-string v0, "InstantTranslateTextView"

    const-string v1, "onLongPause"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mLongPressed:Z

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mAutoScrollHandler:Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;->stop()V

    .line 165
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 169
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 174
    .local v0, eventDurationMillis:J
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getScrollX()I

    move-result v3

    float-to-int v4, p3

    add-int v2, v3, v4

    .line 175
    .local v2, newPositionX:I
    iget v3, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mInitialScrollX:I

    invoke-direct {p0, v3}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->isRtl(I)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 176
    iget v3, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mInitialScrollX:I

    iget v4, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundLeft:I

    sub-int/2addr v3, v4

    if-ge v3, v2, :cond_38

    .line 177
    iget v3, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mInitialScrollX:I

    iget v4, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundLeft:I

    sub-int v2, v3, v4

    .line 188
    :cond_29
    :goto_29
    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mAutoScrollHandler:Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$AutoScrollHandler;->stop()V

    .line 189
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->scrollToByUpToGivenDistance(II)Z

    .line 190
    const/4 v3, 0x1

    return v3

    .line 178
    :cond_38
    iget v3, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mInitialScrollX:I

    iget v4, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundRight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mMaxVisibleTextSizePx:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_29

    .line 179
    iget v3, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mInitialScrollX:I

    iget v4, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundRight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mMaxVisibleTextSizePx:I

    add-int v2, v3, v4

    goto :goto_29

    .line 182
    :cond_4c
    iget v3, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundLeft:I

    if-ge v2, v3, :cond_53

    .line 183
    iget v2, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundLeft:I

    goto :goto_29

    .line 184
    :cond_53
    iget v3, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundRight:I

    iget v4, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mMaxVisibleTextSizePx:I

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_29

    .line 185
    iget v3, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundRight:I

    iget v4, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mMaxVisibleTextSizePx:I

    sub-int v2, v3, v4

    goto :goto_29
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 248
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateTextView$Callback;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mLongPressed:Z

    if-nez v0, :cond_d

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateTextView$Callback;

    invoke-interface {v0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$Callback;->onConfirm()V

    .line 140
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized onTargetTextUpdate(Landroid/text/SpannableStringBuilder;Landroid/widget/EditText;)V
    .registers 13
    .parameter "text"
    .parameter "editText"

    .prologue
    const/4 v2, 0x0

    const/16 v9, 0xa

    .line 281
    monitor-enter p0

    :try_start_4
    const-string v0, "InstantTranslateTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTargetTextUpdate text="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, oldText:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    .line 285
    .local v3, start:I
    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    .line 286
    .local v4, end:I
    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result v5

    .line 287
    .local v5, length:I
    if-nez v3, :cond_38

    if-ne v4, v5, :cond_38

    const/4 v2, 0x1

    .line 289
    .local v2, allSelected:Z
    :cond_38
    if-eqz v2, :cond_46

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->equalsExceptForDots(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_41
    .catchall {:try_start_4 .. :try_end_41} :catchall_9a

    move-result v0

    if-eqz v0, :cond_46

    .line 321
    :goto_44
    monitor-exit p0

    return-void

    .line 292
    :cond_46
    :try_start_46
    iget v7, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mTextBoundWidth:I

    .line 293
    .local v7, oldTextBoundWidth:I
    if-nez v2, :cond_72

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v9, :cond_72

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v9, :cond_72

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 299
    :cond_72
    const-string v0, "InstantTranslateTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " onTargetTextUpdate requestLayout text="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->init()V

    .line 301
    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->requestLayout()V

    .line 303
    :cond_90
    new-instance v0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView$1;-><init>(Lcom/google/android/apps/translate/editor/InstantTranslateTextView;ZIII)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->post(Ljava/lang/Runnable;)Z
    :try_end_99
    .catchall {:try_start_46 .. :try_end_99} :catchall_9a

    goto :goto_44

    .line 281
    .end local v2           #allSelected:Z
    .end local v3           #start:I
    .end local v4           #end:I
    .end local v5           #length:I
    .end local v6           #oldText:Ljava/lang/String;
    .end local v7           #oldTextBoundWidth:I
    :catchall_9a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 257
    const-string v0, "InstantTranslateTextView"

    const-string v1, "onTouchEvent"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mLongPressed:Z

    .line 259
    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 260
    const/4 v0, 0x1

    .line 263
    :goto_17
    return v0

    .line 262
    :cond_18
    const-string v0, "InstantTranslateTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "super.onTouchEvent getScrollX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_17
.end method

.method setCallback(Lcom/google/android/apps/translate/editor/InstantTranslateTextView$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->mCallback:Lcom/google/android/apps/translate/editor/InstantTranslateTextView$Callback;

    .line 118
    return-void
.end method

.method setTranslate(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 121
    const-string v0, "InstantTranslateTextView"

    const-string v1, "setTranslate"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/editor/InstantTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method
