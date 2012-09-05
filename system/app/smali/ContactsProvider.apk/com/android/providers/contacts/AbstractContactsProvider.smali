.class public abstract Lcom/android/providers/contacts/AbstractContactsProvider;
.super Landroid/content/ContentProvider;
.source "AbstractContactsProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# instance fields
.field private mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mSerializeDbTag:Ljava/lang/String;

.field private mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mTransactionHolder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/providers/contacts/ContactsTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private endTransaction(Z)V
    .registers 6
    .parameter "callerIsBatch"

    .prologue
    const/4 v3, 0x0

    .line 237
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsTransaction;

    .line 238
    .local v0, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->isBatch()Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz p1, :cond_24

    .line 240
    :cond_13
    :try_start_13
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 241
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->notifyChange()V

    .line 243
    :cond_1c
    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactsTransaction;->finish(Z)V
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_25

    .line 246
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 249
    :cond_24
    return-void

    .line 246
    :catchall_25
    move-exception v1

    iget-object v2, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v1
.end method

.method private startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;
    .registers 5
    .parameter "callerIsBatch"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsTransaction;

    .line 220
    .local v0, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    if-nez v0, :cond_23

    .line 221
    new-instance v0, Lcom/android/providers/contacts/ContactsTransaction;

    .end local v0           #transaction:Lcom/android/providers/contacts/ContactsTransaction;
    invoke-direct {v0, p1}, Lcom/android/providers/contacts/ContactsTransaction;-><init>(Z)V

    .line 222
    .restart local v0       #transaction:Lcom/android/providers/contacts/ContactsTransaction;
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v1, :cond_1e

    .line 223
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeDbTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/providers/contacts/ContactsTransaction;->startTransactionForDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 226
    :cond_1e
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 228
    :cond_23
    return-object v0
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
    const/4 v10, 0x1

    .line 177
    const/4 v7, 0x0

    .line 178
    .local v7, ypCount:I
    const/4 v2, 0x0

    .line 179
    .local v2, opCount:I
    invoke-direct {p0, v10}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v6

    .line 181
    .local v6, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    :try_start_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 182
    .local v1, numOperations:I
    new-array v5, v1, [Landroid/content/ContentProviderResult;

    .line 183
    .local v5, results:[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v1, :cond_48

    .line 184
    add-int/lit8 v2, v2, 0x1

    const/16 v8, 0x1f4

    if-lt v2, v8, :cond_23

    .line 185
    new-instance v8, Landroid/content/OperationApplicationException;

    const-string v9, "Too many content provider operations between yield points. The maximum number of operations per yield point is 500"

    invoke-direct {v8, v9, v7}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v8
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1e

    .line 208
    .end local v0           #i:I
    .end local v1           #numOperations:I
    .end local v5           #results:[Landroid/content/ContentProviderResult;
    :catchall_1e
    move-exception v8

    invoke-direct {p0, v10}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    throw v8

    .line 190
    .restart local v0       #i:I
    .restart local v1       #numOperations:I
    .restart local v5       #results:[Landroid/content/ContentProviderResult;
    :cond_23
    :try_start_23
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    .line 191
    .local v3, operation:Landroid/content/ContentProviderOperation;
    if-lez v0, :cond_3a

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_1e

    move-result v8

    if-eqz v8, :cond_3a

    .line 192
    const/4 v2, 0x0

    .line 194
    :try_start_32
    invoke-virtual {p0, v6}, Lcom/android/providers/contacts/AbstractContactsProvider;->yield(Lcom/android/providers/contacts/ContactsTransaction;)Z
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_1e
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_35} :catch_43

    move-result v8

    if-eqz v8, :cond_3a

    .line 195
    add-int/lit8 v7, v7, 0x1

    .line 203
    :cond_3a
    :try_start_3a
    invoke-virtual {v3, p0, v5, v0}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v8

    aput-object v8, v5, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 197
    :catch_43
    move-exception v4

    .line 198
    .local v4, re:Ljava/lang/RuntimeException;
    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactsTransaction;->markYieldFailed()V

    .line 199
    throw v4

    .line 205
    .end local v3           #operation:Landroid/content/ContentProviderOperation;
    .end local v4           #re:Ljava/lang/RuntimeException;
    :cond_48
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_1e

    .line 208
    invoke-direct {p0, v10}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    return-object v5
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 10
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v6, 0x1

    .line 151
    invoke-direct {p0, v6}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v4

    .line 152
    .local v4, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    array-length v1, p2

    .line 153
    .local v1, numValues:I
    const/4 v2, 0x0

    .line 155
    .local v2, opCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_26

    .line 156
    :try_start_a
    aget-object v5, p2, v0

    invoke-virtual {p0, p1, v5}, Lcom/android/providers/contacts/AbstractContactsProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_21

    .line 157
    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x32

    if-lt v2, v5, :cond_19

    .line 158
    const/4 v2, 0x0

    .line 160
    :try_start_16
    invoke-virtual {p0, v4}, Lcom/android/providers/contacts/AbstractContactsProvider;->yield(Lcom/android/providers/contacts/ContactsTransaction;)Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_21
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_19} :catch_1c

    .line 155
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 161
    :catch_1c
    move-exception v3

    .line 162
    .local v3, re:Ljava/lang/RuntimeException;
    :try_start_1d
    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsTransaction;->markYieldFailed()V

    .line 163
    throw v3
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_21

    .line 169
    .end local v3           #re:Ljava/lang/RuntimeException;
    :catchall_21
    move-exception v5

    invoke-direct {p0, v6}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    throw v5

    .line 167
    :cond_26
    const/4 v5, 0x1

    :try_start_27
    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_21

    .line 169
    invoke-direct {p0, v6}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    .line 171
    return v1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v1

    .line 123
    .local v1, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    :try_start_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/AbstractContactsProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 124
    .local v0, deleted:I
    if-lez v0, :cond_e

    .line 125
    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsTransaction;->markDirty()V

    .line 127
    :cond_e
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    .line 130
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    return v0

    .end local v0           #deleted:I
    :catchall_16
    move-exception v2

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    throw v2
.end method

