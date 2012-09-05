.class public Lcom/google/android/picasasync/PicasaFacade;
.super Ljava/lang/Object;
.source "PicasaFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;,
        Lcom/google/android/picasasync/PicasaFacade$OnAuthorityChangeListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/google/android/picasasync/PicasaFacade;


# instance fields
.field private mAlbumCoversUri:Landroid/net/Uri;

.field private mAlbumsUri:Landroid/net/Uri;

.field private mAuthority:Ljava/lang/String;

.field private mAuthorityListener:Lcom/google/android/picasasync/PicasaFacade$OnAuthorityChangeListener;

.field private final mContext:Landroid/content/Context;

.field private mFingerprintUri:Landroid/net/Uri;

.field private mLocalInfo:Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;

.field private mMasterInfo:Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;

.field private mPhotosUri:Landroid/net/Uri;

.field private mSettingsUri:Landroid/net/Uri;

.field private mSyncRequestUri:Landroid/net/Uri;

.field private mUploadAllUri:Landroid/net/Uri;

.field private mUploadRecordsUri:Landroid/net/Uri;

.field private mUploadsUri:Landroid/net/Uri;

.field private mUsersUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    .line 197
    invoke-direct {p0}, Lcom/google/android/picasasync/PicasaFacade;->enableProviderAndSyncService()V

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/picasasync/PicasaFacade;->updatePicasaSyncInfo(Z)V

    .line 199
    return-void
.end method

.method private enableProviderAndSyncService()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 213
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 214
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/picasasync/PicasaContentProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 219
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/picasasync/PicasaSyncService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 223
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;
    .registers 3
    .parameter "context"

    .prologue
    .line 189
    const-class v1, Lcom/google/android/picasasync/PicasaFacade;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/picasasync/PicasaFacade;->sInstance:Lcom/google/android/picasasync/PicasaFacade;

    if-nez v0, :cond_e

    .line 190
    new-instance v0, Lcom/google/android/picasasync/PicasaFacade;

    invoke-direct {v0, p0}, Lcom/google/android/picasasync/PicasaFacade;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/picasasync/PicasaFacade;->sInstance:Lcom/google/android/picasasync/PicasaFacade;

    .line 192
    :cond_e
    sget-object v0, Lcom/google/android/picasasync/PicasaFacade;->sInstance:Lcom/google/android/picasasync/PicasaFacade;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 189
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPicasaSyncInfo(Landroid/content/pm/ServiceInfo;)Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;
    .registers 10
    .parameter "serviceInfo"

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 261
    iget-boolean v5, p1, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v5, :cond_c

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_25

    .line 262
    :cond_c
    const-string v5, "PicasaFacade"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ignore disabled picasa sync adapter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_24
    return-object v4

    .line 266
    :cond_25
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 267
    .local v2, metadata:Landroid/os/Bundle;
    if-nez v2, :cond_42

    .line 268
    const-string v5, "PicasaFacade"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "missing metadata: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 272
    :cond_42
    const-string v5, "com.google.android.picasasync.priority"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 273
    .local v3, priority:I
    const-string v5, "com.google.android.picasasync.enable-down-sync"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 274
    .local v1, enableDownSync:Z
    const-string v5, "com.google.android.picasasync.authority"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, authority:Ljava/lang/String;
    if-eq v3, v7, :cond_5d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 277
    :cond_5d
    const-string v5, "PicasaFacade"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "missing required metadata info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 280
    :cond_76
    new-instance v4, Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v3, v1}, Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_24
.end method

