.class Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;
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

.field final synthetic val$portIn:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;->val$portIn:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter "view"
    .parameter "isChecked"

    .prologue
    .line 316
    if-eqz p2, :cond_42

    .line 317
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iget-boolean v0, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-eqz v0, :cond_22

    const-string v0, "110"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;->val$portIn:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 318
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;->val$portIn:Landroid/widget/EditText;

    const-string v1, "995"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :cond_21
    :goto_21
    return-void

    .line 319
    :cond_22
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iget-boolean v0, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-nez v0, :cond_21

    const-string v0, "143"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;->val$portIn:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 320
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;->val$portIn:Landroid/widget/EditText;

    const-string v1, "993"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21

    .line 323
    :cond_42
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iget-boolean v0, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-eqz v0, :cond_62

    const-string v0, "995"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;->val$portIn:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 324
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;->val$portIn:Landroid/widget/EditText;

    const-string v1, "110"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21

    .line 325
    :cond_62
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iget-boolean v0, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-nez v0, :cond_21

    const-string v0, "993"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;->val$portIn:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 326
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;->val$portIn:Landroid/widget/EditText;

    const-string v1, "143"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21
.end method
