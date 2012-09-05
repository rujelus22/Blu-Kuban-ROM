.class public Lcom/google/android/apps/books/sync/TableSynchronizer;
.super Ljava/lang/Object;
.source "TableSynchronizer.java"


# instance fields
.field private mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/sync/Synchronizable;)V
    .registers 7
    .parameter "synchronizable"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v2, "missing synchronizable"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/books/sync/Synchronizable;

    iput-object v2, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    .line 58
    iget-object v2, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v2}, Lcom/google/android/apps/books/sync/Synchronizable;->getRowKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "missing rowKey"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    .local v1, rowKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v2}, Lcom/google/android/apps/books/sync/Synchronizable;->getWritableColumnToClass()Ljava/util/Map;

    move-result-object v0

    .line 61
    .local v0, columnToClass:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rowKey "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not one of the table\'s columns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 64
    return-void
.end method

.method private createKeyToDbRow()Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v5, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v5}, Lcom/google/android/apps/books/sync/Synchronizable;->queryAll()Landroid/database/Cursor;

    move-result-object v1

    .line 158
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_6
    iget-object v5, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v5}, Lcom/google/android/apps/books/sync/Synchronizable;->getRowKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 159
    .local v2, index:I
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v3

    .line 161
    .local v3, keyToRow:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ContentValues;>;"
    iget-object v5, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v5}, Lcom/google/android/apps/books/sync/Synchronizable;->getWritableColumnToClass()Ljava/util/Map;

    move-result-object v0

    .line 163
    .local v0, columnToClass:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    :goto_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 164
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, rowKeyValue:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/google/android/apps/books/sync/SyncUtil;->cursorToValues(Landroid/database/Cursor;Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_30

    goto :goto_1e

    .line 170
    .end local v0           #columnToClass:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v2           #index:I
    .end local v3           #keyToRow:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v4           #rowKeyValue:Ljava/lang/String;
    :catchall_30
    move-exception v5

    if-eqz v1, :cond_36

    .line 171
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_36
    throw v5

    .line 170
    .restart local v0       #columnToClass:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local v2       #index:I
    .restart local v3       #keyToRow:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ContentValues;>;"
    :cond_37
    if-eqz v1, :cond_3c

    .line 171
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3c
    return-object v3
.end method

.method private createKeyToValues(Ljava/lang/Iterable;)Ljava/util/LinkedHashMap;
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, valuesIter:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/content/ContentValues;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 122
    .local v1, keyToValues:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Landroid/content/ContentValues;>;"
    iget-object v7, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v7}, Lcom/google/android/apps/books/sync/Synchronizable;->getRowKey()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, rowKey:Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 124
    .local v6, values:Landroid/content/ContentValues;
    invoke-direct {p0, v6}, Lcom/google/android/apps/books/sync/TableSynchronizer;->filterValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v5

    .line 125
    .local v5, subset:Landroid/content/ContentValues;
    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, keyValue:Ljava/lang/String;
    if-nez v2, :cond_47

    .line 127
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " missing in subset "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 129
    :cond_47
    invoke-virtual {v6, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 130
    .local v3, oldValues:Landroid/content/ContentValues;
    if-eqz v3, :cond_e

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 131
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inconsistent values, overriding "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 135
    .end local v2           #keyValue:Ljava/lang/String;
    .end local v3           #oldValues:Landroid/content/ContentValues;
    .end local v5           #subset:Landroid/content/ContentValues;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_7c
    return-object v1
.end method

.method private filterValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 8
    .parameter "values"

    .prologue
    .line 141
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 142
    .local v2, subset:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v4}, Lcom/google/android/apps/books/sync/Synchronizable;->getWritableColumnToClass()Ljava/util/Map;

    move-result-object v0

    .line 143
    .local v0, columnToClass:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 144
    .local v3, value:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 145
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_13

    .line 148
    .end local v3           #value:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_37
    return-object v2
.end method

.method private getCurrentRow(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 7
    .parameter "subset"

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v2, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v2, p1}, Lcom/google/android/apps/books/sync/Synchronizable;->query(Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v0

    .line 220
    .local v0, itemCursor:Landroid/database/Cursor;
    if-nez v0, :cond_f

    .line 233
    if-eqz v0, :cond_e

    .line 234
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_e
    :goto_e
    return-object v1

    .line 223
    :cond_f
    :try_start_f
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_42

    .line 224
    const-string v2, "TableSynchronizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad row count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_f .. :try_end_3c} :catchall_76

    .line 233
    if-eqz v0, :cond_e

    .line 234
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_e

    .line 227
    :cond_42
    :try_start_42
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_66

    .line 228
    const-string v2, "TableSynchronizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not move to first: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_42 .. :try_end_60} :catchall_76

    .line 233
    if-eqz v0, :cond_e

    .line 234
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_e

    .line 231
    :cond_66
    :try_start_66
    iget-object v1, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v1}, Lcom/google/android/apps/books/sync/Synchronizable;->getWritableColumnToClass()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/sync/SyncUtil;->cursorToValues(Landroid/database/Cursor;Ljava/util/Map;)Landroid/content/ContentValues;
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_76

    move-result-object v1

    .line 233
    if-eqz v0, :cond_e

    .line 234
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_e

    .line 233
    :catchall_76
    move-exception v1

    if-eqz v0, :cond_7c

    .line 234
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7c
    throw v1
