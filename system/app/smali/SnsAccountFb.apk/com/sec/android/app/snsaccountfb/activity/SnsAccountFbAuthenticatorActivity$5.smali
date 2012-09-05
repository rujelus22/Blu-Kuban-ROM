.class Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity$5;
.super Ljava/lang/Object;
.source "SnsAccountFbAuthenticatorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity$5;->this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 301
    iget-object v1, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity$5;->this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->access$900(Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 303
    .local v0, currentPosition:I
    iget-object v1, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity$5;->this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->mCheckboxShowPassword:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->access$1000(Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 304
    iget-object v1, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity$5;->this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->access$900(Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x91

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 311
    :goto_21
    iget-object v1, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity$5;->this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->access$900(Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 312
    return-void

    .line 307
    :cond_2b
    iget-object v1, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity$5;->this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->access$900(Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_21
.end method
