.class Lcom/android/server/enterprise/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# static fields
.field private static final ACCOUNTCB_CONTENT_URI:Landroid/net/Uri; = null

.field private static final ACCOUNT_CONTENT_URI:Landroid/net/Uri; = null

.field private static final HOST_AUTH_CONTENT_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "SettingsUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    .line 39
    const-string v0, "content://com.android.email.provider/hostauth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    .line 42
    const-string v0, "content://com.android.email.provider/accountcb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized addorUpdateAccount(Lcom/android/server/enterprise/AccountMetaData;ZLandroid/content/Context;)J
    .registers 20
    .parameter "accInfo"
    .parameter "isInsertOP"
    .parameter "context"

    .prologue
    .line 149
    const-class v16, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v16

    const-wide/16 v11, -0x1

    .line 152
    .local v11, accountId:J
    const-wide/16 v13, -0x1

    .line 153
    .local v13, accountsRowId:J
    const-wide/16 v4, -0x1

    .line 154
    .local v4, inComingRowId:J
    const-wide/16 v6, -0x1

    .line 156
    .local v6, outGoingRowId:J
    :try_start_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-eqz v3, :cond_8d

    const-string v3, "com.android.exchange"

    :goto_17
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v8, v3, v9, v0, v1}, Lcom/android/server/enterprise/SettingsUtils;->insertAccountsTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v13

    .line 159
    const-wide/16 v8, -0x1

    cmp-long v3, v8, v13

    if-eqz v3, :cond_5b

    .line 161
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v3, v2}, Lcom/android/server/enterprise/SettingsUtils;->insertHostAuthTableRow(Lcom/android/server/enterprise/AccountMetaData;ZZLandroid/content/Context;)J

    move-result-wide v4

    .line 163
    const-wide/16 v8, -0x1

    cmp-long v3, v8, v4

    if-eqz v3, :cond_45

    .line 164
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v3, v2}, Lcom/android/server/enterprise/SettingsUtils;->insertHostAuthTableRow(Lcom/android/server/enterprise/AccountMetaData;ZZLandroid/content/Context;)J

    move-result-wide v6

    .line 167
    :cond_45
    const-wide/16 v8, -0x1

    cmp-long v3, v8, v4

    if-eqz v3, :cond_5b

    const-wide/16 v8, -0x1

    cmp-long v3, v8, v6

    if-eqz v3, :cond_5b

    move-object/from16 v3, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    .line 168
    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/SettingsUtils;->insertAccountTableRow(Lcom/android/server/enterprise/AccountMetaData;JJZLandroid/content/Context;)J

    move-result-wide v11

    .line 171
    :cond_5b
    const-wide/16 v8, -0x1

    cmp-long v3, v8, v11

    if-nez v3, :cond_90

    .line 175
    if-eqz p1, :cond_8b

    .line 176
    const-string v3, "SettingsUtils"

    const-string v8, "addorUpdateAccount : Starting redundant data cleanup... if any...!!!"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-wide/16 v8, -0x1

    cmp-long v3, v8, v13

    if-eqz v3, :cond_75

    .line 178
    move-object/from16 v0, p2

    invoke-static {v13, v14, v0}, Lcom/android/server/enterprise/SettingsUtils;->deleteAccountsTableRow(JLandroid/content/Context;)Z

    .line 181
    :cond_75
    const-wide/16 v8, -0x1

    cmp-long v3, v8, v4

    if-eqz v3, :cond_80

    .line 182
    move-object/from16 v0, p2

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/SettingsUtils;->deleteHostAuthTableRow(JLandroid/content/Context;)Z

    .line 185
    :cond_80
    const-wide/16 v8, -0x1

    cmp-long v3, v8, v6

    if-eqz v3, :cond_8b

    .line 186
    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/SettingsUtils;->deleteHostAuthTableRow(JLandroid/content/Context;)Z
    :try_end_8b
    .catchall {:try_start_b .. :try_end_8b} :catchall_c1

    .line 206
    :cond_8b
    :goto_8b
    monitor-exit v16

    return-wide v11

    .line 156
    :cond_8d
    :try_start_8d
    const-string v3, "com.android.email"

    goto :goto_17

    .line 190
    :cond_90
    if-eqz p1, :cond_8b

    .line 191
    new-instance v15, Landroid/content/Intent;

    const-string v3, "com.android.email.ENABLE_MESSAGECOMPOSE"

    invoke-direct {v15, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v15, intent:Landroid/content/Intent;
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    new-instance v10, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-eqz v3, :cond_c4

    const-string v3, "com.android.exchange"

    :goto_ac
    invoke-direct {v10, v8, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .local v10, account:Landroid/accounts/Account;
    const-string v3, "com.android.email.provider"

    const/4 v8, 0x1

    invoke-static {v10, v3, v8}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 199
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:Z

    if-eqz v3, :cond_8b

    .line 200
    move-object/from16 v0, p2

    invoke-static {v11, v12, v0}, Lcom/android/server/enterprise/SettingsUtils;->setAsDefaultAccount(JLandroid/content/Context;)Z
    :try_end_c0
    .catchall {:try_start_8d .. :try_end_c0} :catchall_c1

    goto :goto_8b

    .line 149
    .end local v10           #account:Landroid/accounts/Account;
    .end local v15           #intent:Landroid/content/Intent;
    :catchall_c1
    move-exception v3

    monitor-exit v16

    throw v3

    .line 194
    .restart local v15       #intent:Landroid/content/Intent;
    :cond_c4
    :try_start_c4
    const-string v3, "com.android.email"
    :try_end_c6
    .catchall {:try_start_c4 .. :try_end_c6} :catchall_c1

    goto :goto_ac
.end method

.method static declared-synchronized deleteAccount(JLandroid/content/Context;)Z
    .registers 16
    .parameter "accountId"
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 554
    const-class v12, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v12

    const/4 v9, 0x0

    .line 555
    .local v9, rowCount:I
    const-wide/16 v0, 0x1

    cmp-long v0, v0, p0

    if-lez v0, :cond_15

    .line 556
    :try_start_c
    const-string v0, "SettingsUtils"

    const-string v1, "deleteAccount : accountId is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_6b

    .line 601
    :goto_13
    monitor-exit v12

    return v11

    .line 559
    :cond_15
    const/4 v6, 0x0

    .line 560
    .local v6, ac:Lcom/android/server/enterprise/AccountMetaData;
    const/4 v8, 0x0

    .line 562
    .local v8, found:Z
    :try_start_17
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/SettingsUtils;->getAccount(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_66

    move-result-object v6

    .line 563
    if-eqz v6, :cond_59

    .line 568
    :cond_1d
    :try_start_1d
    iget-object v1, v6, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iget-boolean v0, v6, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-eqz v0, :cond_5e

    const-string v0, "com.android.exchange"

    :goto_25
    invoke-static {v1, v0, p2}, Lcom/android/server/enterprise/SettingsUtils;->getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lcom/android/server/enterprise/SettingsUtils;->deleteAccountsTableRow(JLandroid/content/Context;)Z

    .line 571
    iget-wide v0, v6, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeyRecv:J

    invoke-static {v0, v1, p2}, Lcom/android/server/enterprise/SettingsUtils;->deleteHostAuthTableRow(JLandroid/content/Context;)Z

    .line 573
    iget-wide v0, v6, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeySend:J

    invoke-static {v0, v1, p2}, Lcom/android/server/enterprise/SettingsUtils;->deleteHostAuthTableRow(JLandroid/content/Context;)Z

    .line 576
    iget v0, v6, Lcom/android/server/enterprise/AccountMetaData;->mId:I

    int-to-long v0, v0

    invoke-static {v0, v1, p2}, Lcom/android/server/enterprise/SettingsUtils;->deleteAccountTableRow(JLandroid/content/Context;)Z
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3c} :catch_61

    move-result v8

    .line 581
    :goto_3d
    add-int/lit8 v9, v9, 0x1

    .line 583
    if-eqz v8, :cond_82

    .line 584
    :try_start_41
    iget-boolean v0, v6, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-eqz v0, :cond_6e

    .line 585
    iget-object v0, v6, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    iget-object v1, v6, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iget-object v3, v6, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/SettingsUtils;->getAccountIdInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    :try_end_52
    .catchall {:try_start_41 .. :try_end_52} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_52} :catch_66

    move-result-wide p0

    .line 589
    :goto_53
    const-wide/16 v0, -0x1

    cmp-long v0, v0, p0

    if-nez v0, :cond_7c

    .line 601
    :cond_59
    :goto_59
    if-lez v9, :cond_85

    move v0, v10

    :goto_5c
    move v11, v0

    goto :goto_13

    .line 568
    :cond_5e
    :try_start_5e
    const-string v0, "com.android.email"
    :try_end_60
    .catchall {:try_start_5e .. :try_end_60} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_60} :catch_61

    goto :goto_25

    .line 578
    :catch_61
    move-exception v7

    .line 579
    .local v7, e:Ljava/lang/Exception;
    :try_start_62
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_3d

    .line 598
    .end local v7           #e:Ljava/lang/Exception;
    :catch_66
    move-exception v7

    .line 599
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_67
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_59

    .line 554
    .end local v6           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #found:Z
    :catchall_6b
    move-exception v0

    monitor-exit v12

    throw v0

    .line 587
    .restart local v6       #ac:Lcom/android/server/enterprise/AccountMetaData;
    .restart local v8       #found:Z
    :cond_6e
    const/4 v0, 0x0

    :try_start_6f
    iget-object v1, v6, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iget-object v3, v6, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/SettingsUtils;->getAccountIdInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide p0

    goto :goto_53

    .line 591
    :cond_7c
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/SettingsUtils;->getAccount(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;
    :try_end_7f
    .catchall {:try_start_6f .. :try_end_7f} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7f} :catch_66

    move-result-object v6

    .line 592
    if-eqz v6, :cond_59

    .line 596
    :cond_82
    if-nez v8, :cond_1d

    goto :goto_59

    :cond_85
    move v0, v11

    .line 601
    goto :goto_5c