.end method

.method private syncRow(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .registers 11
    .parameter "origRow"
    .parameter "subset"

    .prologue
    .line 241
    const/4 v2, 0x0

    .line 242
    .local v2, i:I
    const/4 v1, 0x0

    .line 243
    .local v1, hasSynched:Z
    move-object v0, p1

    .line 245
    .local v0, currentRow:Landroid/content/ContentValues;
    :goto_3
    if-nez v1, :cond_42

    const/4 v3, 0x5

    if-ge v2, v3, :cond_42

    .line 246
    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/books/sync/TableSynchronizer;->trySyncRow(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 247
    const/4 v1, 0x1

    .line 257
    :cond_f
    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 251
    :cond_12
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/sync/TableSynchronizer;->getCurrentRow(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 253
    const-string v3, "TableSynchronizer"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 254
    const-string v3, "TableSynchronizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Orig row: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current row: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 259
    :cond_42
    if-nez v1, :cond_77

    .line 262
    const-string v3, "TableSynchronizer"

    const-string v4, ""

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot synchronize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (originally "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") with values "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    :cond_77
    return-void
.end method

.method private trySyncRow(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .registers 10
    .parameter "currentRow"
    .parameter "subset"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 186
    if-nez p1, :cond_2f

    .line 188
    :try_start_4
    iget-object v5, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v5, p2}, Lcom/google/android/apps/books/sync/Synchronizable;->insertOrThrow(Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_4 .. :try_end_9} :catch_a

    .line 208
    :cond_9
    :goto_9
    return v3

    .line 190
    :catch_a
    move-exception v0

    .line 193
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    const-string v3, "TableSynchronizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conflict when inserting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nvalues: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 194
    goto :goto_9

    .line 197
    .end local v0           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :cond_2f
    iget-object v5, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v5, p1, p2}, Lcom/google/android/apps/books/sync/Synchronizable;->extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    .line 198
    .local v2, updates:Landroid/content/ContentValues;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-eqz v5, :cond_9

    .line 203
    iget-object v5, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v5, p1, v2}, Lcom/google/android/apps/books/sync/Synchronizable;->update(Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v1

    .line 204
    .local v1, rowCount:I
    if-le v1, v3, :cond_64

    .line 205
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "rows, expected 0 or 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 208
    :cond_64
    if-gtz v1, :cond_9

    move v3, v4

    goto :goto_9
.end method


# virtual methods
.method public syncRow(Landroid/content/ContentValues;)V
    .registers 4
    .parameter "values"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/sync/TableSynchronizer;->filterValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    .line 107
    .local v1, subset:Landroid/content/ContentValues;
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/sync/TableSynchronizer;->getCurrentRow(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 108
    .local v0, currentRow:Landroid/content/ContentValues;
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/books/sync/TableSynchronizer;->syncRow(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 109
    return-void
.end method

.method public syncRows(Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, valuesList:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/content/ContentValues;>;"
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/sync/TableSynchronizer;->createKeyToValues(Ljava/lang/Iterable;)Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 81
    .local v5, keyToValues:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Landroid/content/ContentValues;>;"
    invoke-direct {p0}, Lcom/google/android/apps/books/sync/TableSynchronizer;->createKeyToDbRow()Ljava/util/HashMap;

    move-result-object v4

    .line 83
    .local v4, keyToDbRow:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ContentValues;>;"
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 84
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 87
    .local v6, keyValue:Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 88
    .local v0, currentRow:Landroid/content/ContentValues;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    invoke-direct {p0, v0, v7}, Lcom/google/android/apps/books/sync/TableSynchronizer;->syncRow(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    goto :goto_10

    .line 91
    .end local v0           #currentRow:Landroid/content/ContentValues;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v6           #keyValue:Ljava/lang/String;
    :cond_32
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 92
    .local v2, excessRows:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_41

    .line 93
    iget-object v7, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v7, v2}, Lcom/google/android/apps/books/sync/Synchronizable;->delete(Ljava/util/Collection;)V

    .line 95
    :cond_41
    return-object v2
.end method
