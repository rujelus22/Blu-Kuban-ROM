.class public Lcom/android/email/activity/Welcome;
.super Landroid/app/Activity;
.source "Welcome.java"


# instance fields
.field private mAccountId:J

.field private mAccountUuid:Ljava/lang/String;

.field private mInboxFinder:Lcom/android/email/activity/MailboxFinder;

.field private final mMailboxFinderCallback:Lcom/android/email/activity/MailboxFinder$Callback;

.field private mMailboxId:J

.field private mMessageId:J

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

.field private mWaitingForSyncView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/Welcome;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 387
    new-instance v0, Lcom/android/email/activity/Welcome$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/Welcome$2;-><init>(Lcom/android/email/activity/Welcome;)V

    iput-object v0, p0, Lcom/android/email/activity/Welcome;->mMailboxFinderCallback:Lcom/android/email/activity/MailboxFinder$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/Welcome;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->resolveAccount()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/email/activity/Welcome;Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/email/activity/Welcome;->mInboxFinder:Lcom/android/email/activity/MailboxFinder;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/email/activity/Welcome;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/android/email/activity/Welcome;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/android/email/activity/Welcome;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/android/email/activity/Welcome;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/email/activity/Welcome;->mAccountUuid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/Welcome;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->startEmailActivity()V

    return-void
.end method

