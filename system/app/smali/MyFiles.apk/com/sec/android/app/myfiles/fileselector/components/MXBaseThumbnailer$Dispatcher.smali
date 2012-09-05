.class Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;
.super Ljava/lang/Thread;
.source "MXBaseThumbnailer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Dispatcher"
.end annotation


# instance fields
.field loopingFlag:Z

.field queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field queueClearFlag:Z

.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;)V
    .registers 3
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queueClearFlag:Z

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->loopingFlag:Z

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queue:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clearQueue()V
    .registers 3

    .prologue
    .line 255
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 256
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queueClearFlag:Z

    .line 257
    monitor-exit v1

    .line 258
    return-void

    .line 257
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public put(Ljava/lang/String;)V
    .registers 4
    .parameter "path"

    .prologue
    .line 237
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 238
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queueClearFlag:Z

    .line 241
    monitor-exit v1

    .line 242
    return-void

    .line 241
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public run()V
    .registers 10

    .prologue
    .line 262
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 264
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v5, 0x8

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 266
    :goto_9
    iget-boolean v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->loopingFlag:Z

    if-eqz v5, :cond_83

    .line 268
    iget-object v6, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queue:Ljava/util/ArrayList;

    monitor-enter v6

    .line 269
    :try_start_10
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_78

    .line 277
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queue:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 279
    .local v4, path:Ljava/lang/String;
    if-eqz v4, :cond_70

    .line 280
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->getThumbnailBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 332
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    iget-object v5, v5, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mBitmapCache:Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;

    invoke-virtual {v5, v4, v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXAgedMap;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/Object;

    .line 334
    if-nez v0, :cond_4f

    .line 335
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    iget-object v5, v5, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mBrokenCache:Ljava/util/HashMap;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .end local v0           #b:Landroid/graphics/Bitmap;
    :goto_3e
    iget-boolean v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queueClearFlag:Z

    if-eqz v5, :cond_4a

    .line 353
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 354
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queueClearFlag:Z

    .line 364
    .end local v4           #path:Ljava/lang/String;
    :cond_4a
    :goto_4a
    monitor-exit v6

    goto :goto_9

    :catchall_4c
    move-exception v5

    monitor-exit v6
    :try_end_4e
    .catchall {:try_start_10 .. :try_end_4e} :catchall_4c

    throw v5

    .line 337
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v4       #path:Ljava/lang/String;
    :cond_4f
    :try_start_4f
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mThumbnailDispatchedListener:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer$OnThumbnailDispatchedListener;
    invoke-static {v5}, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->access$000(Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;)Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer$OnThumbnailDispatchedListener;

    move-result-object v5

    if-eqz v5, :cond_65

    iget-boolean v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queueClearFlag:Z

    if-nez v5, :cond_65

    .line 338
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->this$0:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->mThumbnailDispatchedListener:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer$OnThumbnailDispatchedListener;
    invoke-static {v5}, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->access$000(Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;)Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer$OnThumbnailDispatchedListener;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer$OnThumbnailDispatchedListener;->onThumbnailDispatched(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_64
    .catchall {:try_start_4f .. :try_end_64} :catchall_4c

    goto :goto_3e

    .line 342
    :cond_65
    const-wide/16 v7, 0x64

    :try_start_67
    invoke-static {v7, v8}, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->sleep(J)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_4c
    .catch Ljava/lang/InterruptedException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_3e

    .line 343
    :catch_6b
    move-exception v1

    .line 344
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_6c
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3e

    .line 349
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_70
    const-string v5, "MXBaseThumbnailer"

    const-string v7, "Dispatcher - path is null"

    invoke-static {v5, v7}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_4c

    goto :goto_3e

    .line 359
    .end local v4           #path:Ljava/lang/String;
    :cond_78
    :try_start_78
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_4c
    .catch Ljava/lang/InterruptedException; {:try_start_78 .. :try_end_7d} :catch_7e

    goto :goto_4a

    .line 360
    :catch_7e
    move-exception v2

    .line 361
    .local v2, ex:Ljava/lang/InterruptedException;
    :try_start_7f
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_4c

    goto :goto_4a

    .line 366
    .end local v2           #ex:Ljava/lang/InterruptedException;
    :cond_83
    iget-object v6, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queue:Ljava/util/ArrayList;

    monitor-enter v6

    .line 367
    :try_start_86
    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 368
    monitor-exit v6

    .line 369
    return-void

    .line 368
    :catchall_8d
    move-exception v5

    monitor-exit v6
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_8d

    throw v5
.end method

.method public stopLooper()V
    .registers 3

    .prologue
    .line 246
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 247
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->loopingFlag:Z

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer$Dispatcher;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 250
    :cond_13
    monitor-exit v1

    .line 252
    return-void

    .line 250
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_15

    throw v0
.end method
