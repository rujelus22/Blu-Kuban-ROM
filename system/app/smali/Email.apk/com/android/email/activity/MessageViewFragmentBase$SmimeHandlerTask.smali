.class Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
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

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;J)V
    .registers 7
    .parameter
    .parameter "attachmentId"

    .prologue
    .line 11215
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 11216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->mContinueSmimeHandling:Z

    .line 11217
    iput-wide p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->mDownloadedAttachmentId:J

    .line 11219
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->smimeutils:Lcom/android/email/SMIMEHelperUtils;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->isActiveResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 11220
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->smimeutils:Lcom/android/email/SMIMEHelperUtils;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->addResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)V

    .line 11222
    :cond_1f
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smimeutils="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->smimeutils:Lcom/android/email/SMIMEHelperUtils;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";mSMIMEUtilsCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11224
    return-void
.end method

.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 6
    .parameter
    .parameter "message"

    .prologue
    .line 11204
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 11205
    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->mMessageToProcess:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 11206
    iget-object v0, p1, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->mMessageToProcess:Lcom/android/emailcommon/provider/EmailContent$Message;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/email/SMIMEHelperUtils;->getSMIMEUtils(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/email/Controller;)Lcom/android/email/SMIMEHelperUtils;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->smimeutils:Lcom/android/email/SMIMEHelperUtils;

    .line 11208
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->smimeutils:Lcom/android/email/SMIMEHelperUtils;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->isActiveResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 11209
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->smimeutils:Lcom/android/email/SMIMEHelperUtils;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->addResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)V

    .line 11211
    :cond_2e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smimeutils="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase;->smimeutils:Lcom/android/email/SMIMEHelperUtils;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";mSMIMEUtilsCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11213
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11193
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8
    .parameter "params"

    .prologue
    .line 11228
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->mContinueSmimeHandling:Z

    if-eqz v0, :cond_15

    .line 11229
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->smimeutils:Lcom/android/email/SMIMEHelperUtils;

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->mDownloadedAttachmentId:J

    sget-wide v3, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadSmimeAttachment:Z
    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7600(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/SMIMEHelperUtils;->continueHandlingSmimeMessage(JJZ)V

    .line 11234
    :goto_13
    const/4 v0, 0x0

    return-object v0

    .line 11232
    :cond_15
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->smimeutils:Lcom/android/email/SMIMEHelperUtils;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->mMessageToProcess:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->handleSmimeMessage(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_13
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 11193
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .parameter "results"

    .prologue
    .line 11240
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->smimeutils:Lcom/android/email/SMIMEHelperUtils;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeHandlerTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mSMIMEUtilsCallback:Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->removeResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)V

    .line 11241
    return-void
.end method
