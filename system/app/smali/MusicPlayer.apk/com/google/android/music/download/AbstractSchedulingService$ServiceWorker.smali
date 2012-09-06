.class final Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;
.super Lcom/google/android/music/Worker;
.source "AbstractSchedulingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/download/AbstractSchedulingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/download/AbstractSchedulingService;


# direct methods
.method public constructor <init>(Lcom/google/android/music/download/AbstractSchedulingService;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "name"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;->this$0:Lcom/google/android/music/download/AbstractSchedulingService;

    .line 109
    invoke-direct {p0, p2}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    .line 110
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;->this$0:Lcom/google/android/music/download/AbstractSchedulingService;

    #getter for: Lcom/google/android/music/download/AbstractSchedulingService;->LOGV:Z
    invoke-static {v0}, Lcom/google/android/music/download/AbstractSchedulingService;->access$400(Lcom/google/android/music/download/AbstractSchedulingService;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 115
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;->this$0:Lcom/google/android/music/download/AbstractSchedulingService;

    #getter for: Lcom/google/android/music/download/AbstractSchedulingService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/download/AbstractSchedulingService;->access$500(Lcom/google/android/music/download/AbstractSchedulingService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: msg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_24
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_56

    .line 134
    :cond_29
    :goto_29
    return-void

    .line 120
    :pswitch_2a
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;->this$0:Lcom/google/android/music/download/AbstractSchedulingService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/google/android/music/download/AbstractSchedulingService;->mStartId:I
    invoke-static {v0, v1}, Lcom/google/android/music/download/AbstractSchedulingService;->access$602(Lcom/google/android/music/download/AbstractSchedulingService;I)I

    .line 121
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;->this$0:Lcom/google/android/music/download/AbstractSchedulingService;

    #getter for: Lcom/google/android/music/download/AbstractSchedulingService;->mState:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;
    invoke-static {v0}, Lcom/google/android/music/download/AbstractSchedulingService;->access$700(Lcom/google/android/music/download/AbstractSchedulingService;)Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;->INITIALIZED:Lcom/google/android/music/download/AbstractSchedulingService$ServiceState;

    if-ne v0, v1, :cond_29

    .line 122
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;->this$0:Lcom/google/android/music/download/AbstractSchedulingService;

    #calls: Lcom/google/android/music/download/AbstractSchedulingService;->handleScheduleDownloads()Z
    invoke-static {v0}, Lcom/google/android/music/download/AbstractSchedulingService;->access$800(Lcom/google/android/music/download/AbstractSchedulingService;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 123
    iget-object v0, p0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;->this$0:Lcom/google/android/music/download/AbstractSchedulingService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/download/AbstractSchedulingService;->stopSelf(I)V

    goto :goto_29

    .line 131
    :pswitch_4b
    iget-object v1, p0, Lcom/google/android/music/download/AbstractSchedulingService$ServiceWorker;->this$0:Lcom/google/android/music/download/AbstractSchedulingService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/music/download/DownloadProgress;

    #calls: Lcom/google/android/music/download/AbstractSchedulingService;->handleProgress(Lcom/google/android/music/download/DownloadProgress;)V
    invoke-static {v1, v0}, Lcom/google/android/music/download/AbstractSchedulingService;->access$900(Lcom/google/android/music/download/AbstractSchedulingService;Lcom/google/android/music/download/DownloadProgress;)V

    goto :goto_29

    .line 118
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_4b
    .end packed-switch
.end method
