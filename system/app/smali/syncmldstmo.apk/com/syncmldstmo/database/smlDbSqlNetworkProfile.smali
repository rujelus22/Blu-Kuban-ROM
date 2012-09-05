.class public Lcom/syncmldstmo/database/smlDbSqlNetworkProfile;
.super Ljava/lang/Object;
.source "smlDbSqlNetworkProfile.java"


# static fields
.field private static NetworkProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static smlDbSqlNetworkProfileDeInit(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "Db"

    .prologue
    .line 31
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS network_profile"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 37
    :goto_5
    return-void

    .line 33
    :catch_6
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static smlDbSqlNetworkProfileExistsRow(J)Z
    .registers 15
    .parameter "RowId"

    .prologue
    const/4 v2, 0x1

    .line 188
    const/4 v10, 0x0

    .line 190
    .local v10, bExist:Z
    const/16 v0, 0x10

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "rowid"

    aput-object v1, v3, v0

    const-string v0, "net_profile_name"

    aput-object v0, v3, v2

    const/4 v0, 0x2

    const-string v1, "net_home_url"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "bearer_use"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "proxy_use"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "proxy_address"

    aput-object v1, v3, v0

    const/4 v0, 0x6

    const-string v1, "proxy_port"

    aput-object v1, v3, v0

    const/4 v0, 0x7

    const-string v1, "proxy_user_id"

    aput-object v1, v3, v0

    const/16 v0, 0x8

    const-string v1, "proxy_password"

    aput-object v1, v3, v0

    const/16 v0, 0x9

    const-string v1, "proxy_type"

    aput-object v1, v3, v0

    const/16 v0, 0xa

    const-string v1, "apn"

    aput-object v1, v3, v0

    const/16 v0, 0xb

    const-string v1, "apn_login_id"

    aput-object v1, v3, v0

    const/16 v0, 0xc

    const-string v1, "apn_password"

    aput-object v1, v3, v0

    const/16 v0, 0xd

    const-string v1, "apn_type"

    aput-object v1, v3, v0

    const/16 v0, 0xe

    const-string v1, "gprs_dns1"

    aput-object v1, v3, v0

    const/16 v0, 0xf

    const-string v1, "gprs_dns1"

    aput-object v1, v3, v0

    .line 209
    .local v3, From:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 213
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_5e
    sget-object v0, Lcom/syncmldstmo/database/smlDbSqlNetworkProfile;->NetworkProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "network_profile"

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

    .line 215
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_82
    .catchall {:try_start_5e .. :try_end_82} :catchall_9a
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_82} :catch_8c

    move-result v0

    if-lez v0, :cond_86

    .line 217
    const/4 v10, 0x1

    .line 226
    :cond_86
    if-eqz v11, :cond_8b

    .line 227
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 230
    :cond_8b
    :goto_8b
    return v10

    .line 220
    :catch_8c
    move-exception v12

    .line 222
    .local v12, e:Ljava/lang/Exception;
    :try_start_8d
    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_9a

    .line 226
    if-eqz v11, :cond_8b

    .line 227
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_8b

    .line 226
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_9a
    move-exception v0

    if-eqz v11, :cond_a0

    .line 227
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_a0
    throw v0
.end method

.method public static smlDbSqlNetworkProfileFetchRow(JLcom/syncmldstmo/database/smlDbNetworkProfileInfo;)Ljava/lang/Object;
    .registers 15
    .parameter "RowId"
    .parameter "NetworkProfileInfo"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 113
    const/16 v0, 0x10

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "rowid"

    aput-object v0, v3, v2

    const-string v0, "net_profile_name"

    aput-object v0, v3, v1

    const-string v0, "net_home_url"

    aput-object v0, v3, v4

    const-string v0, "bearer_use"

    aput-object v0, v3, v5

    const/4 v0, 0x4

    const-string v1, "proxy_use"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "proxy_address"

    aput-object v1, v3, v0

    const/4 v0, 0x6

    const-string v1, "proxy_port"

    aput-object v1, v3, v0

    const/4 v0, 0x7

    const-string v1, "proxy_user_id"

    aput-object v1, v3, v0

    const/16 v0, 0x8

    const-string v1, "proxy_password"

    aput-object v1, v3, v0

    const/16 v0, 0x9

    const-string v1, "proxy_type"

    aput-object v1, v3, v0

    const/16 v0, 0xa

    const-string v1, "apn"

    aput-object v1, v3, v0

    const/16 v0, 0xb

    const-string v1, "apn_login_id"

    aput-object v1, v3, v0

    const/16 v0, 0xc

    const-string v1, "apn_password"

    aput-object v1, v3, v0

    const/16 v0, 0xd

    const-string v1, "apn_type"

    aput-object v1, v3, v0

    const/16 v0, 0xe

    const-string v1, "gprs_dns1"

    aput-object v1, v3, v0

    const/16 v0, 0xf

    const-string v1, "gprs_dns1"

    aput-object v1, v3, v0

    .line 132
    .local v3, From:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 136
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_5d
    sget-object v0, Lcom/syncmldstmo/database/smlDbSqlNetworkProfile;->NetworkProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "network_profile"

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

    .line 138
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_11f

    .line 140
    :goto_84
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 144
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->NetProfileName:Ljava/lang/String;

    .line 145
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->NetHomeURL:Ljava/lang/String;

    .line 147
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_110

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->BearerUse:Z

    .line 152
    :goto_a2
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_11b

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyUse:Z

    .line 157
    :goto_ac
    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyAddress:Ljava/lang/String;

    .line 158
    const/4 v0, 0x6

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyPort:Ljava/lang/String;

    .line 159
    const/4 v0, 0x7

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyUserID:Ljava/lang/String;

    .line 160
    const/16 v0, 0x8

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyPassword:Ljava/lang/String;

    .line 161
    const/16 v0, 0x9

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyType:I

    .line 163
    const/16 v0, 0xa

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->APN:Ljava/lang/String;

    .line 164
    const/16 v0, 0xb

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnLoginID:Ljava/lang/String;

    .line 165
    const/16 v0, 0xc

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnPassword:Ljava/lang/String;

    .line 166
    const/16 v0, 0xd

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnType:I

    .line 168
    const/16 v0, 0xe

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->GprsDns1:Ljava/lang/String;

    .line 169
    const/16 v0, 0xf

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->GprsDns2:Ljava/lang/String;
    :try_end_101
    .catchall {:try_start_5d .. :try_end_101} :catchall_114
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_101} :catch_102

    goto :goto_84

    .line 173
    :catch_102
    move-exception v11

    .line 175
    .local v11, e:Ljava/lang/Exception;
    :try_start_103
    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_10a
    .catchall {:try_start_103 .. :try_end_10a} :catchall_114

    .line 179
    if-eqz v10, :cond_10f

    .line 180
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 183
    .end local v11           #e:Ljava/lang/Exception;
    :cond_10f
    :goto_10f
    return-object p2

    .line 150
    :cond_110
    const/4 v0, 0x1

    :try_start_111
    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->BearerUse:Z
    :try_end_113
    .catchall {:try_start_111 .. :try_end_113} :catchall_114
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_113} :catch_102

    goto :goto_a2

    .line 179
    :catchall_114
    move-exception v0

    if-eqz v10, :cond_11a

    .line 180
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_11a
    throw v0

    .line 155
    :cond_11b
    const/4 v0, 0x1

    :try_start_11c
    iput-boolean v0, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyUse:Z
    :try_end_11e
    .catchall {:try_start_11c .. :try_end_11e} :catchall_114
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_11e} :catch_102

    goto :goto_ac

    .line 179
    :cond_11f
    if-eqz v10, :cond_10f

    .line 180
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_10f
.end method

