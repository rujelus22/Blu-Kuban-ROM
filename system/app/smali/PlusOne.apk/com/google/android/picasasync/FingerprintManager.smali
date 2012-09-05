.class Lcom/google/android/picasasync/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# static fields
.field private static final FINGERPRINT_TABLE:Ljava/lang/String;

.field private static final PROJECTION_FINGERPRINT:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/picasasync/FingerprintEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/FingerprintManager;->FINGERPRINT_TABLE:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fingerprint"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/picasasync/FingerprintManager;->PROJECTION_FINGERPRINT:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/picasasync/UploadsDatabaseHelper;)V
    .registers 4
    .parameter "context"
    .parameter "helper"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/FingerprintManager;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/google/android/picasasync/FingerprintManager;->mDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    .line 51
    return-void
.end method


# virtual methods
.method public getCachedFingerprint(Ljava/lang/String;)Lcom/android/gallery3d/common/Fingerprint;
    .registers 12
    .parameter "contentUri"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 93
    iget-object v1, p0, Lcom/google/android/picasasync/FingerprintManager;->mDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 94
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/google/android/picasasync/FingerprintManager;->FINGERPRINT_TABLE:Ljava/lang/String;

    sget-object v2, Lcom/google/android/picasasync/FingerprintManager;->PROJECTION_FINGERPRINT:[Ljava/lang/String;

    const-string v3, "content_uri=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 97
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_37

    :try_start_1b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 98
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_37

    .line 99
    new-instance v1, Lcom/android/gallery3d/common/Fingerprint;

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/gallery3d/common/Fingerprint;-><init>([B)V
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_58
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_32} :catch_3b

    .line 105
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v5, v1

    .line 107
    :goto_36
    return-object v5

    .line 105
    :cond_37
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_36

    .line 102
    :catch_3b
    move-exception v9

    .line 103
    .local v9, t:Ljava/lang/Throwable;
    :try_start_3c
    const-string v1, "FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot get fingerprint from cache for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_3c .. :try_end_54} :catchall_58

    .line 105
    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_36

    .end local v9           #t:Ljava/lang/Throwable;
    :catchall_58
    move-exception v1

    invoke-static {v8}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method public declared-synchronized getFingerprint(Ljava/lang/String;Z)Lcom/android/gallery3d/common/Fingerprint;
    .registers 10
    .parameter "contentUri"
    .parameter "forceRecalculate"

    .prologue
    const/4 v1, 0x0

    .line 62
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/google/android/picasasync/FingerprintManager;->getCachedFingerprint(Ljava/lang/String;)Lcom/android/gallery3d/common/Fingerprint;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6e

    move-result-object v0

    .line 63
    .local v0, cachedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    if-nez p2, :cond_c

    if-eqz v0, :cond_c

    .line 85
    .end local v0           #cachedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    :goto_a
    monitor-exit p0

    return-object v0

    .line 68
    .restart local v0       #cachedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    :cond_c
    :try_start_c
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 69
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/picasasync/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/gallery3d/common/Fingerprint;->fromInputStream(Ljava/io/InputStream;[J)Lcom/android/gallery3d/common/Fingerprint;
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_6e
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1e} :catch_39

    move-result-object v1

    .line 77
    .local v1, fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    if-eqz v0, :cond_27

    :try_start_21
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/common/Fingerprint;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 79
    :cond_27
    sget-object v4, Lcom/google/android/picasasync/FingerprintEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    iget-object v5, p0, Lcom/google/android/picasasync/FingerprintManager;->mDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-virtual {v5}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    new-instance v6, Lcom/google/android/picasasync/FingerprintEntry;

    invoke-direct {v6, p1, v1}, Lcom/google/android/picasasync/FingerprintEntry;-><init>(Ljava/lang/String;Lcom/android/gallery3d/common/Fingerprint;)V

    invoke-virtual {v4, v5, v6}, Lcom/android/gallery3d/common/EntrySchema;->insertOrReplace(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/gallery3d/common/Entry;)J
    :try_end_37
    .catchall {:try_start_21 .. :try_end_37} :catchall_6e
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_37} :catch_54

    :cond_37
    :goto_37
    move-object v0, v1

    .line 85
    goto :goto_a

    .line 71
    .end local v1           #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_39
    move-exception v2

    .line 72
    .local v2, t:Ljava/lang/Throwable;
    :try_start_3a
    const-string v4, "FingerprintManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot compute fingerprint for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 73
    goto :goto_a

    .line 82
    .end local v2           #t:Ljava/lang/Throwable;
    .restart local v1       #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .restart local v3       #uri:Landroid/net/Uri;
    :catch_54
    move-exception v2

    .line 83
    .restart local v2       #t:Ljava/lang/Throwable;
    const-string v4, "FingerprintManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot cache fingerprint for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_3a .. :try_end_6d} :catchall_6e

    goto :goto_37

    .line 62
    .end local v0           #cachedFingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v1           #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v2           #t:Ljava/lang/Throwable;
    .end local v3           #uri:Landroid/net/Uri;
    :catchall_6e
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;)V
    .registers 7
    .parameter "contentUri"

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/picasasync/FingerprintManager;->mDbHelper:Lcom/google/android/picasasync/UploadsDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/picasasync/UploadsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 115
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/google/android/picasasync/FingerprintManager;->FINGERPRINT_TABLE:Ljava/lang/String;

    const-string v2, "content_uri=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 116
    monitor-exit p0

    return-void

    .line 114
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method
