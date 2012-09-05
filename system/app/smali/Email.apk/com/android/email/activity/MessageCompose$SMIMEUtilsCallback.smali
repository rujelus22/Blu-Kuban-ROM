.class Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SMIMEUtilsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .registers 2
    .parameter

    .prologue
    .line 13310
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13310
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;-><init>(Lcom/android/email/activity/MessageCompose;)V

    return-void
.end method


# virtual methods
.method public attachmentProgress(ZJI)V
    .registers 6
    .parameter "progress"
    .parameter "attachmentId"
    .parameter "dialogType"

    .prologue
    .line 13349
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageCompose;->attachmentProgress(Z)V

    .line 13350
    return-void
.end method

.method public displayToast(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 13321
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageCompose;->displayToast(I)V

    .line 13322
    return-void
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 13330
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 13331
    return-void
.end method

.method public markAsRead(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 13340
    return-void
.end method

.method public messageChanged()V
    .registers 2

    .prologue
    .line 13335
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->messageChanged()V

    .line 13336
    return-void
.end method

.method public setDownloadSmimeAttachment(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 13344
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageCompose;->access$9702(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 13345
    return-void
.end method

.method public updateAttachmentCallback(JZLjava/lang/String;)V
    .registers 6
    .parameter "attachmentId"
    .parameter "b"
    .parameter "attachmentName"

    .prologue
    .line 13314
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mLoadAttachmentId:J
    invoke-static {v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->access$13702(Lcom/android/email/activity/MessageCompose;J)J

    .line 13315
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mLoadAttachmentSave:Z
    invoke-static {v0, p3}, Lcom/android/email/activity/MessageCompose;->access$13802(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 13316
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SMIMEUtilsCallback;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mLoadAttachmentName:Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/android/email/activity/MessageCompose;->access$13902(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 13317
    return-void
.end method
