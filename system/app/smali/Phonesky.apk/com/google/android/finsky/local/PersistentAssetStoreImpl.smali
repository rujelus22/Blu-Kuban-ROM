.class Lcom/google/android/finsky/local/PersistentAssetStoreImpl;
.super Ljava/lang/Object;
.source "PersistentAssetStoreImpl.java"

# interfaces
.implements Lcom/google/android/finsky/local/PersistentAssetStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/local/PersistentAssetStoreImpl$DatabaseHelper;,
        Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;,
        Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;,
        Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;,
        Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;,
        Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;,
        Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;
    }
.end annotation


# static fields
.field private static final sLongBinder:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStringBinder:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDeleteAssetStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mDeleteAssetVersionStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mInsertAssetVersionStmt:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$1;

    invoke-direct {v0}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->sLongBinder:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;

    .line 73
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$2;

    invoke-direct {v0}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$2;-><init>()V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->sStringBinder:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 194
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$DatabaseHelper;

    const-string v1, "market_assets.db"

    invoke-direct {v0, p1, v1}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 195
    return-void
.end method

.method protected constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 200
    return-void
.end method

.method static synthetic access$100()Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->sStringBinder:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->sLongBinder:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$FieldBinder;

    return-object v0
.end method

.method static synthetic access$400([Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;ZZ)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->makeDelimitedList([Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private compileInsertStatement([Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .registers 7
    .parameter "columns"
    .parameter "tableName"

    .prologue
    const/4 v3, 0x0

    .line 328
    iget-object v0, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v3, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->makeDelimitedList([Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-static {v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->makeDelimitedListOfQuestionMarks(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method private static getColumnNamesAsStrings([Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Z)[Ljava/lang/String;
    .registers 6
    .parameter "columns"
    .parameter "skipFirst"

    .prologue
    .line 169
    if-eqz p1, :cond_18

    const/4 v0, 0x1

    .line 170
    .local v0, i:I
    :goto_3
    array-length v3, p0

    sub-int/2addr v3, v0

    new-array v2, v3, [Ljava/lang/String;

    .line 172
    .local v2, result:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_8
    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 173
    aget-object v3, p0, v1

    invoke-interface {v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 169
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #result:[Ljava/lang/String;
    :cond_18
    const/4 v0, 0x0

    goto :goto_3

    .line 177
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #result:[Ljava/lang/String;
    :cond_1a
    return-object v2
.end method

.method private getUriAsString(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 459
    const-string v0, ""

    .line 460
    .local v0, uriString:Ljava/lang/String;
    if-eqz p1, :cond_c

    .line 461
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    if-nez v0, :cond_c

    .line 464
    const-string v0, ""

    .line 467
    :cond_c
    return-object v0
.end method

.method private getUriFromString(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "uriString"

    .prologue
    .line 474
    if-nez p1, :cond_5

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_4
    return-object v0

    :cond_5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4
.end method

.method private static makeDelimitedList([Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;ZZ)Ljava/lang/String;
    .registers 11
    .parameter "columns"
    .parameter "includeTypes"
    .parameter "skipFirst"

    .prologue
    .line 213
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 215
    .local v1, buf:Ljava/lang/StringBuffer;
    const/4 v3, 0x1

    .line 216
    .local v3, first:Z
    move-object v0, p0

    .local v0, arr$:[Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_9
    if-ge v4, v5, :cond_3a

    aget-object v2, v0, v4

    .line 217
    .local v2, c:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;
    if-eqz v3, :cond_15

    if-eqz p2, :cond_15

    .line 218
    const/4 v3, 0x0

    .line 216
    :goto_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 222
    :cond_15
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_20

    .line 223
    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    :cond_20
    invoke-interface {v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    if-eqz p1, :cond_38

    .line 229
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;->getType()Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->typeValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    :cond_38
    const/4 v3, 0x0

    goto :goto_12

    .line 235
    .end local v2           #c:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static makeDelimitedListOfQuestionMarks(I)Ljava/lang/String;
    .registers 4
    .parameter "num"

    .prologue
    .line 239
    if-gtz p0, :cond_5

    .line 240
    const-string v2, ""

    .line 251
    :goto_4
    return-object v2

    .line 243
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 245
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    add-int/lit8 v2, p0, -0x1

    if-ge v1, v2, :cond_1c

    .line 248
    const-string v2, ", ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 251
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method


# virtual methods
.method public declared-synchronized deleteAsset(Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"

    .prologue
    .line 355
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mDeleteAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_2c

    .line 356
    iget-object v0, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM assets WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->PACKAGE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    invoke-virtual {v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " == ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mDeleteAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 359
    :cond_2c
    iget-object v0, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mDeleteAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mDeleteAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 361
    monitor-exit p0

    return-void

    .line 355
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteAssetVersion(Ljava/lang/String;)V
    .registers 5
    .parameter "assetId"

    .prologue
    .line 341
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mDeleteAssetVersionStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_2c

    .line 342
    iget-object v0, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM asset_versions WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ID:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " == ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mDeleteAssetVersionStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 345
    :cond_2c
    iget-object v0, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mDeleteAssetVersionStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mDeleteAssetVersionStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 347
    monitor-exit p0

    return-void

    .line 341
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllAssets()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/local/LocalAssetRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "assets"

    invoke-static {}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->values()[Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->getColumnNamesAsStrings([Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Z)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_51

    move-result-object v8

    .line 370
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_17
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 372
    .local v9, localAssets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/local/LocalAssetRecord;>;"
    :goto_1b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 373
    new-instance v0, Lcom/google/android/finsky/local/LocalAssetRecord;

    sget-object v1, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->PACKAGE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    invoke-virtual {v1}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->ordinal()I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->ACCOUNT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    invoke-virtual {v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->ordinal()I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->AUTO_UPDATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    invoke-virtual {v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->ordinal()I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/finsky/local/AutoUpdateState;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/local/AutoUpdateState;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/LocalAssetRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catchall {:try_start_17 .. :try_end_4b} :catchall_4c

    goto :goto_1b

    .line 382
    .end local v9           #localAssets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/local/LocalAssetRecord;>;"
    :catchall_4c
    move-exception v0

    :try_start_4d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_51

    .line 365
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0

    .line 382
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v9       #localAssets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/local/LocalAssetRecord;>;"
    :cond_54
    :try_start_54
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_51

    monitor-exit p0

    return-object v9
.end method

.method public declared-synchronized getAllVersions()Ljava/util/List;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/local/LocalAssetVersionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "asset_versions"

    invoke-static {}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->values()[Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->getColumnNamesAsStrings([Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Z)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->VERSION_CODE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ASC"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_19c

    move-result-object v27

    .line 396
    .local v27, cursor:Landroid/database/Cursor;
    :try_start_2d
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v28

    .line 397
    .local v28, localAssets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/local/LocalAssetVersionRecord;>;"
    :goto_31
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1b1

    .line 398
    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->STATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 399
    .local v26, assetStateStr:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/google/android/finsky/local/AssetState;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/local/AssetState;

    move-result-object v29

    .line 401
    .local v29, state:Lcom/google/android/finsky/local/AssetState;
    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->FORWARD_LOCKED:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    .line 404
    .local v19, isForwardLocked:Z
    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->REFUND_PERIOD_END_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_19f

    const/16 v20, 0x0

    .line 409
    .local v20, refundPeriodEndTime:Ljava/lang/Long;
    :goto_67
    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->URI:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 411
    .local v25, URIString:Ljava/lang/String;
    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->PACKAGE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_VERSION_CODE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v4}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sget-object v5, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_URL:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v5

    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_SIZE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v6}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v6

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    sget-object v8, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_STATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v8}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v8

    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Lcom/google/android/finsky/download/obb/ObbState;->getMatchingState(I)Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v8

    sget-object v9, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_URI:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v9}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v9

    move-object/from16 v0, v27

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/google/android/finsky/download/obb/ObbFactory;->create(ZLjava/lang/String;ILjava/lang/String;JLcom/google/android/finsky/download/obb/ObbState;Ljava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v23

    .line 423
    .local v23, mainObb:Lcom/google/android/finsky/download/obb/Obb;
    const/4 v2, 0x1

    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_VERSION_CODE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v4}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sget-object v5, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_URL:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v5

    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_SIZE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v6}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v6

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    sget-object v8, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_STATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v8}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v8

    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Lcom/google/android/finsky/download/obb/ObbState;->getMatchingState(I)Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v8

    sget-object v9, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_URI:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v9}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v9

    move-object/from16 v0, v27

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/google/android/finsky/download/obb/ObbFactory;->create(ZLjava/lang/String;ILjava/lang/String;JLcom/google/android/finsky/download/obb/ObbState;Ljava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v24

    .line 433
    .local v24, patchObb:Lcom/google/android/finsky/download/obb/Obb;
    new-instance v2, Lcom/google/android/finsky/local/LocalAssetVersionRecord;

    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->VERSION_CODE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v4}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sget-object v5, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ID:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v5

    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->SIZE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v6}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v6

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    sget-object v6, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->DOWNLOAD_PENDING_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v6}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v6

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    sget-object v6, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->DOWNLOAD_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v6}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v6

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    sget-object v6, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->INSTALL_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v6}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v6

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    sget-object v6, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->UNINSTALL_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v6}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v6

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    sget-object v6, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->SIGNATURE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v6}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v6

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->getUriFromString(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    sget-object v6, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->REFERRER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v6}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v6

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    sget-object v6, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->SOURCE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v6}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v6

    move-object/from16 v0, v27

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v6, v29

    invoke-direct/range {v2 .. v24}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/local/AssetState;JJJJJLjava/lang/String;Landroid/net/Uri;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)V

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_195
    .catchall {:try_start_2d .. :try_end_195} :catchall_197

    goto/16 :goto_31

    .line 454
    .end local v3           #packageName:Ljava/lang/String;
    .end local v19           #isForwardLocked:Z
    .end local v20           #refundPeriodEndTime:Ljava/lang/Long;
    .end local v23           #mainObb:Lcom/google/android/finsky/download/obb/Obb;
    .end local v24           #patchObb:Lcom/google/android/finsky/download/obb/Obb;
    .end local v25           #URIString:Ljava/lang/String;
    .end local v26           #assetStateStr:Ljava/lang/String;
    .end local v28           #localAssets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/local/LocalAssetVersionRecord;>;"
    .end local v29           #state:Lcom/google/android/finsky/local/AssetState;
    :catchall_197
    move-exception v2

    :try_start_198
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_19c
    .catchall {:try_start_198 .. :try_end_19c} :catchall_19c

    .line 391
    .end local v27           #cursor:Landroid/database/Cursor;
    :catchall_19c
    move-exception v2

    monitor-exit p0

    throw v2

    .line 404
    .restart local v19       #isForwardLocked:Z
    .restart local v26       #assetStateStr:Ljava/lang/String;
    .restart local v27       #cursor:Landroid/database/Cursor;
    .restart local v28       #localAssets:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/local/LocalAssetVersionRecord;>;"
    .restart local v29       #state:Lcom/google/android/finsky/local/AssetState;
    :cond_19f
    :try_start_19f
    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->REFUND_PERIOD_END_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1ae
    .catchall {:try_start_19f .. :try_end_1ae} :catchall_197

    move-result-object v20

    goto/16 :goto_67

    .line 454
    .end local v19           #isForwardLocked:Z
    .end local v26           #assetStateStr:Ljava/lang/String;
    .end local v29           #state:Lcom/google/android/finsky/local/AssetState;
    :cond_1b1
    :try_start_1b1
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V
    :try_end_1b4
    .catchall {:try_start_1b1 .. :try_end_1b4} :catchall_19c

    monitor-exit p0

    return-object v28
.end method

.method public declared-synchronized insertAsset(Lcom/google/android/finsky/local/LocalAssetRecord;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 314
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_11

    .line 315
    invoke-static {}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->values()[Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    move-result-object v1

    const-string v2, "assets"

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->compileInsertStatement([Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 318
    :cond_11
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;

    iget-object v1, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;-><init>(Landroid/database/sqlite/SQLiteStatement;Lcom/google/android/finsky/local/PersistentAssetStoreImpl$1;)V

    .line 320
    .local v0, b:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;
    sget-object v1, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->PACKAGE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetRecord;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 321
    sget-object v1, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->ACCOUNT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetRecord;->getAccountString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 322
    sget-object v1, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->AUTO_UPDATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetRecord;->getAutoUpdateState()Lcom/google/android/finsky/local/AutoUpdateState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/local/AutoUpdateState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 324
    iget-object v1, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 325
    monitor-exit p0

    return-void

    .line 314
    .end local v0           #b:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;
    :catchall_3f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized insertAssetVersion(Lcom/google/android/finsky/local/LocalAssetVersionRecord;)V
    .registers 9
    .parameter "r"

    .prologue
    .line 256
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mInsertAssetVersionStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v4, :cond_11

    .line 257
    invoke-static {}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->values()[Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    move-result-object v4

    const-string v5, "asset_versions"

    invoke-direct {p0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->compileInsertStatement([Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mInsertAssetVersionStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 261
    :cond_11
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;

    iget-object v4, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mInsertAssetVersionStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;-><init>(Landroid/database/sqlite/SQLiteStatement;Lcom/google/android/finsky/local/PersistentAssetStoreImpl$1;)V

    .line 263
    .local v0, b:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ID:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getAssetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 265
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->STATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/local/AssetState;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 266
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->DOWNLOAD_PENDING_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getDownloadPendingTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 267
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->DOWNLOAD_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getDownloadTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 268
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->INSTALL_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getInstallTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 269
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->UNINSTALL_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getUninstallTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 270
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->SIZE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 272
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, packageName:Ljava/lang/String;
    sget-object v5, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->PACKAGE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    if-nez v2, :cond_16f

    const-string v4, ""

    :goto_7a
    invoke-virtual {v0, v5, v4}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 275
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->URI:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->getUriAsString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 276
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->FORWARD_LOCKED:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->isForwardLocked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 277
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->REFUND_PERIOD_END_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getRefundPeriodEndTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 278
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->VERSION_CODE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getVersionCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 279
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->REFERRER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getReferrer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 280
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->SOURCE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 281
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->SIGNATURE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 283
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getMainObb()Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v1

    .line 284
    .local v1, mainObb:Lcom/google/android/finsky/download/obb/Obb;
    if-nez v1, :cond_db

    .line 287
    const/4 v4, 0x0

    invoke-static {v4, v2}, Lcom/google/android/finsky/download/obb/ObbFactory;->createEmpty(ZLjava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v1

    .line 288
    const-string v4, "Null main OBB in record"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    :cond_db
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_URL:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-interface {v1}, Lcom/google/android/finsky/download/obb/Obb;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 291
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_URI:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-interface {v1}, Lcom/google/android/finsky/download/obb/Obb;->getContentUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 292
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_SIZE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-interface {v1}, Lcom/google/android/finsky/download/obb/Obb;->getSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 293
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_STATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-interface {v1}, Lcom/google/android/finsky/download/obb/Obb;->getState()Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/download/obb/ObbState;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 294
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_VERSION_CODE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-interface {v1}, Lcom/google/android/finsky/download/obb/Obb;->getVersionCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 296
    invoke-virtual {p1}, Lcom/google/android/finsky/local/LocalAssetVersionRecord;->getPatchObb()Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v3

    .line 297
    .local v3, patchObb:Lcom/google/android/finsky/download/obb/Obb;
    if-nez v3, :cond_12b

    .line 300
    const/4 v4, 0x1

    invoke-static {v4, v2}, Lcom/google/android/finsky/download/obb/ObbFactory;->createEmpty(ZLjava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v3

    .line 301
    const-string v4, "Null patch OBB in record"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    :cond_12b
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_URL:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 304
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_URI:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getContentUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 305
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_SIZE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 306
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_STATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getState()Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/download/obb/ObbState;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 307
    sget-object v4, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_VERSION_CODE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-interface {v3}, Lcom/google/android/finsky/download/obb/Obb;->getVersionCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;->bind(Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;Ljava/lang/Object;)V

    .line 309
    iget-object v4, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl;->mInsertAssetVersionStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_16d
    .catchall {:try_start_1 .. :try_end_16d} :catchall_172

    .line 310
    monitor-exit p0

    return-void

    .end local v1           #mainObb:Lcom/google/android/finsky/download/obb/Obb;
    .end local v3           #patchObb:Lcom/google/android/finsky/download/obb/Obb;
    :cond_16f
    move-object v4, v2

    .line 273
    goto/16 :goto_7a

    .line 256
    .end local v0           #b:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Binder;
    .end local v2           #packageName:Ljava/lang/String;
    :catchall_172
    move-exception v4

    monitor-exit p0

    throw v4
.end method
