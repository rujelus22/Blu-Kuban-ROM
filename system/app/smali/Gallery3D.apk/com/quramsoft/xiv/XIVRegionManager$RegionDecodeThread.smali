.class public Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;
.super Ljava/lang/Thread;
.source "XIVRegionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quramsoft/xiv/XIVRegionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegionDecodeThread"
.end annotation


# instance fields
.field private volatile mIsDecoding:Z

.field private mIsStarted:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 77
    iput-boolean v0, p0, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;->mIsStarted:Z

    .line 78
    iput-boolean v0, p0, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;->mIsDecoding:Z

    .line 76
    return-void
.end method


# virtual methods
.method public isDecoding()Z
    .registers 3

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, ret:Z
    monitor-enter p0

    .line 91
    :try_start_2
    iget-boolean v0, p0, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;->mIsDecoding:Z

    .line 90
    monitor-exit p0

    .line 93
    return v0

    .line 90
    :catchall_6
    move-exception v1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v1
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;->mIsStarted:Z

    return v0
.end method

.method public run()V
    .registers 13

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x1

    .line 97
    invoke-static {v11}, Landroid/os/Process;->setThreadPriority(I)V

    .line 99
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->access$0()Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;

    move-result-object v7

    monitor-enter v7

    .line 100
    :try_start_b
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->access$0()Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 101
    const/4 v2, 0x0

    .line 103
    .local v2, brd:Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->access$1()Ljava/lang/String;

    move-result-object v8

    monitor-enter v8
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_39

    .line 104
    :try_start_1b
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->access$1()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    invoke-static {v6, v9}, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;

    move-result-object v2

    .line 103
    monitor-exit v8
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_36

    .line 107
    if-eqz v2, :cond_3c

    .line 108
    :try_start_27
    invoke-static {v2}, Lcom/quramsoft/xiv/XIVRegionManager;->access$2(Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;)V

    .line 99
    .end local v2           #brd:Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;
    :cond_2a
    monitor-exit v7
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_39

    .line 115
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->access$0()Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 181
    :goto_35
    return-void

    .line 103
    .restart local v2       #brd:Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;
    :catchall_36
    move-exception v6

    :try_start_37
    monitor-exit v8
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw v6

    .line 99
    .end local v2           #brd:Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;
    :catchall_39
    move-exception v6

    monitor-exit v7
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_39

    throw v6

    .line 110
    .restart local v2       #brd:Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;
    :cond_3c
    :try_start_3c
    monitor-exit v7
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_39

    goto :goto_35

    .line 121
    .end local v2           #brd:Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;
    :cond_3e
    const/4 v5, 0x0

    .line 122
    .local v5, tile:Lcom/quramsoft/xiv/XIVRegionManager$Tile;
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->access$3()Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v7

    monitor-enter v7

    .line 123
    :goto_44
    :try_start_44
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->access$3()Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;

    move-object v5, v0

    if-eqz v5, :cond_71

    .line 122
    monitor-exit v7
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_7c

    .line 132
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->access$4()Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v6

    if-le v6, v11, :cond_82

    .line 133
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->access$3()Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v7

    monitor-enter v7

    .line 134
    :try_start_62
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->access$3()Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/concurrent/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 133
    monitor-exit v7
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_7f

    .line 119
    .end local v5           #tile:Lcom/quramsoft/xiv/XIVRegionManager$Tile;
    :cond_6a
    :goto_6a
    invoke-virtual {p0}, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;->isInterrupted()Z

    move-result v6

    if-eqz v6, :cond_3e

    goto :goto_35

    .line 125
    .restart local v5       #tile:Lcom/quramsoft/xiv/XIVRegionManager$Tile;
    :cond_71
    :try_start_71
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->access$3()Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_7c
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_78} :catch_79

    goto :goto_44

    .line 126
    :catch_79
    move-exception v3

    .line 127
    .local v3, e:Ljava/lang/InterruptedException;
    :try_start_7a
    monitor-exit v7

    goto :goto_35

    .line 122
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catchall_7c
    move-exception v6

    monitor-exit v7
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_7c

    throw v6

    .line 133
    :catchall_7f
    move-exception v6

    :try_start_80
    monitor-exit v7
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v6

    .line 139
    :cond_82
    iget v6, v5, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mSampleSize:I

    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->access$5()I

    move-result v7

    if-eq v6, v7, :cond_8e

    .line 140
    const/4 v6, -0x1

    iput v6, v5, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mLoadingStatus:I

    goto :goto_6a

    .line 144
    :cond_8e
    monitor-enter p0

    .line 145
    const/4 v6, 0x1

    :try_start_90
    iput-boolean v6, p0, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;->mIsDecoding:Z

    .line 144
    monitor-exit p0
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_d3

    .line 147
    iput v10, v5, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mLoadingStatus:I

    .line 149
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 150
    .local v4, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 151
    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 152
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->access$5()I

    move-result v6

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->access$0()Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;

    move-result-object v7

    monitor-enter v7

    .line 156
    :try_start_ac
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->access$0()Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_d6

    .line 157
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->access$0()Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;

    move-result-object v6

    iget-object v8, v5, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v4}, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 155
    monitor-exit v7
    :try_end_c1
    .catchall {:try_start_ac .. :try_end_c1} :catchall_de

    .line 166
    if-nez v1, :cond_e4

    .line 167
    const-string v6, "XIVRegionManager"

    const-string v7, "bitmap is NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_ca
    monitor-enter p0

    .line 178
    const/4 v6, 0x0

    :try_start_cc
    iput-boolean v6, p0, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;->mIsDecoding:Z

    .line 177
    monitor-exit p0

    goto :goto_6a

    :catchall_d0
    move-exception v6

    monitor-exit p0
    :try_end_d2
    .catchall {:try_start_cc .. :try_end_d2} :catchall_d0

    throw v6

    .line 144
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #opts:Landroid/graphics/BitmapFactory$Options;
    :catchall_d3
    move-exception v6

    :try_start_d4
    monitor-exit p0
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    throw v6

    .line 159
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_d6
    :try_start_d6
    monitor-enter p0
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_de

    .line 160
    const/4 v6, 0x0

    :try_start_d8
    iput-boolean v6, p0, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;->mIsDecoding:Z

    .line 159
    monitor-exit p0
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_e1

    .line 162
    :try_start_db
    monitor-exit v7

    goto/16 :goto_35

    .line 155
    :catchall_de
    move-exception v6

    monitor-exit v7
    :try_end_e0
    .catchall {:try_start_db .. :try_end_e0} :catchall_de

    throw v6

    .line 159
    :catchall_e1
    move-exception v6

    :try_start_e2
    monitor-exit p0
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    :try_start_e3
    throw v6
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_de

    .line 169
    :cond_e4
    iput-object v1, v5, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    .line 170
    const/4 v6, 0x2

    iput v6, v5, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mLoadingStatus:I

    .line 172
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->access$4()Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v7

    monitor-enter v7

    .line 173
    :try_start_ee
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->access$4()Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 172
    monitor-exit v7

    goto :goto_ca

    :catchall_f7
    move-exception v6

    monitor-exit v7
    :try_end_f9
    .catchall {:try_start_ee .. :try_end_f9} :catchall_f7

    throw v6
.end method

.method public setIsStarted(Z)V
    .registers 2
    .parameter "isStarted"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;->mIsStarted:Z

    .line 82
    return-void
.end method
