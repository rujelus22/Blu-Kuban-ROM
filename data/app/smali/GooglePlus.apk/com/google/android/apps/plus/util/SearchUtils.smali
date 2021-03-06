.class public Lcom/google/android/apps/plus/util/SearchUtils;
.super Ljava/lang/Object;
.source "SearchUtils.java"


# direct methods
.method public static clearSearchResults(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 8
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    .line 91
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 93
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "search"

    invoke-virtual {v1, v2, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-static {v3}, Lcom/google/android/apps/plus/util/SearchUtils;->getSearchKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, activitiesType:Ljava/lang/String;
    const-string v2, "activity_streams"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stream_key LIKE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method public static getContinuationToken(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "query"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 65
    if-eqz p2, :cond_34

    .line 66
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 68
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "search"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "continuation_token"

    aput-object v3, v2, v7

    const-string v3, "search_key=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/apps/plus/util/SearchUtils;->getSearchKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 73
    .local v9, result:Landroid/database/Cursor;
    :try_start_26
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 74
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_39

    move-result-object v5

    .line 77
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 81
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #result:Landroid/database/Cursor;
    :cond_34
    :goto_34
    return-object v5

    .line 77
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9       #result:Landroid/database/Cursor;
    :cond_35
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_34

    :catchall_39
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getSearchKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "query"

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.google.android.apps.plus.search_key-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static insertSearchResults(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "query"
    .parameter "continuationToken"

    .prologue
    .line 38
    if-eqz p2, :cond_2e

    .line 39
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 42
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 44
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 45
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "search_key"

    invoke-static {p2}, Lcom/google/android/apps/plus/util/SearchUtils;->getSearchKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v2, "continuation_token"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v2, "search"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 49
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_2f

    .line 51
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 54
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_2e
    return-void

    .line 51
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_2f
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public static isSearchKey(Ljava/lang/String;)Z
    .registers 2
    .parameter "key"

    .prologue
    .line 119
    if-eqz p0, :cond_c

    const-string v0, "com.google.android.apps.plus.search_key-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
