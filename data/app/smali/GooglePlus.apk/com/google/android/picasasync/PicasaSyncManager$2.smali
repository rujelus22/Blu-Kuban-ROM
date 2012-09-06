.class Lcom/google/android/picasasync/PicasaSyncManager$2;
.super Landroid/os/Handler;
.source "PicasaSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/picasasync/PicasaSyncManager;->initSyncHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/picasasync/PicasaSyncManager;


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/PicasaSyncManager;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/picasasync/PicasaSyncManager$2;->this$0:Lcom/google/android/picasasync/PicasaSyncManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_56

    .line 178
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 154
    :pswitch_20
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager$2;->this$0:Lcom/google/android/picasasync/PicasaSyncManager;

    #calls: Lcom/google/android/picasasync/PicasaSyncManager;->setupTaskProviders()V
    invoke-static {v0}, Lcom/google/android/picasasync/PicasaSyncManager;->access$100(Lcom/google/android/picasasync/PicasaSyncManager;)V

    .line 180
    :goto_25
    return-void

    .line 158
    :pswitch_26
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager$2;->this$0:Lcom/google/android/picasasync/PicasaSyncManager;

    #calls: Lcom/google/android/picasasync/PicasaSyncManager;->checkSyncRequests()V
    invoke-static {v0}, Lcom/google/android/picasasync/PicasaSyncManager;->access$200(Lcom/google/android/picasasync/PicasaSyncManager;)V

    goto :goto_25

    .line 162
    :pswitch_2c
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager$2;->this$0:Lcom/google/android/picasasync/PicasaSyncManager;

    #calls: Lcom/google/android/picasasync/PicasaSyncManager;->updateEnvironment()V
    invoke-static {v0}, Lcom/google/android/picasasync/PicasaSyncManager;->access$300(Lcom/google/android/picasasync/PicasaSyncManager;)V

    goto :goto_25

    .line 166
    :pswitch_32
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager$2;->this$0:Lcom/google/android/picasasync/PicasaSyncManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    #calls: Lcom/google/android/picasasync/PicasaSyncManager;->updateBatteryState(Ljava/lang/Boolean;)V
    invoke-static {v1, v0}, Lcom/google/android/picasasync/PicasaSyncManager;->access$400(Lcom/google/android/picasasync/PicasaSyncManager;Ljava/lang/Boolean;)V

    goto :goto_25

    .line 170
    :pswitch_3c
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager$2;->this$0:Lcom/google/android/picasasync/PicasaSyncManager;

    #calls: Lcom/google/android/picasasync/PicasaSyncManager;->updateTasksInternal()V
    invoke-static {v0}, Lcom/google/android/picasasync/PicasaSyncManager;->access$500(Lcom/google/android/picasasync/PicasaSyncManager;)V

    goto :goto_25

    .line 174
    :pswitch_42
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaSyncManager$2;->this$0:Lcom/google/android/picasasync/PicasaSyncManager;

    #getter for: Lcom/google/android/picasasync/PicasaSyncManager;->mSyncHelper:Lcom/google/android/picasasync/PicasaSyncHelper;
    invoke-static {v0}, Lcom/google/android/picasasync/PicasaSyncManager;->access$700(Lcom/google/android/picasasync/PicasaSyncManager;)Lcom/google/android/picasasync/PicasaSyncHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaSyncManager$2;->this$0:Lcom/google/android/picasasync/PicasaSyncManager;

    #getter for: Lcom/google/android/picasasync/PicasaSyncManager;->mFacade:Lcom/google/android/picasasync/PicasaFacade;
    invoke-static {v1}, Lcom/google/android/picasasync/PicasaSyncManager;->access$600(Lcom/google/android/picasasync/PicasaSyncManager;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/picasasync/PicasaSyncHelper;->syncAccounts(Ljava/lang/String;)V

    goto :goto_25

    .line 152
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_26
        :pswitch_2c
        :pswitch_3c
        :pswitch_42
        :pswitch_32
        :pswitch_20
    .end packed-switch
.end method
