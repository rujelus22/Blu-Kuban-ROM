.class Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator$1;
.super Ljava/lang/Thread;
.source "SnsAccountTwAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator$1;->this$1:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 227
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator$1;->this$1:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator;

    iget-object v1, v1, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator;->this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;

    #getter for: Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;
    invoke-static {v1}, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;->access$300(Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;)Lcom/sec/android/app/sns/ISnsRequester;

    move-result-object v1

    if-nez v1, :cond_12

    .line 229
    const-wide/16 v1, 0x64

    :try_start_c
    invoke-static {v1, v2}, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator$1;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_0

    .line 230
    :catch_10
    move-exception v1

    goto :goto_0

    .line 235
    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator$1;->this$1:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator;

    iget-object v1, v1, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator;->this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;

    #getter for: Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;
    invoke-static {v1}, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;->access$300(Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;)Lcom/sec/android/app/sns/ISnsRequester;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator$1;->this$1:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator;

    iget-object v2, v2, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator;->this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;

    #getter for: Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;->mAppID:I
    invoke-static {v2}, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;->access$100(Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sns/ISnsRequester;->authLogout(II)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_26} :catch_27

    .line 241
    :goto_26
    return-void

    .line 236
    :catch_27
    move-exception v0

    .line 237
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 238
    const-string v1, "SnsAccountTw"

    const-string v2, "####### mRequester.authLogin() FAILED !!!!! #######"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method
