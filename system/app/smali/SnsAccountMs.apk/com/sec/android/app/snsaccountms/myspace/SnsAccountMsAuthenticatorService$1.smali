.class Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$1;
.super Ljava/lang/Object;
.source "SnsAccountMsAuthenticatorService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$1;->this$0:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 123
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$1;->this$0:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;

    invoke-static {p2}, Lcom/sec/android/app/sns/ISnsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sns/ISnsService;

    move-result-object v2

    #setter for: Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mService:Lcom/sec/android/app/sns/ISnsService;
    invoke-static {v1, v2}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->access$002(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;Lcom/sec/android/app/sns/ISnsService;)Lcom/sec/android/app/sns/ISnsService;

    .line 125
    :try_start_9
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$1;->this$0:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;

    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$1;->this$0:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;

    #getter for: Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mService:Lcom/sec/android/app/sns/ISnsService;
    invoke-static {v2}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->access$000(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;)Lcom/sec/android/app/sns/ISnsService;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$1;->this$0:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;

    #getter for: Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;
    invoke-static {v3}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->access$200(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;)Lcom/sec/android/app/sns/ISnsRequesterCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/sns/ISnsService;->registerCallback(Lcom/sec/android/app/sns/ISnsRequesterCallback;)I

    move-result v2

    #setter for: Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mAppID:I
    invoke-static {v1, v2}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->access$102(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;I)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1e} :catch_1f

    .line 132
    :goto_1e
    return-void

    .line 126
    :catch_1f
    move-exception v0

    .line 127
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 128
    const-string v1, "SnsAccountMs"

    const-string v2, "###################### registerCallback FAILED !!!!! #####################"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$1;->this$0:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->mService:Lcom/sec/android/app/sns/ISnsService;
    invoke-static {v0, v1}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->access$002(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;Lcom/sec/android/app/sns/ISnsService;)Lcom/sec/android/app/sns/ISnsService;

    .line 136
    return-void
.end method