.end method

.method static deleteAccountTableRow(JLandroid/content/Context;)Z
    .registers 10
    .parameter "rowId"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 633
    const/4 v1, -0x1

    .line 634
    .local v1, rowCount:I
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p0

    if-lez v4, :cond_10

    .line 635
    const-string v4, "SettingsUtils"

    const-string v5, "deleteAccountTableRow : rowId is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_f
    :goto_f
    return v3

    .line 639
    :cond_10
    :try_start_10
    sget-object v4, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 640
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 641
    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAccountTableRow : deleted rowCount from Account : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_38} :catch_3c

    .line 645
    .end local v2           #uri:Landroid/net/Uri;
    :goto_38
    if-lez v1, :cond_f

    const/4 v3, 0x1

    goto :goto_f

    .line 642
    :catch_3c
    move-exception v0

    .line 643
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38
.end method

.method private static deleteAccountsTableRow(JLandroid/content/Context;)Z
    .registers 15
    .parameter "rowId"
    .parameter "context"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v9, 0x1

    cmp-long v6, v9, p0

    if-lez v6, :cond_13

    .line 296
    const-string v6, "SettingsUtils"

    const-string v7, "deleteAccountsTableRow : rowId is invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_12
    :goto_12
    return v5

    .line 300
    :cond_13
    :try_start_13
    const-string v1, "/data/system/accounts.db"

    .line 301
    .local v1, accountsDBPath:Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v6, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 303
    const-string v6, "accounts"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v6, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 304
    .local v4, rowCount:I
    if-lez v4, :cond_67

    .line 305
    :goto_37
    const-string v6, "SettingsUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteAccountsTableRow - deleted row Id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_13 .. :try_end_4f} :catchall_7f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4f} :catch_69

    .line 311
    if-eqz v0, :cond_54

    .line 312
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 314
    :cond_54
    cmp-long v6, p0, v7

    if-eqz v6, :cond_61

    .line 316
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v2

    .line 317
    .local v2, ams:Landroid/accounts/AccountManagerService;
    if-eqz v2, :cond_61

    .line 318
    .end local v1           #accountsDBPath:Ljava/lang/String;
    .end local v4           #rowCount:I
    :goto_5e
    invoke-virtual {v2, v11, v5}, Landroid/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;Z)V

    .line 321
    .end local v2           #ams:Landroid/accounts/AccountManagerService;
    :cond_61
    cmp-long v6, v7, p0

    if-eqz v6, :cond_12

    const/4 v5, 0x1

    goto :goto_12

    .restart local v1       #accountsDBPath:Ljava/lang/String;
    .restart local v4       #rowCount:I
    :cond_67
    move-wide p0, v7

    .line 304
    goto :goto_37

    .line 307
    .end local v1           #accountsDBPath:Ljava/lang/String;
    .end local v4           #rowCount:I
    :catch_69
    move-exception v3

    .line 308
    .local v3, e:Ljava/lang/Exception;
    const-wide/16 p0, -0x1

    .line 309
    :try_start_6c
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_7f

    .line 311
    if-eqz v0, :cond_74

    .line 312
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 314
    :cond_74
    cmp-long v6, p0, v7

    if-eqz v6, :cond_61

    .line 316
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v2

    .line 317
    .restart local v2       #ams:Landroid/accounts/AccountManagerService;
    if-eqz v2, :cond_61

    goto :goto_5e

    .line 311
    .end local v2           #ams:Landroid/accounts/AccountManagerService;
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_7f
    move-exception v6

    if-eqz v0, :cond_85

    .line 312
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 314
    :cond_85
    cmp-long v7, p0, v7

    if-eqz v7, :cond_92

    .line 316
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v2

    .line 317
    .restart local v2       #ams:Landroid/accounts/AccountManagerService;
    if-eqz v2, :cond_92

    .line 318
    invoke-virtual {v2, v11, v5}, Landroid/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;Z)V

    .line 311
    .end local v2           #ams:Landroid/accounts/AccountManagerService;
    :cond_92
    throw v6
.end method

.method private static deleteHostAuthTableRow(JLandroid/content/Context;)Z
    .registers 10
    .parameter "rowId"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 611
    const/4 v1, -0x1

    .line 612
    .local v1, rowCount:I
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p0

    if-lez v4, :cond_10

    .line 613
    const-string v4, "SettingsUtils"

    const-string v5, "deleteHostAuthTableRow : rowId is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_f
    :goto_f
    return v3

    .line 617
    :cond_10
    :try_start_10
    sget-object v4, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 618
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 619
    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteHostAuthTableRow : deleted rowCount from HostAuth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_38} :catch_3c

    .line 623
    .end local v2           #uri:Landroid/net/Uri;
    :goto_38
    if-lez v1, :cond_f

    const/4 v3, 0x1

    goto :goto_f

    .line 620
    :catch_3c
    move-exception v0

    .line 621
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38
.end method

