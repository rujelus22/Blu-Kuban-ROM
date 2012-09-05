.class Lcom/sec/android/app/music/AudioPreview$31;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 4455
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 16
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/16 v11, -0x3f

    const/16 v10, -0x40

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4459
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x15

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4461
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x384

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 4462
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x384

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4463
    :cond_25
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 4464
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 4467
    :cond_36
    const/16 v3, 0x64

    if-ne p2, v3, :cond_197

    .line 4470
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->bErrorFile:Z
    invoke-static {v3, v4}, Lcom/sec/android/app/music/AudioPreview;->access$4302(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 4471
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 4472
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput v4, v3, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 4473
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    new-instance v6, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v6}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    iput-object v6, v3, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 4474
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput v9, v3, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 4475
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v6, v6, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 4477
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$4400(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 4478
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$4400(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4480
    :cond_77
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, ">>>>>>>>MEDIA_ERROR_SERVER_DIED<<<<<<<<<<<<"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4481
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v6, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v7, "Extra:%d,%s,%s"

    const/4 v3, 0x3

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v5

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    if-eqz v3, :cond_176

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_9d
    aput-object v3, v8, v4

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4489
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 4490
    .local v1, externalSDState:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Environment.getExternalStorageStateSd() :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4491
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v6, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMediaUnMounted :"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-boolean v3, v3, Lcom/sec/android/app/music/AudioPreview;->isMediaUnMounted:Z

    if-eqz v3, :cond_179

    const-string v3, "true"

    :goto_e1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v6, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEjectSD :"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-boolean v3, v3, Lcom/sec/android/app/music/AudioPreview;->isEjectSD:Z

    if-eqz v3, :cond_17d

    const-string v3, "true"

    :goto_103
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4494
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    if-eqz v3, :cond_126

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_142

    :cond_126
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    if-eqz v3, :cond_180

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_180

    :cond_142
    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_156

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-boolean v3, v3, Lcom/sec/android/app/music/AudioPreview;->isMediaUnMounted:Z

    if-nez v3, :cond_156

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-boolean v3, v3, Lcom/sec/android/app/music/AudioPreview;->isEjectSD:Z

    if-eqz v3, :cond_180

    .line 4500
    :cond_156
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "MusicFeatures.FLAG_SUPPORT_INTERNAL_SD_CARD and /mnt/internal_sd/external_sd and ExternalSD is unmounted"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4502
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v3}, Lcom/sec/android/app/music/AudioPreview;->updateMediaInfo()V

    .line 4503
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v3}, Lcom/sec/android/app/music/AudioPreview;->updatePlayStatus()V

    .line 4504
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z
    invoke-static {v6}, Lcom/sec/android/app/music/AudioPreview;->access$400(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v6

    invoke-virtual {v3, v6, v5}, Lcom/sec/android/app/music/AudioPreview;->changePlayButton(ZZ)V

    move v3, v4

    .line 4718
    .end local v1           #externalSDState:Ljava/lang/String;
    :goto_175
    return v3

    .line 4481
    :cond_176
    const/4 v3, 0x0

    goto/16 :goto_9d

    .line 4491
    .restart local v1       #externalSDState:Ljava/lang/String;
    :cond_179
    const-string v3, "false"

    goto/16 :goto_e1

    .line 4492
    :cond_17d
    const-string v3, "false"

    goto :goto_103

    .line 4514
    :cond_180
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v3}, Lcom/sec/android/app/music/AudioPreview;->updateMediaInfo()V

    .line 4515
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v3}, Lcom/sec/android/app/music/AudioPreview;->updatePlayStatus()V

    .line 4516
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z
    invoke-static {v6}, Lcom/sec/android/app/music/AudioPreview;->access$400(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v6

    invoke-virtual {v3, v6, v5}, Lcom/sec/android/app/music/AudioPreview;->changePlayButton(ZZ)V

    move v3, v4

    .line 4518
    goto :goto_175

    .line 4520
    .end local v1           #externalSDState:Ljava/lang/String;
    :cond_197
    const/16 v3, 0x12d

    if-eq p2, v3, :cond_1e7

    const/16 v3, 0x12d

    if-eq p3, v3, :cond_1e7

    const/16 v3, 0x12c

    if-eq p2, v3, :cond_1e7

    const/16 v3, 0x12c

    if-eq p3, v3, :cond_1e7

    const/16 v3, -0x21

    if-eq p3, v3, :cond_1e7

    const/16 v3, 0x12d

    if-eq p2, v3, :cond_1e7

    const/16 v3, -0x31

    if-eq p2, v3, :cond_1e7

    const/16 v3, -0x31

    if-eq p3, v3, :cond_1e7

    if-eq p2, v10, :cond_1e7

    if-eq p3, v10, :cond_1e7

    const/16 v3, -0x3d

    if-eq p2, v3, :cond_1e7

    const/16 v3, -0x3d

    if-eq p3, v3, :cond_1e7

    const/16 v3, -0x3c

    if-eq p2, v3, :cond_1e7

    const/16 v3, -0x3c

    if-eq p3, v3, :cond_1e7

    const/16 v3, -0x3a

    if-eq p2, v3, :cond_1e7

    const/16 v3, -0x3a

    if-eq p3, v3, :cond_1e7

    const/16 v3, -0x3b

    if-eq p2, v3, :cond_1e7

    const/16 v3, -0x3b

    if-eq p3, v3, :cond_1e7

    const/16 v3, -0x3e

    if-eq p2, v3, :cond_1e7

    const/16 v3, -0x3e

    if-eq p3, v3, :cond_1e7

    if-eq p2, v11, :cond_1e7

    if-ne p3, v11, :cond_4ae

    .line 4548
    :cond_1e7
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->pyv_wmdrm_file:Z
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$4500(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v3

    if-nez v3, :cond_251

    .line 4549
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, ">>>>>>>>MEDIA_ErrDrmLicense<<<<<<<<<<<<"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4550
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "what=%d,extra=%d"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4552
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 4553
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput v4, v3, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 4554
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    new-instance v6, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v6}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    iput-object v6, v3, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 4555
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput v9, v3, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 4556
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v3, v6, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 4558
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->checkDrmRight(IZ)I
    invoke-static {v3, v5, v5}, Lcom/sec/android/app/music/AudioPreview;->access$3100(Lcom/sec/android/app/music/AudioPreview;IZ)I

    .line 4560
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v3}, Lcom/sec/android/app/music/AudioPreview;->updateMediaInfo()V

    .line 4561
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v3}, Lcom/sec/android/app/music/AudioPreview;->updatePlayStatus()V

    .line 4562
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z
    invoke-static {v6}, Lcom/sec/android/app/music/AudioPreview;->access$400(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v6

    invoke-virtual {v3, v6, v5}, Lcom/sec/android/app/music/AudioPreview;->changePlayButton(ZZ)V

    :cond_24e
    :goto_24e
    move v3, v4

    .line 4661
    goto/16 :goto_175

    .line 4567
    :cond_251
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, ">>>>>>>>MEDIA_ErrDrmLicensePlayreadyWMDRM<<<<<<<<<<<<"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4568
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "what=%d,extra=%d"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4572
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->InfoModechanged:Z
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$4600(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v3

    if-ne v3, v4, :cond_286

    .line 4573
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput-boolean v4, v3, Lcom/sec/android/app/music/AudioPreview;->isInfoMode:Z

    .line 4574
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->InfoModechanged:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/music/AudioPreview;->access$4602(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 4576
    :cond_286
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$2900(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_2ac

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$2900(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2ac

    .line 4577
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "license not found here aquiring pop up is dismissed"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4578
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$2900(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4580
    :cond_2ac
    const/16 v3, -0x20

    if-eq p3, v3, :cond_2b4

    const/16 v3, 0x12c

    if-ne p2, v3, :cond_357

    .line 4581
    :cond_2b4
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "license not found error came showing only for pyv_wmdrm_file"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4583
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const v7, 0x7f0900e0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 4634
    :cond_2d1
    :goto_2d1
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 4635
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput v4, v3, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 4636
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    new-instance v6, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v6}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    iput-object v6, v3, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 4637
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput v9, v3, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 4638
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v3, v6, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 4639
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const-string v6, "phone"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 4641
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_31c

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v3

    if-eq v3, v9, :cond_31c

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-static {v3}, Lcom/sec/android/app/music/MusicUtils;->checkIsWifiEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_31c

    .line 4643
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "No Network Connection in onerror in license not found"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mIsFinish:Z
    invoke-static {v3, v4}, Lcom/sec/android/app/music/AudioPreview;->access$4702(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 4649
    :cond_31c
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->pyv_wmdrm_file:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/music/AudioPreview;->access$4502(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 4650
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "pyv_wmdrm_file is made false for license not expired aquisition failed found error"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4652
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v3}, Lcom/sec/android/app/music/AudioPreview;->updateMediaInfo()V

    .line 4653
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v3}, Lcom/sec/android/app/music/AudioPreview;->updatePlayStatus()V

    .line 4654
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z
    invoke-static {v6}, Lcom/sec/android/app/music/AudioPreview;->access$400(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v6

    invoke-virtual {v3, v6, v5}, Lcom/sec/android/app/music/AudioPreview;->changePlayButton(ZZ)V

    .line 4655
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v5, "check if no connectivity and finish activity"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4656
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mIsFinish:Z
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$4700(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v3

    if-ne v3, v4, :cond_24e

    .line 4657
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->finishMusicPlayer()V
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$2300(Lcom/sec/android/app/music/AudioPreview;)V

    goto/16 :goto_24e

    .line 4585
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_357
    const/16 v3, -0x21

    if-eq p3, v3, :cond_35f

    const/16 v3, 0x12d

    if-ne p2, v3, :cond_37e

    .line 4587
    :cond_35f
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "license expired error came showing only for pyv_wmdrm_file"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4589
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const v7, 0x7f0900e1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2d1

    .line 4591
    :cond_37e
    const/16 v3, -0x31

    if-eq p2, v3, :cond_386

    const/16 v3, -0x31

    if-ne p3, v3, :cond_3a5

    .line 4593
    :cond_386
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "license aquisition failed error came"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4594
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const v7, 0x7f0900dd

    invoke-virtual {v6, v7}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2d1

    .line 4596
    :cond_3a5
    if-eq p2, v10, :cond_3a9

    if-ne p3, v10, :cond_3c8

    .line 4598
    :cond_3a9
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "Device limit reached error occured"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4599
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const v7, 0x7f0900e4

    invoke-virtual {v6, v7}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2d1

    .line 4601
    :cond_3c8
    const/16 v3, -0x3d

    if-eq p2, v3, :cond_3d0

    const/16 v3, -0x3d

    if-ne p3, v3, :cond_3ef

    .line 4603
    :cond_3d0
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "Server not a member of this domain error occured"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4604
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const v7, 0x7f0900e3

    invoke-virtual {v6, v7}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2d1

    .line 4606
    :cond_3ef
    const/16 v3, -0x3c

    if-eq p2, v3, :cond_3f7

    const/16 v3, -0x3c

    if-ne p3, v3, :cond_416

    .line 4608
    :cond_3f7
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "Domain required error "

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4609
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const v7, 0x7f0900e2

    invoke-virtual {v6, v7}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2d1

    .line 4611
    :cond_416
    const/16 v3, -0x3a

    if-eq p2, v3, :cond_41e

    const/16 v3, -0x3a

    if-ne p3, v3, :cond_43d

    .line 4613
    :cond_41e
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "server internal error occured"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4614
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const v7, 0x7f0900e5

    invoke-virtual {v6, v7}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2d1

    .line 4616
    :cond_43d
    const/16 v3, -0x3b

    if-eq p2, v3, :cond_445

    const/16 v3, -0x3b

    if-ne p3, v3, :cond_464

    .line 4618
    :cond_445
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "Device cert revoked error occured"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4619
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const v7, 0x7f0900e6

    invoke-virtual {v6, v7}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2d1

    .line 4621
    :cond_464
    const/16 v3, -0x3e

    if-eq p2, v3, :cond_46c

    const/16 v3, -0x3e

    if-ne p3, v3, :cond_48b

    .line 4623
    :cond_46c
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "Unknown account id error"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4624
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const v7, 0x7f0900e7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2d1

    .line 4626
    :cond_48b
    if-eq p2, v11, :cond_48f

    if-ne p3, v11, :cond_2d1

    .line 4628
    :cond_48f
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "protocol version mismatch error occured"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4629
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const v7, 0x7f0900e8

    invoke-virtual {v6, v7}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2d1

    .line 4663
    :cond_4ae
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, ">>>>>>>>PLAYBACK_UNKNOWNERROR<<<<<<<<<<<<"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4665
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v6, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v7, "Extra:%d,%d,%s"

    const/4 v3, 0x3

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v4

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    if-eqz v3, :cond_5a9

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4da
    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4669
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$2900(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_509

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$2900(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_509

    .line 4670
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "onPreparedListener here aquiring pop up is dismissed"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4671
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$2900(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4673
    :cond_509
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->InfoModechanged:Z
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$4600(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v3

    if-ne v3, v4, :cond_51a

    .line 4674
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput-boolean v4, v3, Lcom/sec/android/app/music/AudioPreview;->isInfoMode:Z

    .line 4675
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->InfoModechanged:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/music/AudioPreview;->access$4602(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 4679
    :cond_51a
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->bErrorFile:Z
    invoke-static {v3, v4}, Lcom/sec/android/app/music/AudioPreview;->access$4302(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 4680
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 4681
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput v4, v3, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 4682
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    new-instance v6, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v6}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    iput-object v6, v3, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 4683
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iput v9, v3, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 4684
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v6, v6, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 4686
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$4400(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_557

    .line 4687
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$4400(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4689
    :cond_557
    const/4 v0, -0x1

    .line 4690
    .local v0, errStrId:I
    const/4 v3, -0x4

    if-ne p2, v3, :cond_5ac

    .line 4691
    const v0, 0x7f0900ae

    .line 4698
    :goto_55e
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->pyv_wmdrm_file:Z
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$4500(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v3

    if-ne v3, v4, :cond_577

    .line 4701
    const v0, 0x7f0900dc

    .line 4702
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #setter for: Lcom/sec/android/app/music/AudioPreview;->pyv_wmdrm_file:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/music/AudioPreview;->access$4502(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 4703
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v4, "pyv_wmdrm_file is made false for playback unknown error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4707
    :cond_577
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$3200(Lcom/sec/android/app/music/AudioPreview;)Landroid/widget/Toast;

    move-result-object v3

    if-eqz v3, :cond_5b8

    .line 4708
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$3200(Lcom/sec/android/app/music/AudioPreview;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Toast;->setText(I)V

    .line 4712
    :goto_588
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$3200(Lcom/sec/android/app/music/AudioPreview;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 4714
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v3}, Lcom/sec/android/app/music/AudioPreview;->updateMediaInfo()V

    .line 4715
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v3}, Lcom/sec/android/app/music/AudioPreview;->updatePlayStatus()V

    .line 4716
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z
    invoke-static {v4}, Lcom/sec/android/app/music/AudioPreview;->access$400(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/music/AudioPreview;->changePlayButton(ZZ)V

    move v3, v5

    .line 4718
    goto/16 :goto_175

    .line 4665
    .end local v0           #errStrId:I
    :cond_5a9
    const/4 v3, 0x0

    goto/16 :goto_4da

    .line 4692
    .restart local v0       #errStrId:I
    :cond_5ac
    const/16 v3, -0xa

    if-ne p2, v3, :cond_5b4

    .line 4693
    const v0, 0x7f0900af

    goto :goto_55e

    .line 4695
    :cond_5b4
    const v0, 0x7f09004b

    goto :goto_55e

    .line 4710
    :cond_5b8
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v4, v4, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview$31;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    #setter for: Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;
    invoke-static {v3, v4}, Lcom/sec/android/app/music/AudioPreview;->access$3202(Lcom/sec/android/app/music/AudioPreview;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_588
.end method
