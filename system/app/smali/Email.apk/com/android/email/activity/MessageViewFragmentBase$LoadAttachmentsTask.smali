.class Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAttachmentsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;",
        "[",
        "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field bCheckedLoadAttachment:Z

.field bEnableShow:Z

.field htmlChanged:Z

.field info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

.field isAddingAttachment:Z

.field mLoadAttach:Z

.field numDisplayedAttachments:I

.field numProcessed:I

.field numPublished:I

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V
    .registers 4
    .parameter
    .parameter "loadAttachment"

    .prologue
    const/4 v0, 0x0

    .line 4708
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 4709
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4701
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->htmlChanged:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->bCheckedLoadAttachment:Z

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->bEnableShow:Z

    .line 4703
    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numProcessed:I

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numPublished:I

    .line 4710
    iput-boolean p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    .line 4711
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4695
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .registers 15
    .parameter "messageIds"

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 4719
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    aget-object v8, p1, v11

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    .line 4721
    .local v2, attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_1f

    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/TextView;

    move-result-object v7

    if-nez v7, :cond_21

    :cond_1f
    move-object v2, v6

    .line 4768
    .end local v2           #attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_20
    :goto_20
    return-object v2

    .line 4726
    .restart local v2       #attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_21
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setClickable(Z)V

    .line 4728
    move-object v0, v2

    .local v0, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2d
    if-ge v4, v5, :cond_96

    aget-object v1, v0, v4

    .line 4729
    .local v1, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    new-instance v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {v7, v8, v6}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    iput-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    .line 4731
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iput-object v1, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 4732
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iput-object v6, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 4733
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iput-boolean v11, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    .line 4734
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iput-boolean v11, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->isLoaded:Z

    .line 4736
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_52

    move-object v2, v6

    .line 4737
    goto :goto_20

    .line 4740
    :cond_52
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 4741
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iput-boolean v12, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->isLoaded:Z

    .line 4744
    :cond_60
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iget-boolean v7, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->isLoaded:Z

    if-eqz v7, :cond_72

    .line 4745
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v9, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->getPreviewIconById(J)Landroid/graphics/Bitmap;
    invoke-static {v8, v9, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4300(Lcom/android/email/activity/MessageViewFragmentBase;J)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v7, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 4748
    :cond_72
    new-array v7, v12, [Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->info:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    aput-object v8, v7, v11

    invoke-virtual {p0, v7}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->publishProgress([Ljava/lang/Object;)V

    .line 4749
    iget v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numPublished:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numPublished:I

    .line 4751
    iget v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numPublished:I

    iget v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numProcessed:I

    add-int/lit8 v8, v8, 0x5

    if-le v7, v8, :cond_8e

    .line 4753
    const-wide/16 v7, 0x64

    :try_start_8b
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8e
    .catch Ljava/lang/InterruptedException; {:try_start_8b .. :try_end_8e} :catch_91

    .line 4728
    :cond_8e
    :goto_8e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 4754
    :catch_91
    move-exception v3

    .line 4755
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8e

    .line 4760
    .end local v1           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v3           #e:Ljava/lang/InterruptedException;
    :cond_96
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_9e

    move-object v2, v6

    .line 4761
    goto :goto_20

    .line 4765
    :cond_9e
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_20

    .line 4766
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mTextAttachmentTab:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_20
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 4695
    check-cast p1, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->onPostExecute([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method protected onPostExecute([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 11
    .parameter "attachments"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4940
    :try_start_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->controlTabFocus()V
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4900(Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 4945
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3600(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 4946
    const-string v0, "Email"

    const-string v1, "onPostExecute : LoadAttachmentTask is already is canceled!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_d0

    .line 5045
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    :goto_18
    invoke-virtual {v0, v8, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    .line 5067
    :cond_1b
    :goto_1b
    return-void

    .line 4951
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isCancelled()Z
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_d0

    move-result v0

    if-nez v0, :cond_24

    if-nez p1, :cond_27

    .line 5045
    :cond_24
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    goto :goto_18

    .line 4955
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-boolean v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsDestoryStart:Z
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_d0

    if-ne v0, v8, :cond_30

    .line 5045
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    goto :goto_18

    .line 5019
    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mEmbeddedImageDownload:Z

    .line 5022
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5002(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    .line 5023
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4402(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    .line 5024
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->htmlChanged:Z

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    if-eqz v0, :cond_96

    .line 5027
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    if-nez v0, :cond_82

    .line 5028
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showHTMLITPolicyToast()V

    .line 5031
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5000(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 5033
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5000(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->extractTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5035
    .local v6, tempStr:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_82

    .line 5036
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5002(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    .line 5041
    .end local v6           #tempStr:Ljava/lang/String;
    :cond_82
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    const-string v1, "email://"

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5000(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_30 .. :try_end_96} :catchall_d0

    .line 5045
    :cond_96
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0, v8, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    .line 5048
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 5053
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v0, :cond_d7

    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1800(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 5054
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageViewForSeven;->startDownloadEmbeddedAttachments(JJ)V

    goto/16 :goto_1b

    .line 5045
    :catchall_d0
    move-exception v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1, v8, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    throw v0

    .line 5061
    :cond_d7
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5102(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;)Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

    .line 5064
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadEmbeddedAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto/16 :goto_1b
.end method

.method protected varargs onProgressUpdate([Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;)V
    .registers 8
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4778
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentsTask:Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3600(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;

    move-result-object v1

    if-nez v1, :cond_13

    .line 4779
    const-string v1, "Email"

    const-string v2, "onProgressUpdate : LoadAttachmentTask is already is canceled!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4934
    :goto_12
    return-void

    .line 4786
    :cond_13
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numProcessed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numProcessed:I

    .line 4788
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->bCheckedLoadAttachment:Z

    if-nez v1, :cond_2d

    .line 4789
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1400(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_46

    .line 4790
    iput-boolean v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isAddingAttachment:Z

    .line 4795
    :goto_2b
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->bCheckedLoadAttachment:Z

    .line 4798
    :cond_2d
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->bEnableShow:Z

    if-nez v1, :cond_38

    .line 4799
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1, v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    .line 4800
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->bEnableShow:Z

    .line 4803
    :cond_38
    aget-object v1, p1, v4

    iget-object v0, v1, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 4806
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :try_start_3c
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isCancelled()Z
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_b8

    move-result v1

    if-eqz v1, :cond_49

    .line 4930
    :cond_42
    :goto_42
    const/4 v0, 0x0

    .line 4931
    aput-object v5, p1, v4

    goto :goto_12

    .line 4792
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_46
    iput-boolean v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isAddingAttachment:Z

    goto :goto_2b

    .line 4812
    .restart local v0       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_49
    :try_start_49
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-static {v1, v2}, Lcom/android/email/adapter/ProtocolAdapter;->isSevenAccount(J)Z

    move-result v1

    if-ne v1, v3, :cond_5c

    .line 4813
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->rearrangeEmbeddedAttachment(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    invoke-static {v1, v2, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4500(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    :try_end_5c
    .catchall {:try_start_49 .. :try_end_5c} :catchall_b8
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5c} :catch_167

    .line 4827
    :cond_5c
    :goto_5c
    :try_start_5c
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 4829
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_bd

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v1, :cond_bd

    .line 4831
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_8d

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    if-nez v1, :cond_8d

    .line 4833
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4600(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    .line 4834
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    .line 4921
    :cond_8d
    :goto_8d
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_42

    .line 4922
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    if-nez v1, :cond_15e

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1400(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_15e

    .line 4923
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1400(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->setAttachmentCount(I)V
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4700(Lcom/android/email/activity/MessageViewFragmentBase;I)V

    .line 4926
    :goto_b0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->arrangeAttachments(I)V
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4800(Lcom/android/email/activity/MessageViewFragmentBase;I)V
    :try_end_b7
    .catchall {:try_start_5c .. :try_end_b7} :catchall_b8

    goto :goto_42

    .line 4930
    :catchall_b8
    move-exception v1

    const/4 v0, 0x0

    .line 4931
    aput-object v5, p1, v4

    .line 4930
    throw v1

    .line 4852
    :cond_bd
    :try_start_bd
    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    if-eqz v1, :cond_f3

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase;->mSevenAddon:Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1800(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageViewForSeven;->isPremiumUser(J)Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 4854
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_ec

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isAddingAttachment:Z

    if-eqz v1, :cond_ec

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-nez v1, :cond_ec

    .line 4856
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4600(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    .line 4858
    :cond_ec
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto :goto_8d

    .line 4865
    :cond_f3
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_11a

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v1, :cond_103

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v1, :cond_11a

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    if-nez v1, :cond_11a

    .line 4866
    :cond_103
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4600(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    .line 4867
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto/16 :goto_8d

    .line 4868
    :cond_11a
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_8d

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    const-string v2, "@namo.co.kr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 4870
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4600(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    .line 4871
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto/16 :goto_8d

    .line 4878
    :cond_13f
    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->mLoadAttach:Z

    if-eqz v1, :cond_8d

    iget-boolean v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->isAddingAttachment:Z

    if-eqz v1, :cond_8d

    .line 4879
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget-boolean v3, v3, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4600(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Landroid/graphics/Bitmap;Z)V

    .line 4880
    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    goto/16 :goto_8d

    .line 4925
    :cond_15e
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->numDisplayedAttachments:I

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->setAttachmentCount(I)V
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4700(Lcom/android/email/activity/MessageViewFragmentBase;I)V
    :try_end_165
    .catchall {:try_start_bd .. :try_end_165} :catchall_b8

    goto/16 :goto_b0

    .line 4814
    :catch_167
    move-exception v1

    goto/16 :goto_5c
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 4695
    check-cast p1, [Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->onProgressUpdate([Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentTaskReportInfo;)V

    return-void
.end method
