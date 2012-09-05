.class public Lcom/google/android/finsky/receivers/DownloadTickleReceiver;
.super Lcom/google/android/finsky/download/DownloadReceiver;
.source "DownloadTickleReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadReceiver;-><init>()V

    return-void
.end method

.method private generatePackageProperties(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/android/finsky/download/Download$PackageProperties;
    .registers 23
    .parameter "bundle"
    .parameter "suffix"

    .prologue
    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assetid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 154
    .local v8, assetId:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "asset_package"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, packageName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "asset_signature"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 156
    .local v12, assetSignature:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "asset_size"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 157
    .local v16, assetSize:Ljava/lang/Long;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "asset_is_forward_locked"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 158
    .local v18, isForwardLockedStr:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 160
    .local v9, isForwardLocked:Z
    const/4 v13, 0x0

    .line 161
    .local v13, refundPeriodEndTime:Ljava/lang/Long;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "asset_refundtimeout"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 164
    .local v19, refundPeriodEndTimeString:Ljava/lang/String;
    :try_start_af
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_b2
    .catch Ljava/lang/NumberFormatException; {:try_start_af .. :try_end_b2} :catch_10f

    move-result-object v13

    .line 170
    :goto_b3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user_email"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, account:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "asset_version_code"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 173
    .local v7, versionCode:I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/google/android/finsky/receivers/DownloadTickleReceiver;->parseObb(Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v14

    .line 174
    .local v14, mainObb:Lcom/google/android/finsky/download/obb/Obb;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/google/android/finsky/receivers/DownloadTickleReceiver;->parseObb(Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v15

    .line 176
    .local v15, patchObb:Lcom/google/android/finsky/download/obb/Obb;
    new-instance v3, Lcom/google/android/finsky/download/Download$PackageProperties;

    sget-object v5, Lcom/google/android/finsky/local/AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/local/AutoUpdateState;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct/range {v3 .. v15}, Lcom/google/android/finsky/download/Download$PackageProperties;-><init>(Ljava/lang/String;Lcom/google/android/finsky/local/AutoUpdateState;Ljava/lang/String;ILjava/lang/String;ZJLjava/lang/String;Ljava/lang/Long;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)V

    return-object v3

    .line 165
    .end local v6           #account:Ljava/lang/String;
    .end local v7           #versionCode:I
    .end local v14           #mainObb:Lcom/google/android/finsky/download/obb/Obb;
    .end local v15           #patchObb:Lcom/google/android/finsky/download/obb/Obb;
    :catch_10f
    move-exception v17

    .line 167
    .local v17, e:Ljava/lang/NumberFormatException;
    const-string v3, "Received refund period time end string : %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v19, v5, v10

    invoke-static {v3, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b3
.end method

.method private getApplicationCount(Landroid/os/Bundle;)I
    .registers 5
    .parameter "bundle"

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 98
    .local v0, appCount:I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assetid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 100
    return v0
.end method

.method private getAssetDownloadUrl(Landroid/os/Bundle;ZLjava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "bundle"
    .parameter "shouldSecure"
    .parameter "key"

    .prologue
    .line 107
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, assetDownloadUrl:Ljava/lang/String;
    if-eqz p2, :cond_26

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_26
    return-object v0
.end method

.method private parseObb(Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;
    .registers 18
    .parameter "bundle"
    .parameter "packageName"
    .parameter "isPatch"
    .parameter "tickleSuffix"

    .prologue
    .line 120
    const/4 v10, 0x1

    .local v10, obbIdx:I
    :goto_1
    const/4 v1, 0x2

    if-gt v10, v1, :cond_c7

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 122
    .local v11, obbSuffix:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additional_file_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 124
    .local v12, typeString:Ljava/lang/String;
    if-nez v12, :cond_4c

    .line 125
    const-string v1, "Not generating OBB (patch %b)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v2, v7

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    move/from16 v0, p3

    invoke-static {v0, p2}, Lcom/google/android/finsky/download/obb/ObbFactory;->createEmpty(ZLjava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v9

    .line 149
    .end local v11           #obbSuffix:Ljava/lang/String;
    .end local v12           #typeString:Ljava/lang/String;
    :goto_4b
    return-object v9

    .line 129
    .restart local v11       #obbSuffix:Ljava/lang/String;
    .restart local v12       #typeString:Ljava/lang/String;
    :cond_4c
    if-eqz p3, :cond_59

    .line 130
    const-string v1, "OBB"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 120
    :cond_56
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 134
    :cond_59
    const-string v1, "OBB_PATCH"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 139
    :cond_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additional_file_version_code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 140
    .local v3, versionCode:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additional_file_url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, url:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additional_file_size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 143
    .local v5, size:J
    const-string v1, "Generating %s OBB"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v12, v2, v7

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    sget-object v7, Lcom/google/android/finsky/download/obb/ObbState;->NOT_ON_STORAGE:Lcom/google/android/finsky/download/obb/ObbState;

    const/4 v8, 0x0

    move/from16 v1, p3

    move-object v2, p2

    invoke-static/range {v1 .. v8}, Lcom/google/android/finsky/download/obb/ObbFactory;->create(ZLjava/lang/String;ILjava/lang/String;JLcom/google/android/finsky/download/obb/ObbState;Ljava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v9

    .line 146
    .local v9, generated:Lcom/google/android/finsky/download/obb/Obb;
    invoke-interface {v9}, Lcom/google/android/finsky/download/obb/Obb;->syncStateWithStorage()V

    goto :goto_4b

    .line 149
    .end local v3           #versionCode:I
    .end local v4           #url:Ljava/lang/String;
    .end local v5           #size:J
    .end local v9           #generated:Lcom/google/android/finsky/download/obb/Obb;
    .end local v11           #obbSuffix:Ljava/lang/String;
    .end local v12           #typeString:Ljava/lang/String;
    :cond_c7
    move/from16 v0, p3

    invoke-static {v0, p2}, Lcom/google/android/finsky/download/obb/ObbFactory;->createEmpty(ZLjava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;

    move-result-object v9

    goto/16 :goto_4b
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 32
    const-string v2, "Received tickle."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v8, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 36
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/receivers/DownloadTickleReceiver;->setResultCode(I)V

    .line 39
    :cond_1a
    const-string v2, "from"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 40
    .local v14, fromAddress:Ljava/lang/String;
    const-string v2, "google.com"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 89
    :cond_2a
    return-void

    .line 44
    :cond_2b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 45
    .local v12, bundle:Landroid/os/Bundle;
    const-string v2, "server_initiated"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v16

    .line 49
    .local v16, serverInitiated:Z
    const-string v2, "direct_download_key"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 50
    .local v13, ddlKey:Ljava/lang/String;
    if-eqz v13, :cond_42

    .line 51
    sget-object v2, Lcom/google/android/finsky/utils/VendingPreferences;->DIRECT_DOWNLOAD_KEY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2, v13}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 54
    :cond_42
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/finsky/receivers/DownloadTickleReceiver;->getApplicationCount(Landroid/os/Bundle;)I

    move-result v9

    .line 55
    .local v9, appCount:I
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v11

    .line 57
    .local v11, assetStore:Lcom/google/android/finsky/local/AssetStore;
    add-int/lit8 v15, v9, -0x1

    .local v15, index:I
    :goto_52
    if-ltz v15, :cond_2a

    .line 58
    if-nez v15, :cond_13c

    const-string v18, ""

    .line 60
    .local v18, suffix:Ljava/lang/String;
    :goto_58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "asset_secure"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 62
    .local v17, shouldSecure:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "asset_blob_url"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v1, v2}, Lcom/google/android/finsky/receivers/DownloadTickleReceiver;->getAssetDownloadUrl(Landroid/os/Bundle;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, url:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "asset_name"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download_auth_cookie_name"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, cookieName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download_auth_cookie_value"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, cookieValue:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v12, v1}, Lcom/google/android/finsky/receivers/DownloadTickleReceiver;->generatePackageProperties(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v5

    .line 67
    .local v5, properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v2

    iget-object v8, v5, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    const/16 v19, 0x1

    sget-object v20, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_COMPLETED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v8, v0, v1}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->switchState(Ljava/lang/String;ILcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;)V

    .line 70
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v2

    iget-object v8, v5, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->remove(Ljava/lang/String;)V

    .line 71
    iget-object v2, v5, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    invoke-interface {v11, v2}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v10

    .line 75
    .local v10, asset:Lcom/google/android/finsky/local/LocalAsset;
    if-nez v16, :cond_151

    if-nez v10, :cond_151

    .line 76
    const-string v2, "Tickle for package %s ignored due to inconsistent AssetState"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v19, 0x0

    iget-object v0, v5, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v8, v19

    invoke-static {v2, v8}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    const-string v8, "install.receiveTickle"

    iget-object v0, v5, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "null-asset"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v2, v8, v0, v1}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_138
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_52

    .line 58
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    .end local v6           #cookieName:Ljava/lang/String;
    .end local v7           #cookieValue:Ljava/lang/String;
    .end local v10           #asset:Lcom/google/android/finsky/local/LocalAsset;
    .end local v17           #shouldSecure:Z
    .end local v18           #suffix:Ljava/lang/String;
    :cond_13c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_58

    .line 83
    .restart local v3       #url:Ljava/lang/String;
    .restart local v4       #title:Ljava/lang/String;
    .restart local v5       #properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    .restart local v6       #cookieName:Ljava/lang/String;
    .restart local v7       #cookieValue:Ljava/lang/String;
    .restart local v10       #asset:Lcom/google/android/finsky/local/LocalAsset;
    .restart local v17       #shouldSecure:Z
    .restart local v18       #suffix:Ljava/lang/String;
    :cond_151
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    const-string v8, "install.receiveTickle"

    iget-object v0, v5, Lcom/google/android/finsky/download/Download$PackageProperties;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v2, v8, v0, v1}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/finsky/receivers/Installer;->downloadAndInstallAsset(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/download/Download$PackageProperties;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_138
.end method
