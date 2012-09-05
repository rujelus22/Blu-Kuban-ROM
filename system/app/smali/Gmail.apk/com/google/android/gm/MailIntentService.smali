.class public Lcom/google/android/gm/MailIntentService;
.super Landroid/app/IntentService;
.source "MailIntentService.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    const-string v0, "MailIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private handleAccountList([Landroid/accounts/Account;Z)V
    .registers 8
    .parameter "accounts"
    .parameter "isInitialNotification"

    .prologue
    .line 217
    const/4 v4, 0x0

    invoke-static {p0, v4, p1}, Lcom/google/android/gm/Utils;->cacheGoogleAccountList(Landroid/content/Context;Z[Landroid/accounts/Account;)V

    .line 219
    if-nez p2, :cond_7

    .line 231
    :cond_6
    return-void

    .line 223
    :cond_7
    array-length v3, p1

    .line 224
    .local v3, numAccounts:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v3, :cond_6

    .line 225
    aget-object v0, p1, v2

    .line 228
    .local v0, account:Landroid/accounts/Account;
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngineSync(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v1

    .line 229
    .local v1, engine:Lcom/google/android/gm/provider/MailEngine;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/google/android/gm/provider/MailEngine;->sendNotificationIntents(Z)V

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method private handleLocaleChanged(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 194
    invoke-static {p0}, Lcom/google/android/gm/Utils;->cancelAndResendNotifications(Landroid/content/Context;)V

    .line 195
    return-void
.end method

.method private handleProviderChangedIntent(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    .line 198
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v3

    .line 200
    .local v3, persistence:Lcom/google/android/gm/persistence/Persistence;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "account"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, account:Ljava/lang/String;
    invoke-virtual {v3, p0, v0}, Lcom/google/android/gm/persistence/Persistence;->getEnableNotifications(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 202
    .local v1, enabled:Z
    if-nez v1, :cond_15

    .line 213
    :cond_14
    :goto_14
    return-void

    .line 204
    :cond_15
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, label:Ljava/lang/String;
    invoke-virtual {v3, p0, v0, v2}, Lcom/google/android/gm/persistence/Persistence;->shouldNotifyForLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 209
    .local v4, shouldNotifyForLabel:Z
    if-eqz v4, :cond_14

    .line 212
    invoke-static {p0, p1}, Lcom/google/android/gm/Utils;->setNewEmailIndicator(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_14
.end method

.method private postSendErrorNotification(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    .line 148
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, account:Ljava/lang/String;
    const-string v0, "extraMessageSubject"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, subject:Ljava/lang/String;
    const-string v0, "extraConversationId"

    const-wide/16 v5, -0x1

    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 151
    .local v3, conversationId:J
    invoke-virtual {p0}, Lcom/google/android/gm/MailIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f10001b

    const v6, 0x7f0c014c

    invoke-static/range {v0 .. v6}, Lcom/google/android/gm/Utils;->createErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 153
    return-void
.end method

.method private sendAccountsChangedNotification(Z)V
    .registers 13
    .parameter "isInitialNotification"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 159
    if-eqz p1, :cond_9

    .line 160
    const-string v5, "MIS.sendInitialNotifications"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 164
    :cond_9
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    const-string v6, "com.google"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "mail"

    invoke-static {v8}, Lcom/google/android/gsf/GoogleLoginServiceConstants;->featureForService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7, v10, v10}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    .line 171
    .local v2, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<[Landroid/accounts/Account;>;"
    :try_start_1e
    invoke-interface {v2}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 173
    .local v0, accounts:[Landroid/accounts/Account;
    invoke-direct {p0, v0, p1}, Lcom/google/android/gm/MailIntentService;->handleAccountList([Landroid/accounts/Account;Z)V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_74
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1e .. :try_end_27} :catch_32
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_27} :catch_48
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1e .. :try_end_27} :catch_5e

    .line 184
    if-eqz p1, :cond_2e

    .line 185
    const-string v5, "MIS.sendInitialNotifications"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 187
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/gm/MailIntentService;->stopSelf()V

    .line 189
    .end local v0           #accounts:[Landroid/accounts/Account;
    :goto_31
    return-void

    .line 174
    :catch_32
    move-exception v4

    .line 176
    .local v4, oce:Landroid/accounts/OperationCanceledException;
    :try_start_33
    const-string v5, "Gmail"

    const-string v6, "Unexpected exception trying to get accounts."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v4, v6, v7}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_74

    .line 184
    if-eqz p1, :cond_44

    .line 185
    const-string v5, "MIS.sendInitialNotifications"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 187
    :cond_44
    invoke-virtual {p0}, Lcom/google/android/gm/MailIntentService;->stopSelf()V

    goto :goto_31

    .line 177
    .end local v4           #oce:Landroid/accounts/OperationCanceledException;
    :catch_48
    move-exception v3

    .line 179
    .local v3, ioe:Ljava/io/IOException;
    :try_start_49
    const-string v5, "Gmail"

    const-string v6, "Unexpected exception trying to get accounts."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v3, v6, v7}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_74

    .line 184
    if-eqz p1, :cond_5a

    .line 185
    const-string v5, "MIS.sendInitialNotifications"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 187
    :cond_5a
    invoke-virtual {p0}, Lcom/google/android/gm/MailIntentService;->stopSelf()V

    goto :goto_31

    .line 180
    .end local v3           #ioe:Ljava/io/IOException;
    :catch_5e
    move-exception v1

    .line 182
    .local v1, ae:Landroid/accounts/AuthenticatorException;
    :try_start_5f
    const-string v5, "Gmail"

    const-string v6, "Unexpected exception trying to get accounts."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v1, v6, v7}, Lcom/google/android/gm/provider/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_74

    .line 184
    if-eqz p1, :cond_70

    .line 185
    const-string v5, "MIS.sendInitialNotifications"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 187
    :cond_70
    invoke-virtual {p0}, Lcom/google/android/gm/MailIntentService;->stopSelf()V

    goto :goto_31

    .line 184
    .end local v1           #ae:Landroid/accounts/AuthenticatorException;
    :catchall_74
    move-exception v5

    if-eqz p1, :cond_7c

    .line 185
    const-string v6, "MIS.sendInitialNotifications"

    invoke-static {v6}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 187
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/gm/MailIntentService;->stopSelf()V

    throw v5
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 27
    .parameter "intent"

    .prologue
    .line 55
    :try_start_0
    const-string v20, "Gmail"

    const-string v21, "Handling intent %s"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p1, v22, v23

    invoke-static/range {v20 .. v22}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 57
    invoke-static/range {p0 .. p0}, Lcom/google/android/gm/Utils;->haveGoogleMailActivitiesBeenEnabled(Landroid/content/Context;)Z

    move-result v19

    .line 58
    .local v19, usingGoogleMail:Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, action:Ljava/lang/String;
    const-string v20, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2f

    const-string v20, "android.intent.action.DEVICE_STORAGE_OK"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_39

    .line 63
    :cond_2f
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gm/MailIntentService;->sendAccountsChangedNotification(Z)V

    .line 145
    .end local v5           #action:Ljava/lang/String;
    .end local v19           #usingGoogleMail:Z
    :cond_38
    :goto_38
    return-void

    .line 64
    .restart local v5       #action:Ljava/lang/String;
    .restart local v19       #usingGoogleMail:Z
    :cond_39
    const-string v20, "android.intent.action.DOWNLOAD_COMPLETE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e8

    .line 65
    const-string v20, "extra_download_id"

    const-wide/16 v21, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 66
    .local v11, downloadId:Ljava/lang/Long;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/google/android/gm/provider/AttachmentManager;->getAccountFromDownloadId(J)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, account:Ljava/lang/String;
    if-nez v4, :cond_9a

    .line 70
    const-string v20, "download"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/gm/MailIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/DownloadManager;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    aput-wide v23, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/app/DownloadManager;->remove([J)I
    :try_end_7e
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_7e} :catch_7f

    goto :goto_38

    .line 142
    .end local v4           #account:Ljava/lang/String;
    .end local v5           #action:Ljava/lang/String;
    .end local v11           #downloadId:Ljava/lang/Long;
    .end local v19           #usingGoogleMail:Z
    :catch_7f
    move-exception v12

    .line 143
    .local v12, e:Landroid/database/SQLException;
    const-string v20, "Gmail"

    const-string v21, "Error handling intent %s"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p1, v22, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v12, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_38

    .line 76
    .end local v12           #e:Landroid/database/SQLException;
    .restart local v4       #account:Ljava/lang/String;
    .restart local v5       #action:Ljava/lang/String;
    .restart local v11       #downloadId:Ljava/lang/Long;
    .restart local v19       #usingGoogleMail:Z
    :cond_9a
    :try_start_9a
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngineSync(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v13

    .line 77
    .local v13, engine:Lcom/google/android/gm/provider/MailEngine;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/MailIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 78
    .local v16, res:Landroid/content/res/Resources;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v6, attachmentFrom:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v19, :cond_e1

    .line 83
    const v7, 0x7f0c010a

    .line 84
    .local v7, attachmentFromRes:I
    const v8, 0x7f0c010b

    .line 89
    .local v8, attachmentFromSenderRes:I
    :goto_b5
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v20, Lcom/google/android/gm/provider/AttachmentManager;->ATTACHMENT_FROM:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 93
    invoke-virtual {v13}, Lcom/google/android/gm/provider/MailEngine;->getAttachmentManager()Lcom/google/android/gm/provider/AttachmentManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/AttachmentManager;->handleDownloadManagerIntent(Landroid/content/Intent;)V

    goto/16 :goto_38

    .line 86
    .end local v7           #attachmentFromRes:I
    .end local v8           #attachmentFromSenderRes:I
    :cond_e1
    const v7, 0x7f0c0108

    .line 87
    .restart local v7       #attachmentFromRes:I
    const v8, 0x7f0c0109

    .restart local v8       #attachmentFromSenderRes:I
    goto :goto_b5

    .line 95
    .end local v4           #account:Ljava/lang/String;
    .end local v6           #attachmentFrom:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #attachmentFromRes:I
    .end local v8           #attachmentFromSenderRes:I
    .end local v11           #downloadId:Ljava/lang/Long;
    .end local v13           #engine:Lcom/google/android/gm/provider/MailEngine;
    .end local v16           #res:Landroid/content/res/Resources;
    :cond_e8
    const-string v20, "com.google.android.gm.intent.CLEAR_ALL_NEW_MAIL_NOTIFICATIONS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f7

    .line 97
    invoke-static/range {p0 .. p0}, Lcom/google/android/gm/Utils;->clearAllNotfications(Landroid/content/Context;)V

    goto/16 :goto_38

    .line 98
    :cond_f7
    const-string v20, "com.google.android.gm.intent.CLEAR_NEW_MAIL_NOTIFICATIONS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11c

    .line 99
    const-string v20, "account"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .restart local v4       #account:Ljava/lang/String;
    const-string v20, "label"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 103
    .local v14, label:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v4, v14}, Lcom/google/android/gm/Utils;->clearLabelNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 104
    .end local v4           #account:Ljava/lang/String;
    .end local v14           #label:Ljava/lang/String;
    :cond_11c
    const-string v20, "android.intent.action.PROVIDER_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12b

    .line 105
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gm/MailIntentService;->handleProviderChangedIntent(Landroid/content/Intent;)V

    goto/16 :goto_38

    .line 106
    :cond_12b
    const-string v20, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_143

    .line 108
    invoke-static/range {p0 .. p0}, Lcom/google/android/gm/Utils;->enableShortcutIntentFilter(Landroid/content/Context;)V

    .line 109
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gm/MailIntentService;->sendAccountsChangedNotification(Z)V

    goto/16 :goto_38

    .line 110
    :cond_143
    const-string v20, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_152

    .line 111
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gm/MailIntentService;->handleLocaleChanged(Landroid/content/Intent;)V

    goto/16 :goto_38

    .line 112
    :cond_152
    const-string v20, "com.google.android.gm.intent.VALIDATE_ACCOUNT_NOTIFICATIONS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16d

    .line 113
    const-string v20, "account"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .restart local v4       #account:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/gm/Utils;->validateAccountNotifications(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 116
    .end local v4           #account:Ljava/lang/String;
    :cond_16d
    const-string v20, "com.google.android.gm.intent.ACTION_POST_SEND_ERROR"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17c

    .line 117
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gm/MailIntentService;->postSendErrorNotification(Landroid/content/Intent;)V

    goto/16 :goto_38

    .line 118
    :cond_17c
    const-string v20, "com.google.android.gm.intent.ACTION_PROVIDER_CREATED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18f

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/MailIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/gm/widget/BaseWidgetProvider;->updateAllWidgets(Landroid/content/Context;)V

    goto/16 :goto_38

    .line 121
    :cond_18f
    const-string v20, "com.google.android.gm.intent.ACTION_UPGRADE_SYNC_WINDOW"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_38

    .line 131
    const-string v20, "account"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    .restart local v4       #account:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngineSync(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gm/provider/MailEngine;->getMailSync()Lcom/google/android/gm/provider/MailSync;

    move-result-object v15

    .line 134
    .local v15, mailSync:Lcom/google/android/gm/provider/MailSync;
    invoke-static/range {p0 .. p0}, Lcom/google/android/gm/provider/Gmail;->getDefaultConversationAgeDays(Landroid/content/Context;)J

    move-result-wide v17

    .line 135
    .local v17, targetDays:J
    invoke-virtual {v15}, Lcom/google/android/gm/provider/MailSync;->getConversationAgeDays()J

    move-result-wide v9

    .line 137
    .local v9, currDays:J
    cmp-long v20, v9, v17

    if-gez v20, :cond_38

    .line 138
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->setUpgradeSyncWindow(Landroid/content/Context;Z)V

    .line 139
    new-instance v20, Landroid/content/Intent;

    const-string v21, "com.google.android.gm.intent.ACTION_DISPLAY_SYNC_WINDOW_UPGRADE"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/gm/MailIntentService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1d6
    .catch Landroid/database/SQLException; {:try_start_9a .. :try_end_1d6} :catch_7f

    goto/16 :goto_38
.end method
