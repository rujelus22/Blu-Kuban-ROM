.class Lcom/google/android/youtube/core/transfer/TransfersDbHelper$TransfersSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TransfersDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/TransfersDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransfersSQLiteOpenHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "databaseName"

    .prologue
    .line 178
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 179
    return-void
.end method

.method private createTransfersTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 229
    const-string v0, "DROP TABLE IF EXISTS transfers"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 230
    const-string v0, "CREATE TABLE transfers (file_path TEXT PRIMARY KEY,network_uri TEXT,status INTEGER,bytes_transferred BIGINT,bytes_total BIGINT,extras BLOB,output_extras BLOB)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method private resetBundleColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 6
    .parameter "db"
    .parameter "column"

    .prologue
    const/4 v2, 0x0

    .line 223
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 224
    .local v0, values:Landroid/content/ContentValues;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #calls: Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->toBytes(Landroid/os/Bundle;)[B
    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->access$1000(Landroid/os/Bundle;)[B

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 225
    const-string v1, "transfers"

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 226
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$TransfersSQLiteOpenHelper;->createTransfersTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 184
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 215
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->wipeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 216
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$TransfersSQLiteOpenHelper;->createTransfersTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 217
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v3, 0x3

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x4

    if-ne p3, v0, :cond_55

    const/4 v0, 0x1

    :goto_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newVersion should be 4 but is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 191
    if-ge p2, v3, :cond_57

    .line 192
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$TransfersSQLiteOpenHelper;->createTransfersTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 193
    const-string v0, "INSERT INTO transfers SELECT file_path, network_uri, status, bytes_downloaded, bytes_total, NULL, NULL FROM downloads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 203
    const-string v0, "DROP TABLE downloads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 204
    const-string v0, "extras"

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$TransfersSQLiteOpenHelper;->resetBundleColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 205
    const-string v0, "output_extras"

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$TransfersSQLiteOpenHelper;->resetBundleColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 211
    :cond_54
    :goto_54
    return-void

    .line 189
    :cond_55
    const/4 v0, 0x0

    goto :goto_25

    .line 206
    :cond_57
    if-ne p2, v3, :cond_54

    .line 207
    const-string v0, "ALTER TABLE transfers ADD COLUMN output_extras BLOB"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 209
    const-string v0, "output_extras"

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$TransfersSQLiteOpenHelper;->resetBundleColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_54
.end method
