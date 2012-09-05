.class Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;
.super Ljava/lang/Object;
.source "TransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/application/fileshare/device/TransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionInfo"
.end annotation


# instance fields
.field mSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

.field mSessionID:Ljava/lang/String;

.field mTransferStatus:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/application/fileshare/device/TransferService;


# direct methods
.method constructor <init>(Lcom/samsung/android/application/fileshare/device/TransferService;Ljava/lang/String;Lcom/samsung/android/application/fileshare/api/SenderInfo;)V
    .registers 5
    .parameter
    .parameter "sessionID"
    .parameter "sender"

    .prologue
    .line 583
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 597
    const-string v0, "TRANSPORTING"

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mTransferStatus:Ljava/lang/String;

    .line 598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    .line 584
    iput-object p2, p0, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mSessionID:Ljava/lang/String;

    .line 585
    const-string v0, "TRANSPORTING"

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mTransferStatus:Ljava/lang/String;

    .line 586
    iput-object p3, p0, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    .line 587
    return-void
.end method
