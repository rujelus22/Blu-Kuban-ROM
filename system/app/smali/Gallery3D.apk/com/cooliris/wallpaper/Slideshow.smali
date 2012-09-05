.class public Lcom/cooliris/wallpaper/Slideshow;
.super Landroid/view/SurfaceView;
.source "Slideshow.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/wallpaper/Slideshow$DataSource;
    }
.end annotation


# static fields
.field public static isPlaying:Z

.field private static final sGrow:Lcom/cooliris/media/Vector3f;

.field private static final sPaint:Landroid/graphics/Paint;

.field private static final sQueuedGrow:Lcom/cooliris/media/Vector3f;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCurrentSlideshowCounter:I

.field private final mDrawFrame:Ljava/lang/Runnable;

.field private mFrameRect:Landroid/graphics/RectF;

.field private final mHandler:Landroid/os/Handler;

.field private mPrevTime:J

.field private mQueuedBitmap:Landroid/graphics/Bitmap;

.field private mQueuedFrameRect:Landroid/graphics/RectF;

.field private mQueuedRect:Landroid/graphics/Rect;

.field private mRect:Landroid/graphics/Rect;

.field private mSource:Lcom/cooliris/wallpaper/Slideshow$DataSource;

.field private mTimeElapsed:J

.field private mVisible:Z

.field public uriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public useUriList:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/cooliris/wallpaper/Slideshow;->sPaint:Landroid/graphics/Paint;

    .line 83
    sget-object v0, Lcom/cooliris/wallpaper/Slideshow;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 84
    sget-object v0, Lcom/cooliris/wallpaper/Slideshow;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 99
    new-instance v0, Lcom/cooliris/media/Vector3f;

    invoke-direct {v0}, Lcom/cooliris/media/Vector3f;-><init>()V

    sput-object v0, Lcom/cooliris/wallpaper/Slideshow;->sGrow:Lcom/cooliris/media/Vector3f;

    .line 107
    new-instance v0, Lcom/cooliris/media/Vector3f;

    invoke-direct {v0}, Lcom/cooliris/media/Vector3f;-><init>()V

    sput-object v0, Lcom/cooliris/wallpaper/Slideshow;->sQueuedGrow:Lcom/cooliris/media/Vector3f;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 52
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/cooliris/wallpaper/Slideshow;->useUriList:Ljava/lang/Boolean;

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cooliris/wallpaper/Slideshow;->uriList:Ljava/util/ArrayList;

    .line 73
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/cooliris/wallpaper/Slideshow;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v1, Lcom/cooliris/wallpaper/Slideshow$1;

    invoke-direct {v1, p0}, Lcom/cooliris/wallpaper/Slideshow$1;-><init>(Lcom/cooliris/wallpaper/Slideshow;)V

    iput-object v1, p0, Lcom/cooliris/wallpaper/Slideshow;->mDrawFrame:Ljava/lang/Runnable;

    .line 87
    iput-boolean v2, p0, Lcom/cooliris/wallpaper/Slideshow;->mVisible:Z

    .line 53
    invoke-virtual {p0}, Lcom/cooliris/wallpaper/Slideshow;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 54
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 55
    sput-boolean v2, Lcom/cooliris/wallpaper/Slideshow;->isPlaying:Z

    .line 56
    return-void
.end method

.method private getRectToFitBitmap(IIII)Landroid/graphics/Rect;
    .registers 13
    .parameter "bitmapWidth"
    .parameter "bitmapHeight"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x4000

    .line 255
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 256
    .local v2, rect:Landroid/graphics/Rect;
    int-to-float v4, p4

    int-to-float v5, p3

    div-float v3, v4, v5

    .line 257
    .local v3, viewAspect:F
    int-to-float v4, p1

    mul-float v1, v4, v3

    .line 258
    .local v1, newWidth:F
    int-to-float v4, p2

    cmpg-float v4, v4, v1

    if-gez v4, :cond_27

    .line 260
    int-to-float v4, p2

    div-float v1, v4, v3

    .line 261
    int-to-float v4, p1

    div-float/2addr v4, v6

    div-float v5, v1, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v5, p1

    div-float/2addr v5, v6

    div-float v6, v1, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2, v4, v7, v5, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 269
    :goto_26
    return-object v2

    .line 265
    :cond_27
    int-to-float v4, p1

    mul-float v0, v4, v3

    .line 266
    .local v0, newHeight:F
    int-to-float v4, p2

    div-float/2addr v4, v6

    div-float v5, v0, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v5, p2

    div-float/2addr v5, v6

    div-float v6, v0, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v2, v7, v4, p1, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_26
