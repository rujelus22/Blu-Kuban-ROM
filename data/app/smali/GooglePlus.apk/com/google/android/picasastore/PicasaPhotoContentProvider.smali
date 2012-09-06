.class public Lcom/google/android/picasastore/PicasaPhotoContentProvider;
.super Landroid/content/ContentProvider;
.source "PicasaPhotoContentProvider.java"


# static fields
.field private static final EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mExternalStorageFsId:I

.field private mFingerprintManager:Lcom/google/android/picasastore/FingerprintManager;

.field private mIsExternalStorageFsIdReady:Z

.field private mPicasaStore:Lcom/google/android/picasastore/PicasaStore;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    const-string v0, "content://media/external/fs_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 92
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mIsExternalStorageFsIdReady:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/picasastore/PicasaPhotoContentProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->onFsIdChanged()V

    return-void
.end method

.method private static getFsId(Landroid/content/Context;)I
    .registers 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 147
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 149
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1f

    :try_start_10
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 150
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_2b

    move-result v1

    .line 156
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1e
    return v1

    .line 152
    :cond_1f
    :try_start_1f
    const-string v1, "PicasaPhotoCP"

    const-string v2, "No FSID on this device!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_2b

    .line 153
    const/4 v1, -0x1

    .line 156
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1e

    :catchall_2b
    move-exception v1

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method private getPicasaStore()Lcom/google/android/picasastore/PicasaStore;
    .registers 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mPicasaStore:Lcom/google/android/picasastore/PicasaStore;

    if-nez v0, :cond_f

    new-instance v0, Lcom/google/android/picasastore/PicasaStore;

    invoke-virtual {p0}, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/picasastore/PicasaStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mPicasaStore:Lcom/google/android/picasastore/PicasaStore;

    .line 187
    :cond_f
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mPicasaStore:Lcom/google/android/picasastore/PicasaStore;

    return-object v0
.end method

.method private initHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;
    .registers 4
    .parameter "thread"

    .prologue
    .line 125
    new-instance v0, Lcom/google/android/picasastore/PicasaPhotoContentProvider$2;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/picasastore/PicasaPhotoContentProvider$2;-><init>(Lcom/google/android/picasastore/PicasaPhotoContentProvider;Landroid/os/Looper;)V

    return-object v0
.end method

