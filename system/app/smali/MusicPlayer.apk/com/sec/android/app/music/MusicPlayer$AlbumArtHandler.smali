.class public Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;
.super Landroid/os/Handler;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlbumArtHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicPlayer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/MusicPlayer;Landroid/os/Looper;)V
    .registers 5
    .parameter
    .parameter "looper"

    .prologue
    .line 3421
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    .line 3422
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3424
    iget-object v0, p1, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "AlbumArtHandler() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const/16 v9, 0x8

    const/16 v8, 0x9

    .line 3430
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v6, "handleMessage() is called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3433
    .local v1, currentAlbumId:Ljava/lang/Integer;
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_1c

    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v8, :cond_e7

    .line 3437
    :cond_1c
    const/4 v0, 0x0

    .line 3439
    .local v0, albumBitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mAlbumId:I
    invoke-static {v5}, Lcom/sec/android/app/music/MusicPlayer;->access$2100(Lcom/sec/android/app/music/MusicPlayer;)I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_2f

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_d5

    .line 3441
    :cond_2f
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v6, "AlbumArtHandler: Before getArtwork()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3442
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    #calls: Lcom/sec/android/app/music/MusicPlayer;->getArtwork(I)Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/sec/android/app/music/MusicPlayer;->access$2200(Lcom/sec/android/app/music/MusicPlayer;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3444
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v6, "AlbumArtHandler: After getArtwork()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    if-nez v0, :cond_cf

    .line 3447
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mDefaultBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/sec/android/app/music/MusicPlayer;->access$2300(Lcom/sec/android/app/music/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_5e

    .line 3448
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    #calls: Lcom/sec/android/app/music/MusicPlayer;->getDefaultArtwork(I)Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/sec/android/app/music/MusicPlayer;->access$2400(Lcom/sec/android/app/music/MusicPlayer;I)Landroid/graphics/Bitmap;

    .line 3450
    :cond_5e
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mDefaultBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/sec/android/app/music/MusicPlayer;->access$2300(Lcom/sec/android/app/music/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3452
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v6, 0x0

    #setter for: Lcom/sec/android/app/music/MusicPlayer;->priorBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5, v6}, Lcom/sec/android/app/music/MusicPlayer;->access$2502(Lcom/sec/android/app/music/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3459
    :goto_6a
    if-eqz v0, :cond_c5

    .line 3460
    const/4 v4, 0x0

    .line 3461
    .local v4, numsg:Landroid/os/Message;
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #setter for: Lcom/sec/android/app/music/MusicPlayer;->priorBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5, v0}, Lcom/sec/android/app/music/MusicPlayer;->access$2502(Lcom/sec/android/app/music/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3462
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 3463
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 3464
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ALBUM_ART_VISUALIZATION mVisualizationType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-boolean v7, v7, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationType:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " albumBitmap = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-boolean v5, v5, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationType:Z

    if-eqz v5, :cond_dc

    .line 3467
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 3470
    :goto_bc
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3479
    .end local v4           #numsg:Landroid/os/Message;
    :cond_c5
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    #setter for: Lcom/sec/android/app/music/MusicPlayer;->mAlbumId:I
    invoke-static {v5, v6}, Lcom/sec/android/app/music/MusicPlayer;->access$2102(Lcom/sec/android/app/music/MusicPlayer;I)I

    .line 3494
    .end local v0           #albumBitmap:Landroid/graphics/Bitmap;
    :cond_ce
    :goto_ce
    return-void

    .line 3454
    .restart local v0       #albumBitmap:Landroid/graphics/Bitmap;
    :cond_cf
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #setter for: Lcom/sec/android/app/music/MusicPlayer;->priorBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5, v0}, Lcom/sec/android/app/music/MusicPlayer;->access$2502(Lcom/sec/android/app/music/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_6a

    .line 3457
    :cond_d5
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->priorBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/sec/android/app/music/MusicPlayer;->access$2500(Lcom/sec/android/app/music/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_6a

    .line 3469
    .restart local v4       #numsg:Landroid/os/Message;
    :cond_dc
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    goto :goto_bc

    .line 3481
    .end local v0           #albumBitmap:Landroid/graphics/Bitmap;
    .end local v4           #numsg:Landroid/os/Message;
    :cond_e7
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x29

    if-ne v5, v6, :cond_ce

    .line 3482
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v5, :cond_ce

    .line 3484
    :try_start_f3
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x2a

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3485
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v5}, Lcom/sec/android/app/music/ICorePlayerService;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/music/MusicUtils;->getLyricFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3487
    .local v3, lyric:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x2a

    invoke-virtual {v6, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_11f
    .catch Landroid/os/RemoteException; {:try_start_f3 .. :try_end_11f} :catch_120

    goto :goto_ce

    .line 3488
    .end local v3           #lyric:Ljava/lang/String;
    :catch_120
    move-exception v2

    .line 3489
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_ce
.end method