.method public static actionOpenAccountInbox(Landroid/app/Activity;J)V
    .registers 4
    .parameter "fromActivity"
    .parameter "accountId"

    .prologue
    .line 140
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method public static actionStart(Landroid/app/Activity;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    const-class v0, Lcom/android/email/activity/Welcome;

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/IntentUtilities;->createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method public static createAccountShortcutIntent(Landroid/content/Context;Ljava/lang/String;J)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "uuid"
    .parameter "mailboxId"

    .prologue
    .line 148
    const-string v1, "/view/mailbox"

    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->createActivityIntentUrlBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 150
    .local v0, b:Landroid/net/Uri$Builder;
    invoke-static {v0, p1}, Lcom/android/emailcommon/utility/IntentUtilities;->setAccountUuid(Landroid/net/Uri$Builder;Ljava/lang/String;)V

    .line 151
    invoke-static {v0, p2, p3}, Lcom/android/emailcommon/utility/IntentUtilities;->setMailboxId(Landroid/net/Uri$Builder;J)V

    .line 152
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->createRestartAppIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .registers 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 117
    const-string v1, "/view/mailbox"

    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->createActivityIntentUrlBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 119
    .local v0, b:Landroid/net/Uri$Builder;
    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/utility/IntentUtilities;->setAccountId(Landroid/net/Uri$Builder;J)V

    .line 120
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->createRestartAppIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static createOpenMessageIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;
    .registers 9
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "messageId"

    .prologue
    .line 128
    const-string v1, "/view/mailbox"

    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->createActivityIntentUrlBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 130
    .local v0, b:Landroid/net/Uri$Builder;
    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/utility/IntentUtilities;->setAccountId(Landroid/net/Uri$Builder;J)V

    .line 131
    invoke-static {v0, p3, p4}, Lcom/android/emailcommon/utility/IntentUtilities;->setMailboxId(Landroid/net/Uri$Builder;J)V

    .line 132
    invoke-static {v0, p5, p6}, Lcom/android/emailcommon/utility/IntentUtilities;->setMessageId(Landroid/net/Uri$Builder;J)V

    .line 133
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/IntentUtilities;->createRestartAppIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static getDebugPaneMode(Landroid/content/Intent;)I
    .registers 4
    .parameter "i"

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 164
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_20

    .line 165
    const-string v2, "DEBUG_PANE_MODE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, s:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 167
    const/4 v2, 0x1

    .line 172
    .end local v1           #s:Ljava/lang/String;
    :goto_15
    return v2

    .line 168
    .restart local v1       #s:Ljava/lang/String;
    :cond_16
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 169
    const/4 v2, 0x2

    goto :goto_15

    .line 172
    .end local v1           #s:Ljava/lang/String;
    :cond_20
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private resolveAccount()V
    .registers 6

    .prologue
    .line 353
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 354
    .local v0, numAccount:I
    if-nez v0, :cond_f

    .line 355
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->finish()V

    .line 368
    :goto_e
    return-void

    .line 359
    :cond_f
    iget-wide v1, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    iget-object v3, p0, Lcom/android/email/activity/Welcome;->mAccountUuid:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/android/email/activity/Welcome;->resolveAccountId(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    .line 360
    iget-wide v1, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    invoke-static {v1, v2}, Lcom/android/emailcommon/provider/Account;->isNormalAccount(J)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-wide v1, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_32

    .line 363
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->startInboxLookup()V

    goto :goto_e

    .line 367
    :cond_32
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->startEmailActivity()V

    goto :goto_e
.end method

.method static resolveAccountId(Landroid/content/Context;JLjava/lang/String;)J
    .registers 12
    .parameter "context"
    .parameter "inputAccountId"
    .parameter "inputUuid"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 303
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 306
    invoke-static {p0, p3}, Lcom/android/emailcommon/provider/Account;->getAccountIdFromUuid(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 331
    .local v0, accountId:J
    :goto_c
    cmp-long v4, v0, v6

    if-eqz v4, :cond_4c

    .line 337
    .end local v0           #accountId:J
    :goto_10
    return-wide v0

    .line 308
    :cond_11
    cmp-long v4, p1, v6

    if-eqz v4, :cond_26

    .line 310
    const-wide/high16 v4, 0x1000

    cmp-long v4, p1, v4

    if-eqz v4, :cond_21

    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->isValidId(Landroid/content/Context;J)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 312
    :cond_21
    move-wide v0, p1

    .restart local v0       #accountId:J
    goto :goto_c

    .line 314
    .end local v0           #accountId:J
    :cond_23
    const-wide/16 v0, -0x1

    .restart local v0       #accountId:J
    goto :goto_c

    .line 319
    .end local v0           #accountId:J
    :cond_26
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getLastUsedAccountId()J

    move-result-wide v2

    .line 320
    .local v2, lastUsedId:J
    cmp-long v4, v2, v6

    if-eqz v4, :cond_41

    .line 321
    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/Account;->isValidId(Landroid/content/Context;J)Z

    move-result v4

    if-nez v4, :cond_41

    .line 323
    const-wide/16 v2, -0x1

    .line 324
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Lcom/android/email/Preferences;->setLastUsedAccountId(J)V

    .line 327
    :cond_41
    cmp-long v4, v2, v6

    if-nez v4, :cond_4a

    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    .restart local v0       #accountId:J
    :goto_49
    goto :goto_c

    .end local v0           #accountId:J
    :cond_4a
    move-wide v0, v2

    goto :goto_49

    .line 336
    .end local v2           #lastUsedId:J
    .restart local v0       #accountId:J
    :cond_4c
    const v4, 0x7f080160

    invoke-static {p0, v4}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 337
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v0

    goto :goto_10
.end method

.method private startEmailActivity()V
    .registers 9

    .prologue
    const-wide/16 v2, -0x1

    .line 376
    iget-wide v0, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 377
    iget-wide v1, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    iget-wide v5, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/EmailActivity;->createOpenMessageIntent(Landroid/app/Activity;JJJ)Landroid/content/Intent;

    move-result-object v7

    .line 383
    .local v7, i:Landroid/content/Intent;
    :goto_13
    invoke-virtual {p0, v7}, Lcom/android/email/activity/Welcome;->startActivity(Landroid/content/Intent;)V

    .line 384
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->finish()V

    .line 385
    return-void

    .line 378
    .end local v7           #i:Landroid/content/Intent;
    :cond_1a
    iget-wide v0, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    .line 379
    iget-wide v0, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    iget-wide v2, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/email/activity/EmailActivity;->createOpenMailboxIntent(Landroid/app/Activity;JJ)Landroid/content/Intent;

    move-result-object v7

    .restart local v7       #i:Landroid/content/Intent;
    goto :goto_13

    .line 381
    .end local v7           #i:Landroid/content/Intent;
    :cond_29
    iget-wide v0, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/EmailActivity;->createOpenAccountIntent(Landroid/app/Activity;J)Landroid/content/Intent;

    move-result-object v7

    .restart local v7       #i:Landroid/content/Intent;
    goto :goto_13
.end method

.method private startInboxLookup()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    .line 280
    const-string v0, "Email"

    const-string v1, "Inbox not found.  Starting mailbox finder..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->stopInboxLookup()V

    .line 282
    new-instance v0, Lcom/android/email/activity/MailboxFinder;

    iget-wide v2, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/activity/Welcome;->mMailboxFinderCallback:Lcom/android/email/activity/MailboxFinder$Callback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MailboxFinder;-><init>(Landroid/content/Context;JILcom/android/email/activity/MailboxFinder$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/Welcome;->mInboxFinder:Lcom/android/email/activity/MailboxFinder;

    .line 284
    iget-object v0, p0, Lcom/android/email/activity/Welcome;->mInboxFinder:Lcom/android/email/activity/MailboxFinder;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFinder;->startLookup()V

    .line 287
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/Welcome;->mWaitingForSyncView:Landroid/view/View;

    .line 289
    iget-object v0, p0, Lcom/android/email/activity/Welcome;->mWaitingForSyncView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/Welcome;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->invalidateOptionsMenu()V

    .line 292
    return-void
.end method

.method private stopInboxLookup()V
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/email/activity/Welcome;->mInboxFinder:Lcom/android/email/activity/MailboxFinder;

    if-eqz v0, :cond_c

    .line 271
    iget-object v0, p0, Lcom/android/email/activity/Welcome;->mInboxFinder:Lcom/android/email/activity/MailboxFinder;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxFinder;->cancel()V

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/Welcome;->mInboxFinder:Lcom/android/email/activity/MailboxFinder;

    .line 274
    :cond_c
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 185
    invoke-static {p0}, Lcom/android/email/service/EmailServiceUtils;->startExchangeService(Landroid/content/Context;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 189
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/emailcommon/utility/IntentUtilities;->getAccountIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    .line 190
    invoke-static {v0}, Lcom/android/emailcommon/utility/IntentUtilities;->getMailboxIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/Welcome;->mMailboxId:J

    .line 191
    invoke-static {v0}, Lcom/android/emailcommon/utility/IntentUtilities;->getMessageIdFromIntent(Landroid/content/Intent;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/activity/Welcome;->mMessageId:J

    .line 192
    invoke-static {v0}, Lcom/android/emailcommon/utility/IntentUtilities;->getAccountUuidFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/Welcome;->mAccountUuid:Ljava/lang/String;

    .line 193
    invoke-static {v0}, Lcom/android/email/activity/Welcome;->getDebugPaneMode(Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Lcom/android/email/activity/UiUtilities;->setDebugPaneMode(I)V

    .line 196
    invoke-static {p0}, Lcom/android/email/service/MailService;->hasMismatchInPopImapAccounts(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 197
    new-instance v1, Lcom/android/email/activity/Welcome$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/Welcome$1;-><init>(Lcom/android/email/activity/Welcome;)V

    invoke-static {v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 210
    :goto_3a
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 211
    return-void

    .line 206
    :cond_3f
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->resolveAccount()V

    goto :goto_3a
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/email/activity/Welcome;->mInboxFinder:Lcom/android/email/activity/MailboxFinder;

    if-nez v0, :cond_9

    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 222
    :goto_8
    return v0

    .line 221
    :cond_9
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 222
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 227
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e00e4

    if-ne v0, v1, :cond_10

    .line 228
    iget-wide v0, p0, Lcom/android/email/activity/Welcome;->mAccountId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->actionSettings(Landroid/app/Activity;J)V

    .line 229
    const/4 v0, 0x1

    .line 231
    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_f
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/android/email/activity/Welcome;->stopInboxLookup()V

    .line 240
    iget-object v0, p0, Lcom/android/email/activity/Welcome;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 244
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_23

    .line 247
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_20

    .line 248
    const-string v0, "Email"

    const-string v1, "Welcome: Closing self..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_20
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome;->finish()V

    .line 252
    :cond_23
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 262
    const/high16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 263
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 264
    return-void
.end method
