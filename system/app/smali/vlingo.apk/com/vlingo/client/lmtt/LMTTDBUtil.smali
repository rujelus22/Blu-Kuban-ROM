.class public Lcom/vlingo/client/lmtt/LMTTDBUtil;
.super Ljava/lang/Object;
.source "LMTTDBUtil.java"


# static fields
.field public static final COLUMN_HASHCODE:Ljava/lang/String; = "HASHCODE"

.field public static final COLUMN_ID:Ljava/lang/String; = "ID"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "TYPE"

.field public static final LMTT_TABLE:Ljava/lang/String; = "LMTT"

.field public static final WHERE_ID:Ljava/lang/String; = "ID=?"

.field public static final WHERE_TYPE:Ljava/lang/String; = "TYPE=?"

.field public static final WHERE_TYPE_ID:Ljava/lang/String; = "TYPE=? AND ID=?"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLMTTTable(Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;)V
    .registers 7
    .parameter "lmttItemType"

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 70
    .local v2, whereArgs:[Ljava/lang/String;
    :try_start_f
    invoke-static {}, Lcom/vlingo/client/lmtt/LMTTDBUtil;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_1c

    .line 72
    const-string v3, "LMTT"

    const-string v4, "TYPE=?"

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_3f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_2d

    .line 82
    :cond_1c
    if-eqz v0, :cond_21

    :try_start_1e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    .line 84
    :cond_21
    :goto_21
    return-void

    .line 82
    :catch_22
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "VLG_EXCEPTION"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 75
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_2d
    move-exception v3

    .line 82
    if-eqz v0, :cond_21

    :try_start_30
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_21

    :catch_34
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v3, "VLG_EXCEPTION"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_3f
    move-exception v3

    if-eqz v0, :cond_45

    :try_start_42
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    :cond_45
    :goto_45
    throw v3

    :catch_46
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v4, "VLG_EXCEPTION"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

.method public static deleteItem(Lcom/vlingo/client/lmtt/LMTTItem;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter "item"
    .parameter "db"

    .prologue
    .line 182
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vlingo/client/lmtt/LMTTItem;->type:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    invoke-virtual {v3}, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/vlingo/client/lmtt/LMTTItem;->uid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 183
    .local v1, whereArgs:[Ljava/lang/String;
    const-string v2, "LMTT"

    const-string v3, "TYPE=? AND ID=?"

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, rowsAffected:I
    if-gtz v0, :cond_23

    .line 188
    :cond_23
    return-void
.end method

.method private static getCurrentContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 39
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 40
    .local v0, app:Landroid/app/Application;
    if-eqz v0, :cond_11

    .line 41
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 43
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static getSongGenres(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .registers 19
    .parameter "resolver"
    .parameter "audioId"

    .prologue
    .line 205
    sget-object v1, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 206
    .local v1, GENRES_URI:Landroid/net/Uri;
    const-string v9, "members"

    .line 207
    .local v9, CONTENTDIR:Ljava/lang/String;
    const-string v10, "_id"

    .line 208
    .local v10, GENRE_ID:Ljava/lang/String;
    const-string v11, "name"

    .line 209
    .local v11, GENRE_NAME:Ljava/lang/String;
    const-string v8, "_id"

    .line 212
    .local v8, AUDIO_ID:Ljava/lang/String;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v14, genreIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v10, v2, v0

    const/4 v0, 0x1

    aput-object v11, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/util/CursorUtil;->guard(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v12

    .line 214
    .local v12, c:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_28
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 215
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_28

    .line 217
    :cond_3f
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 218
    const/4 v12, 0x0

    .line 220
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v15, genreList:Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_50
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 223
    .local v13, genreId:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 226
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 227
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_c4

    .line 228
    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 230
    :cond_c4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 231
    const/4 v12, 0x0

    .line 232
    goto :goto_50

    .line 234
    .end local v3           #uri:Landroid/net/Uri;
    .end local v13           #genreId:Ljava/lang/String;
    :cond_c9
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_dd

    .line 235
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 236
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_dc
    return-object v0

    :cond_dd
    const/4 v0, 0x0

    goto :goto_dc
.end method

.method public static getSynchedItems(Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;)Ljava/util/HashMap;
    .registers 16
    .parameter "lmttItemType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 95
    .local v8, cur:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 97
    .local v13, table:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_3
    invoke-static {}, Lcom/vlingo/client/lmtt/LMTTDBUtil;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 98
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 99
    .local v4, whereArgs:[Ljava/lang/String;
    if-eqz v0, :cond_76

    .line 100
    const-string v1, "LMTT"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "ID"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "HASHCODE"

    aput-object v5, v2, v3

    const-string v3, "TYPE=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 106
    invoke-static {v8}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 107
    new-instance v14, Ljava/util/HashMap;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v14, v1}, Ljava/util/HashMap;-><init>(I)V
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_c5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3e} :catch_ea

    .line 109
    .end local v13           #table:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v14, table:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_3e
    const-string v1, "ID"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 110
    .local v11, idColumn:I
    const-string v1, "HASHCODE"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 112
    .local v10, hashColumn:I
    const/4 v12, 0x0

    .line 113
    .local v12, num:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 115
    :cond_51
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    add-int/lit8 v12, v12, 0x1

    .line 117
    rem-int/lit8 v1, v12, 0xa
    :try_end_68
    .catchall {:try_start_3e .. :try_end_68} :catchall_e7
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_68} :catch_8c

    if-nez v1, :cond_6f

    .line 118
    const-wide/16 v1, 0xa

    :try_start_6c
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_e7
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_81

    .line 120
    :cond_6f
    :goto_6f
    :try_start_6f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_e7
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_8c

    move-result v1

    if-nez v1, :cond_51

    :cond_75
    move-object v13, v14

    .line 131
    .end local v10           #hashColumn:I
    .end local v11           #idColumn:I
    .end local v12           #num:I
    .end local v14           #table:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v13       #table:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_76
    if-eqz v8, :cond_7b

    :try_start_78
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_a4

    .line 132
    :cond_7b
    :goto_7b
    if-eqz v0, :cond_80

    :try_start_7d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_af

    .line 134
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_80
    :goto_80
    return-object v13

    .line 118
    .end local v13           #table:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v4       #whereArgs:[Ljava/lang/String;
    .restart local v10       #hashColumn:I
    .restart local v11       #idColumn:I
    .restart local v12       #num:I
    .restart local v14       #table:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_81
    move-exception v9

    .local v9, ex:Ljava/lang/Exception;
    :try_start_82
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_82 .. :try_end_8b} :catchall_e7
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8b} :catch_8c

    goto :goto_6f

    .line 125
    .end local v9           #ex:Ljava/lang/Exception;
    .end local v10           #hashColumn:I
    .end local v11           #idColumn:I
    .end local v12           #num:I
    :catch_8c
    move-exception v1

    move-object v13, v14

    .line 131
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v14           #table:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v13       #table:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_8e
    if-eqz v8, :cond_93

    :try_start_90
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_ba

    .line 132
    :cond_93
    :goto_93
    if-eqz v0, :cond_80

    :try_start_95
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_99

    goto :goto_80

    :catch_99
    move-exception v9

    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 131
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    :catch_a4
    move-exception v9

    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 132
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_af
    move-exception v9

    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 131
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_ba
    move-exception v9

    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_c5
    move-exception v1

    :goto_c6
    if-eqz v8, :cond_cb

    :try_start_c8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_d1

    .line 132
    :cond_cb
    :goto_cb
    if-eqz v0, :cond_d0

    :try_start_cd
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_dc

    :cond_d0
    :goto_d0
    throw v1

    .line 131
    :catch_d1
    move-exception v9

    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v2, "VLG_EXCEPTION"

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb

    .line 132
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_dc
    move-exception v9

    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v2, "VLG_EXCEPTION"

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    .line 131
    .end local v9           #ex:Ljava/lang/Exception;
    .end local v13           #table:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v4       #whereArgs:[Ljava/lang/String;
    .restart local v14       #table:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_e7
    move-exception v1

    move-object v13, v14

    .end local v14           #table:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v13       #table:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_c6

    .line 125
    .end local v4           #whereArgs:[Ljava/lang/String;
    :catch_ea
    move-exception v1

    goto :goto_8e
.end method

.method public static insertItem(Lcom/vlingo/client/lmtt/LMTTItem;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8
    .parameter "item"
    .parameter "db"

    .prologue
    .line 168
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v3, values:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/vlingo/client/lmtt/LMTTItem;->type:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    invoke-virtual {v4}, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, typeValue:Ljava/lang/String;
    const-string v4, "TYPE"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v4, "ID"

    iget v5, p0, Lcom/vlingo/client/lmtt/LMTTItem;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v4, "HASHCODE"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v4, "LMTT"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 174
    .local v0, retValue:J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_39

    .line 178
    :cond_39
    return-void
.end method

.method private static openDB()Landroid/database/sqlite/SQLiteDatabase;
    .registers 5

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-static {}, Lcom/vlingo/client/lmtt/LMTTDBUtil;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_14

    .line 51
    const-string v2, "LMTTv2"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 54
    const-string v2, "CREATE TABLE IF NOT EXISTS LMTT (TYPE INT, ID INT, HASHCODE INT)"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_15

    .line 63
    .end local v0           #context:Landroid/content/Context;
    :cond_14
    :goto_14
    return-object v1

    .line 56
    :catch_15
    move-exception v2

    goto :goto_14
.end method

.method public static updateItem(Lcom/vlingo/client/lmtt/LMTTItem;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .parameter "item"
    .parameter "db"

    .prologue
    .line 192
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 193
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "HASHCODE"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vlingo/client/lmtt/LMTTItem;->type:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    invoke-virtual {v4}, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/vlingo/client/lmtt/LMTTItem;->uid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 195
    .local v2, whereArgs:[Ljava/lang/String;
    const-string v3, "LMTT"

    const-string v4, "TYPE=? AND ID=?"

    invoke-virtual {p1, v3, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 196
    .local v0, rowsAffected:I
    if-gtz v0, :cond_35

    .line 200
    :cond_35
    return-void
.end method

.method public static updateSynchedItems(Ljava/util/ArrayList;)Z
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/lmtt/LMTTItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, changedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/lmtt/LMTTItem;>;"
    const/4 v1, 0x0

    .line 146
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-static {}, Lcom/vlingo/client/lmtt/LMTTDBUtil;->openDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_47

    .line 148
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/lmtt/LMTTItem;

    .line 149
    .local v0, change:Lcom/vlingo/client/lmtt/LMTTItem;
    iget-object v4, v0, Lcom/vlingo/client/lmtt/LMTTItem;->changeType:Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;

    invoke-virtual {v4, v0, v1}, Lcom/vlingo/client/lmtt/LMTTItem$ChangeType;->dbUpdate(Lcom/vlingo/client/lmtt/LMTTItem;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_63
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_2d

    .line 150
    const-wide/16 v4, 0xa

    :try_start_1e
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_63
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_b

    :catch_22
    move-exception v2

    .local v2, ex:Ljava/lang/Exception;
    :try_start_23
    const-string v4, "VLG_EXCEPTION"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_63
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2c} :catch_2d

    goto :goto_b

    .line 155
    .end local v0           #change:Lcom/vlingo/client/lmtt/LMTTItem;
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_2d
    move-exception v4

    .line 162
    if-eqz v1, :cond_33

    :try_start_30
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_58

    .line 164
    :cond_33
    :goto_33
    const/4 v4, 0x0

    :cond_34
    :goto_34
    return v4

    .line 152
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_35
    const/4 v4, 0x1

    .line 162
    if-eqz v1, :cond_34

    :try_start_38
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_34

    :catch_3c
    move-exception v2

    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v5, "VLG_EXCEPTION"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_47
    if-eqz v1, :cond_33

    :try_start_49
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_33

    :catch_4d
    move-exception v2

    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v4, "VLG_EXCEPTION"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .end local v2           #ex:Ljava/lang/Exception;
    :catch_58
    move-exception v2

    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v4, "VLG_EXCEPTION"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_63
    move-exception v4

    if-eqz v1, :cond_69

    :try_start_66
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_6a

    :cond_69
    :goto_69
    throw v4

    :catch_6a
    move-exception v2

    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v5, "VLG_EXCEPTION"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69
.end method
