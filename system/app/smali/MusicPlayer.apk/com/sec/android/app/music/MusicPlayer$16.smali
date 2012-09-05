.class Lcom/sec/android/app/music/MusicPlayer$16;
.super Landroid/os/Handler;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 2006
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private skipBackword()V
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 2203
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2204
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-boolean v5, v5, Lcom/sec/android/app/music/MusicPlayer;->isShownAdditionalBar:Z

    if-nez v5, :cond_2c

    .line 2205
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x21

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2207
    :cond_2c
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget v5, v5, Lcom/sec/android/app/music/MusicPlayer;->skipCount:I

    if-ge v9, v5, :cond_36

    .line 2208
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iput v9, v5, Lcom/sec/android/app/music/MusicPlayer;->skipCount:I

    .line 2212
    :cond_36
    :try_start_36
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v5}, Lcom/sec/android/app/music/ICorePlayerService;->position()J

    move-result-wide v5

    sget-object v7, Lcom/sec/android/app/music/CorePlayerService;->SKIP_TIME:[I

    iget-object v8, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget v8, v8, Lcom/sec/android/app/music/MusicPlayer;->skipCount:I

    aget v7, v7, v8

    int-to-long v7, v7

    sub-long v3, v5, v7

    .line 2222
    .local v3, position:J
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v5}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_9e

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_9e

    .line 2225
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v5}, Lcom/sec/android/app/music/ICorePlayerService;->prev()V

    .line 2226
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v6, "skipBackword: mCorePlayer.prev()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v5}, Lcom/sec/android/app/music/ICorePlayerService;->duration()J

    move-result-wide v0

    .line 2228
    .local v0, duration:J
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v6, 0x0

    iput v6, v5, Lcom/sec/android/app/music/MusicPlayer;->skipCount:I

    .line 2229
    sget-object v5, Lcom/sec/android/app/music/CorePlayerService;->SKIP_TIME:[I

    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget v6, v6, Lcom/sec/android/app/music/MusicPlayer;->skipCount:I

    aget v5, v5, v6

    int-to-long v5, v5

    sub-long v3, v0, v5

    .line 2234
    .end local v0           #duration:J
    :cond_81
    :goto_81
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v5, v3, v4}, Lcom/sec/android/app/music/ICorePlayerService;->seek(J)J

    .line 2235
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v5}, Lcom/sec/android/app/music/ICorePlayerService;->position()J

    move-result-wide v3

    .line 2236
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v5, v3, v4}, Lcom/sec/android/app/music/MusicPlayer;->refreshPlayStatus(J)V
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_95} :catch_ae

    .line 2243
    .end local v3           #position:J
    :goto_95
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget v6, v5, Lcom/sec/android/app/music/MusicPlayer;->skipCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sec/android/app/music/MusicPlayer;->skipCount:I

    .line 2244
    return-void

    .line 2230
    .restart local v3       #position:J
    :cond_9e
    :try_start_9e
    sget-object v5, Lcom/sec/android/app/music/CorePlayerService;->SKIP_TIME:[I

    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget v6, v6, Lcom/sec/android/app/music/MusicPlayer;->skipCount:I

    aget v5, v5, v6
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_a6} :catch_ae

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_81

    .line 2231
    const-wide/16 v3, 0x0

    goto :goto_81

    .line 2239
    .end local v3           #position:J
    :catch_ae
    move-exception v2

    .line 2240
    .local v2, e:Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-static {v5}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2241
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v5, v5, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException occured 7 :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95
.end method

