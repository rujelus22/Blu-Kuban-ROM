.class public abstract Lcom/google/android/picasasync/SyncTask;
.super Ljava/lang/Object;
.source "SyncTask.java"


# instance fields
.field mPriority:I

.field public final syncAccount:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    .line 95
    return-void
.end method

.method protected static isSyncOnBattery(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 49
    const-string v0, "sync_on_battery"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/picasasync/SyncTask;->queryBooleanSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static isSyncOnRoaming(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 45
    const-string v0, "sync_on_roaming"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/picasasync/SyncTask;->queryBooleanSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected static isSyncPicasaOnWifiOnly(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 37
    const-string v0, "sync_picasa_on_wifi_only"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/picasasync/SyncTask;->queryBooleanSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static queryBooleanSetting(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 13
    .parameter "context"
    .parameter "settingName"
    .parameter "defaultValue"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 54
    const/4 v6, 0x0

    .line 56
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getSettingsUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 58
    if-eqz v6, :cond_2c

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_53
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_28} :catch_34

    move-result v0

    if-eqz v0, :cond_32

    move p2, v8

    .line 65
    .end local p2
    :cond_2c
    :goto_2c
    if-eqz v6, :cond_31

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_31
    :goto_31
    return p2

    .restart local p2
    :cond_32
    move p2, v9

    .line 58
    goto :goto_2c

    .line 61
    :catch_34
    move-exception v7

    .line 62
    .local v7, t:Ljava/lang/Throwable;
    :try_start_35
    const-string v0, "PicasaSyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_53

    .line 65
    if-eqz v6, :cond_31

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_31

    .end local v7           #t:Ljava/lang/Throwable;
    :catchall_53
    move-exception v0

    if-eqz v6, :cond_59

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_59
    throw v0
.end method


# virtual methods
.method public abstract cancelSync()V
.end method

.method public isAutoSync()Z
    .registers 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/android/picasasync/SyncTask;->isBackgroundSync()Z

    move-result v0

    return v0
.end method

.method public abstract isBackgroundSync()Z
.end method

.method public abstract isDownSync()Z
.end method

.method public abstract isSyncOnBattery()Z
.end method

.method public isSyncOnRoaming()Z
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isSyncOnWifiOnly()Z
.end method

.method public abstract performSync(Landroid/content/SyncResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 99
    const-string v0, "%s (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/picasasync/SyncTask;->syncAccount:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
