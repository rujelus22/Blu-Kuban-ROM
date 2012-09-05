.class public Lcom/vlingo/client/contacts/mru/MRUDatabaseStore;
.super Ljava/lang/Object;
.source "MRUDatabaseStore.java"

# interfaces
.implements Lcom/vlingo/client/core/mru/MRUStore;


# instance fields
.field private m_applicationNames:[Ljava/lang/String;

.field private m_columns:[Ljava/lang/String;

.field private m_mruMaxSize:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCurrentContext()Landroid/content/Context;
    .registers 3

    .prologue
    .line 119
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 120
    .local v0, app:Landroid/app/Application;
    if-eqz v0, :cond_11

    .line 121
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 123
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
    .line 153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vlingo/client/contacts/mru/MRUDatabaseStore;->m_columns:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 154
    .local v16, cur:Landroid/database/Cursor;
    new-instance v17, Lcom/vlingo/client/core/mru/MRUTable;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vlingo/client/contacts/mru/MRUDatabaseStore;->m_mruMaxSize:I

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/mru/MRUTable;-><init>(Ljava/lang/String;I)V

    .line 156
    .local v17, table:Lcom/vlingo/client/core/mru/MRUTable;
    invoke-static/range {v16 .. v16}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 160
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 161
    const-string v2, "contactID"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 162
    .local v12, contactColumn:I
    if-gez v12, :cond_3d

    .line 165
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 166
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 167
    const/16 v17, 0x0

    .line 197
    .end local v12           #contactColumn:I
    .end local v17           #table:Lcom/vlingo/client/core/mru/MRUTable;
    :cond_3c
    :goto_3c
    return-object v17

    .line 169
    .restart local v12       #contactColumn:I
    .restart local v17       #table:Lcom/vlingo/client/core/mru/MRUTable;
    :cond_3d
    const-string v2, "address"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 170
    .local v11, addressColumn:I
    if-gez v11, :cond_50

    .line 173
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 175
    const/16 v17, 0x0

    goto :goto_3c

    .line 177
    :cond_50
    const-string v2, "count"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 178
    .local v15, countColumn:I
    if-gez v15, :cond_63

    .line 181
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 183
    const/16 v17, 0x0

    goto :goto_3c

    .line 186
    :cond_63
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getFloat(I)F

    move-result v14

    .line 187
    .local v14, count:F
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 188
    .local v10, address:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 189
    .local v13, contactID:I
    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v10, v14}, Lcom/vlingo/client/core/mru/MRUTable;->setCount(ILjava/lang/String;F)V

    .line 193
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_63

    .line 195
    .end local v10           #address:Ljava/lang/String;
    .end local v11           #addressColumn:I
    .end local v12           #contactColumn:I
    .end local v13           #contactID:I
    .end local v14           #count:F
    .end local v15           #countColumn:I
    :cond_80
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_3c
.end method

.method private openDb()Landroid/database/sqlite/SQLiteDatabase;
    .registers 10

    .prologue
    .line 127
    const/4 v2, 0x0

    .line 129
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-direct {p0}, Lcom/vlingo/client/contacts/mru/MRUDatabaseStore;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    .line 130
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_37

    .line 131
    const-string v6, "MRU"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 134
    iget-object v0, p0, Lcom/vlingo/client/contacts/mru/MRUDatabaseStore;->m_applicationNames:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_13
    if-ge v3, v4, :cond_37

    aget-object v5, v0, v3

    .line 135
    .local v5, name:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (contactID INT, address VARCHAR, count REAL)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_33} :catch_36

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 139
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #name:Ljava/lang/String;
    :catch_36
    move-exception v6

    .line 146
    :cond_37
    return-object v2
.end method


# virtual methods
.method public init([Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 4
    .parameter "applicationNames"
    .parameter "columns"
    .parameter "mruMaxSize"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vlingo/client/contacts/mru/MRUDatabaseStore;->m_applicationNames:[Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/vlingo/client/contacts/mru/MRUDatabaseStore;->m_columns:[Ljava/lang/String;

    .line 38
    iput p3, p0, Lcom/vlingo/client/contacts/mru/MRUDatabaseStore;->m_mruMaxSize:I

    .line 39
    return-void
.end method

.method public loadMRUTables()[Lcom/vlingo/client/core/mru/MRUTable;
    .registers 5

    .prologue
    .line 42
    const/4 v2, 0x0

    .line 44
    .local v2, tables:[Lcom/vlingo/client/core/mru/MRUTable;
    invoke-direct {p0}, Lcom/vlingo/client/contacts/mru/MRUDatabaseStore;->openDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 45
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_22

    .line 46
    iget-object v3, p0, Lcom/vlingo/client/contacts/mru/MRUDatabaseStore;->m_applicationNames:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [Lcom/vlingo/client/core/mru/MRUTable;

    .line 47
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    iget-object v3, p0, Lcom/vlingo/client/contacts/mru/MRUDatabaseStore;->m_applicationNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1f

    .line 48
    iget-object v3, p0, Lcom/vlingo/client/contacts/mru/MRUDatabaseStore;->m_applicationNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v0, v3}, Lcom/vlingo/client/contacts/mru/MRUDatabaseStore;->loadMRUTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/vlingo/client/core/mru/MRUTable;

    move-result-object v3

    aput-object v3, v2, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 50
    :cond_1f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 53
    .end local v1           #i:I
    :cond_22
    return-object v2
.end method

.method public removeEntry(Ljava/lang/String;I)V
    .registers 7
    .parameter "applicationName"
    .parameter "contactToRemove"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/vlingo/client/contacts/mru/MRUDatabaseStore;->openDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 58
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_2f

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE contactID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, sqlStatement:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 66
    .end local v1           #sqlStatement:Ljava/lang/String;
    :cond_2f
    return-void
.end method

.method public rescaleAllCounts(Ljava/lang/String;F)Z
    .registers 7
    .parameter "applicationName"
    .parameter "scaleFactor"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/vlingo/client/contacts/mru/MRUDatabaseStore;->openDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 103
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_8

    .line 104
    const/4 v2, 0x0

    .line 115
    :goto_7
    return v2

    .line 106
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SET count = count * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, sqlStatement:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 115
    const/4 v2, 0x1

    goto :goto_7
.end method

.method public setEntryCount(Ljava/lang/String;ILjava/lang/String;F)V
    .registers 13
    .parameter "applicationName"
    .parameter "contactID"
    .parameter "address"
    .parameter "newCount"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/vlingo/client/contacts/mru/MRUDatabaseStore;->openDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 70
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_8f

    .line 71
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 72
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "count"

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 74
    const-string v6, "\'"

    const-string v7, "\'\'"

    invoke-virtual {p3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, normAddress:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contactID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 80
    .local v5, whereString:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v0, p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 85
    .local v2, numRowsAffected:I
    if-gtz v2, :cond_8c

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " INSERT INTO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (contactID, address, count) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " VALUES ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ");"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, sqlStatement:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    .end local v3           #sqlStatement:Ljava/lang/String;
    :cond_8c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 99
    .end local v1           #normAddress:Ljava/lang/String;
    .end local v2           #numRowsAffected:I
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v5           #whereString:Ljava/lang/String;
    :cond_8f
    return-void
.end method
