.class Lcom/google/android/picasastore/FingerprintManager$FingerprintDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FingerprintDatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fingerprint.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 149
    iput-object p1, p0, Lcom/google/android/picasastore/FingerprintManager$FingerprintDatabaseHelper;->mContext:Landroid/content/Context;

    .line 150
    return-void
.end method


# virtual methods
.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    .prologue
    .line 170
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_7

    move-result-object v1

    .line 173
    :goto_5
    monitor-exit p0

    return-object v1

    .line 171
    :catch_7
    move-exception v0

    .line 172
    .local v0, t:Ljava/lang/Throwable;
    :try_start_8
    iget-object v1, p0, Lcom/google/android/picasastore/FingerprintManager$FingerprintDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "fingerprint.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 173
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_14

    move-result-object v1

    goto :goto_5

    .line 170
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    .prologue
    .line 160
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_7

    move-result-object v1

    .line 163
    :goto_5
    monitor-exit p0

    return-object v1

    .line 161
    :catch_7
    move-exception v0

    .line 162
    .local v0, t:Ljava/lang/Throwable;
    :try_start_8
    iget-object v1, p0, Lcom/google/android/picasastore/FingerprintManager$FingerprintDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "fingerprint.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 163
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_14

    move-result-object v1

    goto :goto_5

    .line 160
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 154
    sget-object v0, Lcom/google/android/picasastore/FingerprintEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 155
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    .line 179
    sget-object v0, Lcom/google/android/picasastore/FingerprintEntry;->SCHEMA:Lcom/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/common/EntrySchema;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/google/android/picasastore/FingerprintManager$FingerprintDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 181
    return-void
.end method
