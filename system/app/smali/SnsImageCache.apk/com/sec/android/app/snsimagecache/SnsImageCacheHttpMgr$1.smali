.class Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr$1;
.super Landroid/os/Handler;
.source "SnsImageCacheHttpMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;)V
    .registers 2
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr$1;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 206
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1a

    .line 222
    :goto_5
    return-void

    .line 210
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr$1;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    #calls: Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->invokeHttpSendingThread()V
    invoke-static {v1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->access$000(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;)V

    goto :goto_5

    .line 213
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;

    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;

    .line 214
    .local v0, resp:Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;
    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr$1;->this$0:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    #calls: Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->deliverHttpResponse(Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;)V
    invoke-static {v1, v0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->access$100(Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;Lcom/sec/android/app/snsimagecache/SnsImageCacheResponse;)V

    goto :goto_5

    .line 206
    nop

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
