.class Lcom/android/email/activity/MessageCompose$5$1;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$5;->onMessageLoaded(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$5;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$5;)V
    .registers 2
    .parameter

    .prologue
    .line 915
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$5$1;->this$1:Lcom/android/email/activity/MessageCompose$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachmentLoaded([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 11
    .parameter "attachments"

    .prologue
    const/4 v5, 0x1

    .line 918
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$5$1;->this$1:Lcom/android/email/activity/MessageCompose$5;

    iget-object v6, v6, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    iget v6, v6, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_2d

    move v4, v5

    .line 922
    .local v4, supportsSmartForward:Z
    :goto_10
    move-object v0, p1

    .local v0, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_13
    if-ge v2, v3, :cond_2f

    aget-object v1, v0, v2

    .line 923
    .local v1, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v4, :cond_1f

    .line 924
    iget v6, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 926
    :cond_1f
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$5$1;->this$1:Lcom/android/email/activity/MessageCompose$5;

    iget-object v6, v6, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSourceAttachments:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$800(Lcom/android/email/activity/MessageCompose;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 918
    .end local v0           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v1           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #supportsSmartForward:Z
    :cond_2d
    const/4 v4, 0x0

    goto :goto_10

    .line 928
    .restart local v0       #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #supportsSmartForward:Z
    :cond_2f
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$5$1;->this$1:Lcom/android/email/activity/MessageCompose$5;

    iget-object v6, v6, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->isForward()Z
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1000(Lcom/android/email/activity/MessageCompose;)Z

    move-result v6

    if-eqz v6, :cond_67

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$5$1;->this$1:Lcom/android/email/activity/MessageCompose$5;

    iget-boolean v6, v6, Lcom/android/email/activity/MessageCompose$5;->val$restoreViews:Z

    if-eqz v6, :cond_67

    .line 929
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$5$1;->this$1:Lcom/android/email/activity/MessageCompose$5;

    iget-object v6, v6, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$5$1;->this$1:Lcom/android/email/activity/MessageCompose$5;

    iget-object v7, v7, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$5$1;->this$1:Lcom/android/email/activity/MessageCompose$5;

    iget-object v8, v8, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSourceAttachments:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$800(Lcom/android/email/activity/MessageCompose;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v5}, Lcom/android/email/activity/MessageCompose;->processSourceMessageAttachments(Ljava/util/List;Ljava/util/List;Z)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 931
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$5$1;->this$1:Lcom/android/email/activity/MessageCompose$5;

    iget-object v6, v6, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->updateAttachmentUi()V
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1200(Lcom/android/email/activity/MessageCompose;)V

    .line 932
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$5$1;->this$1:Lcom/android/email/activity/MessageCompose$5;

    iget-object v6, v6, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V
    invoke-static {v6, v5}, Lcom/android/email/activity/MessageCompose;->access$000(Lcom/android/email/activity/MessageCompose;Z)V

    .line 935
    :cond_67
    return-void
.end method
