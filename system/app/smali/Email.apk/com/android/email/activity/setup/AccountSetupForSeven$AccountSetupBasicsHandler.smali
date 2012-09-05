.class Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;
.super Landroid/os/Handler;
.source "AccountSetupForSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountSetupBasicsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupForSeven;)V
    .registers 2
    .parameter

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 1043
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_58

    .line 1057
    :cond_5
    :goto_5
    return-void

    .line 1045
    :pswitch_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_31

    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1046
    .local v0, state:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1047
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$600(Lcom/android/email/activity/setup/AccountSetupForSeven;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const v3, 0x7f0801d7

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1048
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$600(Lcom/android/email/activity/setup/AccountSetupForSeven;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_5

    .line 1045
    .end local v0           #state:Ljava/lang/Boolean;
    :cond_31
    const/4 v1, 0x1

    goto :goto_b

    .line 1050
    .restart local v0       #state:Ljava/lang/Boolean;
    :cond_33
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$600(Lcom/android/email/activity/setup/AccountSetupForSeven;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$600(Lcom/android/email/activity/setup/AccountSetupForSeven;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1051
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupForSeven;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$600(Lcom/android/email/activity/setup/AccountSetupForSeven;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1052
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$AccountSetupBasicsHandler;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupForSeven;->removeDialog(I)V

    goto :goto_5

    .line 1043
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