.method protected abstract deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public getCurrentTransaction()Lcom/android/providers/contacts/ContactsTransaction;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsTransaction;

    return-object v0
.end method

.method public getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method protected abstract getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method protected abstract getTransactionHolder()Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/providers/contacts/ContactsTransaction;",
            ">;"
        }
    .end annotation
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v1

    .line 108
    .local v1, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    :try_start_5
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/AbstractContactsProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 109
    .local v0, result:Landroid/net/Uri;
    if-eqz v0, :cond_e

    .line 110
    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsTransaction;->markDirty()V

    .line 112
    :cond_e
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    .line 115
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    return-object v0

    .end local v0           #result:Landroid/net/Uri;
    :catchall_16
    move-exception v2

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    throw v2
.end method

.method protected abstract insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected abstract notifyChange()V
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 82
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->getTransactionHolder()Ljava/lang/ThreadLocal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    .line 83
    const/4 v1, 0x1

    return v1
.end method

.method public setDbHelperToSerializeOn(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;)V
    .registers 3
    .parameter "serializeOnDbHelper"
    .parameter "tag"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 97
    iput-object p2, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeDbTag:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v0

    .line 138
    .local v0, transaction:Lcom/android/providers/contacts/ContactsTransaction;
    :try_start_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/AbstractContactsProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 139
    .local v1, updated:I
    if-lez v1, :cond_e

    .line 140
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->markDirty()V

    .line 142
    :cond_e
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    .line 145
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    return v1

    .end local v1           #updated:I
    :catchall_16
    move-exception v2

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    throw v2
.end method

.method protected abstract updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract yield(Lcom/android/providers/contacts/ContactsTransaction;)Z
.end method
