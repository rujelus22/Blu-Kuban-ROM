.class Lcom/android/email/activity/MessageListFragment$MessageOpenTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
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
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
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


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageListFragment;JJ)V
    .registers 7
    .parameter
    .parameter "messageMailboxId"
    .parameter "messageId"

    .prologue
    .line 821
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->this$0:Lcom/android/email/activity/MessageListFragment;

    .line 822
    #getter for: Lcom/android/email/activity/MessageListFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {p1}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 823
    iput-wide p2, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->mMessageMailboxId:J

    .line 824
    iput-wide p4, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->mMessageId:J

    .line 825
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 6
    .parameter "params"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->mMessageMailboxId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v1

    #calls: Lcom/android/email/activity/MessageListFragment;->callbackTypeForMailboxType(I)I
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListFragment;->access$400(Lcom/android/email/activity/MessageListFragment;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 817
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onSuccess(Ljava/lang/Integer;)V
    .registers 10
    .parameter "type"

    .prologue
    .line 838
    if-nez p1, :cond_3

    .line 842
    :goto_2
    return-void

    .line 841
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->mMessageId:J

    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->mMessageMailboxId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface/range {v0 .. v7}, Lcom/android/email/activity/MessageListFragment$Callback;->onMessageOpen(JJJI)V

    goto :goto_2
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 817
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
