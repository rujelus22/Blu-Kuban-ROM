.class Lcom/android/email/activity/MailboxFinder$FindMailboxTask;
.super Landroid/os/AsyncTask;
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
        "Landroid/os/AsyncTask",
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

.field private mRetrycount:I

.field final synthetic this$0:Lcom/android/email/activity/MailboxFinder;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxFinder;ZI)V
    .registers 5
    .parameter
    .parameter "okToRecurse"
    .parameter "additionalRetry"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mRetrycount:I

    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    .line 204
    iput-boolean p2, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mOkToRecurse:Z

    .line 205
    iput p3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mRetrycount:I

    .line 206
    return-void
.end method

.method static synthetic access$600(Lcom/android/email/activity/MailboxFinder$FindMailboxTask;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 183
    iget v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mRetrycount:I

    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .registers 11
    .parameter "params"

    .prologue
    const-wide/16 v7, -0x1

    .line 211
    iget-object v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/activity/MailboxFinder;->access$700(Lcom/android/email/activity/MailboxFinder;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v4}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSecurityHold(Landroid/content/Context;J)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 212
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    .line 213
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 235
    :goto_1b
    return-object v3

    .line 217
    :cond_1c
    iget-object v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/activity/MailboxFinder;->access$700(Lcom/android/email/activity/MailboxFinder;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v4}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mMailboxType:I
    invoke-static {v6}, Lcom/android/email/activity/MailboxFinder;->access$800(Lcom/android/email/activity/MailboxFinder;)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    .line 218
    .local v1, mailboxId:J
    cmp-long v3, v1, v7

    if-eqz v3, :cond_3e

    .line 219
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    .line 220
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1b

    .line 224
    :cond_3e
    iget-object v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/activity/MailboxFinder;->access$700(Lcom/android/email/activity/MailboxFinder;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v4}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->isValidId(Landroid/content/Context;J)Z

    move-result v0

    .line 225
    .local v0, accountExists:Z
    if-eqz v0, :cond_60

    .line 226
    iget-boolean v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mOkToRecurse:Z

    if-eqz v3, :cond_5c

    .line 228
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    .line 235
    :goto_57
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1b

    .line 230
    :cond_5c
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    goto :goto_57

    .line 233
    :cond_60
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    goto :goto_57
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 183
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .registers 8
    .parameter "mailboxId"

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 287
    :goto_6
    return-void

    .line 243
    :cond_7
    iget v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->mResult:I

    packed-switch v0, :pswitch_data_c6

    .line 289
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 245
    :pswitch_12
    const-string v0, "Email"

    const-string v1, "MailboxFinder: Account security hold."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :try_start_19
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mCallback:Lcom/android/email/activity/MailboxFinder$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$300(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/email/activity/MailboxFinder$Callback;->onAccountSecurityHold(J)V
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_2e

    .line 249
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    goto :goto_6

    :catchall_2e
    move-exception v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    throw v0

    .line 253
    :pswitch_35
    const-string v0, "Email"

    const-string v1, "MailboxFinder: Account not found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :try_start_3c
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mCallback:Lcom/android/email/activity/MailboxFinder$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$300(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/MailboxFinder$Callback;->onAccountNotFound()V
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_4b

    .line 257
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    goto :goto_6

    :catchall_4b
    move-exception v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    throw v0

    .line 261
    :pswitch_52
    const-string v0, "Email"

    const-string v1, "MailboxFinder: Mailbox not found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :try_start_59
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mCallback:Lcom/android/email/activity/MailboxFinder$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$300(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/email/activity/MailboxFinder$Callback;->onMailboxNotFound(J)V
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_6e

    .line 265
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    goto :goto_6

    :catchall_6e
    move-exception v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    throw v0

    .line 276
    :pswitch_75
    :try_start_75
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$700(Lcom/android/email/activity/MailboxFinder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    .line 278
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
    :try_end_a0
    .catchall {:try_start_75 .. :try_end_a0} :catchall_a7

    .line 280
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    goto/16 :goto_6

    :catchall_a7
    move-exception v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #calls: Lcom/android/email/activity/MailboxFinder;->close()V
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$400(Lcom/android/email/activity/MailboxFinder;)V

    throw v0

    .line 285
    :pswitch_ae
    const-string v0, "Email"

    const-string v1, "MailboxFinder: Starting network lookup."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MailboxFinder;->access$900(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->this$0:Lcom/android/email/activity/MailboxFinder;

    #getter for: Lcom/android/email/activity/MailboxFinder;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxFinder;->access$200(Lcom/android/email/activity/MailboxFinder;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->updateMailboxList(J)V

    goto/16 :goto_6

    .line 243
    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_75
        :pswitch_12
        :pswitch_35
        :pswitch_52
        :pswitch_ae
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 183
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
