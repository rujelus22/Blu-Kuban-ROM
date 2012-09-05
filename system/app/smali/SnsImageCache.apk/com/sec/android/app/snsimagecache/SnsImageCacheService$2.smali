.class Lcom/sec/android/app/snsimagecache/SnsImageCacheService$2;
.super Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;
.source "SnsImageCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsimagecache/SnsImageCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;)V
    .registers 2
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$2;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    invoke-direct {p0}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAllImages(I)Z
    .registers 4
    .parameter "appID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$2;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    #getter for: Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mFramework:Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;
    invoke-static {v0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->access$100(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;)Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$2;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    #getter for: Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mHttpMgr:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;
    invoke-static {v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->access$000(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;)Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->abortAllImageReqsByAppID(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;I)Z

    move-result v0

    return v0
.end method

.method public cancelImageByReqId(II)Z
    .registers 5
    .parameter "appID"
    .parameter "reqID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$2;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    #getter for: Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mFramework:Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;
    invoke-static {v0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->access$100(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;)Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$2;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    #getter for: Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mHttpMgr:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;
    invoke-static {v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->access$000(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;)Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->abortImageReqByRequestId(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;II)Z

    move-result v0

    return v0
.end method

.method public getImage(ILjava/lang/String;)I
    .registers 6
    .parameter "appID"
    .parameter "photoURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    if-nez p2, :cond_4

    .line 262
    const/4 v1, -0x1

    .line 265
    :goto_3
    return v1

    .line 264
    :cond_4
    new-instance v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;-><init>(ILjava/lang/String;)V

    .line 265
    .local v0, photoGetBodyReq:Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;
    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$2;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    #getter for: Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mFramework:Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;
    invoke-static {v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->access$100(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;)Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$2;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    #getter for: Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->access$500(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/snsimagecache/SnsImageCacheRequest;->send(Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;Landroid/os/Handler;)I

    move-result v1

    goto :goto_3
.end method

.method public registerCallback(Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;)I
    .registers 4
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 232
    if-eqz p1, :cond_1a

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$2;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    #getter for: Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->access$400(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->access$308()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 238
    invoke-static {}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->access$300()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_19
    return v0

    .line 235
    :cond_1a
    const/4 v0, -0x1

    goto :goto_19
.end method

.method public unregisterCallback(Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    if-eqz p1, :cond_b

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$2;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    #getter for: Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->access$400(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 251
    :cond_b
    return-void
.end method
