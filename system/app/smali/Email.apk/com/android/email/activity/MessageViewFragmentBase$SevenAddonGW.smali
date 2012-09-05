.class public Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SevenAddonGW"
.end annotation


# instance fields
.field public mMessageView:Lcom/android/email/activity/MessageViewForSeven;

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 3
    .parameter

    .prologue
    .line 11057
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11148
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->SevenViewInstance:Lcom/android/email/activity/MessageViewForSeven;

    if-nez v0, :cond_13

    new-instance v0, Lcom/android/email/activity/MessageViewForSeven;

    invoke-direct {v0}, Lcom/android/email/activity/MessageViewForSeven;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->SevenViewInstance:Lcom/android/email/activity/MessageViewForSeven;

    :goto_10
    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->mMessageView:Lcom/android/email/activity/MessageViewForSeven;

    return-void

    :cond_13
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase;->SevenViewInstance:Lcom/android/email/activity/MessageViewForSeven;

    goto :goto_10
.end method


# virtual methods
.method public doFinishLoadAttachment(J)V
    .registers 5
    .parameter "attachmentId"

    .prologue
    .line 11130
    const-string v0, "MessageViewFragmentBase >>"

    const-string v1, "btl : SevenAddonGW : doFinishLoadAttachment called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11131
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->finishAttachmentDownloadForZ7(J)V

    .line 11135
    return-void
.end method

.method public getAccountId()J
    .registers 3

    .prologue
    .line 11083
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1800(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 11059
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getContoller()Lcom/android/email/Controller;
    .registers 2

    .prologue
    .line 11067
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v0

    return-object v0
.end method

.method public getControllerCallback()Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;
    .registers 2

    .prologue
    .line 11104
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5600(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/ControllerResultUiThreadWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/ControllerResultUiThreadWrapper;->getWrappee()Lcom/android/email/Controller$Result;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$ControllerResults;

    return-object v0
.end method

.method public getHandler()Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    .registers 2

    .prologue
    .line 11099
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 2

    .prologue
    .line 11063
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()J
    .registers 3

    .prologue
    .line 11087
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v0

    return-wide v0
.end method

.method public loadContentFromServer(Z)V
    .registers 3
    .parameter "loadAttachment"

    .prologue
    .line 11124
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->loadContentFromServer(Z)V

    .line 11125
    return-void
.end method

.method public onCancelAttachment(J)V
    .registers 8
    .parameter "attachmentId"

    .prologue
    const/4 v4, 0x0

    .line 11138
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-static {v2, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5500(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    .line 11139
    .local v0, attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v0, :cond_1a

    .line 11140
    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 11141
    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 11142
    iget-object v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    .line 11143
    .local v1, bar:Landroid/widget/ProgressBar;
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 11146
    .end local v1           #bar:Landroid/widget/ProgressBar;
    :cond_1a
    return-void
.end method

.method public reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter "bodyText"
    .parameter "bodyHtml"
    .parameter "loadAttachment"

    .prologue
    .line 11120
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3100(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 11121
    return-void
.end method

.method public setWaitForLoadMessageId(J)V
    .registers 4
    .parameter "id"

    .prologue
    .line 11095
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SevenAddonGW;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mWaitForLoadMessageId:J
    invoke-static {v0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7402(Lcom/android/email/activity/MessageViewFragmentBase;J)J

    .line 11096
    return-void
.end method
