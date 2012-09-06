.class Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field private mWaitForLoadMessageId:J

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 2
    .parameter

    .prologue
    .line 1758
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1758
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    return-void
.end method

.method private showAttachmentProgress(JI)V
    .registers 7
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 1843
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-static {v1, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    .line 1844
    .local v0, attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v0, :cond_16

    .line 1845
    if-nez p3, :cond_13

    .line 1846
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$900(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1848
    :cond_13
    invoke-virtual {v0, p3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->showProgress(I)V

    .line 1850
    :cond_16
    return-void
.end method


# virtual methods
.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .registers 20
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 1802
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1300(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v6

    cmp-long v6, p4, v6

    if-nez v6, :cond_16

    .line 1803
    if-nez p1, :cond_2e

    .line 1804
    move-wide/from16 v0, p6

    move/from16 v2, p8

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->showAttachmentProgress(JI)V

    .line 1805
    packed-switch p8, :pswitch_data_7e

    .line 1840
    :cond_16
    :goto_16
    return-void

    .line 1807
    :pswitch_17
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfoFromView(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-static {v6, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3100(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v4

    .line 1809
    .local v4, attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v4, :cond_26

    .line 1810
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->updatePreviewIcon(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    invoke-static {v6, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3200(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    .line 1812
    :cond_26
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->doFinishLoadAttachment(J)V
    invoke-static {v6, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3300(Lcom/android/email/activity/MessageViewFragmentBase;J)V

    goto :goto_16

    .line 1819
    .end local v4           #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_2e
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-wide/from16 v0, p6

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-static {v6, v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3400(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v3

    .line 1820
    .local v3, attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v3, :cond_16

    .line 1825
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$900(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1826
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loadButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$800(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1827
    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->hideProgress()V

    .line 1830
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Ljava/io/IOException;

    if-eqz v6, :cond_69

    .line 1831
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v6, v6, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v7, 0x7f08002e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1837
    .local v5, error:Ljava/lang/String;
    :goto_5f
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onLoadMessageError(Ljava/lang/String;)V

    goto :goto_16

    .line 1833
    .end local v5           #error:Ljava/lang/String;
    :cond_69
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v6, v6, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v7, 0x7f0800a3

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v3, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->mName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #error:Ljava/lang/String;
    goto :goto_5f

    .line 1805
    nop

    :pswitch_data_7e
    .packed-switch 0x64
        :pswitch_17
    .end packed-switch
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .registers 13
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 1768
    iget-wide v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    cmp-long v1, p4, v1

    if-eqz v1, :cond_a

    .line 1797
    :goto_9
    return-void

    .line 1772
    :cond_a
    if-nez p1, :cond_3d

    .line 1773
    sparse-switch p6, :sswitch_data_5a

    goto :goto_9

    .line 1775
    :sswitch_10
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onLoadMessageStarted()V

    .line 1777
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x1

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V
    invoke-static {v1, v3, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2300(Lcom/android/email/activity/MessageViewFragmentBase;ZZ)V

    goto :goto_9

    .line 1780
    :sswitch_20
    iput-wide v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    .line 1781
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onLoadMessageFinished()V

    .line 1784
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->cancelAllTasks()V
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3000(Lcom/android/email/activity/MessageViewFragmentBase;)V

    .line 1785
    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$LoadMessageTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_9

    .line 1792
    :cond_3d
    iput-wide v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    .line 1793
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const v2, 0x7f08002e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1794
    .local v0, error:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mCallback:Lcom/android/email/activity/MessageViewFragmentBase$Callback;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onLoadMessageError(Ljava/lang/String;)V

    .line 1795
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->resetView()V

    goto :goto_9

    .line 1773
    nop

    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_10
        0x64 -> :sswitch_20
    .end sparse-switch
.end method

.method public setWaitForLoadMessageId(J)V
    .registers 3
    .parameter "messageId"

    .prologue
    .line 1762
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;->mWaitForLoadMessageId:J

    .line 1763
    return-void
.end method
