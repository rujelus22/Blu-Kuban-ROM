.class public Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;
.super Ljava/lang/Object;
.source "AccountVolumeFinder.java"


# instance fields
.field private final mAccountToVolumeIds:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mInitialized:Z


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;->mAccountToVolumeIds:Lcom/google/common/collect/Multimap;

    .line 37
    iput-object p1, p0, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    return-void
.end method

.method private processAccountVolumeTable(Ljava/lang/String;)V
    .registers 13
    .parameter "table"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 85
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "account_name"

    aput-object v0, v2, v1

    const-string v0, "volume_id"

    aput-object v0, v2, v4

    .line 86
    .local v2, columns:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 88
    .local v9, cursor:Landroid/database/Cursor;
    :goto_19
    :try_start_19
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 89
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, accountName:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 91
    .local v10, volumeId:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;->mAccountToVolumeIds:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, v8, v10}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_2f

    goto :goto_19

    .line 94
    .end local v8           #accountName:Ljava/lang/String;
    .end local v10           #volumeId:Ljava/lang/String;
    :catchall_2f
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_34
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 96
    return-void
.end method


# virtual methods
.method public getAccountNames()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;
        }
    .end annotation

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;->mInitialized:Z

    if-nez v0, :cond_c

    .line 56
    new-instance v0, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;

    const-string v1, "Must call init() first"

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;->mAccountToVolumeIds:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeIds()Ljava/util/Set;
    .registers 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;
        }
    .end annotation

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;->mInitialized:Z

    if-nez v0, :cond_c

    .line 75
    new-instance v0, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;

    const-string v1, "Must call init() first"

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;->mAccountToVolumeIds:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeIds(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;
        }
    .end annotation

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;->mInitialized:Z

    if-nez v0, :cond_c

    .line 67
    new-instance v0, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;

    const-string v1, "Must call init() first"

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;->mAccountToVolumeIds:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .registers 2

    .prologue
    .line 45
    const-string v0, "volume_states"

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;->processAccountVolumeTable(Ljava/lang/String;)V

    .line 46
    const-string v0, "collection_volumes"

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;->processAccountVolumeTable(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/provider/database/AccountVolumeFinder;->mInitialized:Z

    .line 48
    return-void
.end method
