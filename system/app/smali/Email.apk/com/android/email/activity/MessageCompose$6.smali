.class Lcom/android/email/activity/MessageCompose$6;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->loadAttachments(JLcom/android/emailcommon/provider/Account;Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;

.field final synthetic val$callback:Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;JLcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$6;->this$0:Lcom/android/email/activity/MessageCompose;

    iput-wide p3, p0, Lcom/android/email/activity/MessageCompose$6;->val$messageId:J

    iput-object p5, p0, Lcom/android/email/activity/MessageCompose$6;->val$callback:Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1104
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$6;->doInBackground([Ljava/lang/Void;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .registers 5
    .parameter "params"

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$6;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v1, p0, Lcom/android/email/activity/MessageCompose$6;->val$messageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1104
    check-cast p1, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$6;->onSuccess([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method protected onSuccess([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 3
    .parameter "attachments"

    .prologue
    .line 1112
    if-nez p1, :cond_5

    .line 1113
    const/4 v0, 0x0

    new-array p1, v0, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1115
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$6;->val$callback:Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;

    invoke-interface {v0, p1}, Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;->onAttachmentLoaded([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 1116
    return-void
.end method
