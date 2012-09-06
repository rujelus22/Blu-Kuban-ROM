.class Lcom/google/android/apps/plus/iu/UploadsManager$2;
.super Landroid/os/Handler;
.source "UploadsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/iu/UploadsManager;->initHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/iu/UploadsManager;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/iu/UploadsManager;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/UploadsManager$2;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "message"

    .prologue
    .line 205
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_80

    .line 243
    :pswitch_5
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 207
    :pswitch_20
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/apps/plus/iu/MediaTracker;

    .line 208
    .local v1, mediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$2;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_2f

    const/4 v2, 0x1

    :goto_2b
    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->sendUploadAllProgressBroadcast(Lcom/google/android/apps/plus/iu/MediaTracker;Z)V
    invoke-static {v3, v1, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$100(Lcom/google/android/apps/plus/iu/UploadsManager;Lcom/google/android/apps/plus/iu/MediaTracker;Z)V

    .line 245
    .end local v1           #mediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    :goto_2e
    return-void

    .line 208
    .restart local v1       #mediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    :cond_2f
    const/4 v2, 0x0

    goto :goto_2b

    .line 212
    .end local v1           #mediaTracker:Lcom/google/android/apps/plus/iu/MediaTracker;
    :pswitch_31
    const/4 v0, 0x0

    .line 213
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/database/Cursor;

    if-eqz v2, :cond_3c

    .line 214
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #cursor:Landroid/database/Cursor;
    check-cast v0, Landroid/database/Cursor;

    .line 216
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_3c
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$2;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->reloadSystemSettingsInternal(Landroid/database/Cursor;)V
    invoke-static {v2, v0}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$200(Lcom/google/android/apps/plus/iu/UploadsManager;Landroid/database/Cursor;)V

    goto :goto_2e

    .line 220
    .end local v0           #cursor:Landroid/database/Cursor;
    :pswitch_42
    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$2;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->cancelTaskInternal(J)V
    invoke-static {v3, v4, v5}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$300(Lcom/google/android/apps/plus/iu/UploadsManager;J)V

    goto :goto_2e

    .line 224
    :pswitch_50
    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$2;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->uploadExistingPhotosInternal(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$400(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)V

    goto :goto_2e

    .line 228
    :pswitch_5a
    iget-object v3, p0, Lcom/google/android/apps/plus/iu/UploadsManager$2;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->cancelUploadExistingPhotosInternal(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$500(Lcom/google/android/apps/plus/iu/UploadsManager;Ljava/lang/String;)V

    goto :goto_2e

    .line 232
    :pswitch_64
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$2;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->onFsIdChangedInternal()V
    invoke-static {v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$000(Lcom/google/android/apps/plus/iu/UploadsManager;)V

    goto :goto_2e

    .line 236
    :pswitch_6a
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 237
    const-string v2, "iu.UploadsManager"

    const-string v3, "Try to reset UploadsManager again!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_7a
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/UploadsManager$2;->this$0:Lcom/google/android/apps/plus/iu/UploadsManager;

    #calls: Lcom/google/android/apps/plus/iu/UploadsManager;->reset()V
    invoke-static {v2}, Lcom/google/android/apps/plus/iu/UploadsManager;->access$600(Lcom/google/android/apps/plus/iu/UploadsManager;)V

    goto :goto_2e

    .line 205
    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_20
        :pswitch_50
        :pswitch_5a
        :pswitch_5
        :pswitch_42
        :pswitch_31
        :pswitch_64
        :pswitch_6a
    .end packed-switch
.end method
