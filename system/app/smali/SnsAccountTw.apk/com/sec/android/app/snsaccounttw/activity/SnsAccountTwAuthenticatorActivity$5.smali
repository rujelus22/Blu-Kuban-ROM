.class Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$5;
.super Ljava/lang/Object;
.source "SnsAccountTwAuthenticatorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$5;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 299
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$5;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$900(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 301
    .local v0, currentPosition:I
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$5;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mCheckboxShowPassword:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$1000(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 302
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$5;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$900(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x91

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 309
    :goto_21
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$5;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$900(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 310
    return-void

    .line 305
    :cond_2b
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$5;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$900(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_21
.end method
