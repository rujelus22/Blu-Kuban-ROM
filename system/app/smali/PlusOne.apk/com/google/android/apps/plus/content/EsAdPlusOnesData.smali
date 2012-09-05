.class public Lcom/google/android/apps/plus/content/EsAdPlusOnesData;
.super Ljava/lang/Object;
.source "EsAdPlusOnesData.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Context;)V
    .registers 9
    .parameter "db"
    .parameter "account"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x3

    .line 159
    const-string v2, "ad_plus_ones"

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 160
    .local v0, deleted:I
    const-string v2, "EsAdPlusOnesData"

    invoke-static {v2, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 161
    const-string v2, "EsAdPlusOnesData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanupData deleted ads: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_28
    invoke-static {p1}, Lcom/google/android/apps/plus/content/AdsProvider;->getDoritosCookieSharedPreferencesFileName(Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 166
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    const-string v2, "EsAdPlusOnesData"

    invoke-static {v2, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 168
    const-string v2, "EsAdPlusOnesData"

    const-string v3, "cleanupData cleared doritos cookie"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_4b
    return-void
.end method

.method public static deserializeShortStringList([B)Ljava/util/List;
    .registers 2
    .parameter "array"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {p0}, Lcom/google/android/apps/plus/content/DbSerializer;->deserializeShortStringList([B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static insertAdPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V
    .registers 28
    .parameter "context"
    .parameter "account"
    .parameter "shareToken"
    .parameter "plusOneData"

    .prologue
    .line 48
    const-string v3, "EsAdPlusOnesData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 49
    const-string v3, "EsAdPlusOnesData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>>> plusOne plusoned by viewer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", total plus one count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", count data count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getCountDataCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", plus one id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", shareToken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_5b
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 60
    .local v12, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v15, friendNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v14, friendIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getCountDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_136

    .line 64
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .local v21, selection:Ljava/lang/StringBuffer;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v22, selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "gaia_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " in ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getCountDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_96
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ce

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    .line 69
    .local v10, countData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_a4
    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getPersonIdCount()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_96

    .line 70
    if-eqz v16, :cond_b5

    .line 71
    const-string v3, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    :cond_b5
    const-string v3, "?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getPersonId(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v16, v16, 0x1

    goto :goto_a4

    .line 77
    .end local v10           #countData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    .end local v16           #i:I
    :cond_ce
    const-string v3, ")"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const/4 v11, 0x0

    .line 82
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    :try_start_d9
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "gaia_id"

    aput-object v4, v7, v3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static/range {v3 .. v9}, Lcom/google/android/apps/plus/content/EsPeopleData;->getPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 90
    if-eqz v11, :cond_131

    .line 91
    const/16 v18, 0x0

    .line 92
    .local v18, position:I
    :goto_100
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_131

    const/4 v3, 0x5

    move/from16 v0, v18

    if-ge v0, v3, :cond_131

    .line 93
    const-string v3, "name"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v3, "gaia_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_127
    .catchall {:try_start_d9 .. :try_end_127} :catchall_12a

    .line 92
    add-int/lit8 v18, v18, 0x1

    goto :goto_100

    .line 100
    .end local v18           #position:I
    :catchall_12a
    move-exception v3

    if-eqz v11, :cond_130

    .line 101
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_130
    throw v3

    :cond_131
    if-eqz v11, :cond_136

    .line 101
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 105
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v21           #selection:Ljava/lang/StringBuffer;
    .end local v22           #selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_136
    const-string v3, "EsAdPlusOnesData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_161

    .line 106
    const-string v3, "EsAdPlusOnesData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>>> friend names: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " friend ids: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_161
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 111
    .local v23, values:Landroid/content/ContentValues;
    const-string v3, "share_token"

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v3, "plus_one_id"

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v3, "set_by_viewer"

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 114
    const-string v3, "global_count"

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    :try_start_198
    const-string v3, "friend_names"

    move-object/from16 v0, v23

    invoke-static {v0, v3, v15}, Lcom/google/android/apps/plus/content/DbSerializer;->putShortStringList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/util/List;)V
    :try_end_19f
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_19f} :catch_1bf

    .line 121
    :goto_19f
    :try_start_19f
    const-string v3, "friend_ids"

    move-object/from16 v0, v23

    invoke-static {v0, v3, v14}, Lcom/google/android/apps/plus/content/DbSerializer;->putShortStringList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1a6
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a6} :catch_1c8

    .line 125
    :goto_1a6
    const-string v3, "ad_plus_ones"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v12, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v19

    .line 126
    .local v19, rowId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v19, v3

    if-lez v3, :cond_1be

    .line 127
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v12, v0, v1, v2}, Lcom/google/android/apps/plus/content/EsAdPlusOnesData;->notifyAdChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    .line 129
    :cond_1be
    return-void

    .line 117
    .end local v19           #rowId:J
    :catch_1bf
    move-exception v13

    .line 118
    .local v13, e:Ljava/io/IOException;
    const-string v3, "EsAdPlusOnesData"

    const-string v4, "Failed to serialize friend names"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19f

    .line 122
    .end local v13           #e:Ljava/io/IOException;
    :catch_1c8
    move-exception v13

    .line 123
    .restart local v13       #e:Ljava/io/IOException;
    const-string v3, "EsAdPlusOnesData"

    const-string v4, "Failed to serialize friend ids"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a6
.end method

.method private static notifyAdChange(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 8
    .parameter "db"
    .parameter "context"
    .parameter "account"
    .parameter "shareToken"

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 147
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->AD_PLUS_ONES_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 148
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 149
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 150
    return-void
.end method
