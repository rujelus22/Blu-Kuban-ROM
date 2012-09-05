.class public Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;
.super Ljava/lang/Thread;
.source "VideoImageThumbFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;,
        Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;
    }
.end annotation


# static fields
.field private static final DEFAULT_THUMBNAIL_HEIGHT:I = 0x90

.field private static final DEFAULT_THUMBNAIL_WIDTH:I = 0xb0

.field private static _instance:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;


# instance fields
.field private mJobList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTerminate:Z

.field private mTerminateGC:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->mTerminateGC:Z

    .line 26
    return-void
.end method

.method private createBitmapFromExif(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 26
    .parameter "aFilePath"

    .prologue
    .line 114
    const/16 v21, 0x0

    check-cast v21, [B

    .line 115
    .local v21, thumbnail:[B
    const/16 v18, 0x0

    .line 116
    .local v18, lBitmap:Landroid/graphics/Bitmap;
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->getExifthumbnail(Ljava/lang/String;)[B

    move-result-object v21

    .line 120
    if-eqz v21, :cond_ab

    .line 122
    const/4 v3, 0x0

    :try_start_d
    move-object/from16 v0, v21

    array-length v4, v0

    move-object/from16 v0, v21

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 130
    :goto_16
    if-eqz v18, :cond_d8

    .line 132
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .line 133
    .local v22, width:I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 135
    .local v17, height:I
    div-int/lit8 v15, v22, 0x2

    .line 136
    .local v15, focusX:I
    div-int/lit8 v16, v17, 0x2

    .line 143
    .local v16, focusY:I
    move/from16 v0, v17

    mul-int/lit16 v3, v0, 0xb0

    move/from16 v0, v22

    mul-int/lit16 v4, v0, 0x90

    if-ge v3, v4, :cond_b1

    .line 145
    move/from16 v0, v17

    mul-int/lit16 v3, v0, 0xb0

    div-int/lit16 v11, v3, 0x90

    .line 146
    .local v11, cropWidth:I
    const/4 v3, 0x0

    div-int/lit8 v4, v11, 0x2

    sub-int v4, v15, v4

    sub-int v5, v22, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 147
    .local v12, cropX:I
    const/4 v13, 0x0

    .line 148
    .local v13, cropY:I
    move/from16 v10, v17

    .line 149
    .local v10, cropHeight:I
    const/high16 v3, 0x4330

    move/from16 v0, v17

    int-to-float v4, v0

    div-float v20, v3, v4

    .line 158
    .local v20, scaleFactor:F
    :goto_4d
    const-string v3, "Before creating final bitmap"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 160
    const/16 v3, 0xb0

    const/16 v4, 0x90

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 161
    .local v2, finalBitmap:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 162
    .local v9, canvas:Landroid/graphics/Canvas;
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 163
    .local v19, paint:Landroid/graphics/Paint;
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 164
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 166
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v12, v11

    add-int v5, v13, v10

    invoke-direct {v3, v12, v13, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xb0

    .line 167
    const/16 v23, 0x90

    move/from16 v0, v23

    invoke-direct {v4, v5, v6, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 166
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 168
    const-string v3, "After creating final bitmap and recycling"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 173
    .local v7, mtx:Landroid/graphics/Matrix;
    const/high16 v3, 0x42b4

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 175
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xb0

    const/16 v6, 0x90

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 185
    .end local v2           #finalBitmap:Landroid/graphics/Bitmap;
    .end local v7           #mtx:Landroid/graphics/Matrix;
    .end local v9           #canvas:Landroid/graphics/Canvas;
    .end local v10           #cropHeight:I
    .end local v11           #cropWidth:I
    .end local v12           #cropX:I
    .end local v13           #cropY:I
    .end local v15           #focusX:I
    .end local v16           #focusY:I
    .end local v17           #height:I
    .end local v19           #paint:Landroid/graphics/Paint;
    .end local v20           #scaleFactor:F
    .end local v22           #width:I
    :goto_aa
    return-object v3

    .line 127
    :cond_ab
    invoke-static/range {p1 .. p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    goto/16 :goto_16

    .line 152
    .restart local v15       #focusX:I
    .restart local v16       #focusY:I
    .restart local v17       #height:I
    .restart local v22       #width:I
    :cond_b1
    move/from16 v0, v22

    mul-int/lit16 v3, v0, 0x90

    div-int/lit16 v10, v3, 0xb0

    .line 153
    .restart local v10       #cropHeight:I
    const/4 v3, 0x0

    div-int/lit8 v4, v10, 0x2

    sub-int v4, v16, v4

    sub-int v5, v17, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
    :try_end_c5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_c5} :catch_d2

    move-result v13

    .line 154
    .restart local v13       #cropY:I
    const/4 v12, 0x0

    .line 155
    .restart local v12       #cropX:I
    move/from16 v11, v22

    .line 156
    .restart local v11       #cropWidth:I
    const/high16 v3, 0x4330

    move/from16 v0, v22

    int-to-float v4, v0

    div-float v20, v3, v4

    .restart local v20       #scaleFactor:F
    goto/16 :goto_4d

    .line 182
    .end local v10           #cropHeight:I
    .end local v11           #cropWidth:I
    .end local v12           #cropX:I
    .end local v13           #cropY:I
    .end local v15           #focusX:I
    .end local v16           #focusY:I
    .end local v17           #height:I
    .end local v20           #scaleFactor:F
    .end local v22           #width:I
    :catch_d2
    move-exception v14

    .line 183
    .local v14, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "Got Outofmemory error while creating Bitmap"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .end local v14           #e:Ljava/lang/OutOfMemoryError;
    :cond_d8
    move-object/from16 v3, v18

    .line 185
    goto :goto_aa
.end method

.method public static getExifthumbnail(Ljava/lang/String;)[B
    .registers 6
    .parameter "filepath"

    .prologue
    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, exif:Landroid/media/ExifInterface;
    if-eqz p0, :cond_2a

    .line 192
    :try_start_3
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_16

    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v2, exif:Landroid/media/ExifInterface;
    move-object v1, v2

    .line 196
    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    :goto_9
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 199
    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v3

    .line 204
    :goto_15
    return-object v3

    .line 193
    :catch_16
    move-exception v0

    .line 194
    .local v0, ex:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cannot read exif"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 204
    .end local v0           #ex:Ljava/io/IOException;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_15
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;
    .registers 2

    .prologue
    .line 40
    const-class v1, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;

    if-nez v0, :cond_e

    .line 41
    new-instance v0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;

    invoke-direct {v0}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;

    .line 42
    :cond_e
    sget-object v0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addOperation(Ljava/lang/String;IJLandroid/view/View;Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;)V
    .registers 16
    .parameter "filePath"
    .parameter "aPosition"
    .parameter "aId"
    .parameter "targetView"
    .parameter "callback"

    .prologue
    .line 72
    iget-object v8, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->mJobList:Ljava/util/Vector;

    new-instance v0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;-><init>(Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;Ljava/lang/String;IJLandroid/view/View;Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;)V

    invoke-virtual {v8, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v1, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;

    monitor-enter v1

    .line 75
    :try_start_13
    sget-object v0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 74
    monitor-exit v1

    .line 77
    return-void

    .line 74
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public init()V
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->mJobList:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->mJobList:Ljava/util/Vector;

    .line 52
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->isAlive()Z

    move-result v0

    if-nez v0, :cond_14

    .line 53
    invoke-virtual {p0}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->start()V

    .line 54
    :cond_14
    return-void
.end method

.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 80
    :goto_1
    iget-boolean v3, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->mTerminate:Z

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->mJobList:Ljava/util/Vector;

    if-nez v3, :cond_60

    .line 109
    :cond_9
    const-string v3, " ~~~~~~~~ ThumbnailFetcher thread is terminated ~~~~~~~~~"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 110
    return-void

    .line 83
    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->mJobList:Ljava/util/Vector;

    invoke-virtual {v3, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;

    .line 84
    .local v1, info:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;
    #getter for: Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->callback:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;
    invoke-static {v1}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->access$0(Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;)Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->targetView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->access$1(Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;)Landroid/view/View;

    move-result-object v4

    #getter for: Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->position:I
    invoke-static {v1}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->access$2(Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;)I

    move-result v5

    #getter for: Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->filePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->access$3(Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;->isTargetViewExist(Landroid/view/View;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 87
    :try_start_2d
    #getter for: Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->filePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->access$3(Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/ve/util/Utils;->getImageBitmap(Ljava/lang/String;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 89
    .local v2, lBitmap:Landroid/graphics/Bitmap;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bitmap in Fetcher thread -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 90
    #getter for: Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->callback:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;
    invoke-static {v1}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->access$0(Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;)Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;

    move-result-object v3

    #getter for: Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->targetView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->access$1(Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;)Landroid/view/View;

    move-result-object v4

    #getter for: Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->filePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;->access$3(Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v2, v5}, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$VideoImageThumbnaiFetcherCallbak;->bitmapCreated(Landroid/view/View;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_5b} :catch_7a

    .line 97
    .end local v2           #lBitmap:Landroid/graphics/Bitmap;
    :cond_5b
    :goto_5b
    iget-object v3, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->mJobList:Ljava/util/Vector;

    invoke-virtual {v3, v7}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 81
    .end local v1           #info:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;
    :cond_60
    iget-object v3, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->mJobList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_f

    .line 99
    const-string v3, " ~~~~~~~~ ThumbnailFetcher thread is waiting for the job ~~~~~~~~~"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 100
    sget-object v4, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;

    monitor-enter v4

    .line 102
    :try_start_70
    sget-object v3, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_75
    .catchall {:try_start_70 .. :try_end_75} :catchall_77
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_75} :catch_7f

    .line 100
    :goto_75
    :try_start_75
    monitor-exit v4

    goto :goto_1

    :catchall_77
    move-exception v3

    monitor-exit v4
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_77

    throw v3

    .line 91
    .restart local v1       #info:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;
    :catch_7a
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5b

    .line 103
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #info:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher$FetcherInfo;
    :catch_7f
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_80
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_77

    goto :goto_75
.end method

.method public terminate()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->mJobList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 61
    iput-boolean v1, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->mTerminate:Z

    .line 62
    iput-boolean v1, p0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->mTerminateGC:Z

    .line 63
    sget-object v1, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;

    monitor-enter v1

    .line 64
    :try_start_d
    sget-object v0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 63
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/VideoImageThumbFetcher;

    .line 68
    return-void

    .line 63
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method
