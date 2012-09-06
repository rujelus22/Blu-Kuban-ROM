.class Lcom/google/android/apps/plus/iu/FingerprintHelper;
.super Ljava/lang/Object;
.source "FingerprintHelper.java"


# static fields
.field private static sInstance:Lcom/google/android/apps/plus/iu/FingerprintHelper;


# instance fields
.field private final mCachedFingerprintUri:Landroid/net/Uri;

.field private final mFingerprintUri:Landroid/net/Uri;

.field private final mRecalculateFingerprintUri:Landroid/net/Uri;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/FingerprintHelper;->mResolver:Landroid/content/ContentResolver;

    .line 38
    invoke-static {p1}, Lcom/google/android/picasastore/PicasaStoreFacade;->get(Landroid/content/Context;)Lcom/google/android/picasastore/PicasaStoreFacade;

    move-result-object v0

    .line 39
    .local v0, facade:Lcom/google/android/picasastore/PicasaStoreFacade;
    invoke-virtual {v0}, Lcom/google/android/picasastore/PicasaStoreFacade;->getFingerprintUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/FingerprintHelper;->mFingerprintUri:Landroid/net/Uri;

    .line 40
    invoke-virtual {v0, v2, v3}, Lcom/google/android/picasastore/PicasaStoreFacade;->getFingerprintUri(ZZ)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/FingerprintHelper;->mCachedFingerprintUri:Landroid/net/Uri;

    .line 41
    invoke-virtual {v0, v3, v2}, Lcom/google/android/picasastore/PicasaStoreFacade;->getFingerprintUri(ZZ)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/FingerprintHelper;->mRecalculateFingerprintUri:Landroid/net/Uri;

    .line 42
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/FingerprintHelper;
    .registers 3
    .parameter "context"

    .prologue
    .line 23
    const-class v1, Lcom/google/android/apps/plus/iu/FingerprintHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/iu/FingerprintHelper;->sInstance:Lcom/google/android/apps/plus/iu/FingerprintHelper;

    if-nez v0, :cond_e

    .line 24
    new-instance v0, Lcom/google/android/apps/plus/iu/FingerprintHelper;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/iu/FingerprintHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/plus/iu/FingerprintHelper;->sInstance:Lcom/google/android/apps/plus/iu/FingerprintHelper;

    .line 26
    :cond_e
    sget-object v0, Lcom/google/android/apps/plus/iu/FingerprintHelper;->sInstance:Lcom/google/android/apps/plus/iu/FingerprintHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getFingerprint(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/common/Fingerprint;
    .registers 11
    .parameter "uri"
    .parameter "contentUri"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/FingerprintHelper;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    aput-object p2, v2, v4

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 67
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2e

    :try_start_12
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 68
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 69
    new-instance v0, Lcom/android/gallery3d/common/Fingerprint;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_58
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_29} :catch_32

    .line 77
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v3, v0

    .line 79
    :goto_2d
    return-object v3

    .line 77
    :cond_2e
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2d

    .line 72
    :catch_32
    move-exception v7

    .line 73
    .local v7, t:Ljava/lang/Throwable;
    :try_start_33
    const-string v0, "FingerprintHelper"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 74
    const-string v0, "FingerprintHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot get fingerprint for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_33 .. :try_end_54} :catchall_58

    .line 77
    :cond_54
    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2d

    .end local v7           #t:Ljava/lang/Throwable;
    :catchall_58
    move-exception v0

    invoke-static {v6}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method


# virtual methods
.method public getCachedFingerprint(Ljava/lang/String;)Lcom/android/gallery3d/common/Fingerprint;
    .registers 3
    .parameter "contentUri"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/FingerprintHelper;->mCachedFingerprintUri:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/plus/iu/FingerprintHelper;->getFingerprint(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFingerprint(Ljava/lang/String;Z)Lcom/android/gallery3d/common/Fingerprint;
    .registers 4
    .parameter "contentUri"
    .parameter "forceRecalculate"

    .prologue
    .line 53
    monitor-enter p0

    if-eqz p2, :cond_b

    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/FingerprintHelper;->mRecalculateFingerprintUri:Landroid/net/Uri;

    :goto_5
    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/plus/iu/FingerprintHelper;->getFingerprint(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/common/Fingerprint;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_e

    move-result-object v0

    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/FingerprintHelper;->mFingerprintUri:Landroid/net/Uri;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_e

    goto :goto_5

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidate(Ljava/lang/String;)V
    .registers 7
    .parameter "contentUri"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/FingerprintHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/FingerprintHelper;->mFingerprintUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 87
    return-void
.end method
