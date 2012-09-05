.class Lcom/sec/android/app/snsimagecache/SnsImageCacheService$1;
.super Landroid/os/Handler;
.source "SnsImageCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->initMainThreadHandler()V
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
    .line 61
    iput-object p1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$1;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 63
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_28

    .line 80
    :goto_5
    return-void

    .line 66
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$1;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    #getter for: Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mFramework:Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;
    invoke-static {v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->access$100(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;)Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$1;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    #getter for: Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mHttpMgr:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;
    invoke-static {v2}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->access$000(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;)Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->processRequest(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;)Z

    goto :goto_5

    .line 71
    :pswitch_16
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;

    .line 72
    .local v0, response:Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;
    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$1;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheService;

    #getter for: Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mFramework:Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;
    invoke-static {v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->access$100(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;)Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;->processResponse(Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;)V

    goto :goto_5

    .line 63
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_6
        :pswitch_16
    .end packed-switch
.end method
