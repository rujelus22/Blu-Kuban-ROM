.class Lcom/sec/android/socialhub/service/SocialHubSnsHandler$2;
.super Ljava/lang/Object;
.source "SocialHubSnsHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->initiailize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "arg0"
    .parameter "service"

    .prologue
    .line 367
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    invoke-static {p2}, Lcom/sec/android/app/sns/ISnsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sns/ISnsService;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mService:Lcom/sec/android/app/sns/ISnsService;

    .line 371
    :try_start_8
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    iget-object v2, v2, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mService:Lcom/sec/android/app/sns/ISnsService;

    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    iget-object v3, v3, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    invoke-interface {v2, v3}, Lcom/sec/android/app/sns/ISnsService;->registerCallback(Lcom/sec/android/app/sns/ISnsRequesterCallback;)I

    move-result v2

    iput v2, v1, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mAppId:I

    .line 373
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->bIsSvcConnected:Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_2c

    .line 380
    :goto_1d
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    #calls: Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->checkServiceConnection()V
    invoke-static {v1}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->access$000(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;)V

    .line 382
    const-string v1, "SocialHubSnsHandler"

    const-string v2, "onServiceConnected()"

    const-string v3, "mService connected."

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void

    .line 375
    :catch_2c
    move-exception v0

    .line 377
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1d
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mService:Lcom/sec/android/app/sns/ISnsService;

    .line 358
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->bIsSvcConnected:Z

    .line 360
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$2;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    #calls: Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->checkServiceConnection()V
    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->access$000(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;)V

    .line 362
    const-string v0, "SocialHubSnsHandler"

    const-string v1, "onServiceDisconnected()"

    const-string v2, "mService disconnceted."

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method
