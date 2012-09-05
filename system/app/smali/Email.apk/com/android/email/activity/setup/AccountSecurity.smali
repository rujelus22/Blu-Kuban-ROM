.class public Lcom/android/email/activity/setup/AccountSecurity;
.super Landroid/app/Activity;
.source "AccountSecurity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;,
        Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mTriedAddAdministrator:Z

.field private mTriedSetEncryption:Z

.field private mTriedSetExtEncryption:Z

.field private mTriedSetPassword:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetExtEncryption:Z

    .line 408
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    return-void
.end method

.method public static actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/email/activity/setup/AccountSecurity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string v0, "com.android.email.activity.setup.ACCOUNT_ID"

    invoke-virtual {v1, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 99
    if-eqz p3, :cond_15

    const-string v0, "EXPIRED"

    :goto_10
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    return-object v1

    .line 99
    :cond_15
    const-string v0, "EXPIRING"

    goto :goto_10
.end method

.method public static actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSecurity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    const-string v1, "com.android.email.activity.setup.ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 82
    const-string v1, "SHOW_DIALOG"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    return-object v0
.end method

.method public static checkIfAccountSecurityNeed(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v1

    .line 105
    .local v1, security:Lcom/android/email/SecurityPolicy;
    invoke-virtual {v1}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 106
    invoke-virtual {v1, v4}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/emailcommon/service/PolicySet;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 107
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 117
    :goto_15
    return v2

    .line 110
    :cond_16
    invoke-virtual {v1}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V

    .line 111
    invoke-virtual {v1, v4}, Lcom/android/email/SecurityPolicy;->getInactiveReasons(Lcom/android/emailcommon/service/PolicySet;)I

    move-result v0

    .line 112
    .local v0, inactiveReasons:I
    if-nez v0, :cond_23

    .line 113
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    goto :goto_15

    .line 117
    .end local v0           #inactiveReasons:I
    :cond_23
    const/4 v2, 0x1

    goto :goto_15
.end method

.method private repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V
    .registers 4
    .parameter "account"
    .parameter "security"

    .prologue
    .line 336
    new-instance v0, Lcom/android/email/activity/setup/AccountSecurity$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/email/activity/setup/AccountSecurity$2;-><init>(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/email/SecurityPolicy;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 342
    return-void
.end method

.method private tryAdvanceSecurity(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 13
    .parameter "account"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v10, 0x1

    .line 211
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v4

    .line 213
    .local v4, security:Lcom/android/email/SecurityPolicy;
    if-nez p1, :cond_e

    .line 214
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 329
    :goto_d
    return-void

    .line 220
    :cond_e
    invoke-virtual {v4}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v5

    if-nez v5, :cond_5c

    .line 221
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    if-eqz v5, :cond_1f

    .line 222
    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_d

    .line 225
    :cond_1f
    iput-boolean v10, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedAddAdministrator:Z

    .line 227
    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 228
    .local v0, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-nez v0, :cond_30

    .line 229
    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_d

    .line 234
    :cond_30
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v4}, Lcom/android/email/SecurityPolicy;->getAdminComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 236
    const-string v5, "android.app.extra.ADD_EXPLANATION"

    const v6, 0x7f08011f

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/email/activity/setup/AccountSecurity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const/high16 v5, 0x2400

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v2, v10}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 255
    .end local v0           #hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5c
    invoke-virtual {v4, v8}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/emailcommon/service/PolicySet;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 256
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_d

    .line 265
    :cond_69
    invoke-virtual {v4}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V

    .line 270
    invoke-virtual {v4, v8}, Lcom/android/email/SecurityPolicy;->getInactiveReasons(Lcom/android/emailcommon/service/PolicySet;)I

    move-result v1

    .line 273
    .local v1, inactiveReasons:I
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_8c

    .line 274
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    if-eqz v5, :cond_7f

    .line 275
    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_d

    .line 278
    :cond_7f
    iput-boolean v10, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetPassword:Z

    .line 280
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2, v6}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 287
    .end local v2           #intent:Landroid/content/Intent;
    :cond_8c
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_ab

    .line 288
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    if-eqz v5, :cond_9c

    .line 289
    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_d

    .line 292
    :cond_9c
    iput-boolean v10, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetEncryption:Z

    .line 294
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.app.action.START_ENCRYPTION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v5, 0x3

    invoke-virtual {p0, v2, v5}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_d

    .line 302
    .end local v2           #intent:Landroid/content/Intent;
    :cond_ab
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_d7

    .line 303
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetExtEncryption:Z

    if-eqz v5, :cond_bb

    .line 304
    invoke-direct {p0, p1, v4}, Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_d

    .line 307
    :cond_bb
    iput-boolean v10, p0, Lcom/android/email/activity/setup/AccountSecurity;->mTriedSetExtEncryption:Z

    .line 310
    new-instance v3, Landroid/dirEncryption/DirEncryptionManager;

    invoke-direct {v3, p0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 312
    .local v3, mDEM:Landroid/dirEncryption/DirEncryptionManager;
    const/4 v5, 0x7

    invoke-virtual {v3, v6, v7, v5}, Landroid/dirEncryption/DirEncryptionManager;->setStorageCardEncryptionPolicy(III)I

    .line 315
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .restart local v2       #intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0, v2, v7}, Lcom/android/email/activity/setup/AccountSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_d

    .line 323
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mDEM:Landroid/dirEncryption/DirEncryptionManager;
    :cond_d7
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 324
    invoke-virtual {v4}, Lcom/android/email/SecurityPolicy;->isRecoveryPasswordEnabled()Z

    move-result v5

    if-eqz v5, :cond_e9

    .line 326
    invoke-static {v10}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v5

    iget-wide v6, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Lcom/android/email/adapter/ProtocolAdapter;->updateMailboxList(J)V

    .line 328
    :cond_e9
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto/16 :goto_d
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 195
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 196
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x0

    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 126
    .local v7, i:Landroid/content/Intent;
    const-string v0, "com.android.email.activity.setup.ACCOUNT_ID"

    invoke-virtual {v7, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 127
    .local v2, accountId:J
    const-string v0, "SHOW_DIALOG"

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 128
    .local v6, showDialog:Z
    const-string v0, "EXPIRING"

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 129
    .local v4, passwordExpiring:Z
    const-string v0, "EXPIRED"

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 130
    .local v5, passwordExpired:Z
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v8

    .line 131
    .local v8, security:Lcom/android/email/SecurityPolicy;
    invoke-virtual {v8, v2, v3}, Lcom/android/email/SecurityPolicy;->clearNotification(J)V

    .line 132
    cmp-long v0, v2, v10

    if-nez v0, :cond_34

    .line 133
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 187
    :goto_33
    return-void

    .line 139
    :cond_34
    new-instance v0, Lcom/android/email/activity/setup/AccountSecurity$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSecurity$1;-><init>(Lcom/android/email/activity/setup/AccountSecurity;JZZZ)V

    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSecurity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_33
.end method