.method private invalidateFingerprints([Ljava/lang/String;)I
    .registers 3
    .parameter "contentUris"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mFingerprintManager:Lcom/google/android/picasastore/FingerprintManager;

    invoke-virtual {v0, p1}, Lcom/google/android/picasastore/FingerprintManager;->invalidate([Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static isExternalStorageMounted()Z
    .registers 2

    .prologue
    .line 140
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private declared-synchronized onFsIdChanged()V
    .registers 6

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->isExternalStorageMounted()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_42

    move-result v2

    if-nez v2, :cond_9

    .line 182
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 163
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->getFsId(Landroid/content/Context;)I

    move-result v1

    .line 165
    .local v1, fsId:I
    iget-boolean v2, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mIsExternalStorageFsIdReady:Z

    if-nez v2, :cond_45

    .line 167
    const-string v2, "PicasaPhotoCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set fsid first time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mIsExternalStorageFsIdReady:Z

    .line 169
    iput v1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mExternalStorageFsId:I

    .line 170
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "external_storage_fsid"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_42

    goto :goto_7

    .line 161
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #fsId:I
    :catchall_42
    move-exception v2

    monitor-exit p0

    throw v2

    .line 171
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #fsId:I
    :cond_45
    :try_start_45
    iget v2, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mExternalStorageFsId:I

    if-eq v2, v1, :cond_7

    .line 173
    const-string v2, "PicasaPhotoCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fsid changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mExternalStorageFsId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iput v1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mExternalStorageFsId:I

    .line 175
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "external_storage_fsid"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    invoke-static {v0}, Lcom/google/android/picasastore/PicasaStoreFacade;->get(Landroid/content/Context;)Lcom/google/android/picasastore/PicasaStoreFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/picasastore/PicasaStoreFacade;->isMaster()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 179
    iget-object v2, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mFingerprintManager:Lcom/google/android/picasastore/FingerprintManager;

    invoke-virtual {v2}, Lcom/google/android/picasastore/FingerprintManager;->reset()V
    :try_end_8d
    .catchall {:try_start_45 .. :try_end_8d} :catchall_42

    goto/16 :goto_7
.end method

.method private queryFingerprint(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "uri"
    .parameter "contentUris"

    .prologue
    const/4 v9, 0x0

    .line 239
    const-string v8, "1"

    const-string v10, "force_recalculate"

    invoke-virtual {p1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 240
    .local v5, forceRecalculate:Z
    if-nez v5, :cond_3c

    const-string v8, "1"

    const-string v10, "cache_only"

    invoke-virtual {p1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3c

    const/4 v0, 0x1

    .line 241
    .local v0, cacheOnly:Z
    :goto_1e
    new-instance v2, Lcom/google/android/picasastore/PicasaMatrixCursor;

    invoke-direct {v2, p2}, Lcom/google/android/picasastore/PicasaMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 242
    .local v2, cursor:Lcom/google/android/picasastore/PicasaMatrixCursor;
    iget-object v4, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mFingerprintManager:Lcom/google/android/picasastore/FingerprintManager;

    .line 243
    .local v4, fm:Lcom/google/android/picasastore/FingerprintManager;
    array-length v8, p2

    new-array v1, v8, [Ljava/lang/Object;

    .line 244
    .local v1, columnValues:[Ljava/lang/Object;
    if-eqz v0, :cond_43

    .line 245
    const/4 v6, 0x0

    .local v6, i:I
    array-length v7, p2

    .local v7, n:I
    :goto_2c
    if-ge v6, v7, :cond_5a

    .line 246
    aget-object v8, p2, v6

    invoke-virtual {v4, v8}, Lcom/google/android/picasastore/FingerprintManager;->getCachedFingerprint(Ljava/lang/String;)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v3

    .line 247
    .local v3, fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    if-nez v3, :cond_3e

    move-object v8, v9

    :goto_37
    aput-object v8, v1, v6

    .line 245
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 240
    .end local v0           #cacheOnly:Z
    .end local v1           #columnValues:[Ljava/lang/Object;
    .end local v2           #cursor:Lcom/google/android/picasastore/PicasaMatrixCursor;
    .end local v3           #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v4           #fm:Lcom/google/android/picasastore/FingerprintManager;
    .end local v6           #i:I
    .end local v7           #n:I
    :cond_3c
    const/4 v0, 0x0

    goto :goto_1e

    .line 247
    .restart local v0       #cacheOnly:Z
    .restart local v1       #columnValues:[Ljava/lang/Object;
    .restart local v2       #cursor:Lcom/google/android/picasastore/PicasaMatrixCursor;
    .restart local v3       #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .restart local v4       #fm:Lcom/google/android/picasastore/FingerprintManager;
    .restart local v6       #i:I
    .restart local v7       #n:I
    :cond_3e
    invoke-virtual {v3}, Lcom/android/gallery3d/common/Fingerprint;->getBytes()[B

    move-result-object v8

    goto :goto_37

    .line 250
    .end local v3           #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v6           #i:I
    .end local v7           #n:I
    :cond_43
    const/4 v6, 0x0

    .restart local v6       #i:I
    array-length v7, p2

    .restart local v7       #n:I
    :goto_45
    if-ge v6, v7, :cond_5a

    .line 251
    aget-object v8, p2, v6

    invoke-virtual {v4, v8, v5}, Lcom/google/android/picasastore/FingerprintManager;->getFingerprint(Ljava/lang/String;Z)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v3

    .line 252
    .restart local v3       #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    if-nez v3, :cond_55

    move-object v8, v9

    :goto_50
    aput-object v8, v1, v6

    .line 250
    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    .line 252
    :cond_55
    invoke-virtual {v3}, Lcom/android/gallery3d/common/Fingerprint;->getBytes()[B

    move-result-object v8

    goto :goto_50

    .line 255
    .end local v3           #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    :cond_5a
    invoke-virtual {v2, v1}, Lcom/google/android/picasastore/PicasaMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 256
    return-object v2
.end method

.method private queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :pswitch_22
    invoke-direct {p0, p1, p2}, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->queryFingerprint(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 230
    nop

    :pswitch_data_28
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 7
    .parameter "context"
    .parameter "info"

    .prologue
    .line 192
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 193
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mAuthority:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "photos"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 195
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "fingerprint"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 196
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "photos/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 197
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "albumcovers/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 198
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :pswitch_22
    invoke-direct {p0, p3}, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->invalidateFingerprints([Ljava/lang/String;)I

    move-result v0

    return v0

    .line 293
    nop

    :pswitch_data_28
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 211
    :pswitch_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :pswitch_22
    const-string v0, "vnd.android.cursor.dir/vnd.google.android.picasasync.item"

    .line 209
    :goto_24
    return-object v0

    .line 207
    :pswitch_25
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.item"

    goto :goto_24

    .line 209
    :pswitch_28
    const-string v0, "vnd.android.cursor.item/vnd.google.android.picasasync.album_cover"

    goto :goto_24

    .line 203
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_22
        :pswitch_25
        :pswitch_9
        :pswitch_28
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v0

    .line 282
    .local v0, statsId:I
    :try_start_17
    iget-object v1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 284
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_35
    .catchall {:try_start_17 .. :try_end_35} :catchall_35

    .line 287
    :catchall_35
    move-exception v1

    invoke-static {v0}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v1
.end method

.method public onCreate()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 104
    invoke-virtual {p0}, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/picasastore/FingerprintManager;->get(Landroid/content/Context;)Lcom/google/android/picasastore/FingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mFingerprintManager:Lcom/google/android/picasastore/FingerprintManager;

    .line 106
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mPrefs:Landroid/content/SharedPreferences;

    .line 108
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "picasa-photo-provider"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 110
    .local v2, thread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 111
    invoke-direct {p0, v2}, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->initHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;

    move-result-object v1

    .line 113
    .local v1, handler:Landroid/os/Handler;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->EXTERNAL_STORAGE_FSID_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    new-instance v6, Lcom/google/android/picasastore/PicasaPhotoContentProvider$1;

    invoke-direct {v6, p0, v1}, Lcom/google/android/picasastore/PicasaPhotoContentProvider$1;-><init>(Lcom/google/android/picasastore/PicasaPhotoContentProvider;Landroid/os/Handler;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 120
    invoke-static {v1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 121
    return v7
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v0

    .line 263
    .local v0, statsId:I
    :try_start_1b
    iget-object v1, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_5a

    .line 271
    :pswitch_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3d
    .catchall {:try_start_1b .. :try_end_3d} :catchall_3d

    .line 274
    :catchall_3d
    move-exception v1

    invoke-static {v0}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v1

    .line 265
    :pswitch_42
    :try_start_42
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->getPicasaStore()Lcom/google/android/picasastore/PicasaStore;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/picasastore/PicasaStore;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_3d

    move-result-object v1

    .line 274
    invoke-static {v0}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    :goto_4d
    return-object v1

    .line 268
    :pswitch_4e
    :try_start_4e
    invoke-direct {p0}, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->getPicasaStore()Lcom/google/android/picasastore/PicasaStore;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/picasastore/PicasaStore;->openAlbumCover(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_3d

    move-result-object v1

    .line 274
    invoke-static {v0}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_4d

    .line 263
    :pswitch_data_5a
    .packed-switch 0x2
        :pswitch_42
        :pswitch_24
        :pswitch_4e
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QUERY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v1

    .line 220
    .local v1, statsId:I
    :try_start_1b
    invoke-direct/range {p0 .. p5}, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 221
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->incrementQueryResultCount(I)V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2a

    .line 224
    invoke-static {v1}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    return-object v0

    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_2a
    move-exception v2

    invoke-static {v1}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/picasastore/PicasaPhotoContentProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
