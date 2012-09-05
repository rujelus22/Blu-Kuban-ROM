.class Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBodyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/String;

.field private mErrorLoadingMessageBody:Z

.field private mExecutePatternMatch:Z

.field private mId:J

.field private mLoadAttach:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;JZ)V
    .registers 7
    .parameter
    .parameter "messageId"
    .parameter "loadAttachment"

    .prologue
    .line 4365
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4352
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    .line 4353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mData:Ljava/lang/String;

    .line 4366
    iput-wide p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    .line 4367
    iput-boolean p4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mLoadAttach:Z

    .line 4368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mExecutePatternMatch:Z

    .line 4369
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4350
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .registers 15
    .parameter "params"

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 4380
    const/4 v5, 0x0

    .line 4381
    .local v5, text:Ljava/lang/String;
    :try_start_3
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v8, v8, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v9, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-static {v8, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 4382
    .local v0, html:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v8, v8, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v9, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-static {v8, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 4383
    .local v4, replyHtml:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v8, v8, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v9, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-static {v8, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreIntroTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 4384
    .local v1, introHtml:Ljava/lang/String;
    if-nez v0, :cond_2d

    .line 4385
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v8, v8, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-wide v9, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-static {v8, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 4387
    :cond_2d
    if-nez v4, :cond_31

    if-eqz v1, :cond_35

    .line 4392
    :cond_31
    invoke-static {v0, v4, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->getIntergratedHTML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4399
    :cond_35
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v8, v8, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/email/Preferences;->getTextZoom()I

    move-result v6

    .line 4400
    .local v6, text_zoom:I
    const/4 v2, 0x0

    .line 4402
    .local v2, isHuge:Z
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v8}, Lcom/android/email/activity/MessageViewFragmentBase;->isQ1Model()Z

    move-result v8

    if-eqz v8, :cond_73

    .line 4403
    const/4 v8, 0x5

    if-ne v6, v8, :cond_4e

    .line 4404
    const/4 v2, 0x1

    .line 4410
    :cond_4e
    :goto_4e
    if-eqz v0, :cond_62

    if-eqz v2, :cond_62

    .line 4411
    const-string v8, "[lL][iI][nN][eE](-|\\s)?[hH][eE][iI][gG][hH][tT]\\s?(:|=)\\s?[^;|\\\"]+\\s?"

    const-string v9, "line-height:100%"

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4415
    const-string v8, "(?<=[Ff][Oo][Nn][Tt]:\\s?\\w{2,10})(?:/\\w+\\%?)"

    const-string v9, ""

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4418
    :cond_62
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v9, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mLoadAttach:Z

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v8, v5, v0, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3100(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mData:Ljava/lang/String;

    .line 4420
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_78

    .line 4439
    .end local v0           #html:Ljava/lang/String;
    .end local v1           #introHtml:Ljava/lang/String;
    .end local v2           #isHuge:Z
    .end local v4           #replyHtml:Ljava/lang/String;
    .end local v6           #text_zoom:I
    :goto_72
    return-object v7

    .line 4406
    .restart local v0       #html:Ljava/lang/String;
    .restart local v1       #introHtml:Ljava/lang/String;
    .restart local v2       #isHuge:Z
    .restart local v4       #replyHtml:Ljava/lang/String;
    .restart local v6       #text_zoom:I
    :cond_73
    const/4 v8, 0x4

    if-ne v6, v8, :cond_4e

    .line 4407
    const/4 v2, 0x1

    goto :goto_4e

    .line 4424
    :cond_78
    iget-wide v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    iget-object v10, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v10}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_c0

    .line 4425
    const-string v8, "Email"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LoadBodyTask mId = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], mMessageId = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v10}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_b4} :catch_b5

    goto :goto_72

    .line 4433
    .end local v0           #html:Ljava/lang/String;
    .end local v1           #introHtml:Ljava/lang/String;
    .end local v2           #isHuge:Z
    .end local v4           #replyHtml:Ljava/lang/String;
    .end local v6           #text_zoom:I
    :catch_b5
    move-exception v3

    .line 4437
    .local v3, re:Ljava/lang/RuntimeException;
    const-string v8, "Email"

    const-string v9, "Exception while loading message body"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4438
    iput-boolean v12, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mErrorLoadingMessageBody:Z

    goto :goto_72

    .line 4430
    .end local v3           #re:Ljava/lang/RuntimeException;
    .restart local v0       #html:Ljava/lang/String;
    .restart local v1       #introHtml:Ljava/lang/String;
    .restart local v2       #isHuge:Z
    .restart local v4       #replyHtml:Ljava/lang/String;
    .restart local v6       #text_zoom:I
    :cond_c0
    const/4 v8, 0x2

    :try_start_c1
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9
    :try_end_c9
    .catch Ljava/lang/RuntimeException; {:try_start_c1 .. :try_end_c9} :catch_b5

    move-object v7, v8

    goto :goto_72
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 4350
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .registers 14
    .parameter "results"

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x1

    .line 4449
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadBodyTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;

    move-result-object v0

    if-nez v0, :cond_12

    .line 4450
    const-string v0, "Email"

    const-string v1, "onPostExecute : LoadBodyTask is already is canceled!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4556
    :cond_11
    :goto_11
    return-void

    .line 4454
    :cond_12
    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 4455
    :cond_1a
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mErrorLoadingMessageBody:Z

    if-eqz v0, :cond_2a

    .line 4456
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080086

    invoke-static {v0, v1, v11}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 4459
    :cond_2a
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    goto :goto_11

    .line 4463
    :cond_30
    const/4 v8, 0x1

    .line 4465
    .local v8, showBody:Z
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v0, :cond_50

    :cond_45
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v0, :cond_50

    .line 4466
    const/4 v8, 0x0

    .line 4469
    :cond_50
    if-eqz v8, :cond_c1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_c1

    .line 4470
    const/4 v7, 0x0

    .line 4471
    .local v7, baseUrl:Ljava/lang/String;
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_185

    .line 4472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email://LoadBodyTask/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4477
    :goto_72
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    if-nez v0, :cond_95

    .line 4478
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showHTMLITPolicyToast()V

    .line 4482
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->extractTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4484
    .local v9, tempStr:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_95

    .line 4485
    iput-object v9, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mData:Ljava/lang/String;

    .line 4489
    .end local v9           #tempStr:Ljava/lang/String;
    :cond_95
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadBodyTask - loadDataWithBaseURL : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4492
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mData:Ljava/lang/String;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3302(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    .line 4500
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mData:Ljava/lang/String;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->WebView_loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v7, v1, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3400(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4504
    .end local v7           #baseUrl:Ljava/lang/String;
    :cond_c1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v0, :cond_f3

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    if-nez v0, :cond_f3

    .line 4505
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showHTMLITPolicyToast()V

    .line 4508
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mText1:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3500(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f3

    .line 4510
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mText1:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3500(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->extractTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4512
    .restart local v9       #tempStr:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f3

    .line 4513
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mText1:Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3502(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    .line 4517
    .end local v9           #tempStr:Ljava/lang/String;
    :cond_f3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mLoadAttach:Z

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->loadContentFromServer(Z)V

    .line 4519
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 4524
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-nez v0, :cond_10c

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mLoadAttach:Z

    if-eqz v0, :cond_133

    .line 4525
    :cond_10c
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mLoadAttach:Z

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3602(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    .line 4526
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3600(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    move-result-object v0

    new-array v1, v11, [Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4529
    :cond_133
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mExecutePatternMatch:Z

    if-ne v0, v11, :cond_179

    .line 4531
    aget-object v0, p1, v11

    if-eqz v0, :cond_19c

    .line 4532
    iget-object v10, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    aget-object v2, p1, v6

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mData:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;JI)V

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;
    invoke-static {v10, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3702(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    .line 4538
    :goto_14d
    :try_start_14d
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/ViewPatternMatching;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/ViewPatternMatching;->pmInit(Landroid/content/Context;IJ)V

    .line 4547
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/ViewPatternMatching;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/android/email/ViewPatternMatching;->pmSettimeout(I)V
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_16e} :catch_1af

    .line 4551
    :goto_16e
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4553
    :cond_179
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mIsMessageLoadedForTest:Z
    invoke-static {v0, v11}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3902(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z

    .line 4555
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->onPostLoadBody()V

    goto/16 :goto_11

    .line 4474
    .restart local v7       #baseUrl:Ljava/lang/String;
    :cond_185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_72

    .line 4534
    .end local v7           #baseUrl:Ljava/lang/String;
    :cond_19c
    iget-object v10, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mData:Ljava/lang/String;

    aget-object v3, p1, v11

    iget-wide v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadBodyTask;->mId:J

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;JI)V

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;
    invoke-static {v10, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3702(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    goto :goto_14d

    .line 4548
    :catch_1af
    move-exception v0

    goto :goto_16e
.end method
