.class Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MailboxSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/MailboxSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMailboxTask"
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
.field private final mMailboxId:J

.field final synthetic this$0:Lcom/android/email/activity/setup/MailboxSettings;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/MailboxSettings;J)V
    .registers 5
    .parameter
    .parameter "mailboxId"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    .line 156
    #getter for: Lcom/android/email/activity/setup/MailboxSettings;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {p1}, Lcom/android/email/activity/setup/MailboxSettings;->access$000(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 157
    iput-wide p2, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->mMailboxId:J

    .line 158
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 152
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6
    .parameter "params"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    .line 163
    .local v0, c:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    iget-wide v2, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->mMailboxId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    #setter for: Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/MailboxSettings;->access$102(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;

    .line 164
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #getter for: Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v1}, Lcom/android/email/activity/setup/MailboxSettings;->access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 165
    iget-object v1, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    iget-object v2, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #getter for: Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v2}, Lcom/android/email/activity/setup/MailboxSettings;->access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    #setter for: Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/MailboxSettings;->access$202(Lcom/android/email/activity/setup/MailboxSettings;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/Account;

    .line 167
    :cond_26
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 152
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #getter for: Lcom/android/email/activity/setup/MailboxSettings;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v0}, Lcom/android/email/activity/setup/MailboxSettings;->access$200(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #getter for: Lcom/android/email/activity/setup/MailboxSettings;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;
    invoke-static {v0}, Lcom/android/email/activity/setup/MailboxSettings;->access$100(Lcom/android/email/activity/setup/MailboxSettings;)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v0

    if-nez v0, :cond_16

    .line 173
    :cond_10
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/MailboxSettings;->finish()V

    .line 177
    :goto_15
    return-void

    .line 176
    :cond_16
    iget-object v0, p0, Lcom/android/email/activity/setup/MailboxSettings$LoadMailboxTask;->this$0:Lcom/android/email/activity/setup/MailboxSettings;

    #calls: Lcom/android/email/activity/setup/MailboxSettings;->onDataLoaded()V
    invoke-static {v0}, Lcom/android/email/activity/setup/MailboxSettings;->access$300(Lcom/android/email/activity/setup/MailboxSettings;)V

    goto :goto_15
.end method
