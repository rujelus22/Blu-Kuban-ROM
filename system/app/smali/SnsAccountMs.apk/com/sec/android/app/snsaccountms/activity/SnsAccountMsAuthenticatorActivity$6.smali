.class Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;
.super Ljava/lang/Object;
.source "SnsAccountMsAuthenticatorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 318
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mLoginButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$1100(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 320
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    #setter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mButtonTimer:Ljava/util/Timer;
    invoke-static {v2, v3}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$1202(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 322
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mButtonTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$1200(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Ljava/util/Timer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$EnableLoginButtonTask;

    iget-object v4, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    invoke-direct {v3, v4}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$EnableLoginButtonTask;-><init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 324
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 325
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$1300(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 326
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$900(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 328
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    iget-object v3, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$1300(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mUserName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$002(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    iget-object v3, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$900(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mPassword:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$1402(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mUserName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$000(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_83

    .line 333
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->showDialog(I)V

    .line 365
    :goto_82
    return-void

    .line 334
    :cond_83
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mPassword:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$1400(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_96

    .line 335
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->showDialog(I)V

    goto :goto_82

    .line 337
    :cond_96
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    iget-object v3, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mUserName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$000(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->insertUsernameToDB(Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    new-instance v3, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6$1;

    iget-object v4, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$200(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6$1;-><init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;Landroid/content/Context;)V

    #setter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$302(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 349
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$300(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 350
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$300(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    const v4, 0x7f06000e

    invoke-virtual {v3, v4}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$300(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 353
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    #setter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v2, v3}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$402(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 354
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$400(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Ljava/util/Timer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$StopLoginTask;

    iget-object v4, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    invoke-direct {v3, v4}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$StopLoginTask;-><init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 357
    :try_start_f2
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;
    invoke-static {v2}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$800(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Lcom/sec/android/app/sns/ISnsRequester;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppID:I
    invoke-static {v3}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$600(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)I

    move-result v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mUserName:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$000(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mPassword:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$1400(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/sec/android/app/sns/ISnsRequester;->authLogin(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_f2 .. :try_end_10e} :catch_110

    goto/16 :goto_82

    .line 359
    :catch_110
    move-exception v0

    .line 360
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 361
    const-string v2, "SnsAccountMs"

    const-string v3, "####### mRequester.authLogin() FAILED !!!!! #######"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_82
.end method
