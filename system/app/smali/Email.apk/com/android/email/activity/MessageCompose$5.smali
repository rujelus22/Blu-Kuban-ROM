.class Lcom/android/email/activity/MessageCompose$5;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->loadSourceMessage(JZ)V
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
    .line 899
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    iput-boolean p2, p0, Lcom/android/email/activity/MessageCompose$5;->val$restoreViews:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed()V
    .registers 3

    .prologue
    .line 957
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose$5;->val$restoreViews:Z

    if-eqz v0, :cond_11

    .line 958
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    const v1, 0x7f08002f

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 959
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->finish()V

    .line 961
    :cond_11
    return-void
.end method

.method public onMessageLoaded(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V
    .registers 9
    .parameter "message"
    .parameter "body"

    .prologue
    const/4 v4, 0x0

    .line 902
    iget-object v1, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 903
    iget-object v1, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 904
    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 905
    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 906
    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 907
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v1, p1}, Lcom/android/email/activity/MessageCompose;->access$702(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 908
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/email/activity/MessageCompose;->mSourceAttachments:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageCompose;->access$802(Lcom/android/email/activity/MessageCompose;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 910
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose$5;->val$restoreViews:Z

    if-eqz v1, :cond_42

    .line 911
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->processSourceMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Account;)V

    .line 912
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    #calls: Lcom/android/email/activity/MessageCompose;->getAccountSignature(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$900(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 915
    :cond_42
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/MessageCompose$5$1;

    invoke-direct {v5, p0}, Lcom/android/email/activity/MessageCompose$5$1;-><init>(Lcom/android/email/activity/MessageCompose$5;)V

    #calls: Lcom/android/email/activity/MessageCompose;->loadAttachments(JLcom/android/emailcommon/provider/Account;Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/email/activity/MessageCompose;->access$500(Lcom/android/email/activity/MessageCompose;JLcom/android/emailcommon/provider/Account;Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V

    .line 938
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$1300(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.email.intent.action.EDIT_DRAFT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 941
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageCompose;->inferAction()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, inferredAction:Ljava/lang/String;
    if-eqz v0, :cond_70

    .line 943
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->setAction(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/email/activity/MessageCompose;->access$1400(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V

    .line 950
    .end local v0           #inferredAction:Ljava/lang/String;
    :goto_6f
    return-void

    .line 949
    :cond_70
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$5;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->updateActionSelector()V
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$1500(Lcom/android/email/activity/MessageCompose;)V

    goto :goto_6f
.end method
