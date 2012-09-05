.class Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$1;
.super Ljava/lang/Object;
.source "AbstractSocialHubSnsConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->initServiceConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)V
    .registers 2
    .parameter

    .prologue
    .line 1833
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$1;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1836
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$1;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    invoke-static {p2}, Lcom/sec/android/app/sns/ISnsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sns/ISnsService;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mService:Lcom/sec/android/app/sns/ISnsService;

    .line 1838
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$1;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$000(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mSvcConnection Service connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :try_start_13
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$1;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$1;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    iget-object v2, v2, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mService:Lcom/sec/android/app/sns/ISnsService;

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$1;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    iget-object v3, v3, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    invoke-interface {v2, v3}, Lcom/sec/android/app/sns/ISnsService;->registerCallback(Lcom/sec/android/app/sns/ISnsRequesterCallback;)I

    move-result v2

    iput v2, v1, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    .line 1843
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$1;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$000(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "initServiceConnection()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service is connected mAppID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$1;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    iget v4, v4, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$1;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->connector:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;
    invoke-static {v1}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$100(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_4e} :catch_4f

    .line 1850
    :goto_4e
    return-void

    .line 1846
    :catch_4f
    move-exception v0

    .line 1848
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4e
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$1;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mService:Lcom/sec/android/app/sns/ISnsService;

    .line 1855
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$1;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$000(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "initServiceConnection()"

    const-string v2, "service is disconnected"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    return-void
.end method
