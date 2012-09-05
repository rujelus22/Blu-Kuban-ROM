.class Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;
.super Ljava/lang/Object;
.source "SnsAccountMsAuthenticatorActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 140
    :try_start_1
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 141
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mUserName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$000(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "accountType"

    const-string v2, "com.sec.android.app.snsaccountmyspace.account_type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_97
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_59

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mbViaAccountAndSync:Z
    invoke-static {v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$100(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 153
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$200(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    invoke-virtual {v1, v0, v4}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 158
    :goto_40
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$300(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$400(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 161
    :goto_52
    return-void

    .line 156
    :cond_53
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->finish()V

    goto :goto_40

    .line 147
    :catch_59
    move-exception v0

    .line 148
    :try_start_5a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    const-string v0, "SnsAccountMs"

    const-string v1, "####### AccountManagerCallback : run FAILED !!!!! #######"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_97

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mbViaAccountAndSync:Z
    invoke-static {v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$100(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 153
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$200(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    invoke-virtual {v1, v0, v4}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 158
    :goto_7e
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$300(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$400(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_52

    .line 156
    :cond_91
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->finish()V

    goto :goto_7e

    .line 152
    :catchall_97
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mbViaAccountAndSync:Z
    invoke-static {v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$100(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 153
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$200(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsSyncSetupActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    invoke-virtual {v2, v1, v4}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 158
    :goto_b2
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$300(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->access$400(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    throw v0

    .line 156
    :cond_c5
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->finish()V

    goto :goto_b2
.end method
