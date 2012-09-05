.class public Lcom/google/android/youtube/core/player/TimeBar;
.super Landroid/view/View;
.source "TimeBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/TimeBar$Listener;
    }
.end annotation


# instance fields
.field private final bufferedBar:Landroid/graphics/Rect;

.field private final bufferedPaint:Landroid/graphics/Paint;

.field private bufferedPercent:I

.field private currentTime:I

.field private final listener:Lcom/google/android/youtube/core/player/TimeBar$Listener;

.field private final playedBar:Landroid/graphics/Rect;

.field private final playedPaint:Landroid/graphics/Paint;

.field private final progressBar:Landroid/graphics/Rect;

.field private final progressPaint:Landroid/graphics/Paint;

.field private final scrubber:Landroid/graphics/Bitmap;

.field private scrubberCorrection:I

.field private scrubberLeft:I

.field private final scrubberPadding:I

.field private scrubberTime:I

.field private scrubberTop:I

.field private scrubbing:Z

.field private showBuffered:Z

.field private showScrubber:Z

.field private showTimes:Z

.field private final timeBounds:Landroid/graphics/Rect;

.field private final timeTextPaint:Landroid/graphics/Paint;

.field private totalTime:I

.field private vPaddingInPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/TimeBar$Listener;)V
    .registers 10
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    .line 73
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/player/TimeBar$Listener;

    iput-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->listener:Lcom/google/android/youtube/core/player/TimeBar$Listener;

    .line 76
    iput-boolean v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->showTimes:Z

    .line 77
    iput-boolean v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->showScrubber:Z

    .line 78
    iput-boolean v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->showBuffered:Z

    .line 80
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    .line 81
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedBar:Landroid/graphics/Rect;

    .line 82
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedBar:Landroid/graphics/Rect;

    .line 84
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressPaint:Landroid/graphics/Paint;

    .line 85
    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressPaint:Landroid/graphics/Paint;

    const v3, -0x7f7f80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedPaint:Landroid/graphics/Paint;

    .line 87
    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedPaint:Landroid/graphics/Paint;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 91
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4160

    mul-float v1, v2, v3

    .line 92
    .local v1, textSizeInPx:F
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    const v3, -0x313132

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 95
    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 97
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeBounds:Landroid/graphics/Rect;

    .line 98
    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    const-string v3, "0:00:00"

    const/4 v4, 0x0

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020044

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    .line 101
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4120

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberPadding:I

    .line 103
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41f0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->vPaddingInPx:I

    .line 104
    return-void
.end method

.method private clampScrubber()V
    .registers 5

    .prologue
    .line 194
    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 195
    .local v0, half:I
    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v1, v3, v0

    .line 196
    .local v1, max:I
    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v0

    .line 197
    .local v2, min:I
    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberLeft:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberLeft:I

    .line 198
    return-void
.end method

.method private getScrubberTime()I
    .registers 5

    .prologue
    .line 201
    iget v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberLeft:I

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->totalTime:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private inScrubber(FF)Z
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 187
    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberLeft:I

    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int v1, v2, v3

    .line 188
    .local v1, scrubberRight:I
    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberTop:I

    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int v0, v2, v3

    .line 189
    .local v0, scrubberBottom:I
    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberLeft:I

    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_3a

    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberPadding:I

    add-int/2addr v2, v1

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3a

    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberTop:I

    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberPadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_3a

    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberPadding:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_3a

    const/4 v2, 0x1

    :goto_39
    return v2

    :cond_3a
    const/4 v2, 0x0

    goto :goto_39
.end method

.method private stringForTime(J)Ljava/lang/String;
    .registers 13
    .parameter "millis"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 296
    long-to-int v4, p1

    div-int/lit16 v3, v4, 0x3e8

    .line 297
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 298
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 299
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 300
    .local v0, hours:I
    if-lez v0, :cond_30

    .line 301
    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 303
    :goto_2f
    return-object v4

    :cond_30
    const-string v4, "%02d:%02d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2f
.end method

.method private update()V
    .registers 7

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 110
    iget v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->totalTime:I

    if-lez v0, :cond_56

    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedPercent:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    iget v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->currentTime:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iget v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->totalTime:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 119
    :goto_3f
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubbing:Z

    if-nez v0, :cond_52

    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberLeft:I

    .line 122
    :cond_52
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->invalidate()V

    .line 123
    return-void

    .line 115
    :cond_56
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_3f
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 228
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 229
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 233
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->showBuffered:Z

    if-eqz v0, :cond_18

    .line 234
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 236
    :cond_18
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedBar:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 239
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->showScrubber:Z

    if-eqz v0, :cond_2f

    .line 240
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberTop:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 242
    :cond_2f
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->showTimes:Z

    if-eqz v0, :cond_92

    .line 243
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubbing:Z

    if-eqz v0, :cond_93

    iget v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberTime:I

    int-to-long v0, v0

    :goto_3a
    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->vPaddingInPx:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberPadding:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 248
    iget v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->totalTime:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/player/TimeBar;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->vPaddingInPx:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberPadding:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 254
    :cond_92
    return-void

    .line 243
    :cond_93
    iget v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->currentTime:I

    int-to-long v0, v0

    goto :goto_3a
.end method

