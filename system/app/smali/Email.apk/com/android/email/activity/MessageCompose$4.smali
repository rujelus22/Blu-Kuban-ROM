.class Lcom/android/email/activity/MessageCompose$4;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->resumeDraft(JLcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;

.field final synthetic val$restoreViews:Z


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$4;->this$0:Lcom/android/email/activity/MessageCompose;

    iput-boolean p2, p0, Lcom/android/email/activity/MessageCompose$4;->val$restoreViews:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed()V
    .registers 3

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$4;->this$0:Lcom/android/email/activity/MessageCompose;

    const v1, 0x7f08002f

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 862
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$4;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 863
    return-void
.end method

.method public onMessageLoaded(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V
    .registers 8
    .parameter "message"
    .parameter "body"

    .prologue
    .line 832
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 833
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 834
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 835
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 836
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 837
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    iput-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    .line 839
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$4;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageCompose;->access$302(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 840
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$4;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose$4;->val$restoreViews:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/email/activity/MessageCompose;->processDraftMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    .line 843
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$4;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$4;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    new-instance v4, Lcom/android/email/activity/MessageCompose$4$1;

    invoke-direct {v4, p0}, Lcom/android/email/activity/MessageCompose$4$1;-><init>(Lcom/android/email/activity/MessageCompose$4;)V

    #calls: Lcom/android/email/activity/MessageCompose;->loadAttachments(JLcom/android/emailcommon/provider/Account;Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessageCompose;->access$500(Lcom/android/email/activity/MessageCompose;JLcom/android/emailcommon/provider/Account;Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V

    .line 854
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_46

    .line 855
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$4;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    const/4 v3, 0x0

    #calls: Lcom/android/email/activity/MessageCompose;->loadSourceMessage(JZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->access$600(Lcom/android/email/activity/MessageCompose;JZ)V

    .line 857
    :cond_46
    return-void
.end method