.method private static getAccount(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;
    .registers 16
    .parameter "accountId"
    .parameter "context"

    .prologue
    .line 732
    const/4 v6, 0x0

    .line 733
    .local v6, ac:Lcom/android/server/enterprise/AccountMetaData;
    const/4 v8, 0x0

    .line 735
    .local v8, c:Landroid/database/Cursor;
    const/16 v0, 0x14

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "displayName"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "emailAddress"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "syncLookback"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "syncInterval"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "peakDays"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "peakStartMinute"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "peakEndMinute"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "peakSchedule"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "offPeakSchedule"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "roamingSchedule"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "hostAuthKeyRecv"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "hostAuthKeySend"

    aput-object v1, v2, v0

    const/16 v0, 0xd

    const-string v1, "flags"

    aput-object v1, v2, v0

    const/16 v0, 0xe

    const-string v1, "isDefault"

    aput-object v1, v2, v0

    const/16 v0, 0xf

    const-string v1, "compatibilityUuid"

    aput-object v1, v2, v0

    const/16 v0, 0x10

    const-string v1, "senderName"

    aput-object v1, v2, v0

    const/16 v0, 0x11

    const-string v1, "ringtoneUri"

    aput-object v1, v2, v0

    const/16 v0, 0x12

    const-string v1, "protocolVersion"

    aput-object v1, v2, v0

    const/16 v0, 0x13

    const-string v1, "signature"

    aput-object v1, v2, v0

    .line 744
    .local v2, ID_PROJECTION:[Ljava/lang/String;
    :try_start_76
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 745
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccount row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_212

    .line 747
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 748
    new-instance v7, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v7}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V
    :try_end_bf
    .catchall {:try_start_76 .. :try_end_bf} :catchall_220
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_bf} :catch_219

    .line 749
    .end local v6           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .local v7, ac:Lcom/android/server/enterprise/AccountMetaData;
    :try_start_bf
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mId:I

    .line 750
    const-string v0, "displayName"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 751
    const-string v0, "emailAddress"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 752
    const-string v0, "syncLookback"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    .line 753
    const-string v0, "syncInterval"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    .line 754
    const-string v0, "peakDays"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mPeakDays:I

    .line 755
    const-string v0, "peakStartMinute"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mPeakStartMinute:I

    .line 756
    const-string v0, "peakEndMinute"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mPeakEndMinute:I

    .line 757
    const-string v0, "peakSchedule"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mPeakSyncSchedule:I

    .line 758
    const-string v0, "offPeakSchedule"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 759
    const-string v0, "roamingSchedule"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mRoamingSyncSchedule:I

    .line 760
    const-string v0, "hostAuthKeyRecv"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeyRecv:J

    .line 761
    const-string v0, "hostAuthKeySend"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeySend:J

    .line 762
    const-string v0, "flags"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    .line 763
    const/4 v0, 0x2

    iget v1, v7, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_1e2

    const/4 v0, 0x1

    :goto_16f
    iput-boolean v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 764
    const/16 v0, 0x40

    iget v1, v7, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    and-int/lit8 v1, v1, 0x40

    if-ne v0, v1, :cond_1e4

    const/4 v0, 0x1

    :goto_17a
    iput-boolean v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 765
    const-string v0, "isDefault"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e6

    const/4 v0, 0x1

    :goto_18a
    iput-boolean v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:Z

    .line 766
    const-string v0, "compatibilityUuid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 767
    const-string v0, "senderName"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 768
    const-string v0, "ringtoneUri"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 769
    const-string v0, "protocolVersion"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 770
    const-string v0, "signature"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 773
    iget-wide v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeyRecv:J

    const/4 v3, 0x1

    invoke-static {v0, v1, v7, v3, p2}, Lcom/android/server/enterprise/SettingsUtils;->loadHostAuth(JLcom/android/server/enterprise/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v11

    .line 774
    .local v11, ret1:Z
    iget-wide v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeySend:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v7, v3, p2}, Lcom/android/server/enterprise/SettingsUtils;->loadHostAuth(JLcom/android/server/enterprise/AccountMetaData;ZLandroid/content/Context;)Z
    :try_end_1d5
    .catchall {:try_start_bf .. :try_end_1d5} :catchall_227
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_1d5} :catch_22a

    move-result v12

    .line 776
    .local v12, ret2:Z
    if-eqz v11, :cond_1da

    if-nez v12, :cond_1e8

    .line 777
    :cond_1da
    const/4 v6, 0x0

    .line 794
    .end local v7           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .restart local v6       #ac:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v8, :cond_1e0

    .line 795
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1e0
    move-object v7, v6

    .line 797
    .end local v6           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .end local v11           #ret1:Z
    .end local v12           #ret2:Z
    .restart local v7       #ac:Lcom/android/server/enterprise/AccountMetaData;
    :goto_1e1
    return-object v7

    .line 763
    :cond_1e2
    const/4 v0, 0x0

    goto :goto_16f

    .line 764
    :cond_1e4
    const/4 v0, 0x0

    goto :goto_17a

    .line 765
    :cond_1e6
    const/4 v0, 0x0

    goto :goto_18a

    .line 781
    .restart local v11       #ret1:Z
    .restart local v12       #ret2:Z
    :cond_1e8
    const/4 v0, 0x0

    :try_start_1e9
    iput-boolean v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    .line 782
    iget-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const-string v1, "eas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_211

    .line 783
    iget-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/SettingsUtils;->getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 784
    .local v10, ret:[Ljava/lang/String;
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    .line 785
    const/4 v0, 0x0

    aget-object v0, v10, v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 786
    const/4 v0, 0x1

    aget-object v0, v10, v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 787
    const/4 v0, 0x1

    aget-object v0, v10, v0

    iput-object v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 788
    iget v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mOffPeakSyncSchedule:I

    iput v0, v7, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I
    :try_end_211
    .catchall {:try_start_1e9 .. :try_end_211} :catchall_227
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_211} :catch_22a

    .end local v10           #ret:[Ljava/lang/String;
    :cond_211
    move-object v6, v7

    .line 794
    .end local v7           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .end local v11           #ret1:Z
    .end local v12           #ret2:Z
    .restart local v6       #ac:Lcom/android/server/enterprise/AccountMetaData;
    :cond_212
    if-eqz v8, :cond_217

    .line 795
    :goto_214
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_217
    move-object v7, v6

    .line 797
    .end local v6           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .restart local v7       #ac:Lcom/android/server/enterprise/AccountMetaData;
    goto :goto_1e1

    .line 791
    .end local v7           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .restart local v6       #ac:Lcom/android/server/enterprise/AccountMetaData;
    :catch_219
    move-exception v9

    .line 792
    .local v9, e:Ljava/lang/Exception;
    :goto_21a
    :try_start_21a
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_21d
    .catchall {:try_start_21a .. :try_end_21d} :catchall_220

    .line 794
    if-eqz v8, :cond_217

    goto :goto_214

    .end local v9           #e:Ljava/lang/Exception;
    :catchall_220
    move-exception v0

    :goto_221
    if-eqz v8, :cond_226

    .line 795
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 794
    :cond_226
    throw v0

    .end local v6           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .restart local v7       #ac:Lcom/android/server/enterprise/AccountMetaData;
    :catchall_227
    move-exception v0

    move-object v6, v7

    .end local v7           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .restart local v6       #ac:Lcom/android/server/enterprise/AccountMetaData;
    goto :goto_221

    .line 791
    .end local v6           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .restart local v7       #ac:Lcom/android/server/enterprise/AccountMetaData;
    :catch_22a
    move-exception v9

    move-object v6, v7

    .end local v7           #ac:Lcom/android/server/enterprise/AccountMetaData;
    .restart local v6       #ac:Lcom/android/server/enterprise/AccountMetaData;
    goto :goto_21a
.end method

