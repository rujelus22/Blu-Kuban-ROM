.class Lcom/android/email/activity/MessageCompose$MessageComposeListener;
.super Lcom/android/email/Controller$Result;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageComposeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .registers 2
    .parameter

    .prologue
    .line 11949
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11949
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$MessageComposeListener;-><init>(Lcom/android/email/activity/MessageCompose;)V

    return-void
.end method


# virtual methods
.method public refreshIRMTemplatesCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 9
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 11954
    if-nez p4, :cond_6

    .line 11980
    :cond_5
    :goto_5
    return-void

    .line 11957
    :cond_6
    const/16 v0, 0x64

    if-ne p4, v0, :cond_4a

    if-nez p1, :cond_4a

    .line 11958
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$12700(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 11959
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$12700(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_3a

    .line 11960
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$12700(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 11961
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageCompose;->access$12702(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 11963
    new-instance v0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 11966
    :cond_3a
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$5800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mControllerResult:Lcom/android/email/Controller$Result;
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$12900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    goto :goto_5

    .line 11967
    :cond_4a
    if-eqz p1, :cond_5

    .line 11968
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$12700(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 11969
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$12700(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_7d

    .line 11970
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$12700(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 11971
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mIrmWait:Landroid/app/ProgressDialog;
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageCompose;->access$12702(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 11972
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1, p1}, Lcom/android/email/MessagingExceptionStrings;->getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 11978
    :cond_7d
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$5800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$MessageComposeListener;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mControllerResult:Lcom/android/email/Controller$Result;
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$12900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    goto/16 :goto_5
.end method
