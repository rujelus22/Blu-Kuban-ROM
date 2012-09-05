.class public Lcom/syncmldstmo/database/smlDbSqlActivedProfile;
.super Ljava/lang/Object;
.source "smlDbSqlActivedProfile.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# static fields
.field private static ActivedProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static smlDbSqlActivedProfileDeInit(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "Db"

    .prologue
    .line 35
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS actived_profile"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    const-string v1, "DROP TABLE IF EXISTS actived_profile_name"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    const-string v1, "DROP TABLE IF EXISTS actived_profile_id"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 43
    :goto_f
    return-void

    .line 39
    :catch_10
    move-exception v0

    .line 41
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static smlDbSqlActivedProfileExistsRow(J)Z
    .registers 15
    .parameter "RowId"

    .prologue
    const/4 v2, 0x1

    .line 169
    const/4 v10, 0x0

    .line 170
    .local v10, bExist:Z
    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "rowid"

    aput-object v1, v3, v0

    const-string v0, "profile_index"

    aput-object v0, v3, v2

    const/4 v0, 0x2

    const-string v1, "remote_profile_index"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "reset_check"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "session_id"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "magic_number"

    aput-object v1, v3, v0

    .line 178
    .local v3, From:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 182
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_23
    sget-object v0, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->ActivedProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "actived_profile"

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

    .line 184
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_47
    .catchall {:try_start_23 .. :try_end_47} :catchall_5f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_47} :catch_51

    move-result v0

    if-lez v0, :cond_4b

    .line 185
    const/4 v10, 0x1

    .line 193
    :cond_4b
    if-eqz v11, :cond_50

    .line 194
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_50
    :goto_50
    return v10

    .line 187
    :catch_51
    move-exception v12

    .line 189
    .local v12, e:Ljava/lang/Exception;
    :try_start_52
    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_5f

    .line 193
    if-eqz v11, :cond_50

    .line 194
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_50

    .line 193
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_5f
    move-exception v0

    if-eqz v11, :cond_65

    .line 194
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_65
    throw v0
.end method