.method static declared-synchronized getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;
    .registers 5
    .parameter "accountId"
    .parameter "context"

    .prologue
    .line 728
    const-class v0, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v0

    :try_start_3
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/SettingsUtils;->getAccount(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .registers 9
    .parameter "easDomain"
    .parameter "user"
    .parameter "serverAddress"
    .parameter "protocol"
    .parameter "isEas"
    .parameter "context"

    .prologue
    .line 657
    const-class v0, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v0

    :try_start_3
    invoke-static/range {p0 .. p5}, Lcom/android/server/enterprise/SettingsUtils;->getAccountIdInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getAccountIdInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .registers 20
    .parameter "easDomain"
    .parameter "user"
    .parameter "serverAddress"
    .parameter "protocol"
    .parameter "isEas"
    .parameter "context"

    .prologue
    .line 661
    const-wide/16 v6, -0x1

    .line 662
    .local v6, accountId:J
    const/4 v10, 0x0

    .line 664
    .local v10, c:Landroid/database/Cursor;
    invoke-static {p0}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 665
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 666
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 667
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 669
    if-eqz p1, :cond_19

    if-eqz p2, :cond_19

    if-nez p3, :cond_22

    .line 670
    :cond_19
    const-string v0, "SettingsUtils"

    const-string v1, "getAccountId : Error :: Invalid input parameters."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v8, v6

    .line 718
    .end local v6           #accountId:J
    .local v8, accountId:J
    :goto_21
    return-wide v8

    .line 673
    .end local v8           #accountId:J
    .restart local v6       #accountId:J
    :cond_22
    if-eqz p4, :cond_3d

    if-eqz p0, :cond_3d

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 676
    :cond_3d
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 680
    .local v2, ID_PROJECTION:[Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v0, 0x2

    aput-object p1, v4, v0

    .line 683
    .local v4, selectionArgs:[Ljava/lang/String;
    const-wide/16 v12, -0x1

    .line 685
    .local v12, hostAuthId:J
    :try_start_53
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "protocol=? AND address=? AND login=? "

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 686
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccountId for HOST_AUTH row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 688
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_8b
    .catchall {:try_start_53 .. :try_end_8b} :catchall_fb
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_8b} :catch_f4

    move-result v0

    int-to-long v12, v0

    .line 693
    :cond_8d
    if-eqz v10, :cond_92

    .line 694
    :goto_8f
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 696
    :cond_92
    const/4 v10, 0x0

    .line 698
    const-wide/16 v0, -0x1

    cmp-long v0, v0, v12

    if-eqz v0, :cond_f1

    .line 699
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .end local v2           #ID_PROJECTION:[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 702
    .restart local v2       #ID_PROJECTION:[Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 706
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :try_start_b2
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "hostAuthKeyRecv=? OR hostAuthKeySend=? "

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 707
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccountId for ACCOUNT row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 709
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_ea
    .catchall {:try_start_b2 .. :try_end_ea} :catchall_109
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_ea} :catch_102

    move-result v0

    int-to-long v6, v0

    .line 714
    :cond_ec
    if-eqz v10, :cond_f1

    .line 715
    :goto_ee
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_f1
    move-wide v8, v6

    .line 718
    .end local v6           #accountId:J
    .restart local v8       #accountId:J
    goto/16 :goto_21

    .line 690
    .end local v8           #accountId:J
    .restart local v6       #accountId:J
    :catch_f4
    move-exception v11

    .line 691
    .local v11, e:Ljava/lang/Exception;
    :try_start_f5
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_fb

    .line 693
    if-eqz v10, :cond_92

    goto :goto_8f

    .end local v11           #e:Ljava/lang/Exception;
    :catchall_fb
    move-exception v0

    if-eqz v10, :cond_101

    .line 694
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 693
    :cond_101
    throw v0

    .line 711
    :catch_102
    move-exception v11

    .line 712
    .restart local v11       #e:Ljava/lang/Exception;
    :try_start_103
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_109

    .line 714
    if-eqz v10, :cond_f1

    goto :goto_ee

    .end local v11           #e:Ljava/lang/Exception;
    :catchall_109
    move-exception v0

    if-eqz v10, :cond_10f

    .line 715
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 714
    :cond_10f
    throw v0
.end method

.method static declared-synchronized getAccountIds(Landroid/content/Context;)[J
    .registers 14
    .parameter "context"

    .prologue
    .line 801
    const-class v12, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v12

    const/4 v11, 0x0

    .line 802
    .local v11, ret:[J
    const/4 v6, 0x0

    .line 803
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_6
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_65

    .line 808
    .local v2, ID_PROJECTION:[Ljava/lang/String;
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 809
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 810
    .local v7, count:I
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accounts row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    if-lez v7, :cond_68

    .line 812
    const/4 v9, 0x0

    .line 813
    .local v9, i:I
    new-array v11, v7, [J

    move v10, v9

    .line 814
    .end local v9           #i:I
    .local v10, i:I
    :goto_3c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 815
    add-int/lit8 v9, v10, 0x1

    .end local v10           #i:I
    .restart local v9       #i:I
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    aput-wide v0, v11, v10
    :try_end_51
    .catchall {:try_start_d .. :try_end_51} :catchall_5e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_51} :catch_53

    move v10, v9

    .end local v9           #i:I
    .restart local v10       #i:I
    goto :goto_3c

    .line 818
    .end local v7           #count:I
    .end local v10           #i:I
    :catch_53
    move-exception v8

    .line 819
    .local v8, e:Ljava/lang/Exception;
    :try_start_54
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_5e

    .line 821
    if-eqz v6, :cond_5c

    .line 822
    :try_start_59
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_65

    .line 825
    .end local v8           #e:Ljava/lang/Exception;
    :cond_5c
    :goto_5c
    monitor-exit v12

    return-object v11

    .line 821
    :catchall_5e
    move-exception v0

    if-eqz v6, :cond_64

    .line 822
    :try_start_61
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 821
    :cond_64
    throw v0
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_65

    .line 801
    .end local v2           #ID_PROJECTION:[Ljava/lang/String;
    :catchall_65
    move-exception v0

    monitor-exit v12

    throw v0

    .line 821
    .restart local v2       #ID_PROJECTION:[Ljava/lang/String;
    .restart local v7       #count:I
    :cond_68
    if-eqz v6, :cond_5c

    .line 822
    :try_start_6a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_65

    goto :goto_5c
.end method

.method private static getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J
    .registers 14
    .parameter "emailId"
    .parameter "accountType"
    .parameter "context"

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .line 327
    .local v4, cr:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 328
    .local v6, rowId:J
    invoke-static {p0}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 329
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 331
    if-eqz p0, :cond_aa

    .line 333
    :try_start_e
    const-string v1, "/data/system/accounts.db"

    .line 334
    .local v1, accountsDBPath:Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 335
    const-wide/16 v2, -0x1

    .line 337
    .local v2, accountsDBRowId:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT rowid FROM accounts WHERE name = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_8d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\' AND type = \'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3c
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 339
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_63

    .line 340
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 341
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 342
    if-eqz v4, :cond_62

    .line 343
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 344
    :cond_62
    const/4 v4, 0x0

    .line 346
    :cond_63
    const-wide/16 v8, -0x1

    cmp-long v8, v8, v2

    if-eqz v8, :cond_82

    .line 347
    move-wide v6, v2

    .line 348
    const-string v8, "SettingsUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAccountsDBRowId - Found row Id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_e .. :try_end_82} :catchall_9e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_82} :catch_90

    .line 356
    :cond_82
    if-eqz v4, :cond_87

    .line 357
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_87
    if-eqz v0, :cond_8c

    .line 359
    .end local v1           #accountsDBPath:Ljava/lang/String;
    .end local v2           #accountsDBRowId:J
    :goto_89
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 365
    :cond_8c
    :goto_8c
    return-wide v6

    .line 337
    .restart local v1       #accountsDBPath:Ljava/lang/String;
    .restart local v2       #accountsDBRowId:J
    :cond_8d
    :try_start_8d
    const-string v8, ""
    :try_end_8f
    .catchall {:try_start_8d .. :try_end_8f} :catchall_9e
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_8f} :catch_90

    goto :goto_3c

    .line 352
    .end local v1           #accountsDBPath:Ljava/lang/String;
    .end local v2           #accountsDBRowId:J
    :catch_90
    move-exception v5

    .line 353
    .local v5, e:Ljava/lang/Exception;
    const-wide/16 v6, -0x1

    .line 354
    :try_start_93
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_9e

    .line 356
    if-eqz v4, :cond_9b

    .line 357
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_9b
    if-eqz v0, :cond_8c

    goto :goto_89

    .line 356
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_9e
    move-exception v8

    if-eqz v4, :cond_a4

    .line 357
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_a4
    if-eqz v0, :cond_a9

    .line 359
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 356
    :cond_a9
    throw v8

    .line 363
    :cond_aa
    const-string v8, "SettingsUtils"

    const-string v9, "getAccountsDBRowId : Error :: Invalid input parameters."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c
.end method

.method static declared-synchronized getCBAAlias(JLandroid/content/Context;)Ljava/lang/String;
    .registers 13
    .parameter "accountId"
    .parameter "context"

    .prologue
    .line 904
    const-class v9, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v9

    const/4 v6, 0x0

    .line 905
    .local v6, alias:Ljava/lang/String;
    const/4 v7, 0x0

    .line 907
    .local v7, c:Landroid/database/Cursor;
    const/4 v0, 0x2

    :try_start_6
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "cbaCertificateAlias"

    aput-object v1, v2, v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_71

    .line 911
    .local v2, ID_PROJECTION:[Ljava/lang/String;
    :try_start_12
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 912
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccount row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_60

    .line 914
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 915
    const-string v0, "cbaCertificateAlias"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5f
    .catchall {:try_start_12 .. :try_end_5f} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_5f} :catch_67

    move-result-object v6

    .line 920
    :cond_60
    if-eqz v7, :cond_65

    .line 921
    :try_start_62
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_71

    .line 923
    :cond_65
    :goto_65
    monitor-exit v9

    return-object v6

    .line 917
    :catch_67
    move-exception v8

    .line 918
    .local v8, e:Ljava/lang/Exception;
    :try_start_68
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_74

    .line 920
    if-eqz v7, :cond_65

    .line 921
    :try_start_6d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_65

    .line 904
    .end local v2           #ID_PROJECTION:[Ljava/lang/String;
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_71
    move-exception v0

    monitor-exit v9

    throw v0

    .line 920
    .restart local v2       #ID_PROJECTION:[Ljava/lang/String;
    :catchall_74
    move-exception v0

    if-eqz v7, :cond_7a

    .line 921
    :try_start_77
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 920
    :cond_7a
    throw v0
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_71
.end method

.method private static getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .parameter "login"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 879
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v4

    aput-object v2, v0, v3

    .line 882
    .local v0, easDomainAndUser:[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 883
    if-eqz p0, :cond_3a

    .line 884
    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 885
    const-string v2, "\\"

    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 886
    .local v1, sp:[Ljava/lang/String;
    if-eqz v1, :cond_3a

    array-length v2, v1

    if-lez v2, :cond_3a

    .line 887
    array-length v2, v1

    if-ne v5, v2, :cond_3b

    .line 888
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 889
    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 899
    .end local v1           #sp:[Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-object v0

    .line 890
    .restart local v1       #sp:[Ljava/lang/String;
    :cond_3b
    array-length v2, v1

    if-ne v3, v2, :cond_3a

    .line 891
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_3a

    .line 896
    .end local v1           #sp:[Ljava/lang/String;
    :cond_47
    aput-object p0, v0, v3

    goto :goto_3a
.end method

.method private static getHostAuthFlags(IZZZLandroid/content/Context;)I
    .registers 9
    .parameter "existingFlag"
    .parameter "useSSL"
    .parameter "useTLS"
    .parameter "acceptAllCertificates"
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 228
    move v0, p0

    .line 231
    .local v0, flag:I
    if-ne v3, p1, :cond_f

    .line 232
    or-int/lit8 v0, v0, 0x1

    .line 237
    :cond_6
    :goto_6
    if-ne v3, p2, :cond_16

    .line 238
    or-int/lit8 v0, v0, 0x2

    .line 243
    :cond_a
    :goto_a
    if-ne v3, p3, :cond_1e

    .line 244
    or-int/lit8 v0, v0, 0x8

    .line 248
    :cond_e
    :goto_e
    return v0

    .line 233
    :cond_f
    and-int/lit8 v1, v0, 0x1

    if-ne v3, v1, :cond_6

    .line 234
    xor-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 239
    :cond_16
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_a

    .line 240
    xor-int/lit8 v0, v0, 0x2

    goto :goto_a

    .line 245
    :cond_1e
    const/16 v1, 0x8

    and-int/lit8 v2, v0, 0x8

    if-ne v1, v2, :cond_e

    .line 246
    xor-int/lit8 v0, v0, 0x8

    goto :goto_e
.end method

.method static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 113
    if-nez p0, :cond_4

    .line 117
    :cond_3
    :goto_3
    return-object v1

    .line 113
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p0

    goto :goto_3

    .line 114
    :catch_10
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private static insertAccountTableRow(Lcom/android/server/enterprise/AccountMetaData;JJZLandroid/content/Context;)J
    .registers 23
    .parameter "accInfo"
    .parameter "hostAuthKeyRecv"
    .parameter "hostAuthKeySend"
    .parameter "isInsertOP"
    .parameter "context"

    .prologue
    .line 371
    const-wide/16 v7, -0x1

    .line 373
    .local v7, rowId:J
    const/4 v2, 0x0

    .line 374
    .local v2, compatibilityUuid:Ljava/lang/String;
    if-eqz p5, :cond_1b5

    const/4 v9, 0x0

    .line 375
    .local v9, settingsFlags:I
    :goto_6
    const/4 v5, 0x0

    .line 377
    .local v5, ringtoneUri:Ljava/lang/String;
    if-eqz p5, :cond_1bb

    .line 379
    const-string v5, "content://settings/system/notification_sound"

    .line 380
    const/4 v9, 0x1

    .line 381
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 388
    :goto_14
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    if-ne v12, v13, :cond_1c9

    .line 389
    or-int/lit8 v9, v9, 0x2

    .line 393
    :cond_1d
    :goto_1d
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    if-ne v12, v13, :cond_1d2

    .line 394
    or-int/lit8 v9, v9, 0x40

    .line 399
    :cond_26
    :goto_26
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 401
    .local v10, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    if-eqz v12, :cond_1dc

    .line 402
    const-string v12, "displayName"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :goto_3a
    const-string v12, "emailAddress"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v12, "syncLookback"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 412
    const-string v12, "syncInterval"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v12, "peakDays"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mPeakDays:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    const-string v12, "peakStartMinute"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mPeakStartMinute:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    const-string v12, "peakEndMinute"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mPeakEndMinute:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    const-string v12, "peakSchedule"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mPeakSyncSchedule:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    const-string v12, "offPeakSchedule"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mOffPeakSyncSchedule:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 418
    const-string v12, "roamingSchedule"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mRoamingSyncSchedule:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    const-string v12, "hostAuthKeyRecv"

    move-wide/from16 v0, p1

    long-to-int v13, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    const-string v12, "hostAuthKeySend"

    move-wide/from16 v0, p3

    long-to-int v13, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const-string v12, "flags"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    const-string v13, "isDefault"

    if-eqz p5, :cond_1e5

    const/4 v12, 0x0

    :goto_d1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 424
    const-string v12, "compatibilityUuid"

    invoke-virtual {v10, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    if-eqz v12, :cond_1f1

    .line 426
    const-string v12, "senderName"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :goto_ec
    const-string v12, "ringtoneUri"

    invoke-virtual {v10, v12, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    if-eqz v12, :cond_100

    .line 433
    const-string v12, "protocolVersion"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_100
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    if-eqz v12, :cond_1fa

    .line 436
    const-string v12, "signature"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :goto_10f
    if-eqz p5, :cond_20f

    .line 444
    :try_start_111
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 446
    .local v4, newRowUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_11e} :catch_208

    move-result-wide v7

    .line 449
    :try_start_11f
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_124} :catch_203

    .line 450
    .end local v10           #values:Landroid/content/ContentValues;
    .local v11, values:Landroid/content/ContentValues;
    :try_start_124
    const-string v12, "accountKey"

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v12, "sevenAccountKey"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    const-string v12, "timeLimit"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    const-string v12, "sizeLimit"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 454
    const-string v12, "typeMsg"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 455
    const-string v12, "peakTime"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    const-string v12, "offPeakTime"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    const-string v12, "days"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v12, "peakStartTime"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v12, "peakEndTime"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v12, "whileRoaming"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    const-string v12, "attachmentEnabled"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 462
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_19b} :catch_23c

    move-object v10, v11

    .line 470
    .end local v4           #newRowUri:Landroid/net/Uri;
    .end local v11           #values:Landroid/content/ContentValues;
    .restart local v10       #values:Landroid/content/ContentValues;
    :goto_19c
    :try_start_19c
    const-string v12, "SettingsUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "insertAccountTableRow row Id : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_1b4} :catch_208

    .line 476
    :goto_1b4
    return-wide v7

    .line 374
    .end local v5           #ringtoneUri:Ljava/lang/String;
    .end local v9           #settingsFlags:I
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_1b5
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    goto/16 :goto_6

    .line 384
    .restart local v5       #ringtoneUri:Ljava/lang/String;
    .restart local v9       #settingsFlags:I
    :cond_1bb
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 385
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    goto/16 :goto_14

    .line 390
    :cond_1c9
    const/4 v12, 0x2

    and-int/lit8 v13, v9, 0x2

    if-ne v12, v13, :cond_1d

    .line 391
    xor-int/lit8 v9, v9, 0x2

    goto/16 :goto_1d

    .line 395
    :cond_1d2
    const/16 v12, 0x40

    and-int/lit8 v13, v9, 0x40

    if-ne v12, v13, :cond_26

    .line 396
    xor-int/lit8 v9, v9, 0x40

    goto/16 :goto_26

    .line 405
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_1dc
    const-string v12, "displayName"

    const-string v13, " "

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 423
    :cond_1e5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:Z

    if-eqz v12, :cond_1ee

    const/4 v12, 0x1

    goto/16 :goto_d1

    :cond_1ee
    const/4 v12, 0x0

    goto/16 :goto_d1

    .line 429
    :cond_1f1
    const-string v12, "senderName"

    const-string v13, " "

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ec

    .line 439
    :cond_1fa
    const-string v12, "signature"

    const-string v13, " "

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10f

    .line 463
    .restart local v4       #newRowUri:Landroid/net/Uri;
    :catch_203
    move-exception v3

    .line 464
    .local v3, e:Ljava/lang/Exception;
    :goto_204
    :try_start_204
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_204 .. :try_end_207} :catch_208

    goto :goto_19c

    .line 471
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #newRowUri:Landroid/net/Uri;
    :catch_208
    move-exception v3

    .line 472
    .restart local v3       #e:Ljava/lang/Exception;
    const-wide/16 v7, -0x1

    .line 473
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b4

    .line 467
    .end local v3           #e:Ljava/lang/Exception;
    :cond_20f
    :try_start_20f
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/enterprise/AccountMetaData;->mId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v10, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 468
    .local v6, rowCount:I
    if-lez v6, :cond_23a

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/enterprise/AccountMetaData;->mId:I
    :try_end_237
    .catch Ljava/lang/Exception; {:try_start_20f .. :try_end_237} :catch_208

    :goto_237
    int-to-long v7, v12

    goto/16 :goto_19c

    :cond_23a
    const/4 v12, -0x1

    goto :goto_237

    .line 463
    .end local v6           #rowCount:I
    .end local v10           #values:Landroid/content/ContentValues;
    .restart local v4       #newRowUri:Landroid/net/Uri;
    .restart local v11       #values:Landroid/content/ContentValues;
    :catch_23c
    move-exception v3

    move-object v10, v11

    .end local v11           #values:Landroid/content/ContentValues;
    .restart local v10       #values:Landroid/content/ContentValues;
    goto :goto_204
.end method

.method private static insertAccountsTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .registers 19
    .parameter "name"
    .parameter "type"
    .parameter "password"
    .parameter "isInsertOP"
    .parameter "context"

    .prologue
    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v8, -0x1

    .line 256
    .local v8, rowId:J
    :try_start_3
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 257
    .local v10, values:Landroid/content/ContentValues;
    const-string v11, "name"

    invoke-virtual {v10, v11, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v11, "type"

    invoke-virtual {v10, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    if-eqz p2, :cond_1b

    .line 260
    const-string v11, "password"

    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_1b
    const-string v2, "/data/system/accounts.db"

    .line 264
    .local v2, accountsDBPath:Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v2, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 265
    if-eqz p3, :cond_5c

    .line 266
    const-string v11, "accounts"

    const-string v12, "doesn\'t exist at all"

    invoke-virtual {v1, v11, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 274
    :cond_2d
    :goto_2d
    const-string v11, "SettingsUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertAccountsTableRow row Id : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_a1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_45} :catch_89

    .line 279
    if-eqz v1, :cond_4a

    .line 280
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 282
    :cond_4a
    const-wide/16 v11, -0x1

    cmp-long v11, v8, v11

    if-eqz v11, :cond_5b

    .line 284
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v5

    .line 285
    .local v5, ams:Landroid/accounts/AccountManagerService;
    if-eqz v5, :cond_5b

    .line 286
    .end local v2           #accountsDBPath:Ljava/lang/String;
    .end local v10           #values:Landroid/content/ContentValues;
    :goto_56
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;Z)V

    .line 290
    .end local v5           #ams:Landroid/accounts/AccountManagerService;
    :cond_5b
    return-wide v8

    .line 268
    .restart local v2       #accountsDBPath:Ljava/lang/String;
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_5c
    :try_start_5c
    move-object/from16 v0, p4

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v3

    .line 269
    .local v3, accountsDBRowId:J
    const-wide/16 v11, -0x1

    cmp-long v11, v11, v3

    if-eqz v11, :cond_2d

    .line 270
    const-string v11, "accounts"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v10, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_5c .. :try_end_81} :catchall_a1
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_81} :catch_89

    move-result v7

    .line 271
    .local v7, rowCount:I
    if-lez v7, :cond_86

    move-wide v8, v3

    :goto_85
    goto :goto_2d

    :cond_86
    const-wide/16 v8, -0x1

    goto :goto_85

    .line 275
    .end local v2           #accountsDBPath:Ljava/lang/String;
    .end local v3           #accountsDBRowId:J
    .end local v7           #rowCount:I
    .end local v10           #values:Landroid/content/ContentValues;
    :catch_89
    move-exception v6

    .line 276
    .local v6, e:Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    .line 277
    :try_start_8c
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_a1

    .line 279
    if-eqz v1, :cond_94

    .line 280
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 282
    :cond_94
    const-wide/16 v11, -0x1

    cmp-long v11, v8, v11

    if-eqz v11, :cond_5b

    .line 284
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v5

    .line 285
    .restart local v5       #ams:Landroid/accounts/AccountManagerService;
    if-eqz v5, :cond_5b

    goto :goto_56

    .line 279
    .end local v5           #ams:Landroid/accounts/AccountManagerService;
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_a1
    move-exception v11

    if-eqz v1, :cond_a7

    .line 280
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 282
    :cond_a7
    const-wide/16 v12, -0x1

    cmp-long v12, v8, v12

    if-eqz v12, :cond_b8

    .line 284
    invoke-static {}, Landroid/accounts/AccountManagerService;->getSingleton()Landroid/accounts/AccountManagerService;

    move-result-object v5

    .line 285
    .restart local v5       #ams:Landroid/accounts/AccountManagerService;
    if-eqz v5, :cond_b8

    .line 286
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;Z)V

    .line 279
    .end local v5           #ams:Landroid/accounts/AccountManagerService;
    :cond_b8
    throw v11
.end method

.method private static insertHostAuthTableRow(Lcom/android/server/enterprise/AccountMetaData;ZZLandroid/content/Context;)J
    .registers 19
    .parameter "accInfo"
    .parameter "isInsertOP"
    .parameter "isHostAuthRecv"
    .parameter "context"

    .prologue
    .line 480
    const-wide/16 v8, -0x1

    .line 481
    .local v8, rowId:J
    const/4 v4, 0x0

    .line 482
    .local v4, flags:I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 485
    .local v10, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_cb

    .line 486
    if-eqz p1, :cond_c7

    const/4 v11, 0x4

    :goto_d
    iget-boolean v12, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:Z

    iget-boolean v13, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:Z

    iget-boolean v14, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    move-object/from16 v0, p3

    invoke-static {v11, v12, v13, v14, v0}, Lcom/android/server/enterprise/SettingsUtils;->getHostAuthFlags(IZZZLandroid/content/Context;)I

    move-result v4

    .line 494
    :goto_19
    const-string v12, "protocol"

    if-eqz p2, :cond_df

    iget-object v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    :goto_1f
    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v12, "address"

    if-eqz p2, :cond_e3

    iget-object v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    :goto_28
    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v12, "port"

    iget-boolean v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-eqz v11, :cond_e7

    const/4 v11, 0x0

    :goto_32
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 497
    const-string v11, "flags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    iget-boolean v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-eqz v11, :cond_f5

    .line 500
    iget-object v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v11, :cond_f1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\\"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 505
    .local v5, login:Ljava/lang/String;
    :goto_65
    const-string v11, "login"

    invoke-virtual {v10, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    if-eqz p2, :cond_77

    iget-object v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    if-eqz v11, :cond_77

    .line 507
    const-string v11, "password"

    iget-object v12, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_77
    if-nez p2, :cond_84

    iget-object v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    if-eqz v11, :cond_84

    .line 510
    const-string v11, "password"

    iget-object v12, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_84
    if-eqz p2, :cond_91

    .line 513
    iget-object v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    if-eqz v11, :cond_fe

    .line 514
    const-string v11, "domain"

    iget-object v12, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_91
    :goto_91
    if-nez p2, :cond_9e

    .line 521
    iget-object v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    if-eqz v11, :cond_106

    .line 522
    const-string v11, "domain"

    iget-object v12, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_9e
    :goto_9e
    if-eqz p1, :cond_10e

    .line 531
    :try_start_a0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 532
    .local v6, newRowUri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 538
    .end local v6           #newRowUri:Landroid/net/Uri;
    :goto_ae
    const-string v11, "SettingsUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertHostAuthTableRow row Id : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_c6} :catch_13b

    .line 544
    :goto_c6
    return-wide v8

    .line 486
    .end local v5           #login:Ljava/lang/String;
    :cond_c7
    iget v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerFlags:I

    goto/16 :goto_d

    .line 490
    :cond_cb
    if-eqz p1, :cond_dc

    const/4 v11, 0x4

    :goto_ce
    iget-boolean v12, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:Z

    iget-boolean v13, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:Z

    iget-boolean v14, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    move-object/from16 v0, p3

    invoke-static {v11, v12, v13, v14, v0}, Lcom/android/server/enterprise/SettingsUtils;->getHostAuthFlags(IZZZLandroid/content/Context;)I

    move-result v4

    goto/16 :goto_19

    :cond_dc
    iget v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerFlags:I

    goto :goto_ce

    .line 494
    :cond_df
    iget-object v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    goto/16 :goto_1f

    .line 495
    :cond_e3
    iget-object v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    goto/16 :goto_28

    .line 496
    :cond_e7
    if-eqz p2, :cond_ed

    iget v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    goto/16 :goto_32

    :cond_ed
    iget v11, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    goto/16 :goto_32

    .line 500
    :cond_f1
    iget-object v5, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto/16 :goto_65

    .line 503
    :cond_f5
    if-eqz p2, :cond_fb

    iget-object v5, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .restart local v5       #login:Ljava/lang/String;
    :goto_f9
    goto/16 :goto_65

    .end local v5           #login:Ljava/lang/String;
    :cond_fb
    iget-object v5, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    goto :goto_f9

    .line 517
    .restart local v5       #login:Ljava/lang/String;
    :cond_fe
    const-string v11, "domain"

    const-string v12, " "

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_91

    .line 525
    :cond_106
    const-string v11, "domain"

    const-string v12, " "

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9e

    .line 534
    :cond_10e
    if-eqz p2, :cond_135

    :try_start_110
    iget-wide v2, p0, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeyRecv:J

    .line 535
    .local v2, existingHostAuthRowId:J
    :goto_112
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v10, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 536
    .local v7, rowCount:I
    if-lez v7, :cond_138

    move-wide v8, v2

    :goto_133
    goto/16 :goto_ae

    .line 534
    .end local v2           #existingHostAuthRowId:J
    .end local v7           #rowCount:I
    :cond_135
    iget-wide v2, p0, Lcom/android/server/enterprise/AccountMetaData;->mHostAuthKeySend:J
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_137} :catch_13b

    goto :goto_112

    .line 536
    .restart local v2       #existingHostAuthRowId:J
    .restart local v7       #rowCount:I
    :cond_138
    const-wide/16 v8, -0x1

    goto :goto_133

    .line 539
    .end local v2           #existingHostAuthRowId:J
    .end local v7           #rowCount:I
    :catch_13b
    move-exception v1

    .line 540
    .local v1, e:Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    .line 541
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c6
.end method

.method private static isExistingAccount(JLandroid/content/Context;)Z
    .registers 13
    .parameter "accountId"
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 45
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 49
    .local v2, ID_PROJECTION:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 51
    .local v6, c:Landroid/database/Cursor;
    :try_start_9
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 52
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccount row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_47
    .catchall {:try_start_9 .. :try_end_47} :catchall_5c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_47} :catch_51

    move-result v0

    if-lez v0, :cond_63

    .line 59
    if-eqz v6, :cond_4f

    .line 60
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4f
    move v0, v8

    .line 62
    :goto_50
    return v0

    .line 56
    :catch_51
    move-exception v7

    .line 57
    .local v7, e:Ljava/lang/Exception;
    :try_start_52
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5c

    .line 59
    if-eqz v6, :cond_5a

    .line 60
    .end local v7           #e:Ljava/lang/Exception;
    :goto_57
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5a
    move v0, v9

    .line 62
    goto :goto_50

    .line 59
    :catchall_5c
    move-exception v0

    if-eqz v6, :cond_62

    .line 60
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_62
    throw v0

    :cond_63
    if-eqz v6, :cond_5a

    goto :goto_57
