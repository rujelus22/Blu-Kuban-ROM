.class Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$5;
.super Ljava/lang/Object;
.source "AbstractSocialHubSnsConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->initImageCacheService()V
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
    .line 1997
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$5;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .parameter "arg0"
    .parameter "service"

    .prologue
    .line 2009
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$5;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    invoke-static {p2}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mImageService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    .line 2012
    :try_start_8
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$5;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    iget-object v2, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$5;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    iget-object v2, v2, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mImageService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$5;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mImageCallback:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;
    invoke-static {v3}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$200(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;->registerCallback(Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;)I

    move-result v2

    iput v2, v1, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppImageId:I

    .line 2013
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$5;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$000(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "initImageCacheService()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageCacheService Connected, mAppImageId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$5;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    iget v4, v4, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mAppImageId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$5;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->connector:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;
    invoke-static {v1}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$100(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->onImageServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_45} :catch_46

    .line 2020
    :goto_45
    return-void

    .line 2016
    :catch_46
    move-exception v0

    .line 2018
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_45
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$5;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->mImageService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    .line 2002
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$5;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->connector:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;
    invoke-static {v0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$100(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->onImageServiceDisconnected(Landroid/content/ComponentName;)V

    .line 2003
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector$5;->this$0:Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    #getter for: Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->access$000(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "initImageCacheService()"

    const-string v2, "ImageCacheService Disconnected"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    return-void
.end method
