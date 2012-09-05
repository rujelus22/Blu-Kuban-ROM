.class Lcom/sec/android/socialhub/service/SocialHubServiceConnector$2;
.super Ljava/lang/Object;
.source "SocialHubServiceConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->initService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/service/SocialHubServiceConnector;)V
    .registers 2
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "arg0"
    .parameter "service"

    .prologue
    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    invoke-static {p2}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    .line 437
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    iget-object v2, v2, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    iget-object v3, v3, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mCallback:Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;

    invoke-interface {v2, v3}, Lcom/sec/android/socialhub/service/aidl/ISocialHubService;->registerCallback(Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback;)I

    move-result v2

    iput v2, v1, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mCallbackID:I

    .line 438
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    iget-object v1, v1, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.socialhub.action.service_connected"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_30

    .line 445
    :goto_26
    const-string v1, "SocialHubServiceConnector"

    const-string v2, "onServiceConnected()"

    const-string v3, "Service is connected!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void

    .line 440
    :catch_30
    move-exception v0

    .line 442
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_26
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mService:Lcom/sec/android/socialhub/service/aidl/ISocialHubService;

    .line 428
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    iget-object v0, v0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.socialhub.action.service_disconnected"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 429
    const-string v0, "SocialHubServiceConnector"

    const-string v1, "onServiceDisconnected()"

    const-string v2, "Service is disconnected!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-void
.end method
