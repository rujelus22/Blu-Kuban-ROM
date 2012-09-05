.class Lcom/sec/android/app/myfiles/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;,
        Lcom/sec/android/app/myfiles/ImageLoader$LoadedCallback;
    }
.end annotation


# instance fields
.field private mDecodeThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mInProgress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mShapeId:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;I)V
    .registers 4
    .parameter "handler"
    .parameter "shapeId"

    .prologue
    .line 182
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mQueue:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mInProgress:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    .line 183
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mHandler:Landroid/os/Handler;

    .line 184
    iput p2, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mShapeId:I

    .line 185
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ImageLoader;->start()V

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/ImageLoader;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mDone:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/ImageLoader;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/myfiles/ImageLoader;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mInProgress:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/myfiles/ImageLoader;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mShapeId:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/myfiles/ImageLoader;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized start()V
    .registers 6

    .prologue
    .line 190
    monitor-enter p0

    :try_start_1
    const-string v3, "[MyFiles]"

    const-string v4, "ImageLoader.start() <<<<<<<<<<<<<<<<<<<<<<<<<<<<"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_46

    .line 193
    :try_start_b
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    .line 194
    monitor-exit v4
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_43

    .line 292
    :goto_14
    monitor-exit p0

    return-void

    .line 196
    :cond_16
    const/4 v3, 0x0

    :try_start_17
    iput-boolean v3, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mDone:Z

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, i:I
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/myfiles/ImageLoader$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/myfiles/ImageLoader$1;-><init>(Lcom/sec/android/app/myfiles/ImageLoader;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 284
    .local v2, t:Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, "image-loader-"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, strBuf:Ljava/lang/StringBuffer;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 286
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 287
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 288
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 291
    monitor-exit v4

    goto :goto_14

    .end local v0           #i:I
    .end local v1           #strBuf:Ljava/lang/StringBuffer;
    .end local v2           #t:Ljava/lang/Thread;
    :catchall_43
    move-exception v3

    monitor-exit v4
    :try_end_45
    .catchall {:try_start_17 .. :try_end_45} :catchall_43

    :try_start_45
    throw v3
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    .line 190
    :catchall_46
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public getBitmap(Lcom/sec/android/app/myfiles/SimpleIcon;ILcom/sec/android/app/myfiles/ImageLoader$LoadedCallback;ZZ)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "image"
    .parameter "tag"
    .parameter "imageLoadedRunnable"
    .parameter "postAtFront"
    .parameter "postBack"

    .prologue
    .line 98
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    monitor-enter v2

    .line 99
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 100
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/ImageLoader;->start()V

    .line 102
    :cond_e
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3c

    .line 105
    iget-object v7, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mQueue:Ljava/util/ArrayList;

    monitor-enter v7

    .line 107
    :try_start_12
    new-instance v0, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;-><init>(Lcom/sec/android/app/myfiles/ImageLoader;Lcom/sec/android/app/myfiles/SimpleIcon;ILcom/sec/android/app/myfiles/ImageLoader$LoadedCallback;Z)V

    .line 109
    .local v0, w:Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mInProgress:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 111
    .local v6, contains:Z
    if-eqz v6, :cond_3f

    .line 112
    if-eqz p4, :cond_39

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 128
    .end local v6           #contains:Z
    :cond_39
    :goto_39
    monitor-exit v7
    :try_end_3a
    .catchall {:try_start_12 .. :try_end_3a} :catchall_4d

    .line 133
    const/4 v1, 0x0

    return-object v1

    .line 102
    .end local v0           #w:Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1

    .line 118
    .restart local v0       #w:Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;
    .restart local v6       #contains:Z
    :cond_3f
    if-eqz p4, :cond_50

    .line 119
    :try_start_41
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 122
    :goto_47
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_39

    .line 128
    .end local v0           #w:Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;
    .end local v6           #contains:Z
    :catchall_4d
    move-exception v1

    monitor-exit v7
    :try_end_4f
    .catchall {:try_start_41 .. :try_end_4f} :catchall_4d

    throw v1

    .line 121
    .restart local v0       #w:Lcom/sec/android/app/myfiles/ImageLoader$WorkItem;
    .restart local v6       #contains:Z
    :cond_50
    :try_start_50
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_4d

    goto :goto_47
.end method

.method public stop()V
    .registers 7

    .prologue
    .line 296
    const-string v2, "[MyFiles]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageLoader.stop "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " threads"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v3, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    monitor-enter v3

    .line 298
    const/4 v2, 0x1

    :try_start_28
    iput-boolean v2, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mDone:Z

    .line 299
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mQueue:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_77

    .line 300
    :try_start_2d
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 301
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_7a

    .line 302
    :goto_33
    :try_start_33
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7d

    .line 303
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_77

    .line 305
    .local v1, t:Ljava/lang/Thread;
    :try_start_44
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 306
    iget-object v2, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_77
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_4d} :catch_4e

    goto :goto_33

    .line 307
    :catch_4e
    move-exception v0

    .line 309
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_4f
    const-string v2, "[MyFiles]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageLoader.stop InterruptedException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/myfiles/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " threads"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_33

    .line 314
    .end local v0           #ex:Ljava/lang/InterruptedException;
    .end local v1           #t:Ljava/lang/Thread;
    :catchall_77
    move-exception v2

    monitor-exit v3
    :try_end_79
    .catchall {:try_start_4f .. :try_end_79} :catchall_77

    throw v2

    .line 301
    :catchall_7a
    move-exception v2

    :try_start_7b
    monitor-exit v4
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    :try_start_7c
    throw v2

    .line 314
    :cond_7d
    monitor-exit v3
    :try_end_7e
    .catchall {:try_start_7c .. :try_end_7e} :catchall_77

    .line 315
    return-void
.end method
