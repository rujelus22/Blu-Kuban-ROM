.class public Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;
.super Ljava/lang/Object;
.source "CustomMRUDatabaseStore.java"


# instance fields
.field private m_applicationName:Ljava/lang/String;

.field private m_mruMaxSize:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCurrentContext()Landroid/content/Context;
    .registers 3

    .prologue
    .line 107
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 108
    .local v0, app:Landroid/app/Application;
    if-eqz v0, :cond_11

    .line 109
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 111
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private loadMRUTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/vlingo/client/core/mru/MRUTable;
    .registers 21
    .parameter "db"
    .parameter "name"

    .prologue
    .line 139
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 140
    .local v16, cur:Landroid/database/Cursor;
    new-instance v17, Lcom/vlingo/client/core/mru/MRUTable;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->m_mruMaxSize:I

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/mru/MRUTable;-><init>(Ljava/lang/String;I)V

    .line 142
    .local v17, table:Lcom/vlingo/client/core/mru/MRUTable;
    invoke-static/range {v16 .. v16}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 146
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 147
    const-string v2, "entryID"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 148
    .local v12, contactColumn:I
    if-gez v12, :cond_3a

    .line 151
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 153
    const/16 v17, 0x0

    .line 183
    .end local v12           #contactColumn:I
    .end local v17           #table:Lcom/vlingo/client/core/mru/MRUTable;
    :cond_39
    :goto_39
    return-object v17

    .line 155
    .restart local v12       #contactColumn:I
    .restart local v17       #table:Lcom/vlingo/client/core/mru/MRUTable;
    :cond_3a
    const-string v2, "entryKey"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 156
    .local v11, addressColumn:I
    if-gez v11, :cond_4d

    .line 159
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 161
    const/16 v17, 0x0

    goto :goto_39

    .line 163
    :cond_4d
    const-string v2, "entryCount"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 164
    .local v15, countColumn:I
    if-gez v15, :cond_60

    .line 167
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 169
    const/16 v17, 0x0

    goto :goto_39

    .line 172
    :cond_60
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getFloat(I)F

    move-result v14

    .line 173
    .local v14, count:F
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 174
    .local v10, address:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 175
    .local v13, contactID:I
    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v10, v14}, Lcom/vlingo/client/core/mru/MRUTable;->setCount(ILjava/lang/String;F)V

    .line 179
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_60

    .line 181
    .end local v10           #address:Ljava/lang/String;
    .end local v11           #addressColumn:I
    .end local v12           #contactColumn:I
    .end local v13           #contactID:I
    .end local v14           #count:F
    .end local v15           #countColumn:I
    :cond_7d
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_39
.end method

.method private openDb()Landroid/database/sqlite/SQLiteDatabase;
    .registers 6

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-direct {p0}, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_2d

    .line 119
    const-string v2, "MRU"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->m_applicationName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (entryID INT, entryKey VARCHAR, entryCount REAL)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_2d} :catch_2e

    .line 132
    .end local v0           #context:Landroid/content/Context;
    :cond_2d
    :goto_2d
    return-object v1

    .line 125
    :catch_2e
    move-exception v2

    goto :goto_2d
.end method


# virtual methods
.method public init(Ljava/lang/String;I)V
    .registers 3
    .parameter "applicationName"
    .parameter "mruMaxSize"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->m_applicationName:Ljava/lang/String;

    .line 30
    iput p2, p0, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->m_mruMaxSize:I

    .line 31
    return-void
.end method

.method public loadMRUTable()Lcom/vlingo/client/core/mru/MRUTable;
    .registers 4

    .prologue
    .line 34
    const/4 v1, 0x0

    .line 35
    .local v1, table:Lcom/vlingo/client/core/mru/MRUTable;
    invoke-direct {p0}, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->openDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 36
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_10

    .line 37
    iget-object v2, p0, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->m_applicationName:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->loadMRUTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/vlingo/client/core/mru/MRUTable;

    move-result-object v1

    .line 38
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 41
    :cond_10
    return-object v1
.end method

.method public removeEntry(I)V
    .registers 6
    .parameter "contactToRemove"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->openDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 46
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_31

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->m_applicationName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE contactID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, sqlStatement:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 54
    .end local v1           #sqlStatement:Ljava/lang/String;
    :cond_31
    return-void
.end method

.method public rescaleAllCounts(F)Z
    .registers 6
    .parameter "scaleFactor"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->openDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 91
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_8

    .line 92
    const/4 v2, 0x0

    .line 103
    :goto_7
    return v2

    .line 94
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->m_applicationName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SET count = count * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, sqlStatement:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 103
    const/4 v2, 0x1

    goto :goto_7
.end method

.method public setEntryCount(ILjava/lang/String;F)V
    .registers 12
    .parameter "contactID"
    .parameter "address"
    .parameter "newCount"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->openDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 58
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_93

    .line 59
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "count"

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 62
    const-string v6, "\'"

    const-string v7, "\'\'"

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, normAddress:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contactID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND address=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, whereString:Ljava/lang/String;
    iget-object v6, p0, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->m_applicationName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 73
    .local v2, numRowsAffected:I
    if-gtz v2, :cond_90

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " INSERT INTO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vlingo/client/contacts/mru/CustomMRUDatabaseStore;->m_applicationName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (contactID, address, count) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " VALUES ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ");"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, sqlStatement:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    .end local v3           #sqlStatement:Ljava/lang/String;
    :cond_90
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 87
    .end local v1           #normAddress:Ljava/lang/String;
    .end local v2           #numRowsAffected:I
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v5           #whereString:Ljava/lang/String;
    :cond_93
    return-void
.end method
