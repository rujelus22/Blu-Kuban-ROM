.class Lcom/sprint/w/installer/DownloadService$DownloaderThread$2;
.super Ljava/lang/Thread;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/DownloadService$DownloaderThread;->executeDownload(Lorg/apache/http/client/methods/HttpGet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/DownloadService$DownloaderThread;

.field final synthetic val$e:Lcom/sprint/w/installer/DownloadServiceException;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/DownloadService$DownloaderThread;Lcom/sprint/w/installer/DownloadServiceException;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread$2;->this$1:Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    iput-object p2, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread$2;->val$e:Lcom/sprint/w/installer/DownloadServiceException;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 592
    iget-object v0, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread$2;->this$1:Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    iget-boolean v0, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mCanceled:Z

    if-nez v0, :cond_1c

    .line 593
    iget-object v0, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread$2;->this$1:Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    #getter for: Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mFromUrl:Z
    invoke-static {v0}, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->access$200(Lcom/sprint/w/installer/DownloadService$DownloaderThread;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 594
    iget-object v0, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread$2;->this$1:Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    iget-object v0, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    iget-object v1, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread$2;->val$e:Lcom/sprint/w/installer/DownloadServiceException;

    invoke-virtual {v1}, Lcom/sprint/w/installer/DownloadServiceException;->getPsiCode()Lcom/sprint/w/installer/PsiCode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprint/w/installer/psi/PsiContentManager;->notify90X(Lcom/sprint/w/installer/psi/ServicePack;Lcom/sprint/w/installer/PsiCode;)V

    .line 599
    :cond_1c
    :goto_1c
    return-void

    .line 595
    :cond_1d
    iget-object v0, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread$2;->this$1:Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    iget-object v0, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    #getter for: Lcom/sprint/w/installer/DownloadService;->mFromDeliveryReq:Z
    invoke-static {v0}, Lcom/sprint/w/installer/DownloadService;->access$000(Lcom/sprint/w/installer/DownloadService;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 596
    iget-object v0, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread$2;->this$1:Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    iget-object v0, v0, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->this$0:Lcom/sprint/w/installer/DownloadService;

    invoke-virtual {v0}, Lcom/sprint/w/installer/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread$2;->this$1:Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    iget-object v1, v1, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mId:Ljava/lang/String;

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->FAIL_LOSS_DATA:Lcom/sprint/w/installer/DeliveryState;

    iget-object v4, p0, Lcom/sprint/w/installer/DownloadService$DownloaderThread$2;->this$1:Lcom/sprint/w/installer/DownloadService$DownloaderThread;

    iget-object v4, v4, Lcom/sprint/w/installer/DownloadService$DownloaderThread;->mDeliveryRequest:Lcom/sprint/w/installer/delivery/DeliveryRequest;

    iget-object v4, v4, Lcom/sprint/w/installer/delivery/DeliveryRequest;->packID:Ljava/lang/String;

    const/4 v8, 0x1

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-static/range {v0 .. v8}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1c
.end method
