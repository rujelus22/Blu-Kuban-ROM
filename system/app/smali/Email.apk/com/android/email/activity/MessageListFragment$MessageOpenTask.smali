.class Lcom/android/email/activity/MessageListFragment$MessageOpenTask;
.super Landroid/os/AsyncTask;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageOpenTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMessageId:J

.field private final mMessageMailboxId:J

.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 5
    .parameter "params"

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->mMessageMailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 2428
    :pswitch_f
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_14
    return-object v0

    .line 2424
    :pswitch_15
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_14

    .line 2426
    :pswitch_1b
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_14

    .line 2422
    nop

    :pswitch_data_22
    .packed-switch 0x3
        :pswitch_15
        :pswitch_f
        :pswitch_f
        :pswitch_1b
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2406
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 10
    .parameter "type"

    .prologue
    .line 2434
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_9

    .line 2438
    :cond_8
    :goto_8
    return-void

    .line 2437
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$400(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->mMessageId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->mMessageMailboxId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface/range {v0 .. v7}, Lcom/android/email/activity/MessageListFragment$Callback;->onMessageOpen(JJJI)V

    goto :goto_8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 2406
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
