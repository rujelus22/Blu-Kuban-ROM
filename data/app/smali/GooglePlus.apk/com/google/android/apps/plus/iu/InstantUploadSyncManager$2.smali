.class Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$2;
.super Landroid/os/Handler;
.source "InstantUploadSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->initSyncHandler(Landroid/os/HandlerThread;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$2;->this$0:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "message"

    .prologue
    .line 133
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_66

    .line 160
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

    .line 135
    :pswitch_20
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$2;->this$0:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    #calls: Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->setupTaskProviders()V
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->access$100(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;)V

    .line 162
    :goto_25
    return-void

    .line 139
    :pswitch_26
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$2;->this$0:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    #calls: Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->updateEnvironment()V
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->access$200(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;)V

    goto :goto_25

    .line 143
    :pswitch_2c
    iget-object v2, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$2;->this$0:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    #calls: Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->updateBatteryState(Ljava/lang/Boolean;)V
    invoke-static {v2, v1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->access$300(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;Ljava/lang/Boolean;)V

    goto :goto_25

    .line 147
    :pswitch_36
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$2;->this$0:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    #calls: Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->updateTasksInternal()V
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->access$400(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;)V

    goto :goto_25

    .line 152
    :pswitch_3c
    :try_start_3c
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$2;->this$0:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    #getter for: Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->mSyncHelper:Lcom/google/android/apps/plus/iu/PicasaSyncHelper;
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->access$500(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;)Lcom/google/android/apps/plus/iu/PicasaSyncHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/iu/PicasaSyncHelper;->syncAccounts()V

    .line 153
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager$2;->this$0:Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    #calls: Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->verifySyncAccountSetting()V
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->access$600(Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4a} :catch_4b

    goto :goto_25

    .line 154
    :catch_4b
    move-exception v0

    .line 155
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "InstantUploadSyncMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_UPDATE_PICASA_ACCOUNTS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 133
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_20
        :pswitch_26
        :pswitch_36
        :pswitch_3c
        :pswitch_2c
    .end packed-switch
.end method