.method public static smlDbSqlNetworkProfileInit(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "Db"

    .prologue
    .line 17
    :try_start_0
    sput-object p0, Lcom/syncmldstmo/database/smlDbSqlNetworkProfile;->NetworkProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    sget-object v1, Lcom/syncmldstmo/database/smlDbSqlNetworkProfile;->NetworkProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "create table if not exists network_profile (rowid integer primary key autoincrement, net_profile_name text, net_home_url text, bearer_use boolean, proxy_use boolean, proxy_address text, proxy_port text, proxy_user_id text, proxy_password text, proxy_type integer, apn text, apn_login_id text, apn_password text, apn_type integer, gprs_dns1 text, gprs_dns2 text);"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 25
    :goto_9
    return-void

    .line 21
    :catch_a
    move-exception v0

    .line 23
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static smlDbSqlNetworkProfileInsertRow(Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;)V
    .registers 6
    .parameter "NetworkProfileInfo"

    .prologue
    .line 41
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 45
    .local v0, ContentValues:Landroid/content/ContentValues;
    :try_start_5
    const-string v2, "net_profile_name"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->NetProfileName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v2, "net_home_url"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->NetHomeURL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "bearer_use"

    iget-boolean v3, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->BearerUse:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 48
    const-string v2, "proxy_use"

    iget-boolean v3, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyUse:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 49
    const-string v2, "proxy_address"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, "proxy_port"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyPort:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "proxy_user_id"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyUserID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v2, "proxy_password"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyPassword:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v2, "proxy_type"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    const-string v2, "apn"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->APN:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "apn_login_id"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnLoginID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, "apn_password"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnPassword:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "apn_type"

    iget v3, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    const-string v2, "gprs_dns1"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->GprsDns1:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "gprs_dns2"

    iget-object v3, p0, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->GprsDns2:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v2, Lcom/syncmldstmo/database/smlDbSqlNetworkProfile;->NetworkProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "network_profile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_86} :catch_87

    .line 67
    :goto_86
    return-void

    .line 63
    :catch_87
    move-exception v1

    .line 65
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_86
.end method

.method public static smlDbSqlNetworkProfileUpdateRow(JLcom/syncmldstmo/database/smlDbNetworkProfileInfo;)V
    .registers 9
    .parameter "RowId"
    .parameter "NetworkProfileInfo"

    .prologue
    .line 83
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .local v0, ContentValues:Landroid/content/ContentValues;
    :try_start_5
    const-string v2, "net_profile_name"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->NetProfileName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "net_home_url"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->NetHomeURL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "bearer_use"

    iget-boolean v3, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->BearerUse:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 90
    const-string v2, "proxy_use"

    iget-boolean v3, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyUse:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 91
    const-string v2, "proxy_address"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "proxy_port"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyPort:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "proxy_user_id"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyUserID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "proxy_password"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyPassword:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v2, "proxy_type"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    const-string v2, "apn"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->APN:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "apn_login_id"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnLoginID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "apn_password"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnPassword:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "apn_type"

    iget v3, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v2, "gprs_dns1"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->GprsDns1:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "gprs_dns2"

    iget-object v3, p2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->GprsDns2:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v2, Lcom/syncmldstmo/database/smlDbSqlNetworkProfile;->NetworkProfileDbSql:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "network_profile"

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
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_99} :catch_9a

    .line 109
    :goto_99
    return-void

    .line 105
    :catch_9a
    move-exception v1

    .line 107
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_99
.end method
