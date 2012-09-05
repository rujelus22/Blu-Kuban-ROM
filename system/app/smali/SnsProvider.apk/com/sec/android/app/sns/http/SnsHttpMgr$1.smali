.class Lcom/sec/android/app/sns/http/SnsHttpMgr$1;
.super Landroid/os/Handler;
.source "SnsHttpMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sns/http/SnsHttpMgr;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sns/http/SnsHttpMgr;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sns/http/SnsHttpMgr;)V
    .registers 2
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr$1;->this$0:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 280
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_2a

    .line 302
    :goto_5
    return-void

    .line 284
    :sswitch_6
    iget-object v2, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr$1;->this$0:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    #calls: Lcom/sec/android/app/sns/http/SnsHttpMgr;->invokeHttpSendingThread()V
    invoke-static {v2}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->access$000(Lcom/sec/android/app/sns/http/SnsHttpMgr;)V

    goto :goto_5

    .line 287
    :sswitch_c
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sns/response/data/SnsResponse;

    move-object v1, v2

    check-cast v1, Lcom/sec/android/app/sns/response/data/SnsResponse;

    .line 288
    .local v1, resp:Lcom/sec/android/app/sns/response/data/SnsResponse;
    iget-object v2, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr$1;->this$0:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    #calls: Lcom/sec/android/app/sns/http/SnsHttpMgr;->deliverHttpResponse(Lcom/sec/android/app/sns/response/data/SnsResponse;)V
    invoke-static {v2, v1}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->access$100(Lcom/sec/android/app/sns/http/SnsHttpMgr;Lcom/sec/android/app/sns/response/data/SnsResponse;)V

    goto :goto_5

    .line 293
    .end local v1           #resp:Lcom/sec/android/app/sns/response/data/SnsResponse;
    :sswitch_19
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 294
    .local v0, reqID:I
    iget-object v2, p0, Lcom/sec/android/app/sns/http/SnsHttpMgr$1;->this$0:Lcom/sec/android/app/sns/http/SnsHttpMgr;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->abortRequest(I)V

    goto :goto_5

    .line 280
    nop

    :sswitch_data_2a
    .sparse-switch
        0x6 -> :sswitch_6
        0x7 -> :sswitch_c
        0xc -> :sswitch_19
    .end sparse-switch
.end method
