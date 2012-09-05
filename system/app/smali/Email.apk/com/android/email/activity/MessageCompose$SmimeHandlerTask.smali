.class Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmimeHandlerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContinueSmimeHandling:Z

.field private mDownloadedAttachmentId:J

.field private mMessageToProcess:Lcom/android/emailcommon/provider/EmailContent$Message;

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;J)V
    .registers 6
    .parameter
    .parameter "attachmentId"

    .prologue
    .line 13281
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 13282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->mContinueSmimeHandling:Z

    .line 13283
    iput-wide p2, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->mDownloadedAttachmentId:J

    .line 13285
    #getter for: Lcom/android/email/activity/MessageCompose;->smimeutils:Lcom/android/email/SMIMEHelperUtils;
    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$13500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/SMIMEHelperUtils;

    move-result-object v0

    #getter for: Lcom/android/email/activity/MessageCompose;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;
    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$13600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->isActiveResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 13286
    #getter for: Lcom/android/email/activity/MessageCompose;->smimeutils:Lcom/android/email/SMIMEHelperUtils;
    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$13500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/SMIMEHelperUtils;

    move-result-object v0

    #getter for: Lcom/android/email/activity/MessageCompose;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;
    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$13600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->addResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)V

    .line 13287
    :cond_23
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 5
    .parameter
    .parameter "message"

    .prologue
    .line 13273
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 13274
    iput-object p2, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->mMessageToProcess:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 13275
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->mMessageToProcess:Lcom/android/emailcommon/provider/EmailContent$Message;

    #getter for: Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;
    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$5800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/email/SMIMEHelperUtils;->getSMIMEUtils(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/email/Controller;)Lcom/android/email/SMIMEHelperUtils;

    move-result-object v0

    #setter for: Lcom/android/email/activity/MessageCompose;->smimeutils:Lcom/android/email/SMIMEHelperUtils;
    invoke-static {p1, v0}, Lcom/android/email/activity/MessageCompose;->access$13502(Lcom/android/email/activity/MessageCompose;Lcom/android/email/SMIMEHelperUtils;)Lcom/android/email/SMIMEHelperUtils;

    .line 13277
    #getter for: Lcom/android/email/activity/MessageCompose;->smimeutils:Lcom/android/email/SMIMEHelperUtils;
    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$13500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/SMIMEHelperUtils;

    move-result-object v0

    #getter for: Lcom/android/email/activity/MessageCompose;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;
    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$13600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->isActiveResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 13278
    #getter for: Lcom/android/email/activity/MessageCompose;->smimeutils:Lcom/android/email/SMIMEHelperUtils;
    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$13500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/SMIMEHelperUtils;

    move-result-object v0

    #getter for: Lcom/android/email/activity/MessageCompose;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;
    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$13600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->addResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)V

    .line 13279
    :cond_2d
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 13262
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8
    .parameter "params"

    .prologue
    .line 13291
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->mContinueSmimeHandling:Z

    if-eqz v0, :cond_1d

    .line 13292
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->smimeutils:Lcom/android/email/SMIMEHelperUtils;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$13500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/SMIMEHelperUtils;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->mDownloadedAttachmentId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadAttachmentId:J
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$13700(Lcom/android/email/activity/MessageCompose;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$9700(Lcom/android/email/activity/MessageCompose;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/SMIMEHelperUtils;->continueHandlingSmimeMessage(JJZ)V

    .line 13297
    :goto_1b
    const/4 v0, 0x0

    return-object v0

    .line 13295
    :cond_1d
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->smimeutils:Lcom/android/email/SMIMEHelperUtils;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$13500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/SMIMEHelperUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->mMessageToProcess:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->handleSmimeMessage(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_1b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 13262
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .parameter "results"

    .prologue
    .line 13303
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->smimeutils:Lcom/android/email/SMIMEHelperUtils;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$13500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/SMIMEHelperUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$13600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->removeResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)V

    .line 13304
    return-void
.end method