.method private updateAuthority(Ljava/lang/String;Z)V
    .registers 6
    .parameter "authority"
    .parameter "initialize"

    .prologue
    .line 406
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mAuthority:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 425
    :cond_8
    :goto_8
    return-void

    .line 408
    :cond_9
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaFacade;->mAuthority:Ljava/lang/String;

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaFacade;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 410
    .local v0, baseUri:Landroid/net/Uri;
    const-string v1, "photos"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mPhotosUri:Landroid/net/Uri;

    .line 411
    const-string v1, "albums"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mAlbumsUri:Landroid/net/Uri;

    .line 412
    const-string v1, "users"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mUsersUri:Landroid/net/Uri;

    .line 413
    const-string v1, "uploads"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mUploadsUri:Landroid/net/Uri;

    .line 414
    const-string v1, "upload_records"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mUploadRecordsUri:Landroid/net/Uri;

    .line 416
    const-string v1, "upload_all"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mUploadAllUri:Landroid/net/Uri;

    .line 417
    const-string v1, "fingerprint"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mFingerprintUri:Landroid/net/Uri;

    .line 418
    const-string v1, "settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mSettingsUri:Landroid/net/Uri;

    .line 419
    const-string v1, "sync_request"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mSyncRequestUri:Landroid/net/Uri;

    .line 420
    const-string v1, "albumcovers"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mAlbumCoversUri:Landroid/net/Uri;

    .line 422
    if-nez p2, :cond_8

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mAuthorityListener:Lcom/google/android/picasasync/PicasaFacade$OnAuthorityChangeListener;

    if-eqz v1, :cond_8

    .line 423
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mAuthorityListener:Lcom/google/android/picasasync/PicasaFacade$OnAuthorityChangeListener;

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaFacade;->mAuthority:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/picasasync/PicasaFacade$OnAuthorityChangeListener;->onAuthorityChange(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private updateEnableDownSync(ZZ)V
    .registers 6
    .parameter "enableDownSync"
    .parameter "initialize"

    .prologue
    .line 428
    if-nez p2, :cond_13

    invoke-virtual {p0}, Lcom/google/android/picasasync/PicasaFacade;->isMaster()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 429
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/picasasync/PicasaSyncManager;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaSyncManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/picasasync/PicasaSyncManager;->updateTasks(J)V

    .line 431
    :cond_13
    return-void
.end method


# virtual methods
.method public getAlbumsUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mAlbumsUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getFingerprintUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mFingerprintUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMasterInfo()Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mMasterInfo:Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;

    return-object v0
.end method

.method public getPhotosUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mPhotosUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSettingsUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mSettingsUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSyncRequestUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mSyncRequestUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUploadAllUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mUploadAllUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUploadUri(J)Landroid/net/Uri;
    .registers 5
    .parameter "id"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mUploadsUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getUploadsUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mUploadsUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUsersUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mUsersUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isMaster()Z
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mMasterInfo:Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mLocalInfo:Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onMediaMounted()V
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/picasasync/UploadsManager;->getInstance(Landroid/content/Context;)Lcom/google/android/picasasync/UploadsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/picasasync/UploadsManager;->onMediaMounted()V

    .line 447
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 434
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/picasasync/PicasaFacade;->updatePicasaSyncInfo(Z)V

    .line 435
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 438
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/picasasync/PicasaFacade;->updatePicasaSyncInfo(Z)V

    .line 439
    return-void
.end method

.method public requestUploadSync()V
    .registers 4

    .prologue
    .line 290
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 291
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "task"

    const-string v2, "new_photo_upload"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/picasasync/PicasaFacade;->mSyncRequestUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 293
    return-void
.end method

.method declared-synchronized updatePicasaSyncInfo(Z)V
    .registers 12
    .parameter "initialize"

    .prologue
    .line 226
    monitor-enter p0

    :try_start_1
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 228
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.google.android.picasasync.SyncAdapter"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x84

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 232
    .local v0, adapters:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 233
    .local v1, enableDownSync:Z
    const/4 v6, 0x0

    .line 234
    .local v6, result:Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, localPackageName:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 236
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {p0, v8}, Lcom/google/android/picasasync/PicasaFacade;->getPicasaSyncInfo(Landroid/content/pm/ServiceInfo;)Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;

    move-result-object v7

    .line 237
    .local v7, syncInfo:Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;
    if-eqz v7, :cond_20

    .line 238
    iget-boolean v8, v7, Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;->enableDownSync:Z

    if-eqz v8, :cond_39

    const/4 v1, 0x1

    .line 239
    :cond_39
    if-eqz v6, :cond_41

    iget v8, v6, Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;->priority:I

    iget v9, v7, Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;->priority:I

    if-ge v8, v9, :cond_42

    .line 240
    :cond_41
    move-object v6, v7

    .line 242
    :cond_42
    iget-object v8, v7, Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 243
    iput-object v7, p0, Lcom/google/android/picasasync/PicasaFacade;->mLocalInfo:Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4d

    goto :goto_20

    .line 226
    .end local v0           #adapters:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #enableDownSync:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #localPackageName:Ljava/lang/String;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v6           #result:Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;
    .end local v7           #syncInfo:Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;
    :catchall_4d
    move-exception v8

    monitor-exit p0

    throw v8

    .line 248
    .restart local v0       #adapters:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v1       #enableDownSync:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #localPackageName:Ljava/lang/String;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    .restart local v6       #result:Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;
    :cond_50
    :try_start_50
    iput-boolean v1, v6, Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;->enableDownSync:Z

    .line 249
    iput-object v6, p0, Lcom/google/android/picasasync/PicasaFacade;->mMasterInfo:Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;

    .line 251
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaFacade;->mLocalInfo:Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaFacade;->mMasterInfo:Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaFacade;->mLocalInfo:Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;

    iget-object v9, p0, Lcom/google/android/picasasync/PicasaFacade;->mMasterInfo:Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;

    if-ne v8, v9, :cond_78

    const/4 v8, 0x1

    :goto_65
    invoke-virtual {p0, v8}, Lcom/google/android/picasasync/PicasaFacade;->updateSyncableState(Z)V

    .line 256
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaFacade;->mMasterInfo:Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;

    iget-object v8, v8, Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, v8, p1}, Lcom/google/android/picasasync/PicasaFacade;->updateAuthority(Ljava/lang/String;Z)V

    .line 257
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaFacade;->mMasterInfo:Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;

    iget-boolean v8, v8, Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;->enableDownSync:Z

    invoke-direct {p0, v8, p1}, Lcom/google/android/picasasync/PicasaFacade;->updateEnableDownSync(ZZ)V
    :try_end_76
    .catchall {:try_start_50 .. :try_end_76} :catchall_4d

    .line 258
    monitor-exit p0

    return-void

    .line 254
    :cond_78
    const/4 v8, 0x0

    goto :goto_65
