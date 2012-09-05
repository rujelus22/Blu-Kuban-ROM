.class Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;
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
    .line 313
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 316
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mLoginButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$1100(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 318
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    #setter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mButtonTimer:Ljava/util/Timer;
    invoke-static {v2, v3}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$1202(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 320
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mButtonTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$1200(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Ljava/util/Timer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$EnableLoginButtonTask;

    iget-object v4, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    invoke-direct {v3, v4}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$EnableLoginButtonTask;-><init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 322
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 323
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$1300(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 324
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$900(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 326
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    iget-object v3, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$1300(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mUserName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$002(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    iget-object v3, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$900(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mPassword:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$1402(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mUserName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$000(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_84

    .line 331
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->showDialog(I)V

    .line 363
    :goto_83
    return-void

    .line 332
    :cond_84
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mPassword:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$1400(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_96

    .line 333
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->showDialog(I)V

    goto :goto_83

    .line 335
    :cond_96
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    iget-object v3, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mUserName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$000(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->insertUsernameToDB(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    new-instance v3, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6$1;

    iget-object v4, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$200(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6$1;-><init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;Landroid/content/Context;)V

    #setter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$302(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 347
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$300(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 348
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$300(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    const v4, 0x7f06000e

    invoke-virtual {v3, v4}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$300(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 351
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    #setter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v2, v3}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$402(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 352
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$400(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Ljava/util/Timer;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$StopLoginTask;

    iget-object v4, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    invoke-direct {v3, v4}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$StopLoginTask;-><init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 355
    :try_start_f2
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;
    invoke-static {v2}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$800(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Lcom/sec/android/app/sns/ISnsRequester;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppID:I
    invoke-static {v3}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$600(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)I

    move-result v3

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mUserName:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$000(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;->this$0:Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mPassword:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->access$1400(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/sec/android/app/sns/ISnsRequester;->authLogin(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_f2 .. :try_end_10e} :catch_110

    goto/16 :goto_83

    .line 357
    :catch_110
    move-exception v0

    .line 358
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 359
    const-string v2, "SnsAccountTw"

    const-string v3, "####### mRequester.authLogin() FAILED !!!!! #######"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_83
.end method