.method public getBarHeight()I
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->vPaddingInPx:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPreferredHeight()I
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->vPaddingInPx:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isScrubbing()Z
    .registers 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubbing:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 207
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 208
    sub-int v3, p4, p2

    .line 209
    .local v3, w:I
    sub-int v0, p5, p3

    .line 210
    .local v0, h:I
    iget-boolean v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->showTimes:Z

    if-nez v4, :cond_19

    iget-boolean v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->showScrubber:Z

    if-nez v4, :cond_19

    .line 211
    iget-object v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v5, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 223
    :goto_15
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->update()V

    .line 224
    return-void

    .line 213
    :cond_19
    iget-object v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x3

    .line 214
    .local v1, margin:I
    iget-boolean v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->showTimes:Z

    if-eqz v4, :cond_2c

    .line 215
    iget-object v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->timeBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v1, v4

    .line 217
    :cond_2c
    iget v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberPadding:I

    add-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 218
    .local v2, progressY:I
    iget-object v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubber:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberTop:I

    .line 219
    iget-object v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->progressBar:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getPaddingRight()I

    move-result v6

    sub-int v6, v3, v6

    sub-int/2addr v6, v1

    add-int/lit8 v7, v2, 0x4

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_15
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 259
    iget-boolean v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->showScrubber:Z

    if-eqz v4, :cond_17

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 261
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 263
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_60

    .end local v0           #x:I
    .end local v1           #y:I
    :cond_17
    move v2, v3

    .line 292
    :goto_18
    return v2

    .line 265
    .restart local v0       #x:I
    .restart local v1       #y:I
    :pswitch_19
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-direct {p0, v4, v5}, Lcom/google/android/youtube/core/player/TimeBar;->inScrubber(FF)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 266
    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubbing:Z

    .line 267
    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberLeft:I

    sub-int v3, v0, v3

    iput v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberCorrection:I

    .line 268
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getScrubberTime()I

    move-result v3

    iput v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberTime:I

    .line 269
    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->listener:Lcom/google/android/youtube/core/player/TimeBar$Listener;

    invoke-interface {v3}, Lcom/google/android/youtube/core/player/TimeBar$Listener;->onScrubbingStart()V

    goto :goto_18

    .line 274
    :pswitch_35
    iget-boolean v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubbing:Z

    if-eqz v4, :cond_17

    .line 275
    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberCorrection:I

    sub-int v3, v0, v3

    iput v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberLeft:I

    .line 276
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->clampScrubber()V

    .line 277
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getScrubberTime()I

    move-result v3

    iput v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberTime:I

    .line 278
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->invalidate()V

    goto :goto_18

    .line 283
    :pswitch_4c
    iget-boolean v4, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubbing:Z

    if-eqz v4, :cond_17

    .line 284
    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubbing:Z

    .line 285
    iget v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubberTime:I

    iput v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->currentTime:I

    .line 286
    iget-object v3, p0, Lcom/google/android/youtube/core/player/TimeBar;->listener:Lcom/google/android/youtube/core/player/TimeBar$Listener;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getScrubberTime()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/google/android/youtube/core/player/TimeBar$Listener;->onScrubbingEnd(I)V

    goto :goto_18

    .line 263
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_19
        :pswitch_4c
        :pswitch_35
    .end packed-switch
.end method

.method public resetTime()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, v0, v0, v0}, Lcom/google/android/youtube/core/player/TimeBar;->setTime(III)V

    .line 161
    return-void
.end method

.method public setBufferedPercent(I)V
    .registers 2
    .parameter "bufferedPercent"

    .prologue
    .line 164
    iput p1, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedPercent:I

    .line 165
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->update()V

    .line 166
    return-void
.end method

.method public setProgressColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->playedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->update()V

    .line 142
    return-void
.end method

.method public setShowBuffered(Z)V
    .registers 2
    .parameter "showBuffered"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/TimeBar;->showBuffered:Z

    .line 179
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->update()V

    .line 180
    return-void
.end method

.method public setShowScrubber(Z)V
    .registers 4
    .parameter "showScrubber"

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/TimeBar;->showScrubber:Z

    .line 170
    if-nez p1, :cond_14

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubbing:Z

    if-eqz v0, :cond_14

    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->listener:Lcom/google/android/youtube/core/player/TimeBar$Listener;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->getScrubberTime()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/TimeBar$Listener;->onScrubbingEnd(I)V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->scrubbing:Z

    .line 174
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->requestLayout()V

    .line 175
    return-void
.end method

.method public setShowTimes(Z)V
    .registers 2
    .parameter "showTimes"

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/TimeBar;->showTimes:Z

    .line 156
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/TimeBar;->requestLayout()V

    .line 157
    return-void
.end method

.method public setTime(III)V
    .registers 5
    .parameter "currentTime"
    .parameter "totalTime"
    .parameter "bufferedPercent"

    .prologue
    .line 145
    iget v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->currentTime:I

    if-ne v0, p1, :cond_c

    iget v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->totalTime:I

    if-ne v0, p2, :cond_c

    iget v0, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedPercent:I

    if-eq v0, p3, :cond_15

    .line 147
    :cond_c
    iput p1, p0, Lcom/google/android/youtube/core/player/TimeBar;->currentTime:I

    .line 148
    iput p2, p0, Lcom/google/android/youtube/core/player/TimeBar;->totalTime:I

    .line 149
    iput p3, p0, Lcom/google/android/youtube/core/player/TimeBar;->bufferedPercent:I

    .line 150
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/TimeBar;->update()V

    .line 152
    :cond_15
    return-void
.end method
