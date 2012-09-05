.class public Lcom/google/android/apps/books/provider/database/BooksDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BooksDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;,
        Lcom/google/android/apps/books/provider/database/BooksDatabase$Views;,
        Lcom/google/android/apps/books/provider/database/BooksDatabase$Triggers;,
        Lcom/google/android/apps/books/provider/database/BooksDatabase$Tables;
    }
.end annotation


# static fields
.field private static final FACTORY:Landroid/database/sqlite/SQLiteDatabase$CursorFactory; = null

.field static final VERSION:I = 0x84
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final sProdFrontends:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFileManager:Lcom/google/android/apps/books/provider/database/ContentFileManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/books/provider/database/BooksDatabase;->FACTORY:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 59
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string v1, "http://books.google.com/"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string v1, "http://www.google.com/"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string v1, "https://encrypted.google.com/"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/provider/database/BooksDatabase;->sProdFrontends:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/ContentFileManager;)V
    .registers 6
    .parameter "context"
    .parameter "fileDeleter"

    .prologue
    .line 106
    const-string v0, "books.db"

    sget-object v1, Lcom/google/android/apps/books/provider/database/BooksDatabase;->FACTORY:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/16 v2, 0x84

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 107
    const-string v0, "Missing context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/apps/books/provider/database/BooksDatabase;->mContext:Landroid/content/Context;

    .line 108
    const-string v0, "Missing fileDeleter"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/provider/database/ContentFileManager;

    iput-object v0, p0, Lcom/google/android/apps/books/provider/database/BooksDatabase;->mFileManager:Lcom/google/android/apps/books/provider/database/ContentFileManager;

    .line 111
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    .line 112
    return-void
.end method

