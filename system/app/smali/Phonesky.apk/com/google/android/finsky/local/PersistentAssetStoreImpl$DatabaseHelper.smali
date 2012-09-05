.class Lcom/google/android/finsky/local/PersistentAssetStoreImpl$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PersistentAssetStoreImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/local/PersistentAssetStoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "databaseName"

    .prologue
    .line 483
    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 484
    return-void
.end method

.method private createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter "db"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE asset_versions("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->values()[Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    move-result-object v1

    #calls: Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->makeDelimitedList([Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;ZZ)Ljava/lang/String;
    invoke-static {v1, v3, v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->access$400([Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE assets("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->values()[Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    move-result-object v1

    #calls: Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->makeDelimitedList([Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;ZZ)Ljava/lang/String;
    invoke-static {v1, v3, v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->access$400([Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 497
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$DatabaseHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 489
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 502
    const/16 v0, 0x19

    if-ge p2, v0, :cond_11

    .line 505
    const-string v0, "DROP TABLE IF EXISTS asset_versions"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 506
    const-string v0, "DROP TABLE IF EXISTS assets"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 507
    invoke-direct {p0, p1}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$DatabaseHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 509
    :cond_11
    return-void
.end method
