.class Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PatternMatchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mId:J

.field private mPosition:I

.field private mPreHtml:Ljava/lang/String;

.field private mPreText:Ljava/lang/String;

.field private mResultText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 10
    .parameter
    .parameter "preText"
    .parameter "preHtml"
    .parameter "id"
    .parameter "nPos"

    .prologue
    const/4 v2, 0x0

    .line 4567
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 4568
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4561
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mId:J

    .line 4562
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreText:Ljava/lang/String;

    .line 4563
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreHtml:Ljava/lang/String;

    .line 4564
    iput-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mResultText:Ljava/lang/String;

    .line 4565
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPosition:I

    .line 4569
    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreText:Ljava/lang/String;

    .line 4570
    iput-object p3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreHtml:Ljava/lang/String;

    .line 4571
    iput-wide p4, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mId:J

    .line 4572
    iput p6, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPosition:I

    .line 4573
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4560
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 9
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 4578
    :try_start_1
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreText:Ljava/lang/String;

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreHtml:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 4606
    :cond_9
    :goto_9
    return-object v2

    .line 4582
    :cond_a
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_9

    .line 4586
    iget-wide v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mId:J

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_67

    .line 4587
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PatternMatchTask mId = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], mMessageId = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

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

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4c} :catch_a2

    goto :goto_9

    .line 4601
    :catch_4d
    move-exception v0

    .line 4602
    .local v0, me:Lcom/android/email/mail/MessagingException;
    const-string v3, "Z7App"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while copying downloaded message."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 4592
    .end local v0           #me:Lcom/android/email/mail/MessagingException;
    :cond_67
    :try_start_67
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreHtml:Ljava/lang/String;

    if-nez v3, :cond_86

    .line 4593
    const-string v3, "MessageViewFragmentBase >>"

    const-string v4, "PatternMatchTask : plain text"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4594
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/ViewPatternMatching;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreText:Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPosition:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/email/ViewPatternMatching;->pmDataMatching(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mResultText:Ljava/lang/String;

    .line 4595
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mResultText:Ljava/lang/String;

    goto :goto_9

    .line 4597
    :cond_86
    const-string v3, "MessageViewFragmentBase >>"

    const-string v4, "PatternMatchTask : html"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4598
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/ViewPatternMatching;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreHtml:Ljava/lang/String;

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPosition:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/email/ViewPatternMatching;->pmDataMatching(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mResultText:Ljava/lang/String;

    .line 4599
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mResultText:Ljava/lang/String;
    :try_end_a0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_67 .. :try_end_a0} :catch_4d
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_a0} :catch_a2

    goto/16 :goto_9

    .line 4604
    :catch_a2
    move-exception v1

    .line 4605
    .local v1, re:Ljava/lang/RuntimeException;
    const-string v3, "Z7App"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while pattern matching "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 4560
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 13
    .parameter "results"

    .prologue
    const/4 v1, 0x1

    .line 4612
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4613
    :cond_9
    const-string v0, "Z7App"

    const-string v1, "Pattern Matching is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4672
    :cond_10
    :goto_10
    return-void

    .line 4617
    :cond_11
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    if-nez v0, :cond_31

    .line 4618
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showHTMLITPolicyToast()V

    .line 4622
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->extractTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4624
    .local v9, tempStr:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_31

    .line 4625
    move-object p1, v9

    .line 4630
    .end local v9           #tempStr:Ljava/lang/String;
    :cond_31
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_10c

    .line 4631
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageWebView;->setPreserveZoom(Z)V

    .line 4632
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mIsPatternMatchingEnd:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4002(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z

    .line 4634
    if-eqz p1, :cond_ed

    move-object v8, p1

    .line 4635
    .local v8, resultStr:Ljava/lang/String;
    :goto_46
    const/4 v7, 0x0

    .line 4636
    .local v7, baseUrl:Ljava/lang/String;
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_f5

    .line 4637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email://PatternMatchTask/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4640
    :goto_60
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PatternMatchTask - loadDataWithBaseURL : ["

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

    .line 4643
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;
    invoke-static {v0, v8}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3302(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    .line 4651
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->WebView_loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v7, v8, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3400(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4657
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/ViewPatternMatching;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/ViewPatternMatching;->pmFindPos()I

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    .line 4659
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3702(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    .line 4660
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/ViewPatternMatching;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/android/email/ViewPatternMatching;->pmSettimeout(I)V

    .line 4661
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreHtml:Ljava/lang/String;

    if-nez v0, :cond_115

    .line 4662
    iget-object v10, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3300(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreHtml:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mId:J

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;
    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/ViewPatternMatching;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/ViewPatternMatching;->pmFindPos()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;JI)V

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;
    invoke-static {v10, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3702(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    .line 4669
    :goto_df
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_10

    .line 4634
    .end local v7           #baseUrl:Ljava/lang/String;
    .end local v8           #resultStr:Ljava/lang/String;
    :cond_ed
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mText1:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3500(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_46

    .line 4639
    .restart local v7       #baseUrl:Ljava/lang/String;
    .restart local v8       #resultStr:Ljava/lang/String;
    :cond_f5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "email://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_60

    .line 4653
    .end local v7           #baseUrl:Ljava/lang/String;
    .end local v8           #resultStr:Ljava/lang/String;
    :cond_10c
    const-string v0, "Z7App"

    const-string v1, "mMessageWebView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 4665
    .restart local v7       #baseUrl:Ljava/lang/String;
    .restart local v8       #resultStr:Ljava/lang/String;
    :cond_115
    iget-object v10, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mPreText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBaseURL:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3300(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->mId:J

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mPMmanager:Lcom/android/email/ViewPatternMatching;
    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/ViewPatternMatching;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/ViewPatternMatching;->pmFindPos()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;JI)V

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mPatternMatchTask:Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;
    invoke-static {v10, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3702(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;)Lcom/android/email/activity/MessageViewFragmentBase$PatternMatchTask;

    goto :goto_df
.end method