.method public static smlDbSqlActivedProfileFetchRow(JLcom/syncmldstmo/database/smlDbActivedProfileInfo;)Ljava/lang/Object;
    .registers 16
    .parameter "RowId"
    .parameter "ActivedProfileInfo"

    .prologue
    .line 120
    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "rowid"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "profile_index"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "remote_profile_index"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "reset_check"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "session_id"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "magic_number"

    aput-object v1, v3, v0

    .line 128
    .local v3, From:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 133
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_22
    sget-object v0, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->ActivedProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "actived_profile"

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

    move-result-object v10

    .line 135
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_a1

    .line 137
    :goto_49
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 140
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->nProfileIndex:I

    .line 141
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->nRemoteProfileIndex:I

    .line 142
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->bResetCheck:I

    .line 143
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->nSessionID:I

    .line 144
    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->magicNumber:I
    :try_end_72
    .catchall {:try_start_22 .. :try_end_72} :catchall_a7
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_72} :catch_73

    goto :goto_49

    .line 148
    :catch_73
    move-exception v11

    .line 150
    .local v11, e:Ljava/lang/Exception;
    :try_start_74
    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_a7

    .line 154
    if-eqz v10, :cond_80

    .line 155
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 158
    .end local v11           #e:Ljava/lang/Exception;
    :cond_80
    :goto_80
    const/4 v12, 0x0

    .local v12, nIndex:I
    :goto_81
    const/4 v0, 0x3

    if-ge v12, v0, :cond_ae

    .line 160
    iget-object v1, p2, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->SetProfileName:[Ljava/lang/String;

    add-int/lit8 v0, v12, 0x1

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileNameFetchRow(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v12

    .line 161
    iget-object v1, p2, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->SetProfileID:[Ljava/lang/String;

    add-int/lit8 v0, v12, 0x1

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileIdFetchRow(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v12

    .line 158
    add-int/lit8 v12, v12, 0x1

    goto :goto_81

    .line 154
    .end local v12           #nIndex:I
    :cond_a1
    if-eqz v10, :cond_80

    .line 155
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_80

    .line 154
    :catchall_a7
    move-exception v0

    if-eqz v10, :cond_ad

    .line 155
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_ad
    throw v0

    .line 164
    .restart local v12       #nIndex:I
    :cond_ae
    return-object p2
.end method

.method public static smlDbSqlActivedProfileIdExistsRow(J)Z
    .registers 15
    .parameter "RowId"

    .prologue
    const/4 v2, 0x1

    .line 383
    const/4 v10, 0x0

    .line 384
    .local v10, bExist:Z
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "rowid"

    aput-object v1, v3, v0

    const-string v0, "profile_id"

    aput-object v0, v3, v2

    .line 386
    .local v3, From:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 390
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_f
    sget-object v0, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->ActivedProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "actived_profile_id"

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

    .line 392
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_4b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_33} :catch_3d

    move-result v0

    if-lez v0, :cond_37

    .line 393
    const/4 v10, 0x1

    .line 401
    :cond_37
    if-eqz v11, :cond_3c

    .line 402
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 404
    :cond_3c
    :goto_3c
    return v10

    .line 395
    :catch_3d
    move-exception v12

    .line 397
    .local v12, e:Ljava/lang/Exception;
    :try_start_3e
    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_4b

    .line 401
    if-eqz v11, :cond_3c

    .line 402
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3c

    .line 401
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_4b
    move-exception v0

    if-eqz v11, :cond_51

    .line 402
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_51
    throw v0
.end method

.method public static smlDbSqlActivedProfileIdFetchRow(J)Ljava/lang/Object;
    .registers 15
    .parameter "RowId"

    .prologue
    const/4 v2, 0x1

    .line 350
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "rowid"

    aput-object v1, v3, v0

    const-string v0, "profile_id"

    aput-object v0, v3, v2

    .line 351
    .local v3, From:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 353
    .local v12, szProfileId:Ljava/lang/String;
    const/4 v10, 0x0

    .line 357
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_f
    sget-object v0, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->ActivedProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "actived_profile_id"

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

    move-result-object v10

    .line 359
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_42

    .line 361
    :goto_36
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 364
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_56
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_40} :catch_48

    move-result-object v12

    goto :goto_36

    .line 374
    :cond_42
    if-eqz v10, :cond_47

    .line 375
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_47
    :goto_47
    return-object v12

    .line 368
    :catch_48
    move-exception v11

    .line 370
    .local v11, e:Ljava/lang/Exception;
    :try_start_49
    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_56

    .line 374
    if-eqz v10, :cond_47

    .line 375
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_47

    .line 374
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_56
    move-exception v0

    if-eqz v10, :cond_5c

    .line 375
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5c
    throw v0
.end method

.method public static smlDbSqlActivedProfileIdInsertRow(Ljava/lang/String;)V
    .registers 6
    .parameter "szProfileId"

    .prologue
    .line 306
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 310
    .local v0, ContentValues:Landroid/content/ContentValues;
    :try_start_5
    const-string v2, "profile_id"

    invoke-virtual {v0, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-object v2, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->ActivedProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "actived_profile_id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_13

    .line 318
    :goto_12
    return-void

    .line 314
    :catch_13
    move-exception v1

    .line 316
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public static smlDbSqlActivedProfileIdUpdateRow(JLjava/lang/String;)V
    .registers 9
    .parameter "RowId"
    .parameter "szProfileId"

    .prologue
    .line 334
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 338
    .local v0, ContentValues:Landroid/content/ContentValues;
    :try_start_5
    const-string v2, "profile_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v2, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->ActivedProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "actived_profile_id"

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

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_26

    .line 346
    :goto_25
    return-void

    .line 342
    :catch_26
    move-exception v1

    .line 344
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_25
.end method

.method public static smlDbSqlActivedProfileInit(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "Db"

    .prologue
    .line 19
    :try_start_0
    sput-object p0, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->ActivedProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    sget-object v1, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->ActivedProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "create table if not exists actived_profile (rowid integer primary key autoincrement, profile_index integer, remote_profile_index integer, reset_check integer, session_id integer, magic_number integer);"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 22
    sget-object v1, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->ActivedProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "create table if not exists actived_profile_name (rowid integer primary key autoincrement, profile_name text);"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 23
    sget-object v1, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->ActivedProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "create table if not exists actived_profile_id (rowid integer primary key autoincrement, profile_id text);"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 29
    :goto_17
    return-void

    .line 25
    :catch_18
    move-exception v0

    .line 27
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public static smlDbSqlActivedProfileInsertRow(Lcom/syncmldstmo/database/smlDbActivedProfileInfo;)V
    .registers 7
    .parameter "ActivedProfileInfo"

    .prologue
    .line 47
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 51
    .local v0, ContentValues:Landroid/content/ContentValues;
    :try_start_5
    const-string v3, "profile_index"

    iget v4, p0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->nProfileIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    const-string v3, "remote_profile_index"

    iget v4, p0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->nRemoteProfileIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    const-string v3, "reset_check"

    iget v4, p0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->bResetCheck:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    const-string v3, "session_id"

    iget v4, p0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->nSessionID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    const-string v3, "magic_number"

    iget v4, p0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->magicNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    sget-object v3, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->ActivedProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "actived_profile"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 59
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_45
    const/4 v3, 0x3

    if-ge v2, v3, :cond_73

    .line 61
    add-int/lit8 v3, v2, 0x1

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileNameExistsRow(J)Z

    move-result v3

    if-nez v3, :cond_58

    .line 63
    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->SetProfileName:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileNameInsertRow(Ljava/lang/String;)V

    .line 65
    :cond_58
    add-int/lit8 v3, v2, 0x1

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileIdExistsRow(J)Z

    move-result v3

    if-nez v3, :cond_68

    .line 67
    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->SetProfileID:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileIdInsertRow(Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_68} :catch_6b

    .line 59
    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 71
    .end local v2           #nIndex:I
    :catch_6b
    move-exception v1

    .line 73
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 75
    .end local v1           #e:Ljava/lang/Exception;
    :cond_73
    return-void
.end method

.method public static smlDbSqlActivedProfileNameExistsRow(J)Z
    .registers 15
    .parameter "RowId"

    .prologue
    const/4 v2, 0x1

    .line 279
    const/4 v10, 0x0

    .line 280
    .local v10, bExist:Z
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "rowid"

    aput-object v1, v3, v0

    const-string v0, "profile_name"

    aput-object v0, v3, v2

    .line 282
    .local v3, From:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 286
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_f
    sget-object v0, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->ActivedProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "actived_profile_name"

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

    .line 288
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_4b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_33} :catch_3d

    move-result v0

    if-lez v0, :cond_37

    .line 289
    const/4 v10, 0x1

    .line 297
    :cond_37
    if-eqz v11, :cond_3c

    .line 298
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_3c
    :goto_3c
    return v10

    .line 291
    :catch_3d
    move-exception v12

    .line 293
    .local v12, e:Ljava/lang/Exception;
    :try_start_3e
    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_4b

    .line 297
    if-eqz v11, :cond_3c

    .line 298
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3c

    .line 297
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_4b
    move-exception v0

    if-eqz v11, :cond_51

    .line 298
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_51
    throw v0
.end method

.method public static smlDbSqlActivedProfileNameFetchRow(J)Ljava/lang/Object;
    .registers 15
    .parameter "RowId"

    .prologue
    const/4 v2, 0x1

    .line 246
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "rowid"

    aput-object v1, v3, v0

    const-string v0, "profile_name"

    aput-object v0, v3, v2

    .line 247
    .local v3, From:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 249
    .local v12, szProfileName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 253
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_f
    sget-object v0, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->ActivedProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "actived_profile_name"

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

    move-result-object v10

    .line 255
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_42

    .line 257
    :goto_36
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 260
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_56
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_40} :catch_48

    move-result-object v12

    goto :goto_36

    .line 270
    :cond_42
    if-eqz v10, :cond_47

    .line 271
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_47
    :goto_47
    return-object v12

    .line 264
    :catch_48
    move-exception v11

    .line 266
    .local v11, e:Ljava/lang/Exception;
    :try_start_49
    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_56

    .line 270
    if-eqz v10, :cond_47

    .line 271
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_47

    .line 270
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_56
    move-exception v0

    if-eqz v10, :cond_5c

    .line 271
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5c
    throw v0
.end method

.method public static smlDbSqlActivedProfileNameInsertRow(Ljava/lang/String;)V
    .registers 6
    .parameter "szProfileName"

    .prologue
    .line 202
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v0, ContentValues:Landroid/content/ContentValues;
    :try_start_5
    const-string v2, "profile_name"

    invoke-virtual {v0, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v2, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->ActivedProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "actived_profile_name"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_13

    .line 214
    :goto_12
    return-void

    .line 210
    :catch_13
    move-exception v1

    .line 212
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public static smlDbSqlActivedProfileNameUpdateRow(JLjava/lang/String;)V
    .registers 9
    .parameter "RowId"
    .parameter "szProfileName"

    .prologue
    .line 230
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 234
    .local v0, ContentValues:Landroid/content/ContentValues;
    :try_start_5
    const-string v2, "profile_name"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v2, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->ActivedProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "actived_profile_name"

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

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_26

    .line 242
    :goto_25
    return-void

    .line 238
    :catch_26
    move-exception v1

    .line 240
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_25
.end method

.method public static smlDbSqlActivedProfileUpdateRow(ILcom/syncmldstmo/database/smlDbActivedProfileInfo;)V
    .registers 8
    .parameter "RowId"
    .parameter "ActivedProfileInfo"

    .prologue
    .line 97
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 101
    .local v0, ContentValues:Landroid/content/ContentValues;
    :try_start_5
    const-string v2, "profile_index"

    iget v3, p1, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->nProfileIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v2, "remote_profile_index"

    iget v3, p1, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->nRemoteProfileIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v2, "reset_check"

    iget v3, p1, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->bResetCheck:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v2, "session_id"

    iget v3, p1, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->nSessionID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v2, "magic_number"

    iget v3, p1, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->magicNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    sget-object v2, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->ActivedProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "actived_profile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rowid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    add-int/lit8 v2, p0, 0x1

    int-to-long v2, v2

    iget-object v4, p1, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->SetProfileName:[Ljava/lang/String;

    aget-object v4, v4, p0

    invoke-static {v2, v3, v4}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileNameUpdateRow(JLjava/lang/String;)V

    .line 110
    add-int/lit8 v2, p0, 0x1

    int-to-long v2, v2

    iget-object v4, p1, Lcom/syncmldstmo/database/smlDbActivedProfileInfo;->SetProfileID:[Ljava/lang/String;

    aget-object v4, v4, p0

    invoke-static {v2, v3, v4}, Lcom/syncmldstmo/database/smlDbSqlActivedProfile;->smlDbSqlActivedProfileIdUpdateRow(JLjava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6b} :catch_6c

    .line 116
    :goto_6b
    return-void

    .line 112
    :catch_6c
    move-exception v1

    .line 114
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_6b
.end method
