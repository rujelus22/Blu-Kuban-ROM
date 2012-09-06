.class public Lcom/android/email/service/EmailBroadcastProcessorService;
.super Landroid/app/IntentService;
.source "EmailBroadcastProcessorService.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 69
    const-class v0, Lcom/android/email/service/EmailBroadcastProcessorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/service/EmailBroadcastProcessorService;->setIntentRedelivery(Z)V

    .line 73
    return-void
.end method

.method private enableComponentsIfNecessary()V
    .registers 2

    .prologue
    .line 130
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 133
    invoke-static {p0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    .line 135
    :cond_9
    return-void
.end method

.method private onBootCompleted()V
    .registers 1

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->performOneTimeInitialization()V

    .line 143
    invoke-direct {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->enableComponentsIfNecessary()V

    .line 146
    invoke-static {p0}, Lcom/android/email/service/EmailServiceUtils;->startExchangeService(Landroid/content/Context;)V

    .line 147
    return-void
.end method

.method private onSystemAccountChanged()V
    .registers 3

    .prologue
    .line 217
    const-string v0, "Email"

    const-string v1, "System accounts updated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {p0}, Lcom/android/email/service/MailService;->reconcilePopImapAccountsSync(Landroid/content/Context;)V

    .line 222
    invoke-static {p0}, Lcom/android/email/service/EmailServiceUtils;->startExchangeService(Landroid/content/Context;)V

    .line 223
    return-void
.end method

.method private performOneTimeInitialization()V
    .registers 7

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 150
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Lcom/android/email/Preferences;->getOneTimeInitializationProgress()I

    move-result v2

    .line 154
    if-ge v2, v1, :cond_43

    .line 155
    const-string v4, "Email"

    const-string v5, "Onetime initialization: 1"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 158
    const-class v4, Lcom/android/email/service/EasAuthenticatorServiceAlternate;

    invoke-direct {p0, v4, v1}, Lcom/android/email/service/EmailBroadcastProcessorService;->setComponentEnabled(Ljava/lang/Class;Z)V

    .line 159
    const-class v4, Lcom/android/email/service/EasAuthenticatorService;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/email/service/EmailBroadcastProcessorService;->setComponentEnabled(Ljava/lang/Class;Z)V

    .line 163
    :cond_28
    :goto_28
    if-ge v1, v0, :cond_41

    .line 164
    const-string v1, "Email"

    const-string v4, "Onetime initialization: 2"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->setImapDeletePolicy(Landroid/content/Context;)V

    .line 174
    :goto_34
    if-eq v0, v2, :cond_40

    .line 175
    invoke-virtual {v3, v0}, Lcom/android/email/Preferences;->setOneTimeInitializationProgress(I)V

    .line 176
    const-string v0, "Email"

    const-string v1, "Onetime initialization: completed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_40
    return-void

    :cond_41
    move v0, v1

    goto :goto_34

    :cond_43
    move v1, v2

    goto :goto_28
.end method

.method public static processBroadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/service/EmailBroadcastProcessorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const-string v1, "broadcast_receiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 83
    return-void
.end method

.method public static processDevicePolicyMessage(Landroid/content/Context;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/service/EmailBroadcastProcessorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    const-string v1, "com.android.email.devicepolicy"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v1, "message_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 95
    return-void
.end method

.method private setComponentEnabled(Ljava/lang/Class;Z)V
    .registers 7
    .parameter
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 209
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    .local v0, c:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz p2, :cond_15

    move v1, v2

    :goto_11
    invoke-virtual {v3, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 214
    return-void

    .line 210
    :cond_15
    const/4 v1, 0x2

    goto :goto_11
.end method

.method static setImapDeletePolicy(Landroid/content/Context;)V
    .registers 16
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 186
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 189
    .local v8, c:Landroid/database/Cursor;
    :cond_f
    :goto_f
    :try_start_f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 190
    const/4 v1, 0x6

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 191
    .local v12, recvAuthKey:J
    invoke-static {p0, v12, v13}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v11

    .line 192
    .local v11, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    const-string v1, "imap"

    iget-object v2, v11, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 193
    const/16 v1, 0x8

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 194
    .local v10, flags:I
    and-int/lit8 v10, v10, -0xd

    .line 195
    or-int/lit8 v10, v10, 0x8

    .line 196
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 197
    .local v9, cv:Landroid/content/ContentValues;
    const-string v1, "flags"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 199
    .local v6, accountId:J
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 200
    .local v14, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v14, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_f .. :try_end_50} :catchall_51

    goto :goto_f

    .line 204
    .end local v6           #accountId:J
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v10           #flags:I
    .end local v11           #recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v12           #recvAuthKey:J
    .end local v14           #uri:Landroid/net/Uri;
    :catchall_51
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_56
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 206
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, action:Ljava/lang/String;
    const-string v4, "broadcast_receiver"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 104
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 105
    .local v2, broadcastIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, broadcastAction:Ljava/lang/String;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 108
    invoke-direct {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->onBootCompleted()V

    .line 127
    .end local v1           #broadcastAction:Ljava/lang/String;
    .end local v2           #broadcastIntent:Landroid/content/Intent;
    :cond_23
    :goto_23
    return-void

    .line 112
    .restart local v1       #broadcastAction:Ljava/lang/String;
    .restart local v2       #broadcastIntent:Landroid/content/Intent;
    :cond_24
    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 114
    invoke-static {p0}, Lcom/android/email/service/MailService;->actionCancel(Landroid/content/Context;)V

    goto :goto_23

    .line 115
    :cond_30
    const-string v4, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 116
    invoke-direct {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->enableComponentsIfNecessary()V

    goto :goto_23

    .line 117
    :cond_3c
    const-string v4, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    const-string v4, "36245"

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 119
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSettings;->actionSettingsWithDebug(Landroid/content/Context;)V

    goto :goto_23

    .line 120
    :cond_58
    const-string v4, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 121
    invoke-direct {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->onSystemAccountChanged()V

    goto :goto_23

    .line 123
    .end local v1           #broadcastAction:Ljava/lang/String;
    .end local v2           #broadcastIntent:Landroid/content/Intent;
    :cond_64
    const-string v4, "com.android.email.devicepolicy"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 124
    const-string v4, "message_code"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 125
    .local v3, message:I
    invoke-static {p0, v3}, Lcom/android/email/SecurityPolicy;->onDeviceAdminReceiverMessage(Landroid/content/Context;I)V

    goto :goto_23
.end method
