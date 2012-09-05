.class public Lcom/syncmldstmo/database/smlDbSqlCachedMap;
.super Ljava/lang/Object;
.source "smlDbSqlCachedMap.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# static fields
.field private static CachedMapDbSql:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static smlDbSqlCachedMapCount()I
    .registers 14

    .prologue
    const/4 v0, 0x1

    .line 159
    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "rowid"

    aput-object v1, v3, v0

    .line 160
    .local v3, From:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 161
    .local v12, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 165
    .local v10, cache_count:I
    :try_start_a
    sget-object v0, Lcom/syncmldstmo/database/smlDbSqlCachedMap;->CachedMapDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "cached_map"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 166
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_33
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1c} :catch_24

    move-result v10

    .line 175
    if-eqz v12, :cond_22

    .line 176
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_22
    move v11, v10

    .line 179
    .end local v10           #cache_count:I
    .local v11, cache_count:I
    :goto_23
    return v11

    .line 168
    .end local v11           #cache_count:I
    .restart local v10       #cache_count:I
    :catch_24
    move-exception v13

    .line 170
    .local v13, e:Ljava/lang/Exception;
    :try_start_25
    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_33

    .line 175
    if-eqz v12, :cond_31

    .line 176
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_31
    move v11, v10

    .end local v10           #cache_count:I
    .restart local v11       #cache_count:I
    goto :goto_23

    .line 175
    .end local v11           #cache_count:I
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v10       #cache_count:I
    :catchall_33
    move-exception v0

    if-eqz v12, :cond_39

    .line 176
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_39
    throw v0
.end method

.method public static smlDbSqlCachedMapDeInit(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "Db"

    .prologue
    .line 30
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS cached_map"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 36
    :goto_5
    return-void

    .line 32
    :catch_6
    move-exception v0

    .line 34
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static smlDbSqlCachedMapDeleteAllRow()V
    .registers 5

    .prologue
    .line 71
    :try_start_0
    sget-object v1, Lcom/syncmldstmo/database/smlDbSqlCachedMap;->CachedMapDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "cached_map"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 77
    .local v0, e:Ljava/lang/Exception;
    :goto_9
    return-void

    .line 73
    .end local v0           #e:Ljava/lang/Exception;
    :catch_a
    move-exception v0

    .line 75
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static smlDbSqlCachedMapExistsRow(J)Z
    .registers 15
    .parameter "RowId"

    .prologue
    const/4 v2, 0x1

    .line 132
    const/4 v10, 0x0

    .line 133
    .local v10, bExist:Z
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "rowid"

    aput-object v1, v3, v0

    const-string v0, "map_item"

    aput-object v0, v3, v2

    .line 135
    .local v3, From:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 139
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_f
    sget-object v0, Lcom/syncmldstmo/database/smlDbSqlCachedMap;->CachedMapDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "cached_map"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rowid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 141
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_4b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_33} :catch_3d

    move-result v0

    if-lez v0, :cond_37

    .line 142
    const/4 v10, 0x1

    .line 150
    :cond_37
    if-eqz v11, :cond_3c

    .line 151
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_3c
    :goto_3c
    return v10

    .line 144
    :catch_3d
    move-exception v12

    .line 146
    .local v12, e:Ljava/lang/Exception;
    :try_start_3e
    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_4b

    .line 150
    if-eqz v11, :cond_3c

    .line 151
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3c

    .line 150
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_4b
    move-exception v0

    if-eqz v11, :cond_51

    .line 151
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_51
    throw v0
.end method

.method public static smlDbSqlCachedMapFetchRow(JLcom/syncmldstmo/database/smlDbCachedMap;)Lcom/syncmldstmo/database/smlDbCachedMap;
    .registers 19
    .parameter "RowId"
    .parameter "CachedMap"

    .prologue
    .line 98
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "rowid"

    aput-object v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "map_item"

    aput-object v3, v5, v2

    .line 100
    .local v5, From:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 104
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_e
    sget-object v2, Lcom/syncmldstmo/database/smlDbSqlCachedMap;->CachedMapDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    const-string v4, "cached_map"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rowid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p0

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 106
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5e

    .line 108
    :goto_37
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 110
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 111
    .local v15, luid:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 113
    .local v14, guid:Ljava/lang/String;
    move-object/from16 v0, p2

    iput-object v15, v0, Lcom/syncmldstmo/database/smlDbCachedMap;->luid:Ljava/lang/String;

    .line 114
    move-object/from16 v0, p2

    iput-object v14, v0, Lcom/syncmldstmo/database/smlDbCachedMap;->guid:Ljava/lang/String;
    :try_end_4f
    .catchall {:try_start_e .. :try_end_4f} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4f} :catch_50

    goto :goto_37

    .line 118
    .end local v14           #guid:Ljava/lang/String;
    .end local v15           #luid:Ljava/lang/String;
    :catch_50
    move-exception v13

    .line 120
    .local v13, e:Ljava/lang/Exception;
    :try_start_51
    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_64

    .line 124
    if-eqz v12, :cond_5d

    .line 125
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 127
    .end local v13           #e:Ljava/lang/Exception;
    :cond_5d
    :goto_5d
    return-object p2

    .line 124
    :cond_5e
    if-eqz v12, :cond_5d

    .line 125
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_5d

    .line 124
    :catchall_64
    move-exception v2

    if-eqz v12, :cond_6a

    .line 125
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_6a
    throw v2
.end method

.method public static smlDbSqlCachedMapInit(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "Db"

    .prologue
    .line 17
    :try_start_0
    sput-object p0, Lcom/syncmldstmo/database/smlDbSqlCachedMap;->CachedMapDbSql:Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    sget-object v1, Lcom/syncmldstmo/database/smlDbSqlCachedMap;->CachedMapDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "create table if not exists cached_map (rowid integer primary key autoincrement, luid text, guid text);"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 24
    :goto_9
    return-void

    .line 20
    :catch_a
    move-exception v0

    .line 22
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static smlDbSqlCachedMapInsertRow(Lcom/syncmldstmo/database/smlDbCachedMap;)V
    .registers 6
    .parameter "CachedMap"

    .prologue
    .line 40
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 44
    .local v0, ContentValues:Landroid/content/ContentValues;
    :try_start_5
    const-string v2, "luid"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbCachedMap;->luid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v2, "guid"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbCachedMap;->guid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v2, Lcom/syncmldstmo/database/smlDbSqlCachedMap;->CachedMapDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "cached_map"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_1c

    .line 53
    :goto_1b
    return-void

    .line 49
    :catch_1c
    move-exception v1

    .line 51
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_1b
.end method
