.class Lcom/sec/android/app/mobileprint/MPrintMainService$CancelThread;
.super Ljava/lang/Thread;
.source "MPrintMainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintMainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelThread"
.end annotation


# instance fields
.field private mTransactionID:I

.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintMainService;I)V
    .registers 3
    .parameter
    .parameter "transactionID"

    .prologue
    .line 620
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$CancelThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 621
    iput p2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$CancelThread;->mTransactionID:I

    .line 622
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 626
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$CancelThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSPrintService:Lcom/sec/print/mobileprint/ISamsungPrintingService;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$400(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/print/mobileprint/ISamsungPrintingService;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 628
    :try_start_8
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$CancelThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSPrintService:Lcom/sec/print/mobileprint/ISamsungPrintingService;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$400(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/print/mobileprint/ISamsungPrintingService;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/print/mobileprint/ISamsungPrintingService;->cancel()V

    .line 629
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$CancelThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSPrintService:Lcom/sec/print/mobileprint/ISamsungPrintingService;
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$400(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/print/mobileprint/ISamsungPrintingService;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$CancelThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSCallback:Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$800(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/print/mobileprint/ISamsungPrintingService;->unregisterCallback(Lcom/sec/print/mobileprint/IPrintStatusCallback;)V

    .line 630
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$CancelThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    sget-object v2, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->IDLE:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    #setter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;
    invoke-static {v1, v2}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$702(Lcom/sec/android/app/mobileprint/MPrintMainService;Lcom/sec/android/app/mobileprint/MPrintMainService$Status;)Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    .line 631
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$CancelThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #calls: Lcom/sec/android/app/mobileprint/MPrintMainService;->releaseWakelock()V
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$1000(Lcom/sec/android/app/mobileprint/MPrintMainService;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_2c} :catch_34

    .line 641
    :goto_2c
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$CancelThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$CancelThread;->mTransactionID:I

    #calls: Lcom/sec/android/app/mobileprint/MPrintMainService;->responseCancelCompleted(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$1200(Lcom/sec/android/app/mobileprint/MPrintMainService;I)V

    .line 642
    return-void

    .line 632
    :catch_34
    move-exception v0

    .line 633
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2c

    .line 637
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_39
    const-string v1, "MobilePrint"

    const-string v2, "CancelThread : mSAPSPrintService is not binded!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$CancelThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$CancelThread;->mTransactionID:I

    const/4 v3, 0x0

    #calls: Lcom/sec/android/app/mobileprint/MPrintMainService;->responsePrintError(II)V
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$900(Lcom/sec/android/app/mobileprint/MPrintMainService;II)V

    goto :goto_2c
.end method
