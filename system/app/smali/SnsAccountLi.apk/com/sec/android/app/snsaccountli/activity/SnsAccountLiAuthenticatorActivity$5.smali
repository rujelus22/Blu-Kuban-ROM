.class Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$5;
.super Ljava/lang/Object;
.source "SnsAccountLiAuthenticatorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$5;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 303
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$5;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$800(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 305
    .local v0, currentPosition:I
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$5;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mCheckboxShowPassword:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$900(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 306
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$5;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$800(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x91

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 313
    :goto_21
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$5;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$800(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 314
    return-void

    .line 309
    :cond_2b
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$5;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$800(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_21
.end method