.end method

.method private getUriBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "context"
    .parameter "currentSlideshowCounter"

    .prologue
    const/4 v11, 0x0

    .line 295
    iget-object v1, p0, Lcom/cooliris/wallpaper/Slideshow;->uriList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/cooliris/wallpaper/Slideshow;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int v3, p2, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 297
    .local v7, contentAllList:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 298
    .local v12, uri:Landroid/net/Uri;
    if-nez v12, :cond_18

    .line 331
    :cond_17
    :goto_17
    return-object v11

    .line 301
    :cond_18
    const/4 v11, 0x0

    .line 303
    .local v11, retVal:Landroid/graphics/Bitmap;
    :try_start_19
    invoke-virtual {p0}, Lcom/cooliris/wallpaper/Slideshow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x400

    const/16 v3, 0x400

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/cooliris/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 307
    if-eqz v11, :cond_17

    .line 308
    const/4 v10, 0x0

    .line 310
    .local v10, orientation:I
    const/4 v8, 0x0

    .line 311
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "orientation"

    aput-object v3, v2, v1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3e} :catch_6f

    .line 315
    .local v2, projection:[Ljava/lang/String;
    :try_start_3e
    invoke-virtual {p0}, Lcom/cooliris/wallpaper/Slideshow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 316
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 317
    if-eqz v8, :cond_5b

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 318
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5a
    .catchall {:try_start_3e .. :try_end_5a} :catchall_71
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5a} :catch_65

    move-result v10

    .line 323
    :cond_5b
    if-eqz v8, :cond_60

    .line 324
    :try_start_5d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 326
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_60
    :goto_60
    invoke-static {v11, v10}, Lcom/cooliris/media/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_63} :catch_6f

    move-result-object v11

    goto :goto_17

    .line 320
    :catch_65
    move-exception v9

    .line 321
    .local v9, e:Ljava/lang/Exception;
    :try_start_66
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_71

    .line 323
    if-eqz v8, :cond_60

    .line 324
    :try_start_6b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_60

    .line 328
    .end local v2           #projection:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #orientation:I
    :catch_6f
    move-exception v1

    goto :goto_17

    .line 323
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v10       #orientation:I
    :catchall_71
    move-exception v1

    if-eqz v8, :cond_77

    .line 324
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_77
    throw v1
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_78} :catch_6f
.end method