.end method

.method static isValidEmailAddress(Ljava/lang/String;)Z
    .registers 10
    .parameter "emailAddress"

    .prologue
    .line 210
    const/4 v3, 0x0

    .line 211
    .local v3, isValid:Z
    invoke-static {p0}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 212
    if-eqz p0, :cond_34

    .line 214
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 215
    .local v6, len:I
    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 216
    .local v1, firstAt:I
    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 217
    .local v4, lastAt:I
    const/16 v7, 0x2e

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 218
    .local v2, firstDot:I
    const/16 v7, 0x2e

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_37

    move-result v5

    .line 219
    .local v5, lastDot:I
    if-lez v1, :cond_35

    if-ne v1, v4, :cond_35

    add-int/lit8 v7, v4, 0x1

    if-ge v7, v2, :cond_35

    if-gt v2, v5, :cond_35

    add-int/lit8 v7, v6, -0x1

    if-ge v5, v7, :cond_35

    const/4 v3, 0x1

    .line 224
    .end local v1           #firstAt:I
    .end local v2           #firstDot:I
    .end local v4           #lastAt:I
    .end local v5           #lastDot:I
    .end local v6           #len:I
    :cond_34
    :goto_34
    return v3

    .line 219
    .restart local v1       #firstAt:I
    .restart local v2       #firstDot:I
    .restart local v4       #lastAt:I
    .restart local v5       #lastDot:I
    .restart local v6       #len:I
    :cond_35
    const/4 v3, 0x0

    goto :goto_34

    .line 220
    .end local v1           #firstAt:I
    .end local v2           #firstDot:I
    .end local v4           #lastAt:I
    .end local v5           #lastDot:I
    .end local v6           #len:I
    :catch_37
    move-exception v0

    .line 221
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method private static loadHostAuth(JLcom/android/server/enterprise/AccountMetaData;ZLandroid/content/Context;)Z
    .registers 14
    .parameter "id"
    .parameter "acc"
    .parameter "isReceive"
    .parameter "context"

    .prologue
    .line 829
    const/4 v8, 0x0

    .line 830
    .local v8, ret:Z
    const/4 v6, 0x0

    .line 832
    .local v6, c:Landroid/database/Cursor;
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "protocol"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "port"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "flags"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "login"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "password"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "domain"

    aput-object v1, v2, v0

    .line 837
    .local v2, ID_PROJECTION:[Ljava/lang/String;
    :try_start_2e
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 838
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadHostAuth row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_e8

    .line 840
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 841
    if-eqz p3, :cond_f4

    .line 842
    const-string v0, "protocol"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 843
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 844
    const-string v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    .line 845
    const-string v0, "flags"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerFlags:I

    .line 846
    const/4 v0, 0x1

    iget v1, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_ee

    const/4 v0, 0x1

    :goto_ac
    iput-boolean v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:Z

    .line 847
    const/4 v0, 0x2

    iget v1, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_f0

    const/4 v0, 0x1

    :goto_b6
    iput-boolean v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:Z

    .line 848
    const/16 v0, 0x8

    iget v1, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_f2

    const/4 v0, 0x1

    :goto_c1
    iput-boolean v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 849
    const-string v0, "login"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 850
    const-string v0, "password"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 851
    const-string v0, "domain"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;
    :try_end_e7
    .catchall {:try_start_2e .. :try_end_e7} :catchall_176
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_e7} :catch_168

    .line 865
    :goto_e7
    const/4 v8, 0x1

    .line 872
    :cond_e8
    if-eqz v6, :cond_ed

    .line 873
    :goto_ea
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 875
    :cond_ed
    return v8

    .line 846
    :cond_ee
    const/4 v0, 0x0

    goto :goto_ac

    .line 847
    :cond_f0
    const/4 v0, 0x0

    goto :goto_b6

    .line 848
    :cond_f2
    const/4 v0, 0x0

    goto :goto_c1

    .line 854
    :cond_f4
    :try_start_f4
    const-string v0, "protocol"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 855
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 856
    const-string v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    .line 857
    const-string v0, "flags"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerFlags:I

    .line 858
    const/4 v0, 0x1

    iget v1, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_170

    const/4 v0, 0x1

    :goto_12c
    iput-boolean v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 859
    const/4 v0, 0x2

    iget v1, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_172

    const/4 v0, 0x1

    :goto_136
    iput-boolean v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 860
    const/16 v0, 0x8

    iget v1, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_174

    const/4 v0, 0x1

    :goto_141
    iput-boolean v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 861
    const-string v0, "login"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 862
    const-string v0, "password"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 863
    const-string v0, "domain"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;
    :try_end_167
    .catchall {:try_start_f4 .. :try_end_167} :catchall_176
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_167} :catch_168

    goto :goto_e7

    .line 868
    :catch_168
    move-exception v7

    .line 869
    .local v7, e:Ljava/lang/Exception;
    :try_start_169
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16c
    .catchall {:try_start_169 .. :try_end_16c} :catchall_176

    .line 872
    if-eqz v6, :cond_ed

    goto/16 :goto_ea

    .line 858
    .end local v7           #e:Ljava/lang/Exception;
    :cond_170
    const/4 v0, 0x0

    goto :goto_12c

    .line 859
    :cond_172
    const/4 v0, 0x0

    goto :goto_136

    .line 860
    :cond_174
    const/4 v0, 0x0

    goto :goto_141

    .line 872
    :catchall_176
    move-exception v0

    if-eqz v6, :cond_17c

    .line 873
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 872
    :cond_17c
    throw v0
