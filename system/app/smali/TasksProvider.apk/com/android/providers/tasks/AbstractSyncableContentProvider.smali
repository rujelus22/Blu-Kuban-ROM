.class public abstract Lcom/android/providers/tasks/AbstractSyncableContentProvider;
.super Lcom/android/providers/tasks/SyncableContentProvider;
.source "AbstractSyncableContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/tasks/AbstractSyncableContentProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final sAccountProjection:[Ljava/lang/String;


# instance fields
.field private mAccounts:[Landroid/accounts/Account;

.field private final mApplyingBatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContainsDiffs:Z

.field private final mContentUri:Landroid/net/Uri;

.field private mCurrentMerger:Lcom/android/providers/tasks/AbstractTableMerger;

.field private final mDatabaseName:Ljava/lang/String;

.field private final mDatabaseVersion:I

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mIsMergeCancelled:Z

.field private mIsTemporary:Z

.field protected mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mPendingBatchNotifications:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSyncState:Lcom/android/providers/tasks/SyncStateContentProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_sync_account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->sAccountProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/net/Uri;)V
    .registers 7
    .parameter "dbName"
    .parameter "dbVersion"
    .parameter "contentUri"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Lcom/android/providers/tasks/SyncableContentProvider;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mSyncState:Lcom/android/providers/tasks/SyncStateContentProviderHelper;

    .line 76
    iput-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mCurrentMerger:Lcom/android/providers/tasks/AbstractTableMerger;

    .line 77
    iput-boolean v2, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mIsMergeCancelled:Z

    .line 86
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    .line 87
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    .line 107
    const-string v0, "SANDEEP"

    const-string v1, "In abstract syncable content"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput-object p1, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDatabaseName:Ljava/lang/String;

    .line 109
    iput p2, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDatabaseVersion:I

    .line 110
    iput-object p3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mContentUri:Landroid/net/Uri;

    .line 111
    iput-boolean v2, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mIsTemporary:Z

    .line 112
    invoke-virtual {p0, v2}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->setContainsDiffs(Z)V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/tasks/AbstractSyncableContentProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDatabaseVersion:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/providers/tasks/AbstractSyncableContentProvider;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/tasks/AbstractSyncableContentProvider;)Lcom/android/providers/tasks/SyncStateContentProviderHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mSyncState:Lcom/android/providers/tasks/SyncStateContentProviderHelper;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/providers/tasks/AbstractSyncableContentProvider;[Landroid/accounts/Account;)[Landroid/accounts/Account;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mAccounts:[Landroid/accounts/Account;

    return-object p1
.end method

.method private applyingBatch()Z
    .registers 3

    .prologue
    .line 386
    const-string v0, "AbstractSyncableContentProvider"

    const-string v1, "AbstractSyncableContentProvider applyingBatch()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 538
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v2, "AbstractSyncableContentProvider"

    const-string v3, "AbstractSyncableContentProvider applyBatch()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v1, 0x0

    .line 540
    .local v1, successful:Z
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->beginBatch()V

    .line 542
    :try_start_b
    invoke-super {p0, p1}, Lcom/android/providers/tasks/SyncableContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_14

    move-result-object v0

    .line 543
    .local v0, results:[Landroid/content/ContentProviderResult;
    const/4 v1, 0x1

    .line 546
    invoke-virtual {p0, v1}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->endBatch(Z)V

    return-object v0

    .end local v0           #results:[Landroid/content/ContentProviderResult;
    :catchall_14
    move-exception v2

    invoke-virtual {p0, v1}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->endBatch(Z)V

    throw v2
.end method

.method public final beginBatch()V
    .registers 5

    .prologue
    .line 483
    const-string v2, "AbstractSyncableContentProvider"

    const-string v3, "AbstractSyncableContentProvider beginBatch()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v2, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_23

    .line 486
    iget-object v2, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 487
    iget-object v2, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 490
    :cond_23
    invoke-direct {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->applyingBatch()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 491
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "applyBatch is not reentrant but mApplyingBatch is already set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 494
    :cond_31
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 495
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 496
    const/4 v1, 0x0

    .line 498
    .local v1, successful:Z
    :try_start_39
    iget-object v2, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_4a

    .line 499
    const/4 v1, 0x1

    .line 501
    if-nez v1, :cond_49

    .line 503
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 506
    :cond_49
    return-void

    .line 501
    :catchall_4a
    move-exception v2

    if-nez v1, :cond_50

    .line 503
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_50
    throw v2
.end method

.method protected bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 135
    const-string v0, "AbstractSyncableContentProvider"

    const-string v1, "======== bootstrapDatabase ========"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mSyncState:Lcom/android/providers/tasks/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 137
    return-void
.end method

.method public final bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 11
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 429
    const-string v5, "AbstractSyncableContentProvider"

    const-string v6, "bulkInsert()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    array-length v4, p2

    .line 431
    .local v4, size:I
    const/4 v0, 0x0

    .line 432
    .local v0, completed:I
    iget-object v5, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mSyncState:Lcom/android/providers/tasks/SyncStateContentProviderHelper;

    invoke-virtual {v5, p1}, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v2

    .line 433
    .local v2, isSyncStateUri:Z
    iget-object v5, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 434
    iget-object v5, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 436
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    if-ge v1, v4, :cond_4d

    .line 438
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v5

    if-eqz v5, :cond_3a

    if-eqz v2, :cond_3a

    .line 439
    iget-object v5, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mSyncState:Lcom/android/providers/tasks/SyncStateContentProviderHelper;

    invoke-virtual {v5}, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v5

    aget-object v6, p2, v1

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 444
    .local v3, result:Landroid/net/Uri;
    :goto_33
    if-eqz v3, :cond_37

    .line 445
    add-int/lit8 v0, v0, 0x1

    .line 436
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 441
    .end local v3           #result:Landroid/net/Uri;
    :cond_3a
    aget-object v5, p2, v1

    invoke-virtual {p0, p1, v5}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 442
    .restart local v3       #result:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContended()Z
    :try_end_45
    .catchall {:try_start_1f .. :try_end_45} :catchall_46

    goto :goto_33

    .line 450
    .end local v3           #result:Landroid/net/Uri;
    :catchall_46
    move-exception v5

    iget-object v6, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 448
    :cond_4d
    :try_start_4d
    iget-object v5, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_46

    .line 450
    iget-object v5, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 452
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v5

    if-nez v5, :cond_76

    if-ne v0, v4, :cond_76

    .line 453
    const-string v5, "AbstractSyncableContentProvider"

    const-string v6, "notifyChange in bulkInsert"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v7

    invoke-virtual {v5, p1, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 457
    :cond_76
    return v0
.end method

.method public changeRequiresLocalSync(Landroid/net/Uri;)Z
    .registers 4
    .parameter "uri"

    .prologue
    .line 556
    const-string v0, "AbstractSyncableContentProvider"

    const-string v1, "AbstractSyncableContentProvider changeRequiresLocalSync()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v0, 0x1

    return v0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "url"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 350
    const-string v3, "AbstractSyncableContentProvider"

    const-string v4, " delete()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 352
    invoke-direct {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->applyingBatch()Z

    move-result v3

    if-nez v3, :cond_44

    const/4 v0, 0x1

    .line 353
    .local v0, notApplyingBatch:Z
    :goto_16
    if-eqz v0, :cond_1d

    .line 354
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 357
    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mSyncState:Lcom/android/providers/tasks/SyncStateContentProviderHelper;

    invoke-virtual {v3, p1}, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 358
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mSyncState:Lcom/android/providers/tasks/SyncStateContentProviderHelper;

    invoke-virtual {v3}, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 359
    .local v1, numRows:I
    if-eqz v0, :cond_3c

    .line 360
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_87

    .line 379
    :cond_3c
    if-eqz v0, :cond_43

    .line 380
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .end local v1           #numRows:I
    :cond_43
    :goto_43
    return v1

    .line 352
    .end local v0           #notApplyingBatch:Z
    :cond_44
    const/4 v0, 0x0

    goto :goto_16

    .line 364
    .restart local v0       #notApplyingBatch:Z
    :cond_46
    :try_start_46
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 365
    .local v2, result:I
    if-eqz v0, :cond_51

    .line 366
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 368
    :cond_51
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v3

    if-nez v3, :cond_72

    if-lez v2, :cond_72

    .line 369
    if-eqz v0, :cond_7b

    .line 370
    const-string v3, "AbstractSyncableContentProvider"

    const-string v4, "notifyChange in delete"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v5

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_72
    .catchall {:try_start_46 .. :try_end_72} :catchall_87

    .line 379
    :cond_72
    :goto_72
    if-eqz v0, :cond_79

    .line 380
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_79
    move v1, v2

    goto :goto_43

    .line 374
    :cond_7b
    :try_start_7b
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catchall {:try_start_7b .. :try_end_86} :catchall_87

    goto :goto_72

    .line 379
    .end local v2           #result:I
    :catchall_87
    move-exception v3

    if-eqz v0, :cond_8f

    .line 380
    iget-object v4, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_8f
    throw v3
.end method

.method protected abstract deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected deleteRowsForRemovedAccounts(Ljava/util/Map;Ljava/lang/String;)V
    .registers 23
    .parameter
    .parameter "table"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 751
    .local p1, accounts:Ljava/util/Map;,"Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Boolean;>;"
    const-string v3, "AbstractSyncableContentProvider"

    const-string v4, "AbstractSyncableContentProvider deleteRowsForRemovedAccounts()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 753
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->sAccountProjection:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_sync_account, _sync_account_type"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 756
    .local v15, c:Landroid/database/Cursor;
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_90

    .line 757
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 758
    .local v12, accountName:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 759
    .local v13, accountType:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.android.exchange"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v16

    .line 764
    .local v16, exchangeAccounts:[Landroid/accounts/Account;
    const/16 v17, 0x0

    .line 765
    .local v17, exchangeFound:Z
    move-object/from16 v14, v16

    .local v14, arr$:[Landroid/accounts/Account;
    array-length v0, v14

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_4a
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_67

    aget-object v10, v14, v18

    .line 766
    .local v10, a:Landroid/accounts/Account;
    iget-object v3, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 765
    :cond_5a
    add-int/lit8 v18, v18, 0x1

    goto :goto_4a

    .line 769
    :cond_5d
    iget-object v3, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 770
    const/16 v17, 0x1

    .line 774
    .end local v10           #a:Landroid/accounts/Account;
    :cond_67
    if-nez v17, :cond_1d

    .line 778
    new-instance v11, Landroid/accounts/Account;

    invoke-direct {v11, v12, v13}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    .local v11, account:Landroid/accounts/Account;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 781
    const-string v3, "_sync_account=? AND _sync_account_type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_1d .. :try_end_8a} :catchall_8b

    goto :goto_1d

    .line 791
    .end local v11           #account:Landroid/accounts/Account;
    .end local v12           #accountName:Ljava/lang/String;
    .end local v13           #accountType:Ljava/lang/String;
    .end local v14           #arr$:[Landroid/accounts/Account;
    .end local v16           #exchangeAccounts:[Landroid/accounts/Account;
    .end local v17           #exchangeFound:Z
    .end local v18           #i$:I
    .end local v19           #len$:I
    :catchall_8b
    move-exception v3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_90
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 793
    return-void
.end method

.method public final endBatch(Z)V
    .registers 8
    .parameter "successful"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 518
    const-string v2, "AbstractSyncableContentProvider"

    const-string v3, "endBatch()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    if-eqz p1, :cond_10

    .line 523
    :try_start_b
    iget-object v2, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_4f

    .line 526
    :cond_10
    iget-object v2, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 527
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 528
    iget-object v2, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 529
    .local v1, url:Landroid/net/Uri;
    const-string v2, "AbstractSyncableContentProvider"

    const-string v3, "notifyChange in endBatch"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v3

    invoke-virtual {v2, v1, v5, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_2c

    .line 526
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #url:Landroid/net/Uri;
    :catchall_4f
    move-exception v2

    move-object v3, v2

    iget-object v2, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 527
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 528
    iget-object v2, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_6d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 529
    .restart local v1       #url:Landroid/net/Uri;
    const-string v2, "AbstractSyncableContentProvider"

    const-string v4, "notifyChange in endBatch"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v4

    invoke-virtual {v2, v1, v5, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_6d

    .end local v1           #url:Landroid/net/Uri;
    :cond_90
    throw v3

    .line 534
    :cond_91
    return-void
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .prologue
    .line 270
    const-string v0, "AbstractSyncableContentProvider"

    const-string v1, "AbstractSyncableContentProvider getDatabase()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 272
    :cond_13
    iget-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method protected getSyncState()Lcom/android/providers/tasks/SyncStateContentProviderHelper;
    .registers 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mSyncState:Lcom/android/providers/tasks/SyncStateContentProviderHelper;

    return-object v0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9
    .parameter "url"
    .parameter "values"

    .prologue
    .line 392
    const-string v3, "AbstractSyncableContentProvider"

    const-string v4, "insert()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 394
    invoke-direct {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->applyingBatch()Z

    move-result v3

    if-nez v3, :cond_45

    const/4 v0, 0x1

    .line 395
    .local v0, notApplyingBatch:Z
    :goto_16
    if-eqz v0, :cond_1d

    .line 396
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 399
    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mSyncState:Lcom/android/providers/tasks/SyncStateContentProviderHelper;

    invoke-virtual {v3, p1}, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 400
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mSyncState:Lcom/android/providers/tasks/SyncStateContentProviderHelper;

    invoke-virtual {v3}, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 401
    .local v1, result:Landroid/net/Uri;
    if-eqz v0, :cond_3c

    .line 402
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_88

    .line 421
    :cond_3c
    if-eqz v0, :cond_43

    .line 422
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_43
    move-object v2, v1

    .end local v1           #result:Landroid/net/Uri;
    .local v2, result:Landroid/net/Uri;
    :goto_44
    return-object v2

    .line 394
    .end local v0           #notApplyingBatch:Z
    .end local v2           #result:Landroid/net/Uri;
    :cond_45
    const/4 v0, 0x0

    goto :goto_16

    .line 406
    .restart local v0       #notApplyingBatch:Z
    :cond_47
    :try_start_47
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 407
    .restart local v1       #result:Landroid/net/Uri;
    if-eqz v0, :cond_52

    .line 408
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 410
    :cond_52
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v3

    if-nez v3, :cond_73

    if-eqz v1, :cond_73

    .line 411
    if-eqz v0, :cond_7c

    .line 412
    const-string v3, "AbstractSyncableContentProvider"

    const-string v4, "notifyChange in insert"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v5

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_73
    .catchall {:try_start_47 .. :try_end_73} :catchall_88

    .line 421
    :cond_73
    :goto_73
    if-eqz v0, :cond_7a

    .line 422
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_7a
    move-object v2, v1

    .end local v1           #result:Landroid/net/Uri;
    .restart local v2       #result:Landroid/net/Uri;
    goto :goto_44

    .line 416
    .end local v2           #result:Landroid/net/Uri;
    .restart local v1       #result:Landroid/net/Uri;
    :cond_7c
    :try_start_7c
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_87
    .catchall {:try_start_7c .. :try_end_87} :catchall_88

    goto :goto_73

    .line 421
    .end local v1           #result:Landroid/net/Uri;
    :catchall_88
    move-exception v3

    if-eqz v0, :cond_90

    .line 422
    iget-object v4, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_90
    throw v3
.end method

.method protected abstract insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected isTemporary()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mIsTemporary:Z

    return v0
.end method

.method protected onAccountsChanged([Landroid/accounts/Account;)V
    .registers 13
    .parameter "accountsArray"

    .prologue
    .line 718
    const-string v9, "AbstractSyncableContentProvider"

    const-string v10, "AbstractSyncableContentProvider onAccountsChanged()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 720
    .local v1, accounts:Ljava/util/Map;,"Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Boolean;>;"
    move-object v2, p1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_e
    if-ge v4, v5, :cond_1d

    aget-object v0, v2, v4

    .line 721
    .local v0, account:Landroid/accounts/Account;
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 724
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1d
    iget-object v9, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 725
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getSyncedTables()Ljava/util/Map;

    move-result-object v7

    .line 726
    .local v7, tableMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 727
    .local v8, tables:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 728
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 730
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 732
    :try_start_3d
    iget-object v9, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mSyncState:Lcom/android/providers/tasks/SyncStateContentProviderHelper;

    iget-object v10, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mAccounts:[Landroid/accounts/Account;

    invoke-virtual {v9, v10}, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->onAccountsChanged([Landroid/accounts/Account;)V

    .line 733
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 734
    .local v6, table:Ljava/lang/String;
    invoke-virtual {p0, v1, v6}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->deleteRowsForRemovedAccounts(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_3d .. :try_end_57} :catchall_58

    goto :goto_48

    .line 738
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #table:Ljava/lang/String;
    :catchall_58
    move-exception v9

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v9

    .line 736
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_5d
    :try_start_5d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_58

    .line 738
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 740
    return-void
.end method

.method public onCreate()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 196
    const-string v0, "AbstractSyncableContentProvider"

    const-string v1, "AbstractSyncableContentProvider onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onCreate() called for temp provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_16
    new-instance v0, Lcom/android/providers/tasks/AbstractSyncableContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDatabaseName:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/providers/tasks/AbstractSyncableContentProvider$DatabaseHelper;-><init>(Lcom/android/providers/tasks/AbstractSyncableContentProvider;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 200
    new-instance v0, Lcom/android/providers/tasks/SyncStateContentProviderHelper;

    iget-object v1, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-direct {v0, v1}, Lcom/android/providers/tasks/SyncStateContentProviderHelper;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mSyncState:Lcom/android/providers/tasks/SyncStateContentProviderHelper;

    .line 201
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v1, Lcom/android/providers/tasks/AbstractSyncableContentProvider$1;

    invoke-direct {v1, p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider$1;-><init>(Lcom/android/providers/tasks/AbstractSyncableContentProvider;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 231
    return v3
.end method

.method protected onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 157
    return-void
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 564
    const-string v0, "AbstractSyncableContentProvider"

    const-string v1, "AbstractSyncableContentProvider query()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-string v0, "SANDEEP"

    const-string v1, "In query method"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 567
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mSyncState:Lcom/android/providers/tasks/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 568
    const-string v0, "SANDEEP"

    const-string v1, "In sync states"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mSyncState:Lcom/android/providers/tasks/SyncStateContentProviderHelper;

    invoke-virtual {v0}, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 572
    :goto_3a
    return-object v0

    :cond_3b
    invoke-virtual/range {p0 .. p5}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_3a
.end method

.method protected abstract queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public setContainsDiffs(Z)V
    .registers 4
    .parameter "containsDiffs"

    .prologue
    .line 281
    const-string v0, "AbstractSyncableContentProvider"

    const-string v1, "AbstractSyncableContentProvider setContainsDiffs()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v0

    if-nez v0, :cond_17

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "only a temporary provider can contain diffs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_17
    iput-boolean p1, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mContainsDiffs:Z

    .line 287
    return-void
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "url"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 310
    const-string v3, "AbstractSyncableContentProvider"

    const-string v4, "update()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 312
    invoke-direct {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->applyingBatch()Z

    move-result v3

    if-nez v3, :cond_44

    const/4 v0, 0x1

    .line 313
    .local v0, notApplyingBatch:Z
    :goto_16
    if-eqz v0, :cond_1d

    .line 314
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 317
    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mSyncState:Lcom/android/providers/tasks/SyncStateContentProviderHelper;

    invoke-virtual {v3, p1}, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 318
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mSyncState:Lcom/android/providers/tasks/SyncStateContentProviderHelper;

    invoke-virtual {v3}, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 320
    .local v1, numRows:I
    if-eqz v0, :cond_3c

    .line 321
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_87

    .line 341
    :cond_3c
    if-eqz v0, :cond_43

    .line 342
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .end local v1           #numRows:I
    :cond_43
    :goto_43
    return v1

    .line 312
    .end local v0           #notApplyingBatch:Z
    :cond_44
    const/4 v0, 0x0

    goto :goto_16

    .line 326
    .restart local v0       #notApplyingBatch:Z
    :cond_46
    :try_start_46
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 327
    .local v2, result:I
    if-eqz v0, :cond_51

    .line 328
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 330
    :cond_51
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v3

    if-nez v3, :cond_72

    if-lez v2, :cond_72

    .line 331
    if-eqz v0, :cond_7b

    .line 332
    const-string v3, "AbstractSyncableContentProvider"

    const-string v4, "notifyChange in update"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v5

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_72
    .catchall {:try_start_46 .. :try_end_72} :catchall_87

    .line 341
    :cond_72
    :goto_72
    if-eqz v0, :cond_79

    .line 342
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_79
    move v1, v2

    goto :goto_43

    .line 336
    :cond_7b
    :try_start_7b
    iget-object v3, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catchall {:try_start_7b .. :try_end_86} :catchall_87

    goto :goto_72

    .line 341
    .end local v2           #result:I
    :catchall_87
    move-exception v3

    if-eqz v0, :cond_8f

    .line 342
    iget-object v4, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_8f
    throw v3
.end method

.method protected abstract updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;II)Z
.end method
