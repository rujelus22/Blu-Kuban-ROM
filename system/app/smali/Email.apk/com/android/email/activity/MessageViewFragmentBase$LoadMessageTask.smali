.class Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMessageTask"
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
.field private mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field private final mOkToFetch:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V
    .registers 4
    .parameter
    .parameter "okToFetch"

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 1055
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 1056
    iput-boolean p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mOkToFetch:Z

    .line 1057
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 7
    .parameter "params"

    .prologue
    .line 1061
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1062
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 1063
    .local v1, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_f

    .line 1064
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 1066
    :cond_f
    if-eqz v1, :cond_22

    .line 1067
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    .line 1068
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-nez v2, :cond_22

    .line 1069
    const/4 v1, 0x0

    .line 1072
    :cond_22
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1046
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method protected onSuccess(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 7
    .parameter "message"

    .prologue
    .line 1077
    if-nez p1, :cond_11

    .line 1078
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 1079
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onMessageNotExists()V

    .line 1088
    :goto_10
    return-void

    .line 1082
    :cond_11
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1302(Lcom/android/email/activity/MessageViewFragmentBase;J)J

    .line 1084
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mOkToFetch:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    .line 1085
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->queryContactStatus()V
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1400(Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 1086
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1300(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->onMessageShown(JLcom/android/emailcommon/provider/Mailbox;)V

    .line 1087
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/activity/RecentMailboxManager;->getInstance(Landroid/content/Context;)Lcom/android/email/activity/RecentMailboxManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v1

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/activity/RecentMailboxManager;->touch(JJ)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_10
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1046
    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Message;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->onSuccess(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    return-void
.end method
