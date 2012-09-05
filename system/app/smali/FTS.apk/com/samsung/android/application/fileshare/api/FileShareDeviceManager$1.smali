.class Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$1;
.super Ljava/lang/Object;
.source "FileShareDeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->allowFileTransfer(Lcom/samsung/android/application/fileshare/api/SenderInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

.field private final synthetic val$allow:Z

.field private final synthetic val$sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;ZLcom/samsung/android/application/fileshare/api/SenderInfo;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$1;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    iput-boolean p2, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$1;->val$allow:Z

    iput-object p3, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$1;->val$sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    .line 284
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 288
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$1;->val$allow:Z

    if-eqz v1, :cond_1a

    .line 289
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$1;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mDeviceAPI:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;)Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$1;->val$sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    const-string v3, "READY_FOR_TRANSPORT"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->setTransferStatus(Lcom/samsung/android/application/fileshare/api/SenderInfo;Ljava/lang/String;)V

    .line 292
    :goto_11
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$1;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    const/16 v2, 0x1b64

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->notifyEvent(ILjava/lang/Object;)V

    .line 296
    :goto_19
    return-void

    .line 291
    :cond_1a
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$1;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mDeviceAPI:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;)Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$1;->val$sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    const-string v3, "CANCELED"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->setTransferStatus(Lcom/samsung/android/application/fileshare/api/SenderInfo;Ljava/lang/String;)V
    :try_end_27
    .catch Lcom/samsung/android/application/fileshare/api/FileShareException; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_11

    .line 293
    :catch_28
    move-exception v0

    .line 294
    .local v0, e:Lcom/samsung/android/application/fileshare/api/FileShareException;
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$1;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    const/16 v2, 0x270f

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->notifyEvent(ILjava/lang/Object;)V

    goto :goto_19
.end method
