.class public Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;
.super Ljava/lang/Thread;
.source "AlbumArtThumbFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;,
        Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_THUMBNAIL_HEIGHT:I = 0x90

.field private static final DEFAULT_THUMBNAIL_WIDTH:I = 0xb0

.field private static _instance:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;


# instance fields
.field private mJobList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;",
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
    .line 29
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->mTerminateGC:Z

    .line 29
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;
    .registers 2

    .prologue
    .line 43
    const-class v1, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;

    if-nez v0, :cond_e

    .line 44
    new-instance v0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;

    invoke-direct {v0}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;

    .line 45
    :cond_e
    sget-object v0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addOperation(Ljava/lang/String;ILandroid/view/View;Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;)V
    .registers 12
    .parameter "filePath"
    .parameter "aPosition"
    .parameter "targetView"
    .parameter "callback"

    .prologue
    .line 75
    iget-object v6, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->mJobList:Ljava/util/Vector;

    new-instance v0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;-><init>(Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;Ljava/lang/String;ILandroid/view/View;Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v1, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;

    monitor-enter v1

    .line 78
    :try_start_12
    sget-object v0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 77
    monitor-exit v1

    .line 80
    return-void

    .line 77
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public init()V
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->mJobList:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->mJobList:Ljava/util/Vector;

    .line 55
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->isAlive()Z

    move-result v0

    if-nez v0, :cond_14

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->start()V

    .line 57
    :cond_14
    return-void
.end method

.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 83
    :goto_1
    iget-boolean v7, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->mTerminate:Z

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->mJobList:Ljava/util/Vector;

    if-nez v7, :cond_96

    .line 147
    :cond_9
    const-string v7, " ~~~~~~~~ ThumbnailFetcher thread is terminated ~~~~~~~~~"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 148
    return-void

    .line 86
    :cond_f
    iget-object v7, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->mJobList:Ljava/util/Vector;

    invoke-virtual {v7, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;

    .line 88
    .local v2, info:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;
    #getter for: Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->callback:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;
    invoke-static {v2}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->access$0(Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;)Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;

    move-result-object v7

    #getter for: Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->targetView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->access$1(Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;)Landroid/view/View;

    move-result-object v8

    #getter for: Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->position:I
    invoke-static {v2}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->access$2(Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;)I

    move-result v9

    #getter for: Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->filePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->access$3(Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;->isTargetViewExist(Landroid/view/View;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_91

    .line 94
    :try_start_2d
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "position ::"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->position:I
    invoke-static {v2}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->access$2(Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is in range and creating bitmap for that"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 95
    #getter for: Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->filePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->access$3(Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_50} :catch_b8

    move-result-object v6

    .line 97
    .local v6, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 98
    .local v3, lBitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 100
    .local v4, localBit:Landroid/graphics/Bitmap;
    :try_start_53
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 101
    .local v5, mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, in:Ljava/io/InputStream;
    #getter for: Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->filePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->access$3(Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->getImageSampleSize(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 106
    const/16 v7, 0x50

    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 107
    const/16 v7, 0x50

    iput v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 108
    const/4 v7, 0x0

    invoke-static {v1, v7, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 111
    if-eqz v3, :cond_82

    .line 113
    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->copyBitmapLocally(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 115
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_81
    .catch Ljava/lang/OutOfMemoryError; {:try_start_53 .. :try_end_81} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_81} :catch_bd

    .line 117
    const/4 v3, 0x0

    .line 128
    .end local v1           #in:Ljava/io/InputStream;
    .end local v5           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    :cond_82
    :goto_82
    :try_start_82
    #getter for: Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->callback:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;
    invoke-static {v2}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->access$0(Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;)Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;

    move-result-object v7

    #getter for: Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->targetView:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->access$1(Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;)Landroid/view/View;

    move-result-object v8

    #getter for: Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->filePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;->access$3(Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v4, v9}, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$AlbumArtThumbFetcherFetcherCallbak;->bitmapCreated(Landroid/view/View;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_91} :catch_b8

    .line 135
    .end local v3           #lBitmap:Landroid/graphics/Bitmap;
    .end local v4           #localBit:Landroid/graphics/Bitmap;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_91
    :goto_91
    iget-object v7, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->mJobList:Ljava/util/Vector;

    invoke-virtual {v7, v11}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 84
    .end local v2           #info:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;
    :cond_96
    iget-object v7, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->mJobList:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-gtz v7, :cond_f

    .line 137
    const-string v7, " ~~~~~~~~ ThumbnailFetcher thread is waiting for the job ~~~~~~~~~"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 138
    sget-object v8, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;

    monitor-enter v8

    .line 140
    :try_start_a6
    sget-object v7, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_ab
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_ae
    .catch Ljava/lang/InterruptedException; {:try_start_a6 .. :try_end_ab} :catch_c2

    .line 138
    :goto_ab
    :try_start_ab
    monitor-exit v8

    goto/16 :goto_1

    :catchall_ae
    move-exception v7

    monitor-exit v8
    :try_end_b0
    .catchall {:try_start_ab .. :try_end_b0} :catchall_ae

    throw v7

    .line 120
    .restart local v2       #info:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;
    .restart local v3       #lBitmap:Landroid/graphics/Bitmap;
    .restart local v4       #localBit:Landroid/graphics/Bitmap;
    .restart local v6       #uri:Landroid/net/Uri;
    :catch_b1
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_b2
    const-string v7, "Got Outofmemory error while creating Bitmap"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b7} :catch_b8

    goto :goto_82

    .line 129
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .end local v3           #lBitmap:Landroid/graphics/Bitmap;
    .end local v4           #localBit:Landroid/graphics/Bitmap;
    .end local v6           #uri:Landroid/net/Uri;
    :catch_b8
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_91

    .line 124
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #lBitmap:Landroid/graphics/Bitmap;
    .restart local v4       #localBit:Landroid/graphics/Bitmap;
    .restart local v6       #uri:Landroid/net/Uri;
    :catch_bd
    move-exception v0

    .line 126
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_be
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c1} :catch_b8

    goto :goto_82

    .line 141
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #info:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher$FetcherInfo;
    .end local v3           #lBitmap:Landroid/graphics/Bitmap;
    .end local v4           #localBit:Landroid/graphics/Bitmap;
    .end local v6           #uri:Landroid/net/Uri;
    :catch_c2
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_c3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_ae

    goto :goto_ab
.end method

.method public terminate()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->mJobList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 64
    iput-boolean v1, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->mTerminate:Z

    .line 65
    iput-boolean v1, p0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->mTerminateGC:Z

    .line 66
    sget-object v1, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;

    monitor-enter v1

    .line 67
    :try_start_d
    sget-object v0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 66
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;->_instance:Lcom/sec/android/app/ve/thread/AlbumArtThumbFetcher;

    .line 71
    return-void

    .line 66
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method