.end method

.method static declared-synchronized sendAccountsChangedBroadcast(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    .line 97
    const-class v5, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v5

    :try_start_3
    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 98
    .local v2, LOGIN_ACCOUNTS_CHANGED_ACTION:Ljava/lang/String;
    const/high16 v1, 0x1000

    .line 99
    .local v1, FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT:I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_36
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_28} :catch_31

    .line 108
    .end local v0           #ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;
    .end local v1           #FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT:I
    .end local v2           #LOGIN_ACCOUNTS_CHANGED_ACTION:Ljava/lang/String;
    :goto_28
    :try_start_28
    const-string v4, "SettingsUtils"

    const-string v6, "sendAccountsChangedBroadcast()"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_36

    .line 109
    monitor-exit v5

    return-void

    .line 105
    :catch_31
    move-exception v3

    .line 106
    .local v3, e:Ljava/lang/Exception;
    :try_start_32
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_28

    .line 97
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_36
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method static declared-synchronized setAsDefaultAccount(JLandroid/content/Context;)Z
    .registers 16
    .parameter "accountId"
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 66
    const-class v8, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v8

    const/4 v2, 0x0

    .line 67
    .local v2, success:Z
    const-wide/16 v9, 0x1

    cmp-long v9, v9, p0

    if-lez v9, :cond_16

    .line 68
    :try_start_c
    const-string v6, "SettingsUtils"

    const-string v7, "setAsDefaultAccount : accountId is invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_ac

    move v3, v2

    .line 92
    .end local v2           #success:Z
    .local v3, success:I
    :goto_14
    monitor-exit v8

    return v3

    .line 72
    .end local v3           #success:I
    .restart local v2       #success:Z
    :cond_16
    :try_start_16
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/SettingsUtils;->isExistingAccount(JLandroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_25

    .line 73
    const-string v6, "SettingsUtils"

    const-string v7, "setAsDefaultAccount : No Such Account"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 74
    .restart local v3       #success:I
    goto :goto_14

    .line 77
    .end local v3           #success:I
    :cond_25
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 78
    .local v4, values:Landroid/content/ContentValues;
    const-string v9, "isDefault"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_ac

    .line 81
    :try_start_34
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v4, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, count:I
    const-string v9, "SettingsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setAsDefaultAccount : row count for resetting the default column : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V
    :try_end_5d
    .catchall {:try_start_34 .. :try_end_5d} :catchall_ac
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_5d} :catch_a6

    .line 84
    .end local v4           #values:Landroid/content/ContentValues;
    .local v5, values:Landroid/content/ContentValues;
    :try_start_5d
    const-string v9, "isDefault"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v5, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 86
    const-string v9, "SettingsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setAsDefaultAccount : row count for setting the default column : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_5d .. :try_end_9d} :catchall_ac
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_9d} :catch_af

    .line 87
    if-lez v0, :cond_a4

    move v2, v6

    :goto_a0
    move-object v4, v5

    .end local v0           #count:I
    .end local v5           #values:Landroid/content/ContentValues;
    .restart local v4       #values:Landroid/content/ContentValues;
    :goto_a1
    move v3, v2

    .line 92
    .restart local v3       #success:I
    goto/16 :goto_14

    .end local v3           #success:I
    .end local v4           #values:Landroid/content/ContentValues;
    .restart local v0       #count:I
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_a4
    move v2, v7

    .line 87
    goto :goto_a0

    .line 88
    .end local v0           #count:I
    .end local v5           #values:Landroid/content/ContentValues;
    .restart local v4       #values:Landroid/content/ContentValues;
    :catch_a6
    move-exception v1

    .line 89
    .local v1, e:Ljava/lang/Exception;
    :goto_a7
    const/4 v2, 0x0

    .line 90
    :try_start_a8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_ac

    goto :goto_a1

    .line 66
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #values:Landroid/content/ContentValues;
    :catchall_ac
    move-exception v6

    monitor-exit v8

    throw v6

    .line 88
    .restart local v0       #count:I
    .restart local v5       #values:Landroid/content/ContentValues;
    :catch_af
    move-exception v1

    move-object v4, v5

    .end local v5           #values:Landroid/content/ContentValues;
    .restart local v4       #values:Landroid/content/ContentValues;
    goto :goto_a7
.end method
