.class Lcom/android/email/activity/MessageCompose$4$1;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$4;->onMessageLoaded(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$4;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$4;)V
    .registers 2
    .parameter

    .prologue
    .line 843
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$4$1;->this$1:Lcom/android/email/activity/MessageCompose$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachmentLoaded([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 7
    .parameter "attachments"

    .prologue
    .line 846
    move-object v0, p1

    .local v0, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_11

    aget-object v1, v0, v2

    .line 847
    .local v1, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$4$1;->this$1:Lcom/android/email/activity/MessageCompose$4;

    iget-object v4, v4, Lcom/android/email/activity/MessageCompose$4;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    invoke-static {v4, v1}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 846
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 849
    .end local v1           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_11
    return-void
.end method
