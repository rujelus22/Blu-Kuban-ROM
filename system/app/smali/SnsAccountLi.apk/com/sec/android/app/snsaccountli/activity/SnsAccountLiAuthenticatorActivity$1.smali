.class Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;
.super Ljava/lang/Object;
.source "SnsAccountLiAuthenticatorActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;
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
.field final synthetic this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

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
    .line 140
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 141
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 142
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v2, result:Landroid/os/Bundle;
    const-string v3, "authAccount"

    iget-object v4, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mUserName:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$000(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v3, "accountType"

    const-string v4, "com.sec.android.app.snsaccountlinkedin.account_type"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v3, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_7c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_4b

    .line 152
    iget-object v3, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mbViaAccountAndSync:Z
    invoke-static {v3}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$100(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 156
    iget-object v3, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->finish()V

    .line 160
    :goto_32
    iget-object v3, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$200(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 161
    iget-object v3, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v3}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$300(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 163
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #result:Landroid/os/Bundle;
    :goto_44
    return-void

    .line 158
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v2       #result:Landroid/os/Bundle;
    :cond_45
    iget-object v3, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->finish()V

    goto :goto_32

    .line 147
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #result:Landroid/os/Bundle;
    :catch_4b
    move-exception v1

    .line 148
    .local v1, e:Ljava/lang/Exception;
    :try_start_4c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    const-string v3, "SnsAccountLi"

    const-string v4, "####### AccountManagerCallback : run FAILED !!!!! #######"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_7c

    .line 152
    iget-object v3, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mbViaAccountAndSync:Z
    invoke-static {v3}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$100(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 156
    iget-object v3, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->finish()V

    .line 160
    :goto_63
    iget-object v3, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$200(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 161
    iget-object v3, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v3}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$300(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    goto :goto_44

    .line 158
    :cond_76
    iget-object v3, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->finish()V

    goto :goto_63

    .line 152
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_7c
    move-exception v3

    iget-object v4, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mbViaAccountAndSync:Z
    invoke-static {v4}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$100(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 156
    iget-object v4, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->finish()V

    .line 160
    :goto_8a
    iget-object v4, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$200(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 161
    iget-object v4, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v4}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->access$300(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    throw v3

    .line 158
    :cond_9d
    iget-object v4, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;->this$0:Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->finish()V

    goto :goto_8a
.end method
