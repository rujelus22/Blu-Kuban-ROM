.class public Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;
.super Ljava/lang/Thread;
.source "DrawingBitmapFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;,
        Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawingThumbnaiFetcherCallbak;
    }
.end annotation


# static fields
.field private static final DRAWING_BITMAP_MAP_SIZE:I = 0x5

.field private static _instance:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

.field public static mDrawingBitmaps:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private pendingJob:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;

.field private terminate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->_instance:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->mDrawingBitmaps:Ljava/util/LinkedHashMap;

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 38
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;
    .registers 2

    .prologue
    .line 41
    const-class v1, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->_instance:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    if-nez v0, :cond_e

    .line 42
    new-instance v0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    invoke-direct {v0}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->_instance:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    .line 43
    :cond_e
    sget-object v0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->_instance:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private insertBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "aFilString"
    .parameter "aBitmap"

    .prologue
    .line 206
    sget-object v1, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->mDrawingBitmaps:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 207
    :try_start_3
    sget-object v0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->mDrawingBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_f

    .line 209
    invoke-direct {p0}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->removeFirstElement()V

    .line 212
    :cond_f
    sget-object v0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->mDrawingBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    monitor-exit v1

    .line 215
    return-void

    .line 206
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private removeFirstElement()V
    .registers 7

    .prologue
    .line 219
    sget-object v4, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->mDrawingBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 221
    .local v2, lKeySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 222
    .local v3, lKeys:[Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 223
    const/4 v4, 0x0

    aget-object v1, v3, v4

    .line 225
    .local v1, lFirst:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DrawingBitmapFetcher :: removing the first element"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 227
    sget-object v4, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->mDrawingBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 228
    .local v0, lBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_31

    .line 229
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 231
    :cond_31
    sget-object v4, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->mDrawingBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void
.end method


# virtual methods
.method public init()V
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->isAlive()Z

    move-result v0

    if-nez v0, :cond_d

    .line 48
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->setPriority(I)V

    .line 49
    invoke-virtual {p0}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->start()V

    .line 51
    :cond_d
    return-void
.end method

.method public refersh()V
    .registers 3

    .prologue
    .line 54
    sget-object v1, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->_instance:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    monitor-enter v1

    .line 55
    :try_start_3
    sget-object v0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->_instance:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 54
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 57
    const-string v0, "DrawingBitmapFetcher.."

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 58
    return-void

    .line 54
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 78
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->terminate:Z

    if-eqz v2, :cond_5

    .line 102
    return-void

    .line 79
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->pendingJob:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;

    .line 80
    .local v1, onGoingJob:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;
    if-eqz v1, :cond_c

    .line 84
    :try_start_9
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->showClipArtParam(Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_26

    .line 91
    :cond_c
    :goto_c
    sget-object v2, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->_instance:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->pendingJob:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;

    if-ne v1, v2, :cond_0

    .line 92
    sget-object v3, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->_instance:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    monitor-enter v3

    .line 94
    :try_start_17
    const-string v2, "DrawingBitmapFetcher..waiting"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 95
    sget-object v2, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->_instance:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_23
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_21} :catch_2b

    .line 92
    :goto_21
    :try_start_21
    monitor-exit v3

    goto :goto_0

    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_23

    throw v2

    .line 86
    :catch_26
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 96
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2b
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2c
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_23

    goto :goto_21
.end method

.method public setOperation(Lcom/samsung/app/video/editor/external/Element;Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawingThumbnaiFetcherCallbak;F)V
    .registers 6
    .parameter "firstElement"
    .parameter "aCallback"
    .parameter "atime"

    .prologue
    .line 70
    new-instance v0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;-><init>(Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;Lcom/samsung/app/video/editor/external/Element;Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawingThumbnaiFetcherCallbak;F)V

    iput-object v0, p0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->pendingJob:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;

    .line 72
    sget-object v1, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->_instance:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    monitor-enter v1

    .line 73
    :try_start_a
    sget-object v0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->_instance:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 72
    monitor-exit v1

    .line 75
    return-void

    .line 72
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v0
.end method

.method public showClipArtParam(Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;)V
    .registers 15
    .parameter "aJob"

    .prologue
    const/4 v11, 0x0

    .line 107
    const/4 v5, 0x0

    .line 109
    .local v5, mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    #getter for: Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;->firstElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {p1}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;->access$0(Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v6

    .line 112
    .local v6, mCurrentElement:Lcom/samsung/app/video/editor/external/Element;
    #getter for: Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;->currentstorytime:F
    invoke-static {p1}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;->access$1(Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;)F

    move-result v0

    .line 113
    .local v0, CurrentStory_time:F
    if-eqz v6, :cond_19

    .line 115
    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getDrawingEleList()Ljava/util/List;

    move-result-object v7

    .line 116
    .local v7, mDrawingEleList:Ljava/util/List;
    if-eqz v7, :cond_19

    .line 120
    const/4 v2, 0x0

    .local v2, k:I
    :goto_13
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lt v2, v9, :cond_1a

    .line 201
    .end local v2           #k:I
    .end local v7           #mDrawingEleList:Ljava/util/List;
    :cond_19
    :goto_19
    return-void

    .line 122
    .restart local v2       #k:I
    .restart local v7       #mDrawingEleList:Ljava/util/List;
    :cond_1a
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    check-cast v5, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 125
    .restart local v5       #mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;
    const/4 v8, 0x0

    .line 126
    .local v8, startTime:F
    const/4 v1, 0x0

    .line 127
    .local v1, endTime:F
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8a

    .line 129
    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v8

    .line 130
    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v9

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v10

    sub-float v1, v9, v10

    .line 162
    :cond_3b
    :goto_3b
    cmpl-float v9, v0, v8

    if-ltz v9, :cond_96

    .line 163
    cmpg-float v9, v0, v1

    if-gtz v9, :cond_96

    .line 165
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, v5, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, lClipPath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 169
    .local v3, lBitmap:Landroid/graphics/Bitmap;
    sget-object v9, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->mDrawingBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e0

    .line 172
    sget-object v9, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->mDrawingBitmaps:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #lBitmap:Landroid/graphics/Bitmap;
    check-cast v3, Landroid/graphics/Bitmap;

    .line 183
    .restart local v3       #lBitmap:Landroid/graphics/Bitmap;
    :cond_69
    :goto_69
    #getter for: Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;->callback:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawingThumbnaiFetcherCallbak;
    invoke-static {p1}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;->access$2(Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;)Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawingThumbnaiFetcherCallbak;

    move-result-object v9

    #getter for: Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;->firstElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {p1}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;->access$0(Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawinJob;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, v5, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v3, v11}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher$DrawingThumbnaiFetcherCallbak;->bitmapCreated(Lcom/samsung/app/video/editor/external/Element;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_19

    .line 135
    .end local v3           #lBitmap:Landroid/graphics/Bitmap;
    .end local v4           #lClipPath:Ljava/lang/String;
    :cond_8a
    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v9

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_9a

    .line 120
    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_13

    .line 138
    :cond_9a
    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v9

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v10

    cmpl-float v9, v9, v10

    if-gez v9, :cond_96

    .line 142
    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v9

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v10

    sub-float v8, v9, v10

    .line 143
    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v9

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v10

    sub-float v1, v9, v10

    .line 145
    cmpg-float v9, v8, v11

    if-gtz v9, :cond_c2

    cmpg-float v9, v1, v11

    if-lez v9, :cond_96

    .line 148
    :cond_c2
    cmpg-float v9, v8, v11

    if-gez v9, :cond_c7

    .line 149
    const/4 v8, 0x0

    .line 152
    :cond_c7
    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v9

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v10

    sub-float/2addr v9, v10

    cmpl-float v9, v1, v9

    if-lez v9, :cond_3b

    .line 153
    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v9

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v10

    sub-float v1, v9, v10

    goto/16 :goto_3b

    .line 178
    .restart local v3       #lBitmap:Landroid/graphics/Bitmap;
    .restart local v4       #lClipPath:Ljava/lang/String;
    :cond_e0
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, v5, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 179
    if-eqz v3, :cond_69

    .line 180
    invoke-direct {p0, v4, v3}, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->insertBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_69
.end method

.method public terminate()V
    .registers 3

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->terminate:Z

    .line 62
    sget-object v1, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->_instance:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    monitor-enter v1

    .line 63
    :try_start_6
    sget-object v0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->_instance:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 62
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_15

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;->_instance:Lcom/sec/android/app/ve/thread/DrawingBitmapFetcher;

    .line 66
    const-string v0, "DrawingBitmapFetcher Thread terminated"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 67
    return-void

    .line 62
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method
