.class Lcom/android/email/activity/MessageListXL$RefreshTask;
.super Landroid/os/AsyncTask;
.source "MessageListXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefreshTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mClock:Lcom/android/email/Clock;

.field private final mContext:Landroid/content/Context;

.field mInboxId:J

.field private final mMailboxId:J

.field private final mRefreshManager:Lcom/android/email/RefreshManager;


# direct methods
.method constructor <init>(Landroid/content/Context;JJLcom/android/email/Clock;Lcom/android/email/RefreshManager;Lcom/android/email/activity/MessageListXLFragmentManager;)V
    .registers 9
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "clock"
    .parameter "refreshManager"
    .parameter "fragmentManager"

    .prologue
    .line 4190
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4191
    iput-object p6, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mClock:Lcom/android/email/Clock;

    .line 4192
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mContext:Landroid/content/Context;

    .line 4193
    iput-object p7, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 4195
    iput-wide p2, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mAccountId:J

    .line 4196
    iput-wide p4, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mMailboxId:J

    .line 4197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJLcom/android/email/activity/MessageListXLFragmentManager;)V
    .registers 16
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "fragmentManager"

    .prologue
    .line 4185
    sget-object v6, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    invoke-static {p1}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/email/activity/MessageListXL$RefreshTask;-><init>(Landroid/content/Context;JJLcom/android/email/Clock;Lcom/android/email/RefreshManager;Lcom/android/email/activity/MessageListXLFragmentManager;)V

    .line 4187
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 6
    .parameter "params"

    .prologue
    .line 4204
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mAccountId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getInboxId(Landroid/content/Context;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mInboxId:J

    .line 4205
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mMailboxId:J

    sget-boolean v3, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->isRefreshable(Landroid/content/Context;JZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4168
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXL$RefreshTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 8
    .parameter "isCurrentMailboxRefreshable"

    .prologue
    .line 4213
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListXL$RefreshTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_9

    .line 4232
    :cond_8
    :goto_8
    return-void

    .line 4216
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4217
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-wide v1, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mAccountId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListXL$RefreshTask;->mMailboxId:J

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    goto :goto_8

    .line 4220
    :cond_1a
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCurrentMailboxRefreshable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 4168
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXL$RefreshTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
