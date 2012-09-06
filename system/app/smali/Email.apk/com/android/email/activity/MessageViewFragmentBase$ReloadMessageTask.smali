.class Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/emailcommon/provider/EmailContent$Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 3
    .parameter

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 1096
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 1097
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 4
    .parameter "params"

    .prologue
    .line 1101
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1102
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_a

    .line 1103
    const/4 v1, 0x0

    .line 1105
    :goto_9
    return-object v1

    :cond_a
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    goto :goto_9
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1094
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method protected onSuccess(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 6
    .parameter "message"

    .prologue
    .line 1111
    if-eqz p1, :cond_10

    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 1113
    :cond_10
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onMessageNotExists()V

    .line 1118
    :goto_19
    return-void

    .line 1116
    :cond_1a
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1602(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 1117
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_19
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1094
    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Message;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->onSuccess(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    return-void
.end method
