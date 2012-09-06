.class Lcom/android/email/activity/MailboxFinder$FindMailboxTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MailboxFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindMailboxTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOkToRecurse:Z

.field private mResult:I

.field final synthetic this$0:Lcom/android/email/activity/MailboxFinder;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxFinder;Z)V
    .registers 4
    .parameter
    .parameter "okToRecurse"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    .line 169
    iput-boolean p2, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mOkToRecurse:Z

    .line 170
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .registers 11
    .parameter "params"

    .prologue
    const-wide/16 v7, -0x1

    .line 175
    iget-object v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/activity/MailboxFinder;->access$600(Lcom/android/email/activity/MailboxFinder;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v4}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/Account;->isSecurityHold(Landroid/content/Context;J)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 176
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    .line 177
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 199
    :goto_1b
    return-object v3

    .line 181
    :cond_1c
    iget-object v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/activity/MailboxFinder;->access$600(Lcom/android/email/activity/MailboxFinder;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v4}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mMailboxType:I
    invoke-static {v6}, Lcom/android/email/activity/MailboxFinder;->access$700(Lcom/android/email/activity/MailboxFinder;)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    .line 182
    .local v1, mailboxId:J
    cmp-long v3, v1, v7

    if-eqz v3, :cond_3e

    .line 183
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    .line 184
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1b

    .line 188
    :cond_3e
    iget-object v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/activity/MailboxFinder;->access$600(Lcom/android/email/activity/MailboxFinder;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v4}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/Account;->isValidId(Landroid/content/Context;J)Z

    move-result v0

    .line 189
    .local v0, accountExists:Z
    if-eqz v0, :cond_60

    .line 190
    iget-boolean v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mOkToRecurse:Z

    if-eqz v3, :cond_5c

    .line 192
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    .line 199
    :goto_57
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1b

    .line 194
    :cond_5c
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    goto :goto_57

    .line 197
    :cond_60
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    goto :goto_57
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 153
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onSuccess(Ljava/lang/Long;)V
    .registers 7
    .parameter "mailboxId"

    .prologue
    .line 204
    iget v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    packed-switch v0, :pswitch_data_c6

    .line 245
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 206
    :pswitch_b
    const-string v0, "Email"

    const-string v1, "MailboxFinder: Account security hold."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :try_start_12
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mCallback:Lcom/android/email/activity/MailboxFinder$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$300(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/email/activity/MailboxFinder$Callback;->onAccountSecurityHold(J)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_27

    .line 210
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    .line 243
    :goto_26
    return-void

    .line 210
    :catchall_27
    move-exception v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    throw v0

    .line 214
    :pswitch_2e
    const-string v0, "Email"

    const-string v1, "MailboxFinder: Account not found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :try_start_35
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mCallback:Lcom/android/email/activity/MailboxFinder$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$300(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/MailboxFinder$Callback;->onAccountNotFound()V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_44

    .line 218
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    goto :goto_26

    :catchall_44
    move-exception v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    throw v0

    .line 222
    :pswitch_4b
    const-string v0, "Email"

    const-string v1, "MailboxFinder: Mailbox not found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :try_start_52
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mCallback:Lcom/android/email/activity/MailboxFinder$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$300(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/email/activity/MailboxFinder$Callback;->onMailboxNotFound(J)V
    :try_end_61
    .catchall {:try_start_52 .. :try_end_61} :catchall_67

    .line 226
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    goto :goto_26

    :catchall_67
    move-exception v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    throw v0

    .line 230
    :pswitch_6e
    sget-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v0, :cond_8e

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_8e

    .line 231
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MailboxFinder: mailbox found: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_8e
    :try_start_8e
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mCallback:Lcom/android/email/activity/MailboxFinder$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$300(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MailboxFinder$Callback;->onMailboxFound(JJ)V
    :try_end_a1
    .catchall {:try_start_8e .. :try_end_a1} :catchall_a7

    .line 236
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    goto :goto_26

    :catchall_a7
    move-exception v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    throw v0

    .line 241
    :pswitch_ae
    const-string v0, "Email"

    const-string v1, "MailboxFinder: Starting network lookup."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$800(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->updateMailboxList(J)V

    goto/16 :goto_26

    .line 204
    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_b
        :pswitch_2e
        :pswitch_4b
        :pswitch_ae
    .end packed-switch
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->onSuccess(Ljava/lang/Long;)V

    return-void
.end method
