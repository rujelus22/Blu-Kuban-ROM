.class Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$2;
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
    .line 1859
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$2;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$2;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    invoke-static {p2}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sns/ISnsRequester;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    .line 1864
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$2;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$000(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "initServiceConnection()"

    const-string v2, "request service is connected. onRequestServiceConneceted call back is called"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$2;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->connector:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;
    invoke-static {v0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$100(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->onRequestServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 1866
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$2;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    .line 1870
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$2;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$000(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "initServiceConnection()"

    const-string v2, "request service is disconnected"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    return-void
.end method
