.class Lcom/android/email/activity/MailboxFinder$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "MailboxFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxFinder;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MailboxFinder;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MailboxFinder;Lcom/android/email/activity/MailboxFinder$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxFinder$ControllerResults;-><init>(Lcom/android/email/activity/MailboxFinder;)V

    return-void
.end method


# virtual methods
.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 10
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mClosed:Z
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$100(Lcom/android/email/activity/MailboxFinder;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_13

    .line 163
    :cond_12
    :goto_12
    return-void

    .line 143
    :cond_13
    const-string v1, "Email"

    const-string v2, "MailboxFinder: updateMailboxListCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-eqz p1, :cond_38

    .line 147
    :try_start_1c
    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mCallback:Lcom/android/email/activity/MailboxFinder$Callback;
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$300(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v2}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/email/activity/MailboxFinder$Callback;->onMailboxNotFound(J)V
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_31

    .line 149
    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    goto :goto_12

    :catchall_31
    move-exception v1

    iget-object v2, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v2}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    throw v1

    .line 151
    :cond_38
    const/16 v1, 0x64

    if-ne p4, v1, :cond_12

    .line 152
    const/4 v0, 0x1

    .line 153
    .local v0, retryCount:I
    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$500(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 154
    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$500(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    move-result-object v1

    #getter for: Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mRetrycount:I
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->access$600(Lcom/android/email/activity/MailboxFinder$FindMailboxTask;)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_50
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MailboxFinder: tryCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/16 v1, 0xa

    if-gt v0, v1, :cond_12

    .line 160
    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    new-instance v2, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    iget-object v3, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v0}, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;-><init>(Lcom/android/email/activity/MailboxFinder;ZI)V

    #setter for: Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;
    invoke-static {v1, v2}, Lcom/android/email/activity/MailboxFinder;->access$502(Lcom/android/email/activity/MailboxFinder;Lcom/android/email/activity/MailboxFinder$FindMailboxTask;)Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    .line 161
    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$ControllerResults;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$500(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_12
.end method