.method private performSetup(II)V
    .registers 8
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/4 v4, 0x0

    .line 227
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_41

    .line 228
    invoke-virtual {p0}, Lcom/cooliris/wallpaper/Slideshow;->getRandomBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    .line 229
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_41

    .line 230
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/cooliris/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/cooliris/wallpaper/Slideshow;->getRectToFitBitmap(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mRect:Landroid/graphics/Rect;

    .line 232
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mFrameRect:Landroid/graphics/RectF;

    .line 233
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mFrameRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 234
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mFrameRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 235
    sget-object v0, Lcom/cooliris/wallpaper/Slideshow;->sGrow:Lcom/cooliris/media/Vector3f;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/cooliris/media/Vector3f;->set(FFF)V

    .line 238
    :cond_41
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_89

    .line 239
    invoke-virtual {p0}, Lcom/cooliris/wallpaper/Slideshow;->getRandomBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    .line 240
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_53

    .line 241
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    .line 243
    :cond_53
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_89

    .line 244
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/cooliris/wallpaper/Slideshow;->getRectToFitBitmap(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedRect:Landroid/graphics/Rect;

    .line 246
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedFrameRect:Landroid/graphics/RectF;

    .line 247
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedFrameRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 248
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedFrameRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 249
    sget-object v0, Lcom/cooliris/wallpaper/Slideshow;->sQueuedGrow:Lcom/cooliris/media/Vector3f;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/cooliris/media/Vector3f;->set(FFF)V

    .line 252
    :cond_89
    return-void
.end method

.method private performUpdate(Landroid/graphics/RectF;Lcom/cooliris/media/Vector3f;J)V
    .registers 11
    .parameter "rect"
    .parameter "grow"
    .parameter "delta"

    .prologue
    const/high16 v5, 0x3f80

    .line 216
    long-to-float v3, p3

    const/high16 v4, 0x447a

    div-float v2, v3, v4

    .line 217
    .local v2, timeElapsed:F
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x4170

    div-float/2addr v3, v4

    mul-float v0, v2, v3

    .line 218
    .local v0, amountToGrowX:F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    mul-float v1, v0, v3

    .line 219
    .local v1, amountToGrowY:F
    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p2, Lcom/cooliris/media/Vector3f;->x:F

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->top:F

    .line 220
    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p2, Lcom/cooliris/media/Vector3f;->y:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->left:F

    .line 222
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p2, Lcom/cooliris/media/Vector3f;->x:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 223
    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p2, Lcom/cooliris/media/Vector3f;->y:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p1, Landroid/graphics/RectF;->right:F

    .line 224
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "arg0"

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/cooliris/wallpaper/Slideshow;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    monitor-enter v1

    .line 337
    :try_start_5
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 338
    monitor-exit v1

    .line 339
    const/4 v0, 0x1

    return v0

    .line 338
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public drawFrame()V
    .registers 18

    .prologue
    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/wallpaper/Slideshow;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    .line 150
    .local v7, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v7}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v6

    .line 151
    .local v6, frame:Landroid/graphics/Rect;
    sget-object v10, Lcom/cooliris/wallpaper/Slideshow;->sPaint:Landroid/graphics/Paint;

    .line 152
    .local v10, paint:Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 154
    .local v2, c:Landroid/graphics/Canvas;
    :try_start_b
    invoke-interface {v7}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    .line 155
    if-eqz v2, :cond_e6

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 157
    .local v8, now:J
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mPrevTime:J

    sub-long v4, v8, v13

    .line 158
    .local v4, delta:J
    const-wide/16 v13, 0x32

    cmp-long v13, v4, v13

    if-lez v13, :cond_23

    .line 159
    const-wide/16 v4, 0x32

    .line 160
    :cond_23
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mTimeElapsed:J

    add-long/2addr v13, v4

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mTimeElapsed:J

    .line 161
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/cooliris/wallpaper/Slideshow;->mPrevTime:J

    .line 162
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/cooliris/wallpaper/Slideshow;->performSetup(II)V

    .line 164
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_e6

    .line 165
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mTimeElapsed:J

    const-wide/16 v15, 0x7d0

    cmp-long v13, v13, v15

    if-lez v13, :cond_10a

    .line 166
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mTimeElapsed:J

    const-wide/16 v15, 0x7d0

    sub-long/2addr v13, v15

    long-to-float v13, v13

    const/high16 v14, 0x44fa

    div-float v1, v13, v14

    .line 167
    .local v1, alpha:F
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/wallpaper/Slideshow;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cooliris/wallpaper/Slideshow;->mFrameRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v13, v14, v15, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 176
    const/high16 v13, 0x3f80

    cmpg-float v13, v1, v13

    if-gez v13, :cond_87

    .line 177
    const/high16 v13, 0x437f

    mul-float/2addr v13, v1

    float-to-int v12, v13

    .line 178
    .local v12, val:I
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    .line 179
    .local v11, srcColor:I
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v11, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 181
    .local v3, colorFilter:Landroid/graphics/PorterDuffColorFilter;
    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 184
    .end local v3           #colorFilter:Landroid/graphics/PorterDuffColorFilter;
    .end local v11           #srcColor:I
    .end local v12           #val:I
    :cond_87
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedFrameRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v13, v14, v15, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedFrameRect:Landroid/graphics/RectF;

    sget-object v14, Lcom/cooliris/wallpaper/Slideshow;->sQueuedGrow:Lcom/cooliris/media/Vector3f;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v4, v5}, Lcom/cooliris/wallpaper/Slideshow;->performUpdate(Landroid/graphics/RectF;Lcom/cooliris/media/Vector3f;J)V

    .line 186
    const/high16 v13, 0x3f80

    cmpl-float v13, v1, v13

    if-ltz v13, :cond_db

    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mRect:Landroid/graphics/Rect;

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    .line 190
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedFrameRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mFrameRect:Landroid/graphics/RectF;

    .line 191
    sget-object v13, Lcom/cooliris/wallpaper/Slideshow;->sGrow:Lcom/cooliris/media/Vector3f;

    sget-object v14, Lcom/cooliris/wallpaper/Slideshow;->sQueuedGrow:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v13, v14}, Lcom/cooliris/media/Vector3f;->set(Lcom/cooliris/media/Vector3f;)V

    .line 192
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    .line 193
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedRect:Landroid/graphics/Rect;

    .line 194
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedFrameRect:Landroid/graphics/RectF;

    .line 195
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mTimeElapsed:J

    .line 201
    .end local v1           #alpha:F
    :cond_db
    :goto_db
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mFrameRect:Landroid/graphics/RectF;

    sget-object v14, Lcom/cooliris/wallpaper/Slideshow;->sGrow:Lcom/cooliris/media/Vector3f;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v4, v5}, Lcom/cooliris/wallpaper/Slideshow;->performUpdate(Landroid/graphics/RectF;Lcom/cooliris/media/Vector3f;J)V
    :try_end_e6
    .catchall {:try_start_b .. :try_end_e6} :catchall_11e

    .line 206
    .end local v4           #delta:J
    .end local v8           #now:J
    :cond_e6
    if-eqz v2, :cond_eb

    .line 207
    invoke-interface {v7, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 209
    :cond_eb
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/wallpaper/Slideshow;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mVisible:Z

    if-eqz v13, :cond_109

    .line 211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/wallpaper/Slideshow;->mDrawFrame:Ljava/lang/Runnable;

    const-wide/16 v15, 0x14

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    :cond_109
    return-void

    .line 198
    .restart local v4       #delta:J
    .restart local v8       #now:J
    :cond_10a
    const/4 v13, 0x0

    :try_start_10b
    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 199
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/cooliris/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/wallpaper/Slideshow;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cooliris/wallpaper/Slideshow;->mFrameRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v13, v14, v15, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_11d
    .catchall {:try_start_10b .. :try_end_11d} :catchall_11e

    goto :goto_db

    .line 206
    .end local v4           #delta:J
    .end local v8           #now:J
    :catchall_11e
    move-exception v13

    if-eqz v2, :cond_124

    .line 207
    invoke-interface {v7, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_124
    throw v13
.end method

.method public getRandomBitmap()Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 274
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->useUriList:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 275
    invoke-virtual {p0}, Lcom/cooliris/wallpaper/Slideshow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/cooliris/wallpaper/Slideshow;->mCurrentSlideshowCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/cooliris/wallpaper/Slideshow;->mCurrentSlideshowCounter:I

    invoke-direct {p0, v0, v1}, Lcom/cooliris/wallpaper/Slideshow;->getUriBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
    :goto_16
    return-object v0

    .line 277
    :cond_17
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mSource:Lcom/cooliris/wallpaper/Slideshow$DataSource;

    if-eqz v0, :cond_2c

    .line 278
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mSource:Lcom/cooliris/wallpaper/Slideshow$DataSource;

    invoke-virtual {p0}, Lcom/cooliris/wallpaper/Slideshow;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/cooliris/wallpaper/Slideshow;->mCurrentSlideshowCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/cooliris/wallpaper/Slideshow;->mCurrentSlideshowCounter:I

    invoke-interface {v0, v1, v2}, Lcom/cooliris/wallpaper/Slideshow$DataSource;->getBitmapForIndex(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_16

    .line 281
    :cond_2c
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public setDataSource(Lcom/cooliris/wallpaper/Slideshow$DataSource;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/cooliris/wallpaper/Slideshow;->mSource:Lcom/cooliris/wallpaper/Slideshow$DataSource;

    .line 117
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cooliris/wallpaper/Slideshow;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_27

    .line 122
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/cooliris/wallpaper/Slideshow;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/cooliris/wallpaper/Slideshow;->getRectToFitBitmap(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mRect:Landroid/graphics/Rect;

    .line 123
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mFrameRect:Landroid/graphics/RectF;

    int-to-float v1, p3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 124
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mFrameRect:Landroid/graphics/RectF;

    int-to-float v1, p4

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 126
    :cond_27
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_47

    .line 127
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/cooliris/wallpaper/Slideshow;->getRectToFitBitmap(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedRect:Landroid/graphics/Rect;

    .line 129
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedFrameRect:Landroid/graphics/RectF;

    int-to-float v1, p3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 130
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mQueuedFrameRect:Landroid/graphics/RectF;

    int-to-float v1, p4

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 132
    :cond_47
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mVisible:Z

    .line 138
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cooliris/wallpaper/Slideshow;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mVisible:Z

    .line 143
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 144
    iget-object v0, p0, Lcom/cooliris/wallpaper/Slideshow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cooliris/wallpaper/Slideshow;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    :cond_e
    return-void
.end method
