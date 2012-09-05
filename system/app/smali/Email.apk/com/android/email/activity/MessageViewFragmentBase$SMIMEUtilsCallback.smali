.class Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SMIMEUtilsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 2
    .parameter

    .prologue
    .line 11152
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11152
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    return-void
.end method


# virtual methods
.method public attachmentProgress(ZJI)V
    .registers 8
    .parameter "progress"
    .parameter "attachmentId"
    .parameter "dialogType"

    .prologue
    .line 11165
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->attachmentProgress(ZJI)V

    .line 11166
    const-string v0, "SMIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMIMEUtilsCallback::attachmentProgress(), displayr true/false :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11168
    return-void
.end method

.method public displayToast(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 11161
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->displayToast(I)V

    .line 11162
    return-void
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 11171
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->goBackToMessageList()V

    .line 11173
    return-void
.end method

.method public markAsRead(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 11181
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onMarkAsRead(Z)V

    .line 11183
    return-void
.end method

.method public messageChanged()V
    .registers 2

    .prologue
    .line 11176
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHandler:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->messageChanged()V

    .line 11178
    return-void
.end method

.method public setDownloadSmimeAttachment(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 11186
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mDownloadSmimeAttachment:Z
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7602(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z

    .line 11187
    return-void
.end method

.method public updateAttachmentCallback(JZLjava/lang/String;)V
    .registers 6
    .parameter "attachmentId"
    .parameter "b"
    .parameter "attachmentName"

    .prologue
    .line 11155
    sput-wide p1, Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentId:J

    .line 11156
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentSave:Z
    invoke-static {v0, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9102(Lcom/android/email/activity/MessageViewFragmentBase;Z)Z

    .line 11157
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mLoadAttachmentName:Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$9202(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    .line 11158
    return-void
.end method