.method private skipForward()V
    .registers 9

    .prologue
    const/4 v7, 0x4

    .line 2250
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2251
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-boolean v3, v3, Lcom/sec/android/app/music/MusicPlayer;->isShownAdditionalBar:Z

    if-nez v3, :cond_2c

    .line 2252
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x21

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2255
    :cond_2c
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget v3, v3, Lcom/sec/android/app/music/MusicPlayer;->skipCount:I

    if-ge v7, v3, :cond_36

    .line 2256
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iput v7, v3, Lcom/sec/android/app/music/MusicPlayer;->skipCount:I

    .line 2260
    :cond_36
    :try_start_36
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v3}, Lcom/sec/android/app/music/ICorePlayerService;->position()J

    move-result-wide v3

    sget-object v5, Lcom/sec/android/app/music/CorePlayerService;->SKIP_TIME:[I

    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget v6, v6, Lcom/sec/android/app/music/MusicPlayer;->skipCount:I

    aget v5, v5, v6

    int-to-long v5, v5

    add-long v1, v3, v5

    .line 2262
    .local v1, position:J
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-wide v3, v3, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_55

    .line 2263
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-wide v1, v3, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    .line 2272
    :cond_55
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v3, v1, v2}, Lcom/sec/android/app/music/ICorePlayerService;->seek(J)J

    .line 2273
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v3}, Lcom/sec/android/app/music/ICorePlayerService;->position()J

    move-result-wide v1

    .line 2274
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v3, v1, v2}, Lcom/sec/android/app/music/MusicPlayer;->refreshPlayStatus(J)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_69} :catch_72

    .line 2281
    .end local v1           #position:J
    :goto_69
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget v4, v3, Lcom/sec/android/app/music/MusicPlayer;->skipCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sec/android/app/music/MusicPlayer;->skipCount:I

    .line 2282
    return-void

    .line 2277
    :catch_72
    move-exception v0

    .line 2278
    .local v0, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-static {v3}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2279
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v3, v3, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException occured 8 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    .line 2009
    iget v10, p1, Landroid/os/Message;->what:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_27

    .line 2010
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mHandler(msg.what= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    :cond_27
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_2b0

    .line 2197
    :cond_2c
    :goto_2c
    return-void

    .line 2013
    :sswitch_2d
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #calls: Lcom/sec/android/app/music/MusicPlayer;->finishMusicPlayer()V
    invoke-static {v10}, Lcom/sec/android/app/music/MusicPlayer;->access$000(Lcom/sec/android/app/music/MusicPlayer;)V

    goto :goto_2c

    .line 2017
    :sswitch_33
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v10}, Lcom/sec/android/app/music/MusicPlayer;->updatePlayStatus()V

    .line 2018
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v11, 0x2

    const-wide/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v13}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_2c

    .line 2021
    :sswitch_41
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v10}, Lcom/sec/android/app/music/MusicPlayer;->updatePlayerInfo()V

    .line 2022
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_2c

    .line 2025
    :sswitch_4f
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/app/music/MusicPlayer;->updatePlayerInfo(Z)V

    .line 2026
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_2c

    .line 2035
    :sswitch_5e
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v10, :cond_6a

    .line 2036
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #calls: Lcom/sec/android/app/music/MusicPlayer;->playSearch()V
    invoke-static {v10}, Lcom/sec/android/app/music/MusicPlayer;->access$1200(Lcom/sec/android/app/music/MusicPlayer;)V

    goto :goto_2c

    .line 2038
    :cond_6a
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v11, 0x5

    const-wide/16 v12, 0x64

    invoke-virtual {v10, v11, v12, v13}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_2c

    .line 2047
    :sswitch_73
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/16 v11, 0xa

    const-wide/16 v12, 0x12c

    invoke-virtual {v10, v11, v12, v13}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    .line 2048
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer$16;->skipForward()V

    goto :goto_2c

    .line 2051
    :sswitch_80
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 2052
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-boolean v10, v10, Lcom/sec/android/app/music/MusicPlayer;->additionalPanelFromAlbumArt:Z

    if-nez v10, :cond_2c

    .line 2053
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 2054
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x20

    const-wide/16 v12, 0xbb8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2c

    .line 2065
    :sswitch_aa
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/16 v11, 0xc

    const-wide/16 v12, 0x12c

    invoke-virtual {v10, v11, v12, v13}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    .line 2066
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer$16;->skipBackword()V

    goto/16 :goto_2c

    .line 2069
    :sswitch_b8
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 2070
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-boolean v10, v10, Lcom/sec/android/app/music/MusicPlayer;->additionalPanelFromAlbumArt:Z

    if-nez v10, :cond_2c

    .line 2071
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 2072
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x20

    const-wide/16 v12, 0xbb8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2c

    .line 2083
    :sswitch_e3
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    .line 2084
    .local v8, mProgress:I
    int-to-double v10, v8

    const-wide/high16 v12, 0x4059

    div-double/2addr v10, v12

    iget-object v12, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-wide v12, v12, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    long-to-double v12, v12

    mul-double/2addr v10, v12

    double-to-int v7, v10

    .line 2088
    .local v7, mPosition:I
    :try_start_f6
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    int-to-long v11, v7

    invoke-interface {v10, v11, v12}, Lcom/sec/android/app/music/ICorePlayerService;->seek(J)J

    .line 2090
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/16 v11, 0x16

    const-wide/16 v12, 0x7d0

    invoke-virtual {v10, v11, v12, v13}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V
    :try_end_107
    .catch Landroid/os/RemoteException; {:try_start_f6 .. :try_end_107} :catch_109

    goto/16 :goto_2c

    .line 2091
    :catch_109
    move-exception v3

    .line 2093
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2c

    .line 2098
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v7           #mPosition:I
    .end local v8           #mProgress:I
    :sswitch_10f
    iget-object v11, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/graphics/Bitmap;

    #setter for: Lcom/sec/android/app/music/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v11, v10}, Lcom/sec/android/app/music/MusicPlayer;->access$1302(Lcom/sec/android/app/music/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2100
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/sec/android/app/music/MusicPlayer;->access$1300(Lcom/sec/android/app/music/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_13c

    .line 2104
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v11}, Lcom/sec/android/app/music/MusicPlayer;->access$1300(Lcom/sec/android/app/music/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2105
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2110
    :goto_135
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/sec/android/app/music/MusicPlayer;->mMusicPlayerInitDone:Z

    goto/16 :goto_2c

    .line 2107
    :cond_13c
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_135

    .line 2114
    :sswitch_145
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 2118
    .local v6, lyric:Ljava/lang/String;
    if-eqz v6, :cond_189

    const-string v10, ""

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_189

    .line 2119
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mLyricText:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/sec/android/app/music/MusicPlayer;->access$1400(Lcom/sec/android/app/music/MusicPlayer;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2120
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getLyric(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_17d

    .line 2121
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mLyricView:Landroid/view/View;
    invoke-static {v10}, Lcom/sec/android/app/music/MusicPlayer;->access$1500(Lcom/sec/android/app/music/MusicPlayer;)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/View;->scrollTo(II)V

    .line 2122
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mLyricView:Landroid/view/View;
    invoke-static {v10}, Lcom/sec/android/app/music/MusicPlayer;->access$1500(Lcom/sec/android/app/music/MusicPlayer;)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2c

    .line 2124
    :cond_17d
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mLyricView:Landroid/view/View;
    invoke-static {v10}, Lcom/sec/android/app/music/MusicPlayer;->access$1500(Lcom/sec/android/app/music/MusicPlayer;)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2c

    .line 2127
    :cond_189
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mLyricText:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/sec/android/app/music/MusicPlayer;->access$1400(Lcom/sec/android/app/music/MusicPlayer;)Landroid/widget/TextView;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2128
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mLyricView:Landroid/view/View;
    invoke-static {v10}, Lcom/sec/android/app/music/MusicPlayer;->access$1500(Lcom/sec/android/app/music/MusicPlayer;)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2c

    .line 2132
    .end local v6           #lyric:Ljava/lang/String;
    :sswitch_1a0
    const/16 v1, 0x13

    .line 2134
    .local v1, EQCount:I
    const/4 v2, 0x0

    .line 2135
    .local v2, EQValue:[I
    const/4 v9, 0x0

    .line 2137
    .local v9, tempEQImageView:Landroid/widget/ImageView;
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v10, :cond_1d6

    .line 2138
    iget-object v11, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/graphics/Bitmap;

    #setter for: Lcom/sec/android/app/music/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v11, v10}, Lcom/sec/android/app/music/MusicPlayer;->access$1302(Lcom/sec/android/app/music/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2139
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v11}, Lcom/sec/android/app/music/MusicPlayer;->access$1300(Lcom/sec/android/app/music/MusicPlayer;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2140
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const-string v11, "ImageSet"

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2141
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2142
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->invalidate()V

    .line 2145
    :cond_1d6
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v10, :cond_245

    .line 2146
    const/16 v10, 0x13

    new-array v2, v10, [I

    .line 2149
    :try_start_1e0
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v10}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v10

    if-eqz v10, :cond_1f1

    .line 2150
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v10, v2}, Lcom/sec/android/app/music/ICorePlayerService;->getRealEQdata([I)V

    .line 2151
    :cond_1f1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1f2
    const/16 v10, 0x13

    if-ge v5, v10, :cond_245

    .line 2152
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mVisualizationEqView:Landroid/view/View;
    invoke-static {v10}, Lcom/sec/android/app/music/MusicPlayer;->access$1100(Lcom/sec/android/app/music/MusicPlayer;)Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v11, v11, Lcom/sec/android/app/music/MusicPlayer;->EQTopImageView:[I

    aget v11, v11, v5

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/widget/ImageView;

    move-object v9, v0

    .line 2154
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->EQTopImage:[I

    aget v11, v2, v5

    rem-int/lit8 v11, v11, 0x11

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2155
    invoke-virtual {v9}, Landroid/widget/ImageView;->invalidate()V

    .line 2157
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mVisualizationEqView:Landroid/view/View;
    invoke-static {v10}, Lcom/sec/android/app/music/MusicPlayer;->access$1100(Lcom/sec/android/app/music/MusicPlayer;)Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v11, v11, Lcom/sec/android/app/music/MusicPlayer;->EQBottomImageView:[I

    aget v11, v11, v5

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/widget/ImageView;

    move-object v9, v0

    .line 2159
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->EQBottomImage:[I

    aget v11, v2, v5

    rem-int/lit8 v11, v11, 0x11

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2160
    invoke-virtual {v9}, Landroid/widget/ImageView;->invalidate()V
    :try_end_23e
    .catch Landroid/os/RemoteException; {:try_start_1e0 .. :try_end_23e} :catch_241

    .line 2151
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f2

    .line 2163
    .end local v5           #i:I
    :catch_241
    move-exception v3

    .line 2164
    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2169
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_245
    :try_start_245
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v10, :cond_2c

    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v10}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v10

    if-eqz v10, :cond_2c

    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_2c

    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    #getter for: Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sec/android/app/music/MusicPlayer;->access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_2c

    .line 2171
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    const/16 v11, 0x9

    const-wide/16 v12, 0xc8

    invoke-virtual {v10, v11, v12, v13}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V
    :try_end_274
    .catch Landroid/os/RemoteException; {:try_start_245 .. :try_end_274} :catch_276

    goto/16 :goto_2c

    .line 2172
    :catch_276
    move-exception v3

    .line 2173
    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2c

    .line 2179
    .end local v1           #EQCount:I
    .end local v2           #EQValue:[I
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v9           #tempEQImageView:Landroid/widget/ImageView;
    :sswitch_27c
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v10}, Lcom/sec/android/app/music/MusicPlayer;->hideVolumePanel()V

    goto/16 :goto_2c

    .line 2183
    :sswitch_283
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->mViewProgressBar:Landroid/view/ViewGroup;

    if-eqz v10, :cond_2a2

    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    iget-object v10, v10, Lcom/sec/android/app/music/MusicPlayer;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_2a2

    .line 2185
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 2186
    .local v4, fromAlbumArt:Z
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v10, v4}, Lcom/sec/android/app/music/MusicPlayer;->showAdditionalPanel(Z)V

    goto/16 :goto_2c

    .line 2188
    .end local v4           #fromAlbumArt:Z
    :cond_2a2
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v10}, Lcom/sec/android/app/music/MusicPlayer;->hideAdditionalPanel()V

    goto/16 :goto_2c

    .line 2192
    :sswitch_2a9
    iget-object v10, p0, Lcom/sec/android/app/music/MusicPlayer$16;->this$0:Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v10}, Lcom/sec/android/app/music/MusicPlayer;->hideAdditionalPanel()V

    goto/16 :goto_2c

    .line 2011
    :sswitch_data_2b0
    .sparse-switch
        0x1 -> :sswitch_2d
        0x2 -> :sswitch_33
        0x3 -> :sswitch_41
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_5e
        0x8 -> :sswitch_10f
        0x9 -> :sswitch_1a0
        0xa -> :sswitch_73
        0xb -> :sswitch_80
        0xc -> :sswitch_aa
        0xd -> :sswitch_b8
        0x16 -> :sswitch_e3
        0x1f -> :sswitch_27c
        0x20 -> :sswitch_2a9
        0x21 -> :sswitch_283
        0x2a -> :sswitch_145
    .end sparse-switch
.end method
