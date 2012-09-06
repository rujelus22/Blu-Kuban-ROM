.class public abstract Lcom/android/browser/provider/SQLiteContentProvider;
.super Landroid/content/ContentProvider;
.source "SQLiteContentProvider.java"


# static fields
.field private static final MAX_OPERATIONS_PER_YIELD_POINT:I = 0x1f4

.field private static final SLEEP_AFTER_YIELD_DELAY:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "SQLiteContentProvider"


# instance fields
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

.field private mChangedUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private applyingBatch()Z
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 13
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
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v10, 0x0

    .line 197
    const/4 v6, 0x0

    .line 198
    .local v6, ypCount:I
    const/4 v3, 0x0

    .line 199
    .local v3, opCount:I
    const/4 v0, 0x0

    .line 200
    .local v0, callerIsSyncAdapter:Z
    iget-object v7, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 201
    iget-object v7, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 203
    :try_start_11
    iget-object v7, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 205
    .local v2, numOperations:I
    new-array v5, v2, [Landroid/content/ContentProviderResult;

    .line 206
    .local v5, results:[Landroid/content/ContentProviderResult;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    if-ge v1, v2, :cond_76

    .line 207
    add-int/lit8 v3, v3, 0x1

    const/16 v7, 0x1f4

    if-lt v3, v7, :cond_45

    .line 208
    new-instance v7, Landroid/content/OperationApplicationException;

    const-string v8, "Too many content provider operations between yield points. The maximum number of operations per yield point is 500"

    invoke-direct {v7, v8, v6}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v7
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_32

    .line 228
    .end local v1           #i:I
    .end local v2           #numOperations:I
    .end local v5           #results:[Landroid/content/ContentProviderResult;
    :catchall_32
    move-exception v7

    iget-object v8, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 229
    iget-object v8, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/browser/provider/SQLiteContentProvider;->onEndTransaction(Z)V

    throw v7

    .line 213
    .restart local v1       #i:I
    .restart local v2       #numOperations:I
    .restart local v5       #results:[Landroid/content/ContentProviderResult;
    :cond_45
    :try_start_45
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentProviderOperation;

    .line 214
    .local v4, operation:Landroid/content/ContentProviderOperation;
    if-nez v0, :cond_58

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/browser/provider/SQLiteContentProvider;->isCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 215
    const/4 v0, 0x1

    .line 217
    :cond_58
    if-lez v1, :cond_6d

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 218
    const/4 v3, 0x0

    .line 219
    iget-object v7, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-wide/16 v8, 0xfa0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 220
    add-int/lit8 v6, v6, 0x1

    .line 223
    :cond_6d
    invoke-virtual {v4, p0, v5, v1}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v7

    aput-object v7, v5, v1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 225
    .end local v4           #operation:Landroid/content/ContentProviderOperation;
    :cond_76
    iget-object v7, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7b
    .catchall {:try_start_45 .. :try_end_7b} :catchall_32

    .line 228
    iget-object v7, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 229
    iget-object v7, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/browser/provider/SQLiteContentProvider;->onEndTransaction(Z)V

    return-object v5
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 9
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 130
    array-length v2, p2

    .line 131
    .local v2, numValues:I
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/SQLiteContentProvider;->isCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v0

    .line 132
    .local v0, callerIsSyncAdapter:Z
    iget-object v4, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 133
    iget-object v4, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 135
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-ge v1, v2, :cond_23

    .line 136
    :try_start_15
    aget-object v4, p2, v1

    invoke-virtual {p0, p1, v4, v0}, Lcom/android/browser/provider/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v3

    .line 137
    .local v3, result:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 139
    .end local v3           #result:Landroid/net/Uri;
    :cond_23
    iget-object v4, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_31

    .line 141
    iget-object v4, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/browser/provider/SQLiteContentProvider;->onEndTransaction(Z)V

    .line 145
    return v2

    .line 141
    :catchall_31
    move-exception v4

    iget-object v5, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 174
    const/4 v2, 0x0

    .line 175
    .local v2, count:I
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/SQLiteContentProvider;->isCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v1

    .line 176
    .local v1, callerIsSyncAdapter:Z
    invoke-direct {p0}, Lcom/android/browser/provider/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 177
    .local v0, applyingBatch:Z
    if-nez v0, :cond_31

    .line 178
    iget-object v3, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 179
    iget-object v3, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 181
    :try_start_18
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/browser/provider/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v2

    .line 182
    iget-object v3, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_2a

    .line 184
    iget-object v3, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 187
    invoke-virtual {p0, v1}, Lcom/android/browser/provider/SQLiteContentProvider;->onEndTransaction(Z)V

    .line 191
    :goto_29
    return v2

    .line 184
    :catchall_2a
    move-exception v3

    iget-object v4, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 189
    :cond_31
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/browser/provider/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v2

    goto :goto_29
.end method

.method public abstract deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
.end method

.method public getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method public abstract getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 8
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 108
    const/4 v2, 0x0

    .line 109
    .local v2, result:Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/SQLiteContentProvider;->isCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v1

    .line 110
    .local v1, callerIsSyncAdapter:Z
    invoke-direct {p0}, Lcom/android/browser/provider/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 111
    .local v0, applyingBatch:Z
    if-nez v0, :cond_31

    .line 112
    iget-object v3, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 113
    iget-object v3, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 115
    :try_start_18
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/browser/provider/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v2

    .line 116
    iget-object v3, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_2a

    .line 118
    iget-object v3, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/browser/provider/SQLiteContentProvider;->onEndTransaction(Z)V

    .line 125
    :goto_29
    return-object v2

    .line 118
    :catchall_2a
    move-exception v3

    iget-object v4, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 123
    :cond_31
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/browser/provider/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v2

    goto :goto_29
.end method

.method public abstract insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
.end method

.method public isCallerSyncAdapter(Landroid/net/Uri;)Z
    .registers 3
    .parameter "uri"

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/browser/provider/SQLiteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/browser/provider/SQLiteContentProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 57
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mChangedUris:Ljava/util/Set;

    .line 58
    const/4 v1, 0x1

    return v1
.end method

.method protected onEndTransaction(Z)V
    .registers 9
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 236
    iget-object v6, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mChangedUris:Ljava/util/Set;

    monitor-enter v6

    .line 237
    :try_start_3
    new-instance v0, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mChangedUris:Ljava/util/Set;

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 238
    .local v0, changed:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    iget-object v5, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mChangedUris:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 239
    monitor-exit v6
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_36

    .line 240
    invoke-virtual {p0}, Lcom/android/browser/provider/SQLiteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 241
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 242
    .local v4, uri:Landroid/net/Uri;
    if-nez p1, :cond_39

    invoke-virtual {p0, v4}, Lcom/android/browser/provider/SQLiteContentProvider;->syncToNetwork(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_39

    const/4 v3, 0x1

    .line 243
    .local v3, syncToNetwork:Z
    :goto_31
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_1c

    .line 239
    .end local v0           #changed:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #syncToNetwork:Z
    .end local v4           #uri:Landroid/net/Uri;
    :catchall_36
    move-exception v5

    :try_start_37
    monitor-exit v6
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v5

    .line 242
    .restart local v0       #changed:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_39
    const/4 v3, 0x0

    goto :goto_31

    .line 245
    .end local v4           #uri:Landroid/net/Uri;
    :cond_3b
    return-void
.end method

.method protected postNotifyUri(Landroid/net/Uri;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mChangedUris:Ljava/util/Set;

    monitor-enter v1

    .line 90
    :try_start_3
    iget-object v0, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mChangedUris:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    monitor-exit v1

    .line 92
    return-void

    .line 91
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected syncToNetwork(Landroid/net/Uri;)Z
    .registers 3
    .parameter "uri"

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 150
    const/4 v7, 0x0

    .line 151
    .local v7, count:I
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/SQLiteContentProvider;->isCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v5

    .line 152
    .local v5, callerIsSyncAdapter:Z
    invoke-direct {p0}, Lcom/android/browser/provider/SQLiteContentProvider;->applyingBatch()Z

    move-result v6

    .line 153
    .local v6, applyingBatch:Z
    if-nez v6, :cond_36

    .line 154
    iget-object v0, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 155
    iget-object v0, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 157
    :try_start_1d
    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/provider/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v7

    .line 159
    iget-object v0, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_2f

    .line 161
    iget-object v0, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 164
    invoke-virtual {p0, v5}, Lcom/android/browser/provider/SQLiteContentProvider;->onEndTransaction(Z)V

    .line 169
    :goto_2e
    return v7

    .line 161
    :catchall_2f
    move-exception v0

    iget-object v1, p0, Lcom/android/browser/provider/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_36
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 166
    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/provider/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v7

    goto :goto_2e
.end method

.method public abstract updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
.end method
