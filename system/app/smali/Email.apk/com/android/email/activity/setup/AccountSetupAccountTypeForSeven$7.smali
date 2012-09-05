.class Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;
.super Ljava/lang/Object;
.source "AccountSetupAccountTypeForSeven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .registers 2
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->addAccountForSeven()Z
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$100(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 727
    :cond_8
    :goto_8
    return-void

    .line 721
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    #getter for: Lcom/seven/Z7/app/Z7AppBaseActivity;->activeToken:I
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$800(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 723
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$900(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    .line 724
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->accountEMail:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$500(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mDuplicateAccountName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$402(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;)Ljava/lang/String;

    .line 725
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showDialog(I)V

    goto :goto_8
.end method
