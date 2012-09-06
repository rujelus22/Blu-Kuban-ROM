.class Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareTask;
.super Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;
.source "UploadsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/UploadsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstantShareTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/iu/UploadsManager;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;Lcom/google/android/apps/plus/iu/MediaTracker;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter "account"
    .parameter "mediaTracker"
    .parameter "mediaType"

    .prologue
    .line 2251
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    .line 2252
    const-string v5, "IS"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;-><init>(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;Lcom/google/android/apps/plus/iu/MediaTracker;Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    return-void
.end method

.method private isInstantShareActive()Z
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 2294
    const/4 v8, 0x0

    .line 2295
    .local v8, syncAccount:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2296
    .local v7, eventId:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$900(Lcom/google/android/apps/plus/iu/UploadsManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->settingsUri:Landroid/net/Uri;

    invoke-static {}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$4300()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2300
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2301
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2302
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_38

    move-result-object v7

    .line 2305
    :cond_2a
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 2308
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2310
    const/4 v7, 0x0

    .line 2313
    :cond_34
    if-eqz v7, :cond_3d

    move v0, v9

    :goto_37
    return v0

    .line 2305
    :catchall_38
    move-exception v0

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    .line 2313
    :cond_3d
    const/4 v0, 0x0

    goto :goto_37
.end method


# virtual methods
.method public isSyncOnBattery()Z
    .registers 2

    .prologue
    .line 2276
    const/4 v0, 0x1

    return v0
.end method

.method public isSyncOnRoaming()Z
    .registers 2

    .prologue
    .line 2281
    const/4 v0, 0x1

    return v0
.end method

.method public isSyncOnWifiOnly()Z
    .registers 4

    .prologue
    .line 2286
    const-string v1, "photo"

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareTask;->mMediaType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2287
    .local v0, isPhoto:Z
    if-eqz v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mWifiOnlyVideo:Z
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3900(Lcom/google/android/apps/plus/iu/UploadsManager;)Z

    move-result v1

    goto :goto_b
.end method

.method protected onUploadsDone()V
    .registers 5

    .prologue
    .line 2257
    invoke-super {p0}, Lcom/google/android/apps/plus/iu/UploadsManager$AutoUploadTask;->onUploadsDone()V

    .line 2259
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    monitor-enter v1

    .line 2261
    :try_start_6
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareTask;->isInstantShareActive()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 2264
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    invoke-static {v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3100(Lcom/google/android/apps/plus/iu/UploadsManager;)Lcom/google/android/apps/plus/iu/MediaTracker;

    move-result-object v2

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->removeMediaTracker(Lcom/google/android/apps/plus/iu/MediaTracker;)V
    invoke-static {v0, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3500(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/MediaTracker;)V

    .line 2265
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    invoke-static {v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3100(Lcom/google/android/apps/plus/iu/UploadsManager;)Lcom/google/android/apps/plus/iu/MediaTracker;

    move-result-object v2

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->cancelAutoUpload(Lcom/google/android/apps/plus/iu/MediaTracker;)V
    invoke-static {v0, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$4200(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/MediaTracker;)V

    .line 2266
    const-string v0, "iu.UploadsManager"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2267
    const-string v0, "iu.UploadsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #getter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    invoke-static {v3}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3100(Lcom/google/android/apps/plus/iu/UploadsManager;)Lcom/google/android/apps/plus/iu/MediaTracker;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    :cond_49
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/UploadsManager$InstantShareTask;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/plus/iu/UploadsManager;->mInstantShareTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    invoke-static {v0, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$3102(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/MediaTracker;)Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 2271
    :cond_4f
    monitor-exit v1

    .line 2272
    return-void

    .line 2271
    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_6 .. :try_end_53} :catchall_51

    throw v0
.end method
