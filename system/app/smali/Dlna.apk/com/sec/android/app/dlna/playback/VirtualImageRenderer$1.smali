.class Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$1;
.super Landroid/os/Handler;
.source "VirtualImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->startRenderer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$1;->this$0:Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 105
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_3e

    .line 130
    :goto_6
    return-void

    .line 107
    :pswitch_7
    const-string v1, "DLNA"

    const-string v2, "(VIR)Slideshow message received"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$1;->this$0:Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;

    #setter for: Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->userRequestedStop:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->access$102(Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;Z)Z

    .line 116
    iget-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$1;->this$0:Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;

    iget-object v1, v1, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v1}, Lcom/sec/android/app/dlna/playback/IRenderer;->getState()I

    move-result v1

    if-ne v1, v3, :cond_27

    .line 117
    iget-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$1;->this$0:Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;

    iget-object v2, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$1;->this$0:Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;

    iget-object v2, v2, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->stateStoped:Lcom/sec/android/app/dlna/playback/IRenderer;

    #calls: Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->switchState(Lcom/sec/android/app/dlna/playback/IRenderer;)V
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->access$200(Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;Lcom/sec/android/app/dlna/playback/IRenderer;)V

    goto :goto_6

    .line 120
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$1;->this$0:Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;

    iget-object v1, v1, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->currentState:Lcom/sec/android/app/dlna/playback/IRenderer;

    invoke-interface {v1}, Lcom/sec/android/app/dlna/playback/IRenderer;->requestStop()V
    :try_end_2e
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_27 .. :try_end_2e} :catch_2f

    goto :goto_6

    .line 123
    :catch_2f
    move-exception v0

    .line 124
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    iget-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$1;->this$0:Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->userRequestedStop:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->access$102(Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;Z)Z

    .line 125
    iget-object v1, p0, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer$1;->this$0:Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;

    const/16 v2, 0x12d

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/dlna/playback/VirtualImageRenderer;->notifyResultToListener(ILcom/samsung/api/DMCAPIException;)V

    goto :goto_6

    .line 105
    :pswitch_data_3e
    .packed-switch 0x64
        :pswitch_7
    .end packed-switch
.end method
