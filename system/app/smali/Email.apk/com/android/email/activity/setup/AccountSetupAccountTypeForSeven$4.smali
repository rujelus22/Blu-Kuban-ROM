.class Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$4;
.super Ljava/lang/Object;
.source "AccountSetupAccountTypeForSeven.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->initCurrentStage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

.field final synthetic val$password:Landroid/widget/EditText;

.field final synthetic val$username:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$4;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$4;->val$username:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$4;->val$password:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 8
    .parameter "view"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 395
    if-eqz p2, :cond_32

    .line 396
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$4;->val$username:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$4;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iget-object v3, v3, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v4, "username"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$4;->val$password:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$4;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iget-object v3, v3, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v4, "password"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 404
    :goto_22
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$4;->val$username:Landroid/widget/EditText;

    if-nez p2, :cond_41

    move v0, v1

    :goto_27
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 405
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$4;->val$password:Landroid/widget/EditText;

    if-nez p2, :cond_43

    :goto_2e
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 406
    return-void

    .line 401
    :cond_32
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$4;->val$username:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$4;->val$password:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22

    :cond_41
    move v0, v2

    .line 404
    goto :goto_27

    :cond_43
    move v1, v2

    .line 405
    goto :goto_2e
.end method
