.class Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;
.super Lcom/google/android/music/Worker;
.source "PlaySongsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/PlaySongsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncCheckupWorker"
.end annotation


# instance fields
.field private mFinished:Z

.field private mFoundLocalId:J

.field private mFoundSingleSong:Z

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/PlaySongsActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/music/PlaySongsActivity;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 218
    iput-object p1, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->this$0:Lcom/google/android/music/PlaySongsActivity;

    .line 219
    const-class v0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    .line 213
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->mFoundLocalId:J

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->mTitle:Ljava/lang/String;

    .line 215
    iput-boolean v2, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->mFoundSingleSong:Z

    .line 216
    iput-boolean v2, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->mFinished:Z

    .line 220
    return-void
.end method

.method private checkIfExists()Z
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 258
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "title"

    aput-object v0, v2, v7

    .line 259
    .local v2, queryCols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->this$0:Lcom/google/android/music/PlaySongsActivity;

    #getter for: Lcom/google/android/music/PlaySongsActivity;->mStoreId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/PlaySongsActivity;->access$400(Lcom/google/android/music/PlaySongsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$XAudio;->getStoreAudioUriByStoreId(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 260
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->this$0:Lcom/google/android/music/PlaySongsActivity;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 262
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_41

    :try_start_22
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 263
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->mFoundLocalId:J

    .line 264
    array-length v0, v2

    if-le v0, v7, :cond_39

    .line 265
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->mTitle:Ljava/lang/String;

    .line 267
    :cond_39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->mFoundSingleSong:Z
    :try_end_3c
    .catchall {:try_start_22 .. :try_end_3c} :catchall_73

    .line 271
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v0, v7

    .line 288
    :goto_40
    return v0

    .line 271
    :cond_41
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 275
    new-array v2, v7, [Ljava/lang/String;

    .end local v2           #queryCols:[Ljava/lang/String;
    const-string v0, "album_id"

    aput-object v0, v2, v8

    .line 276
    .restart local v2       #queryCols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->this$0:Lcom/google/android/music/PlaySongsActivity;

    #getter for: Lcom/google/android/music/PlaySongsActivity;->mStoreId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/PlaySongsActivity;->access$400(Lcom/google/android/music/PlaySongsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$Albums;->getStoreAlbumUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 277
    iget-object v0, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->this$0:Lcom/google/android/music/PlaySongsActivity;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 279
    if-eqz v6, :cond_78

    :try_start_5e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 280
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->mFoundLocalId:J

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->mFoundSingleSong:Z
    :try_end_6e
    .catchall {:try_start_5e .. :try_end_6e} :catchall_7d

    .line 285
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v0, v7

    goto :goto_40

    .line 271
    :catchall_73
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 285
    :cond_78
    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v0, v8

    .line 288
    goto :goto_40

    .line 285
    :catchall_7d
    move-exception v0

    invoke-static {v6}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0
.end method

.method private postFailure()V
    .registers 2

    .prologue
    .line 298
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->sendEmptyMessage(I)Z

    .line 299
    return-void
.end method

.method private postSuccess()V
    .registers 3

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 293
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 294
    invoke-virtual {p0, v0}, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->sendMessage(Landroid/os/Message;)Z

    .line 295
    return-void
.end method

.method private processSuccess()V
    .registers 5

    .prologue
    .line 302
    iget-boolean v1, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->mFinished:Z

    if-eqz v1, :cond_5

    .line 320
    :goto_4
    return-void

    .line 305
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->mFinished:Z

    .line 307
    iget-boolean v1, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->mFoundSingleSong:Z

    if-eqz v1, :cond_20

    .line 308
    new-instance v0, Lcom/google/android/music/medialist/SingleSongList;

    iget-wide v1, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->mFoundLocalId:J

    iget-object v3, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/medialist/SingleSongList;-><init>(JLjava/lang/String;)V

    .line 312
    .local v0, songlist:Lcom/google/android/music/medialist/SongList;
    :goto_15
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->this$0:Lcom/google/android/music/PlaySongsActivity;

    new-instance v2, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker$2;-><init>(Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;Lcom/google/android/music/medialist/SongList;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/PlaySongsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 310
    .end local v0           #songlist:Lcom/google/android/music/medialist/SongList;
    :cond_20
    new-instance v0, Lcom/google/android/music/medialist/AlbumSongList;

    iget-wide v1, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->mFoundLocalId:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    .restart local v0       #songlist:Lcom/google/android/music/medialist/SongList;
    goto :goto_15
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x3

    .line 224
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_5e

    .line 250
    :cond_7
    :goto_7
    return-void

    .line 228
    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->checkIfExists()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 229
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v7, :cond_18

    const-string v0, "initial_check"

    .line 231
    .local v0, trackerLabel:Ljava/lang/String;
    :goto_14
    invoke-direct {p0}, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->postSuccess()V

    goto :goto_7

    .line 229
    .end local v0           #trackerLabel:Ljava/lang/String;
    :cond_18
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v6, :cond_1f

    const-string v0, "post_sync"

    goto :goto_14

    :cond_1f
    const-string v0, "uri_update"

    goto :goto_14

    .line 232
    :cond_22
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v6, :cond_7

    .line 233
    invoke-direct {p0}, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->postFailure()V

    goto :goto_7

    .line 237
    :pswitch_2a
    invoke-direct {p0}, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->processSuccess()V

    goto :goto_7

    .line 240
    :pswitch_2e
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->this$0:Lcom/google/android/music/PlaySongsActivity;

    #getter for: Lcom/google/android/music/PlaySongsActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;
    invoke-static {v1}, Lcom/google/android/music/PlaySongsActivity;->access$300(Lcom/google/android/music/PlaySongsActivity;)Lcom/google/android/music/MusicEventLogger;

    move-result-object v1

    const-string v2, "failure"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "failureReason"

    aput-object v5, v3, v4

    const-string v4, "couldNotFindSongs"

    aput-object v4, v3, v7

    const/4 v4, 0x2

    const-string v5, "activeScreen"

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->this$0:Lcom/google/android/music/PlaySongsActivity;

    invoke-virtual {v4}, Lcom/google/android/music/PlaySongsActivity;->getPageUrlForTracking()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget-object v1, p0, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;->this$0:Lcom/google/android/music/PlaySongsActivity;

    new-instance v2, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker$1;-><init>(Lcom/google/android/music/PlaySongsActivity$AsyncCheckupWorker;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/PlaySongsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 224
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_2a
        :pswitch_2e
    .end packed-switch
.end method
