.class Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseStoreSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PurchaseStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/store/PurchaseStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PurchaseStoreSQLiteOpenHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "database"

    .prologue
    .line 396
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 397
    return-void
.end method

.method private createPurchasesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 443
    const-string v0, "DROP TABLE IF EXISTS purchases"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 444
    const-string v0, "DROP INDEX IF EXISTS purchases_index_video_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 445
    const-string v0, "CREATE TABLE purchases (purchase_id TEXT PRIMARY KEY,purchase_status TEXT NOT NULL,purchase_type TEXT NOT NULL,purchase_expiration_time INT,video_id TEXT NOT NULL,account TEXT NOT NULL,purchase BLOB NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 454
    const-string v0, "CREATE INDEX purchases_index_video_id ON purchases(video_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method private readV1Database(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .registers 14
    .parameter "database"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 418
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v11, purchases:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Lcom/google/android/youtube/core/model/Purchase;>;>;"
    const-string v1, "purchases"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "account"

    aput-object v0, v2, v4

    const-string v0, "purchase"

    aput-object v0, v2, v5

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 423
    .local v9, cursor:Landroid/database/Cursor;
    :goto_1e
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 425
    const/4 v0, 0x0

    :try_start_25
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 426
    .local v8, account:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    #calls: Lcom/google/android/youtube/videos/store/PurchaseStore;->blobToPurchase([B)Lcom/google/android/youtube/core/model/Purchase;
    invoke-static {v0}, Lcom/google/android/youtube/videos/store/PurchaseStore;->access$800([B)Lcom/google/android/youtube/core/model/Purchase;

    move-result-object v10

    .line 427
    .local v10, purchase:Lcom/google/android/youtube/core/model/Purchase;
    invoke-static {v8, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_39} :catch_3a

    goto :goto_1e

    .line 428
    .end local v8           #account:Ljava/lang/String;
    .end local v10           #purchase:Lcom/google/android/youtube/core/model/Purchase;
    :catch_3a
    move-exception v0

    goto :goto_1e

    .line 432
    :cond_3c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 433
    return-object v11
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseStoreSQLiteOpenHelper;->createPurchasesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 402
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 438
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->wipeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 439
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseStoreSQLiteOpenHelper;->createPurchasesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 440
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9
    .parameter "database"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 406
    const/4 v3, 0x2

    if-ne p3, v3, :cond_4a

    const/4 v3, 0x1

    :goto_4
    invoke-static {v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(Z)V

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrading database from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 410
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseStoreSQLiteOpenHelper;->readV1Database(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v2

    .line 411
    .local v2, purchases:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Lcom/google/android/youtube/core/model/Purchase;>;>;"
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/store/PurchaseStore$PurchaseStoreSQLiteOpenHelper;->createPurchasesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 412
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 413
    .local v1, purchase:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Lcom/google/android/youtube/core/model/Purchase;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/youtube/core/model/Purchase;

    #calls: Lcom/google/android/youtube/videos/store/PurchaseStore;->writeToDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/youtube/core/model/Purchase;)V
    invoke-static {p1, v3, v4}, Lcom/google/android/youtube/videos/store/PurchaseStore;->access$700(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/youtube/core/model/Purchase;)V

    goto :goto_32

    .line 406
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #purchase:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Lcom/google/android/youtube/core/model/Purchase;>;"
    .end local v2           #purchases:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Lcom/google/android/youtube/core/model/Purchase;>;>;"
    :cond_4a
    const/4 v3, 0x0

    goto :goto_4

    .line 415
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #purchases:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Lcom/google/android/youtube/core/model/Purchase;>;>;"
    :cond_4c
    return-void
.end method
