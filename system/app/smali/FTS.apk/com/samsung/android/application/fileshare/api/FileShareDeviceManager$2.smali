.class Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$2;
.super Ljava/lang/Object;
.source "FileShareDeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->cancelSession(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

.field private final synthetic val$sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;Lcom/samsung/android/application/fileshare/api/SenderInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$2;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    iput-object p2, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$2;->val$sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    .line 306
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$2;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mDeviceAPI:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;)Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$2;->val$sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    const-string v3, "CANCELED"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->setTransferStatus(Lcom/samsung/android/application/fileshare/api/SenderInfo;Ljava/lang/String;)V
    :try_end_d
    .catch Lcom/samsung/android/application/fileshare/api/FileShareException; {:try_start_0 .. :try_end_d} :catch_e

    .line 314
    :goto_d
    return-void

    .line 311
    :catch_e
    move-exception v0

    .line 312
    .local v0, e:Lcom/samsung/android/application/fileshare/api/FileShareException;
    const-string v1, "[FT]-Stack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cancelSession exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method
