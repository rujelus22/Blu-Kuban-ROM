.class Lcom/google/android/picasasync/UploadsManager$2;
.super Landroid/os/Handler;
.source "UploadsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasasync/UploadsManager;->initHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasasync/UploadsManager;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/UploadsManager;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/picasasync/UploadsManager$2;->this$0:Lcom/google/android/picasasync/UploadsManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "message"

    .prologue
    .line 237
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_60

    .line 264
    :pswitch_5
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 239
    :pswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/picasasync/PhotoTracker;

    .line 240
    .local v0, mediaTracker:Lcom/google/android/picasasync/PhotoTracker;
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$2;->this$0:Lcom/google/android/picasasync/UploadsManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-lez v1, :cond_2f

    const/4 v1, 0x1

    :goto_2b
    #calls: Lcom/google/android/picasasync/UploadsManager;->sendUploadAllProgressBroadcast(Lcom/google/android/picasasync/PhotoTracker;Z)V
    invoke-static {v2, v0, v1}, Lcom/google/android/picasasync/UploadsManager;->access$400(Lcom/google/android/picasasync/UploadsManager;Lcom/google/android/picasasync/PhotoTracker;Z)V

    .line 266
    .end local v0           #mediaTracker:Lcom/google/android/picasasync/PhotoTracker;
    :goto_2e
    return-void

    .line 240
    .restart local v0       #mediaTracker:Lcom/google/android/picasasync/PhotoTracker;
    :cond_2f
    const/4 v1, 0x0

    goto :goto_2b

    .line 244
    .end local v0           #mediaTracker:Lcom/google/android/picasasync/PhotoTracker;
    :pswitch_31
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$2;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #calls: Lcom/google/android/picasasync/UploadsManager;->reloadSystemSettingsInternal()V
    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->access$500(Lcom/google/android/picasasync/UploadsManager;)V

    goto :goto_2e

    .line 248
    :pswitch_37
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$2;->this$0:Lcom/google/android/picasasync/UploadsManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    #calls: Lcom/google/android/picasasync/UploadsManager;->cancelTaskInternal(J)V
    invoke-static {v2, v3, v4}, Lcom/google/android/picasasync/UploadsManager;->access$600(Lcom/google/android/picasasync/UploadsManager;J)V

    goto :goto_2e

    .line 252
    :pswitch_45
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$2;->this$0:Lcom/google/android/picasasync/UploadsManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/google/android/picasasync/UploadsManager;->uploadExistingPhotosInternal(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/google/android/picasasync/UploadsManager;->access$700(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)V

    goto :goto_2e

    .line 256
    :pswitch_4f
    iget-object v2, p0, Lcom/google/android/picasasync/UploadsManager$2;->this$0:Lcom/google/android/picasasync/UploadsManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/google/android/picasasync/UploadsManager;->cancelUploadExistingPhotosInternal(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/google/android/picasasync/UploadsManager;->access$800(Lcom/google/android/picasasync/UploadsManager;Ljava/lang/String;)V

    goto :goto_2e

    .line 260
    :pswitch_59
    iget-object v1, p0, Lcom/google/android/picasasync/UploadsManager$2;->this$0:Lcom/google/android/picasasync/UploadsManager;

    #calls: Lcom/google/android/picasasync/UploadsManager;->onFsIdChangedInternal()V
    invoke-static {v1}, Lcom/google/android/picasasync/UploadsManager;->access$300(Lcom/google/android/picasasync/UploadsManager;)V

    goto :goto_2e

    .line 237
    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_20
        :pswitch_45
        :pswitch_4f
        :pswitch_5
        :pswitch_37
        :pswitch_31
        :pswitch_59
    .end packed-switch
.end method
