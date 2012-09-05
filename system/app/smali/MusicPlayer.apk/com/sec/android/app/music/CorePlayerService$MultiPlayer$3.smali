.class Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 4105
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 13
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/16 v8, -0x3f

    const/16 v6, -0x40

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v4, 0x1

    .line 4108
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iput-boolean v3, v5, Lcom/sec/android/app/music/CorePlayerService;->mResetForUlp:Z

    .line 4109
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-static {v5}, Lcom/sec/android/app/music/CorePlayerService;->access$3110(Lcom/sec/android/app/music/CorePlayerService;)I

    .line 4110
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->mIsSupposedToBePlaying:Z
    invoke-static {v5, v3}, Lcom/sec/android/app/music/CorePlayerService;->access$502(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    .line 4114
    const/16 v5, 0x64

    if-ne p2, v5, :cond_124

    .line 4115
    const-string v3, "MultiPlayer"

    const-string v5, ">>>>>>>>MEDIA_ERROR_SERVER_DIED<<<<<<<<<<<<"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4117
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 4118
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v4, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4124
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    new-instance v5, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v5}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    #setter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3, v5}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3302(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;Lcom/sec/android/app/music/framework/SecMediaPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 4125
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v7, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4126
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 4130
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 4131
    .local v2, externalSDState:Ljava/lang/String;
    const-string v3, "MultiPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Environment.getExternalStorageStateSd() :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4133
    const-string v5, "MultiPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMediaUnMounted :"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->isMediaUnMounted:Z
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$400(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v3

    if-eqz v3, :cond_105

    const-string v3, "true"

    :goto_83
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4135
    const-string v5, "MultiPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEjectSD :"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->isEjectSD:Z
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$1500(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v3

    if-eqz v3, :cond_109

    const-string v3, "true"

    :goto_a7
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4137
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$1400(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    move-result-object v3

    if-eqz v3, :cond_10c

    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$1400(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mFilePath:Ljava/lang/String;

    if-eqz v3, :cond_10c

    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$1400(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mFilePath:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10c

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fc

    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->isMediaUnMounted:Z
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$400(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v3

    if-nez v3, :cond_fc

    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->isEjectSD:Z
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService;->access$1500(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v3

    if-eqz v3, :cond_10c

    .line 4141
    :cond_fc
    const-string v3, "MultiPlayer"

    const-string v5, "MusicFeatures.FLAG_SUPPORT_INTERNAL_SD_CARD and /mnt/internal_sd/external_sd and ExternalSD is unmounted"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 4329
    .end local v2           #externalSDState:Ljava/lang/String;
    :goto_104
    return v3

    .line 4133
    .restart local v2       #externalSDState:Ljava/lang/String;
    :cond_105
    const-string v3, "false"

    goto/16 :goto_83

    .line 4135
    :cond_109
    const-string v3, "false"

    goto :goto_a7

    .line 4147
    :cond_10c
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3200(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3200(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v3, v4

    .line 4148
    goto :goto_104

    .line 4149
    .end local v2           #externalSDState:Ljava/lang/String;
    :cond_124
    const/16 v5, 0x12d

    if-eq p2, v5, :cond_12c

    const/16 v5, 0x12d

    if-ne p3, v5, :cond_174

    .line 4151
    :cond_12c
    const-string v3, "MultiPlayer"

    const-string v5, ">>>>>>>>MEDIA_ErrDrmLicenseExpired<<<<<<<<<<<<"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 4153
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v4, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4154
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    new-instance v5, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v5}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    #setter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3, v5}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3302(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;Lcom/sec/android/app/music/framework/SecMediaPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 4155
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v7, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4156
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 4158
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    const/16 v6, 0x12d

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v3, v4

    .line 4160
    goto :goto_104

    .line 4161
    :cond_174
    const/16 v5, 0x12c

    if-eq p2, v5, :cond_17c

    const/16 v5, 0x12c

    if-ne p3, v5, :cond_1c5

    .line 4163
    :cond_17c
    const-string v3, "MultiPlayer"

    const-string v5, ">>>>>>>>MEDIA_ErrDrmLicenseNotFound<<<<<<<<<<<<"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4164
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 4165
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v4, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4166
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    new-instance v5, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v5}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    #setter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3, v5}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3302(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;Lcom/sec/android/app/music/framework/SecMediaPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 4167
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v7, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4168
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 4170
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    const/16 v6, 0x12c

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v3, v4

    .line 4172
    goto/16 :goto_104

    .line 4174
    :cond_1c5
    const/16 v5, -0x31

    if-eq p2, v5, :cond_1cd

    const/16 v5, -0x31

    if-ne p3, v5, :cond_216

    .line 4176
    :cond_1cd
    const-string v3, "MultiPlayer"

    const-string v5, ">>>>>>>>MEDIA_ErrDrmRightsAcquisitionFailed<<<<<<<<<<<<"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4177
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 4178
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v4, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4179
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    new-instance v5, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v5}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    #setter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3, v5}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3302(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;Lcom/sec/android/app/music/framework/SecMediaPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 4180
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v7, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4181
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 4183
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    const/16 v6, -0x31

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x190

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v3, v4

    .line 4188
    goto/16 :goto_104

    .line 4189
    :cond_216
    const/16 v5, -0x3d

    if-eq p2, v5, :cond_21e

    const/16 v5, -0x3d

    if-ne p3, v5, :cond_267

    .line 4191
    :cond_21e
    const-string v3, "MultiPlayer"

    const-string v5, ">>>>>>>>MEDIA_ErrDrmServerNotAMember<<<<<<<<<<<<"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 4193
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v4, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4194
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    new-instance v5, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v5}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    #setter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3, v5}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3302(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;Lcom/sec/android/app/music/framework/SecMediaPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 4195
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v7, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4196
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 4198
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    const/16 v6, -0x3d

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x44c

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v3, v4

    .line 4200
    goto/16 :goto_104

    .line 4201
    :cond_267
    const/16 v5, -0x3c

    if-eq p2, v5, :cond_26f

    const/16 v5, -0x3c

    if-ne p3, v5, :cond_2b8

    .line 4203
    :cond_26f
    const-string v3, "MultiPlayer"

    const-string v5, ">>>>>>>>MEDIA_ErrDrmServerDomainRequired<<<<<<<<<<<<"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4204
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 4205
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v4, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4206
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    new-instance v5, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v5}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    #setter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3, v5}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3302(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;Lcom/sec/android/app/music/framework/SecMediaPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 4207
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v7, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4208
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 4210
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    const/16 v6, -0x3c

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x4b0

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v3, v4

    .line 4212
    goto/16 :goto_104

    .line 4213
    :cond_2b8
    const/16 v5, -0x3a

    if-eq p2, v5, :cond_2c0

    const/16 v5, -0x3a

    if-ne p3, v5, :cond_309

    .line 4215
    :cond_2c0
    const-string v3, "MultiPlayer"

    const-string v5, ">>>>>>>>MEDIA_ErrDrmServerInternalError<<<<<<<<<<<<"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4216
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 4217
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v4, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4218
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    new-instance v5, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v5}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    #setter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3, v5}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3302(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;Lcom/sec/android/app/music/framework/SecMediaPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 4219
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v7, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4220
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 4222
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    const/16 v6, -0x3a

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x514

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v3, v4

    .line 4224
    goto/16 :goto_104

    .line 4225
    :cond_309
    const/16 v5, -0x3b

    if-eq p2, v5, :cond_311

    const/16 v5, -0x3b

    if-ne p3, v5, :cond_35a

    .line 4227
    :cond_311
    const-string v3, "MultiPlayer"

    const-string v5, ">>>>>>>>MEDIA_ErrDrmDevCertRevoked<<<<<<<<<<<<"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4228
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 4229
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v4, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4230
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    new-instance v5, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v5}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    #setter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3, v5}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3302(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;Lcom/sec/android/app/music/framework/SecMediaPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 4231
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v7, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4232
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 4234
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    const/16 v6, -0x3b

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x578

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v3, v4

    .line 4236
    goto/16 :goto_104

    .line 4237
    :cond_35a
    const/16 v5, -0x3e

    if-eq p2, v5, :cond_362

    const/16 v5, -0x3e

    if-ne p3, v5, :cond_3ab

    .line 4239
    :cond_362
    const-string v3, "MultiPlayer"

    const-string v5, ">>>>>>>>MEDIA_ErrDrmServerUnknownAccountId<<<<<<<<<<<<"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4240
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 4241
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v4, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4242
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    new-instance v5, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v5}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    #setter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3, v5}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3302(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;Lcom/sec/android/app/music/framework/SecMediaPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 4243
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v7, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4244
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 4246
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    const/16 v6, -0x3e

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x5dc

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v3, v4

    .line 4251
    goto/16 :goto_104

    .line 4252
    :cond_3ab
    if-eq p2, v8, :cond_3af

    if-ne p3, v8, :cond_3f6

    .line 4254
    :cond_3af
    const-string v3, "MultiPlayer"

    const-string v5, ">>>>>>>>MEDIA_ErrDrmServerProtocolVersionMismatch<<<<<<<<<<<<"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4256
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 4257
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v4, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4258
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    new-instance v5, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v5}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    #setter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3, v5}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3302(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;Lcom/sec/android/app/music/framework/SecMediaPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 4259
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v7, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4260
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 4262
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x640

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v3, v4

    .line 4267
    goto/16 :goto_104

    .line 4268
    :cond_3f6
    if-eq p2, v6, :cond_3fa

    if-ne p3, v6, :cond_441

    .line 4270
    :cond_3fa
    const-string v3, "MultiPlayer"

    const-string v5, ">>>>>>>>MEDIA_ErrDrmServerDeviceLimitReached<<<<<<<<<<<<"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4271
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 4272
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v4, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4273
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    new-instance v5, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v5}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    #setter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3, v5}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3302(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;Lcom/sec/android/app/music/framework/SecMediaPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 4274
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v7, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4275
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 4277
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v3, v3, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x6a4

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v3, v4

    .line 4280
    goto/16 :goto_104

    .line 4287
    :cond_441
    const/4 v0, 0x0

    .line 4289
    .local v0, bIsTopActivity:Z
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v5}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 4290
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v4, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4291
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    new-instance v6, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v6}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    #setter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v5, v6}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3302(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;Lcom/sec/android/app/music/framework/SecMediaPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 4292
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iput v7, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    .line 4293
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    #getter for: Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;
    invoke-static {v5}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->access$3300(Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/framework/SecMediaPlayer;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v5, v6, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 4295
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v5}, Lcom/sec/android/app/music/CorePlayerService;->hideNotification()V

    .line 4297
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-virtual {v5}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/sec/android/app/music/MusicUtils;->isMusicPlayerTopActivity(Landroid/content/Context;Z)Z

    move-result v0

    .line 4299
    if-eqz v0, :cond_491

    .line 4300
    const/4 v1, -0x1

    .line 4301
    .local v1, errStrId:I
    const/4 v5, -0x4

    if-ne p2, v5, :cond_512

    .line 4302
    const v1, 0x7f0900ae

    .line 4309
    :goto_486
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mToastHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/music/CorePlayerService;->access$2800(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4312
    .end local v1           #errStrId:I
    :cond_491
    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v5}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v5

    if-eqz v5, :cond_500

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v5}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/music/MusicPlayerController;->getItemCount()I

    move-result v5

    if-le v5, v4, :cond_500

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;
    invoke-static {v5}, Lcom/sec/android/app/music/CorePlayerService;->access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/music/MusicPlayerController;->getRepeatMode()I

    move-result v5

    if-eq v5, v4, :cond_500

    if-eqz v0, :cond_4c3

    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v4, v4, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mUserAction:Z
    invoke-static {v4}, Lcom/sec/android/app/music/CorePlayerService;->access$3400(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v4

    if-nez v4, :cond_500

    .line 4316
    :cond_4c3
    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v4, v4, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v4, v4, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mNextPlay:Lcom/sec/android/app/music/CorePlayerService$FindSong;
    invoke-static {v5}, Lcom/sec/android/app/music/CorePlayerService;->access$3500(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$FindSong;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4317
    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v4, v4, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mNextPlay:Lcom/sec/android/app/music/CorePlayerService$FindSong;
    invoke-static {v4}, Lcom/sec/android/app/music/CorePlayerService;->access$3500(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$FindSong;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mUserAction:Z
    invoke-static {v5}, Lcom/sec/android/app/music/CorePlayerService;->access$3400(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v6, v6, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mPlayDirection:Z
    invoke-static {v6}, Lcom/sec/android/app/music/CorePlayerService;->access$3600(Lcom/sec/android/app/music/CorePlayerService;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/music/CorePlayerService$FindSong;->setFindSong(ZZ)V

    .line 4318
    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v4, v4, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    iget-object v4, v4, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #getter for: Lcom/sec/android/app/music/CorePlayerService;->mNextPlay:Lcom/sec/android/app/music/CorePlayerService$FindSong;
    invoke-static {v5}, Lcom/sec/android/app/music/CorePlayerService;->access$3500(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$FindSong;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4321
    :cond_500
    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v4, v4, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    const-string v5, "com.android.music.playstatechanged"

    #calls: Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/sec/android/app/music/CorePlayerService;->access$800(Lcom/sec/android/app/music/CorePlayerService;Ljava/lang/String;)V

    .line 4323
    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer$3;->this$1:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v4, v4, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #setter for: Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z
    invoke-static {v4, v3}, Lcom/sec/android/app/music/CorePlayerService;->access$2602(Lcom/sec/android/app/music/CorePlayerService;Z)Z

    goto/16 :goto_104

    .line 4303
    .restart local v1       #errStrId:I
    :cond_512
    const/16 v5, -0xa

    if-ne p2, v5, :cond_51b

    .line 4304
    const v1, 0x7f0900af

    goto/16 :goto_486

    .line 4306
    :cond_51b
    const v1, 0x7f09004b

    goto/16 :goto_486
.end method