.end method

.method updateSyncableState(Z)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 316
    if-eqz p1, :cond_4f

    move v0, v1

    .line 319
    :goto_b
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    const-class v6, Lcom/google/android/picasasync/ConnectivityReceiver;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 322
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    const-class v6, Lcom/google/android/picasasync/BatteryReceiver;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 325
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mLocalInfo:Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;

    iget-object v1, v0, Lcom/google/android/picasasync/PicasaFacade$PicasaSyncInfo;->authority:Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaFacade;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 327
    if-eqz p1, :cond_51

    .line 328
    const-string v3, "com.google"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v3, v0

    :goto_36
    if-ge v2, v3, :cond_66

    aget-object v4, v0, v2

    .line 331
    invoke-static {v4, v1}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4c

    .line 332
    const/4 v5, -0x1

    invoke-static {v4, v1, v5}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 333
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-static {v4, v1, v5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 328
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 316
    :cond_4f
    const/4 v0, 0x2

    goto :goto_b

    .line 337
    :cond_51
    const-string v3, "com.google"

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    move v0, v2

    :goto_59
    if-ge v0, v4, :cond_66

    aget-object v5, v3, v0

    .line 338
    invoke-static {v5, v1, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 340
    invoke-static {v5, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 343
    :cond_66
    return-void
.end method
