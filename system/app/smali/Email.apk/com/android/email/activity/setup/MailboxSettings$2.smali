.class Lcom/android/email/activity/setup/MailboxSettings$2;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MailboxSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/MailboxSettings;->saveToDatabase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/MailboxSettings;

.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mailbox:Lcom/android/emailcommon/provider/Mailbox;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/provider/Mailbox;Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    iput-object p3, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-object p4, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$account:Lcom/android/emailcommon/provider/Account;

    iput-object p5, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 316
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/MailboxSettings$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 319
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 322
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v2, :cond_52

    .line 323
    const-string v2, "syncInterval"

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$account:Lcom/android/emailcommon/provider/Account;

    iget v3, v3, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    const-string v2, "syncLookback"

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$account:Lcom/android/emailcommon/provider/Account;

    iget v3, v3, Lcom/android/emailcommon/provider/Account;->mSyncLookback:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 331
    .local v1, uri:Landroid/net/Uri;
    :goto_30
    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 333
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-object v5

    .line 327
    .end local v1           #uri:Landroid/net/Uri;
    :cond_52
    const-string v2, "syncInterval"

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    const-string v2, "syncLookback"

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mSyncLookback:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_30
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 316
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/MailboxSettings$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .registers 8
    .parameter "result"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    iget-object v3, p0, Lcom/android/email/activity/setup/MailboxSettings$2;->val$mailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    .line 342
    return-void
.end method
