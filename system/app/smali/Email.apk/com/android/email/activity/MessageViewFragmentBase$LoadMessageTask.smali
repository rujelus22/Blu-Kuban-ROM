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
.field private mId:J

.field private mMailboxType:I

.field private final mOkToFetch:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V
    .registers 6
    .parameter
    .parameter "messageId"
    .parameter "okToFetch"

    .prologue
    .line 4057
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 4060
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 4062
    iput-wide p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mId:J

    .line 4063
    iput-boolean p4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mOkToFetch:Z

    .line 4064
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;JZZ)V
    .registers 8
    .parameter
    .parameter "messageId"
    .parameter "okToFetch"
    .parameter "elmSvcCancelled"

    .prologue
    .line 4043
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 4046
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 4048
    iput-wide p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mId:J

    .line 4049
    iput-boolean p4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mOkToFetch:Z

    .line 4051
    const-string v0, "chandra"

    const-string v1, "Portrait Inside LoadMessageTask -> Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4052
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V
    .registers 4
    .parameter
    .parameter "okToFetch"

    .prologue
    .line 4031
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 4033
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 4035
    iput-boolean p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mOkToFetch:Z

    .line 4036
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 7
    .parameter "params"

    .prologue
    .line 4072
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 4074
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 4075
    .local v1, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_f

    .line 4076
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 4084
    :cond_f
    if-eqz v1, :cond_23

    .line 4085
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mMailboxType:I

    .line 4086
    iget v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mMailboxType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_23

    .line 4087
    const/4 v1, 0x0

    .line 4090
    :cond_23
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4022
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method protected onSuccess(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 13
    .parameter "message"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 4102
    if-nez p1, :cond_1a

    .line 4103
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mIsEMLView:Z

    if-ne v3, v9, :cond_b

    .line 4239
    :cond_a
    :goto_a
    return-void

    .line 4107
    :cond_b
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    .line 4108
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onMessageNotExists()V

    goto :goto_a

    .line 4112
    :cond_1a
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mIsDestoryStart:Z

    if-eq v3, v9, :cond_a

    .line 4115
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$502(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 4116
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v3, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1702(Lcom/android/email/activity/MessageViewFragmentBase;J)J

    .line 4117
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMailboxId:J
    invoke-static {v3, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2502(Lcom/android/email/activity/MessageViewFragmentBase;J)J

    .line 4119
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->checkITPolicy_AllowPOPIMAP()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 4122
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->onMarkAsRead(Z)V

    .line 4126
    :cond_40
    const-string v3, "MessageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jebarlin >>> message.mIsMimeLoaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4127
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v5, 0x7f08032a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->changeLoadMoreBtnText(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2600(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)V

    .line 4131
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v3

    if-eqz v3, :cond_ab

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v3, :cond_ab

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v4, "__attachment_message_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 4133
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object p1

    .line 4135
    if-nez p1, :cond_ab

    .line 4137
    const-string v3, "MessageView"

    const-string v4, "LoadMessageTask : message is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4138
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object p1

    .line 4144
    :cond_ab
    iget-boolean v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v3, :cond_b3

    iget-boolean v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v3, :cond_20b

    :cond_b3
    iget-boolean v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v3, :cond_20b

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v5, v5, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    const/4 v8, 0x4

    invoke-static {v5, v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_20b

    .line 4154
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3, p1, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->updateHeaderView(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    .line 4155
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/html"

    const-string v6, "utf-8"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/email/activity/MessageWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4156
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v3, v4, v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1802(Lcom/android/email/activity/MessageViewFragmentBase;J)J

    .line 4159
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1800(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 4160
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v3

    if-eqz v3, :cond_10b

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v3, :cond_10b

    .line 4161
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/android/email/activity/MessageViewFragmentBase;->versionDouble:Ljava/lang/Double;

    .line 4164
    :cond_10b
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getAlwaysDecryptOrVerifyMails()Z

    move-result v1

    .line 4165
    .local v1, always:Z
    if-eqz v1, :cond_178

    .line 4167
    sget-boolean v3, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialogCancelled:Z

    if-nez v3, :cond_120

    .line 4168
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->showSmimeUserChoiceDialog()V

    .line 4225
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v1           #always:Z
    :cond_120
    :goto_120
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {v4, v5, v10}, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;
    invoke-static {v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3002(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;)Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    .line 4226
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCheckSenderTask:Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3000(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase$CheckSenderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4228
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v4

    iget v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mMailboxType:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->onMessageShown(JI)V

    .line 4230
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->versionDouble:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x402c333333333333L

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_286

    .line 4231
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/irm/IRMEnforcer;->getInstance(Landroid/content/Context;)Lcom/android/email/irm/IRMEnforcer;

    move-result-object v2

    .line 4232
    .local v2, enforcer:Lcom/android/email/irm/IRMEnforcer;
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/email/irm/IRMEnforcer;->isExtractAllowed(J)Z

    move-result v3

    if-nez v3, :cond_279

    .line 4233
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    goto/16 :goto_a

    .line 4173
    .end local v2           #enforcer:Lcom/android/email/irm/IRMEnforcer;
    .restart local v0       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v1       #always:Z
    :cond_178
    sget-boolean v3, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadMoreDialogCancelled:Z

    if-nez v3, :cond_120

    .line 4174
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v3, :cond_1c4

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v3, :cond_1c4

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    if-eqz v3, :cond_1a8

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    if-eqz v3, :cond_1c4

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_1c4

    .line 4178
    :cond_1a8
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    iput-object v4, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    .line 4179
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    new-array v4, v10, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_120

    .line 4180
    :cond_1c4
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v3, :cond_120

    .line 4188
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v4, "__attachment_message_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_204

    .line 4189
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    iput-object v4, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    .line 4190
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mSmimeHandlerTask:Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;

    new-array v4, v10, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_120

    .line 4192
    :cond_204
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->onMoreMessage()V
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2900(Lcom/android/email/activity/MessageViewFragmentBase;)V

    goto/16 :goto_120

    .line 4201
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v1           #always:Z
    :cond_20b
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v3, :cond_a

    .line 4205
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentTransaction()Z

    move-result v3

    if-eqz v3, :cond_230

    .line 4206
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseFragmentPager()Z

    move-result v3

    if-nez v3, :cond_230

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsPhone()Z

    move-result v3

    if-eqz v3, :cond_230

    .line 4207
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageOpenMode:I

    sget v4, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NORMAL:I

    if-ne v3, v4, :cond_25d

    .line 4208
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->makeAnimateMessageViewOpen(Z)V

    .line 4217
    :cond_230
    :goto_230
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadMessageTask - reloadUiFromMessage ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4219
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->mOkToFetch:Z

    invoke-virtual {v3, p1, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    goto/16 :goto_120

    .line 4209
    :cond_25d
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageOpenMode:I

    sget v4, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_OLDER:I

    if-ne v3, v4, :cond_26b

    .line 4210
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->makeAnimateMessageViewMove(Z)V

    goto :goto_230

    .line 4211
    :cond_26b
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageOpenMode:I

    sget v4, Lcom/android/email/activity/MessageListXL;->SELECT_MESSAGE_NEWER:I

    if-ne v3, v4, :cond_230

    .line 4212
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->makeAnimateMessageViewMove(Z)V

    goto :goto_230

    .line 4235
    .restart local v2       #enforcer:Lcom/android/email/irm/IRMEnforcer;
    :cond_279
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    goto/16 :goto_a

    .line 4237
    .end local v2           #enforcer:Lcom/android/email/irm/IRMEnforcer;
    :cond_286
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    goto/16 :goto_a
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 4022
    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Message;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->onSuccess(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    return-void
.end method