.method private areCompatible(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "dbFrontend"
    .parameter "frontend"

    .prologue
    .line 483
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/google/android/apps/books/provider/database/BooksDatabase;->sProdFrontends:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/google/android/apps/books/provider/database/BooksDatabase;->sProdFrontends:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static getCollectionColumnToClass()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Lcom/google/android/apps/books/provider/database/CollectionsTable;->getColumnToClass()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getCollectionVolumeColumnToClass()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lcom/google/android/apps/books/provider/database/CollectionVolumesTable;->getWritableColumnToClass()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getCollectionVolumesColumnNames()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Lcom/google/android/apps/books/provider/database/CollectionVolumesTable;->getColumnNames()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getStateColumnToClass()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Lcom/google/android/apps/books/provider/database/StatesTable;->getColumnToClass()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getVolumeColumnToClass()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {}, Lcom/google/android/apps/books/provider/database/VolumesTable;->getColumnToClass()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private recreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 445
    const-string v1, "BooksDatabase"

    const-string v2, "Re-creating database"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v0, Lcom/google/android/apps/books/sync/SyncAccountsState;

    iget-object v1, p0, Lcom/google/android/apps/books/provider/database/BooksDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/sync/SyncAccountsState;-><init>(Landroid/content/Context;)V

    .line 453
    .local v0, syncState:Lcom/google/android/apps/books/sync/SyncAccountsState;
    invoke-virtual {v0}, Lcom/google/android/apps/books/sync/SyncAccountsState;->clear()V

    .line 455
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->wipeEntities(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/google/android/apps/books/provider/database/BooksDatabase;->mFileManager:Lcom/google/android/apps/books/provider/database/ContentFileManager;

    invoke-interface {v1}, Lcom/google/android/apps/books/provider/database/ContentFileManager;->deleteAllFiles()V

    .line 458
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 459
    return-void
.end method

.method private recreateIfFrontendChanged(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .parameter "db"

    .prologue
    .line 466
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, frontend:Ljava/lang/String;
    new-instance v2, Lcom/google/android/apps/books/preference/LocalPreferences;

    iget-object v3, p0, Lcom/google/android/apps/books/provider/database/BooksDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/android/apps/books/preference/LocalPreferences;->getFrontend()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, dbFrontend:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->areCompatible(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 469
    const-string v2, "BooksDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Frontend changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", recreating DB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 472
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to change frontend from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but only have a read-only database connection."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 475
    :cond_70
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->recreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 477
    :cond_73
    return-void
.end method

.method private recreateViewsAndTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 205
    const-string v0, "type=\'view\' OR type=\'trigger\'"

    .line 206
    .local v0, selection:Ljava/lang/String;
    const-string v1, "type=\'view\' OR type=\'trigger\'"

    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->wipeEntities(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/google/android/apps/books/provider/database/VolumesTable;->getCoverUrlChangeTriggerSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/google/android/apps/books/provider/database/VolumesTable;->getViewSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/google/android/apps/books/provider/database/CollectionVolumesTable;->getViewSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/google/android/apps/books/provider/database/ChaptersTable;->getViewSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/google/android/apps/books/provider/database/SegmentsTable;->getViewSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/google/android/apps/books/provider/database/ResourcesTable;->getViewSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/google/android/apps/books/provider/database/PagesTable;->getViewSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method private wipeEntities(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 16
    .parameter "db"
    .parameter "selection"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 493
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "type"

    aput-object v0, v2, v1

    const-string v0, "name"

    aput-object v0, v2, v3

    .line 494
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "sqlite_master"

    move-object v0, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 496
    .local v8, cursor:Landroid/database/Cursor;
    :cond_19
    :goto_19
    :try_start_19
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 497
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 498
    .local v12, type:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 499
    .local v10, name:Ljava/lang/String;
    const-string v0, "sqlite_sequence"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 502
    .local v11, sql:Ljava/lang/String;
    const-string v0, "BooksDatabase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 503
    const-string v0, "BooksDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_19 .. :try_end_6f} :catchall_8d

    .line 506
    :cond_6f
    :try_start_6f
    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_8d
    .catch Landroid/database/SQLException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_19

    .line 507
    :catch_73
    move-exception v9

    .line 508
    .local v9, e:Landroid/database/SQLException;
    :try_start_74
    const-string v0, "BooksDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "When executing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8c
    .catchall {:try_start_74 .. :try_end_8c} :catchall_8d

    goto :goto_19

    .line 513
    .end local v9           #e:Landroid/database/SQLException;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #sql:Ljava/lang/String;
    .end local v12           #type:Ljava/lang/String;
    :catchall_8d
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_92
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 515
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .parameter "db"

    .prologue
    .line 145
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, frontend:Ljava/lang/String;
    new-instance v3, Lcom/google/android/apps/books/preference/LocalPreferences;

    iget-object v4, p0, Lcom/google/android/apps/books/provider/database/BooksDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->setFrontend(Ljava/lang/String;)V

    .line 150
    const-string v2, "REFERENCES volumes(volume_id)"

    .line 152
    .local v2, refVolumeId:Ljava/lang/String;
    const-string v1, "REFERENCES pages(_id)"

    .line 155
    .local v1, refPageId:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/apps/books/provider/database/VolumesTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/google/android/apps/books/provider/database/StatesTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/google/android/apps/books/provider/database/CollectionsTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/google/android/apps/books/provider/database/CollectionVolumesTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/google/android/apps/books/provider/database/ChaptersTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/google/android/apps/books/provider/database/SegmentsTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/google/android/apps/books/provider/database/ResourcesTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/google/android/apps/books/provider/database/SegmentResourcesTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/google/android/apps/books/provider/database/PagesTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/google/android/apps/books/provider/database/PagesTable;->getIndexSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/google/android/apps/books/provider/database/ConfigurationTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 167
    const-string v3, "CREATE TABLE annotations (_id INTEGER PRIMARY KEY AUTOINCREMENT, account_name TEXT NOT NULL, volume_id TEXT NOT NULL REFERENCES volumes(volume_id), annotation_type INTEGER NOT NULL, page_id TEXT NOT NULL REFERENCES pages(_id), start_position TEXT NOT NULL, end_position TEXT NOT NULL, note_body TEXT, created_timestamp INTEGER NOT NULL, edited_timestamp INTEGER NOT NULL)"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 183
    const-string v3, "CREATE TABLE session_keys (_id INTEGER PRIMARY KEY AUTOINCREMENT, account_name TEXT NOT NULL, volume_id TEXT NOT NULL REFERENCES volumes(volume_id), session_key_version TEXT NOT NULL, root_key_version INTEGER NOT NULL, session_key_blob BLOB NOT NULL, FOREIGN KEY(account_name, volume_id) REFERENCES volumes(account_name, volume_id))"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/google/android/apps/books/provider/database/AccountsTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->recreateViewsAndTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 198
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 225
    const-string v0, "BooksDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wiping data to downgrade DB from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->recreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 227
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 436
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 437
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->recreateIfFrontendChanged(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 438
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 15
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 238
    if-ne p2, p3, :cond_3

    .line 432
    :cond_2
    :goto_2
    return-void

    .line 241
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 242
    .local v5, startTime:J
    const-string v7, "BooksDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upgrading DB from version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    move v0, p2

    .line 247
    .local v0, currentVersion:I
    const/16 v7, 0x4e

    if-ge p2, v7, :cond_b6

    .line 248
    :try_start_2e
    const-string v7, "BooksDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " too old to upgrade, recreating DB."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->recreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2e .. :try_end_4f} :catch_50
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_4f} :catch_1e3
    .catch Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException; {:try_start_2e .. :try_end_4f} :catch_1ee

    goto :goto_2

    .line 412
    :catch_50
    move-exception v1

    .line 414
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v7, "BooksDatabase"

    const-string v8, "onUpgrade: SQLiteException, recreating db. "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    const/4 v0, -0x1

    .line 424
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :goto_59
    if-eq v0, p3, :cond_90

    .line 425
    const-string v7, "BooksDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Database upgrade from version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ended at version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", dropping existing data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->recreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 430
    :cond_90
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 431
    .local v2, endTime:J
    const-string v7, "BooksDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Database upgrade took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v2, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " millis"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 252
    .end local v2           #endTime:J
    :cond_b6
    const/16 v7, 0x4e

    if-ne v0, v7, :cond_bc

    .line 255
    const/16 v0, 0x50

    .line 257
    :cond_bc
    const/16 v7, 0x4f

    if-ne v0, v7, :cond_c7

    .line 260
    :try_start_c0
    const-string v7, "DROP VIEW IF EXISTS view_chapters"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 261
    const/16 v0, 0x50

    .line 263
    :cond_c7
    const/16 v7, 0x50

    if-ne v0, v7, :cond_d2

    .line 264
    const-string v7, "ALTER TABLE volume_states ADD COLUMN last_mode INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 266
    const/16 v0, 0x51

    .line 268
    :cond_d2
    const/16 v7, 0x51

    if-ne v0, v7, :cond_dd

    .line 273
    const-string v7, "UPDATE resources SET session_key_id = NULL"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 274
    const/16 v0, 0x52

    .line 276
    :cond_dd
    const/16 v7, 0x52

    if-ne v0, v7, :cond_e8

    .line 281
    const-string v7, "UPDATE volumes SET cover_content_status = 0"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 282
    const/16 v0, 0x53

    .line 284
    :cond_e8
    const/16 v7, 0x53

    if-ne v0, v7, :cond_ee

    .line 286
    const/16 v0, 0x54

    .line 288
    :cond_ee
    const/16 v7, 0x54

    if-ne v0, v7, :cond_f4

    .line 290
    const/16 v0, 0x68

    .line 292
    :cond_f4
    const/16 v7, 0x68

    if-ne v0, v7, :cond_103

    .line 295
    const-string v7, "CREATE INDEX IF NOT EXISTS pages_chapter_index ON pages (volume_id, first_chapter_id)"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 297
    const/16 v0, 0x69

    .line 298
    const/16 v7, 0x69

    if-eq p3, v7, :cond_2

    .line 304
    :cond_103
    const/16 v7, 0x69

    if-ne v0, v7, :cond_10e

    .line 305
    const-string v7, "ALTER TABLE volumes ADD COLUMN content_version TEXT"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 306
    const/16 v0, 0x6a

    .line 308
    :cond_10e
    const/16 v7, 0x6a

    if-ne v0, v7, :cond_119

    .line 313
    const-string v7, "UPDATE sections SET style_css = NULL"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 314
    const/16 v0, 0x6b

    .line 316
    :cond_119
    const/16 v7, 0x6b

    if-ne v0, v7, :cond_128

    .line 323
    const-string v7, "UPDATE volume_states SET last_mode = -1"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 324
    const/16 v0, 0x6c

    .line 325
    const/16 v7, 0x6c

    if-eq p3, v7, :cond_2

    .line 331
    :cond_128
    const/16 v7, 0x6c

    if-ne v0, v7, :cond_12e

    .line 333
    const/16 v0, 0x78

    .line 335
    :cond_12e
    const/16 v7, 0x78

    if-ne v0, v7, :cond_13e

    .line 340
    new-instance v7, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;

    iget-object v8, p0, Lcom/google/android/apps/books/provider/database/BooksDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, p1}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v7}, Lcom/google/android/apps/books/provider/database/VolumeAccountUpgrader;->upgrade()V

    .line 341
    const/16 v0, 0x7a

    .line 343
    :cond_13e
    const/16 v7, 0x7a

    if-ne v0, v7, :cond_159

    .line 345
    const-string v7, "ALTER TABLE resources ADD COLUMN resource_type TEXT"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 348
    const-string v7, "UPDATE resources SET resource_type = \'image\'"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/google/android/apps/books/provider/database/SegmentResourcesTable;->getCreationSqlVersion123()Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, sqlCreate:Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 354
    const/16 v0, 0x7b

    .line 355
    const/16 v7, 0x7b

    if-eq p3, v7, :cond_2

    .line 361
    .end local v4           #sqlCreate:Ljava/lang/String;
    :cond_159
    const/16 v7, 0x7b

    if-ne v0, v7, :cond_167

    .line 362
    new-instance v7, Lcom/google/android/apps/books/provider/database/VolumesUrlRelativizer;

    invoke-direct {v7, p1}, Lcom/google/android/apps/books/provider/database/VolumesUrlRelativizer;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v7}, Lcom/google/android/apps/books/provider/database/VolumesUrlRelativizer;->execute()V

    .line 363
    const/16 v0, 0x7c

    .line 365
    :cond_167
    const/16 v7, 0x7c

    if-ne v0, v7, :cond_172

    .line 367
    const-string v7, "ALTER TABLE volume_states ADD COLUMN license_action TEXT DEFAULT NULL"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 369
    const/16 v0, 0x7d

    .line 371
    :cond_172
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_181

    .line 372
    const-string v7, "ALTER TABLE volume_states ADD COLUMN text_zoom REAL DEFAULT NULL"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 374
    const/16 v0, 0x7e

    .line 375
    const/16 v7, 0x7e

    if-eq p3, v7, :cond_2

    .line 381
    :cond_181
    const/16 v7, 0x7e

    if-ne v0, v7, :cond_191

    .line 382
    const-string v7, "DROP INDEX IF EXISTS pages_chapter_index"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 383
    const-string v7, "CREATE INDEX pages_chapter_index ON pages (account_name, volume_id, first_chapter_id)"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 385
    const/16 v0, 0x7f

    .line 387
    :cond_191
    const/16 v7, 0x7f

    if-ne v0, v7, :cond_197

    .line 389
    const/16 v0, 0x80

    .line 391
    :cond_197
    const/16 v7, 0x80

    if-ne v0, v7, :cond_1a2

    .line 392
    iget-object v7, p0, Lcom/google/android/apps/books/provider/database/BooksDatabase;->mFileManager:Lcom/google/android/apps/books/provider/database/ContentFileManager;

    invoke-interface {v7}, Lcom/google/android/apps/books/provider/database/ContentFileManager;->migrateResourceFiles()V

    .line 393
    const/16 v0, 0x81

    .line 395
    :cond_1a2
    const/16 v7, 0x81

    if-ne v0, v7, :cond_1af

    .line 397
    invoke-static {}, Lcom/google/android/apps/books/provider/database/AccountsTable;->getCreationSqlVersion130()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 398
    const/16 v0, 0x82

    .line 400
    :cond_1af
    const/16 v7, 0x82

    if-ne v0, v7, :cond_1d3

    .line 401
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ALTER TABLE volumes ADD COLUMN tts_permission TEXT DEFAULT \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->UNKNOWN:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 403
    const/16 v0, 0x83

    .line 405
    :cond_1d3
    const/16 v7, 0x83

    if-ne v0, v7, :cond_1de

    .line 406
    const-string v7, "ALTER TABLE volumes ADD COLUMN canonical_url TEXT"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 407
    const/16 v0, 0x84

    .line 411
    :cond_1de
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->recreateViewsAndTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1e1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c0 .. :try_end_1e1} :catch_50
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_1e1} :catch_1e3
    .catch Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException; {:try_start_c0 .. :try_end_1e1} :catch_1ee

    goto/16 :goto_59

    .line 416
    :catch_1e3
    move-exception v1

    .line 417
    .local v1, e:Ljava/io/IOException;
    const-string v7, "BooksDatabase"

    const-string v8, "onUpgrade: IOException, recreating db. "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    const/4 v0, -0x1

    .line 422
    goto/16 :goto_59

    .line 419
    .end local v1           #e:Ljava/io/IOException;
    :catch_1ee
    move-exception v1

    .line 420
    .local v1, e:Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;
    const-string v7, "BooksDatabase"

    const-string v8, "onUpgrade: UpgradeException, recreating db. "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 421
    const/4 v0, -0x1

    goto/16 :goto_59
.end method
