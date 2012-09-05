.class Lcom/sec/print/mobileprint/printingservice/PrintingService$1;
.super Lcom/sec/print/mobileprint/ISamsungPrintingService$Stub;
.source "PrintingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/printingservice/PrintingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/print/mobileprint/printingservice/PrintingService;


# direct methods
.method constructor <init>(Lcom/sec/print/mobileprint/printingservice/PrintingService;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sec/print/mobileprint/printingservice/PrintingService$1;->this$0:Lcom/sec/print/mobileprint/printingservice/PrintingService;

    invoke-direct {p0}, Lcom/sec/print/mobileprint/ISamsungPrintingService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    const-string v0, "cancel"

    invoke-static {p0, v0}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/sec/print/mobileprint/printingservice/PrintingService$1;->this$0:Lcom/sec/print/mobileprint/printingservice/PrintingService;

    iget-object v0, v0, Lcom/sec/print/mobileprint/printingservice/PrintingService;->printJob:Lcom/sec/print/mobileprint/PrintJob;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/PrintJob;->cancel()V

    .line 37
    return-void
.end method

.method public print(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;Lcom/sec/print/mobileprint/pagedata/DocSetInterface;Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;)V
    .registers 7
    .parameter "printOptions"
    .parameter "docs"
    .parameter "printerInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/print/mobileprint/printingservice/PrintingService$1;->this$0:Lcom/sec/print/mobileprint/printingservice/PrintingService;

    iget-object v0, v0, Lcom/sec/print/mobileprint/printingservice/PrintingService;->printJob:Lcom/sec/print/mobileprint/PrintJob;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/PrintJob;->isProcessing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 46
    iget-object v0, p0, Lcom/sec/print/mobileprint/printingservice/PrintingService$1;->this$0:Lcom/sec/print/mobileprint/printingservice/PrintingService;

    iget-object v0, v0, Lcom/sec/print/mobileprint/printingservice/PrintingService;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    sget-object v1, Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;->PRINTING_STATUSTYPE_ERROR:Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/sec/print/mobileprint/PrintingStatusMonitor;->Notify(Lcom/sec/print/mobileprint/PrintingStatusMonitor$EnumPrintingStatusType;I)V

    .line 52
    :goto_15
    return-void

    .line 51
    :cond_16
    iget-object v0, p0, Lcom/sec/print/mobileprint/printingservice/PrintingService$1;->this$0:Lcom/sec/print/mobileprint/printingservice/PrintingService;

    iget-object v0, v0, Lcom/sec/print/mobileprint/printingservice/PrintingService;->printJob:Lcom/sec/print/mobileprint/PrintJob;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/print/mobileprint/PrintJob;->print(Lcom/sec/print/mobileprint/printoptionattribute/PrintOptionAttributeSet;Lcom/sec/print/mobileprint/pagedata/DocSetInterface;Lcom/sec/print/mobileprint/printerinfo/PrinterInfo;)V

    goto :goto_15
.end method

.method public registerCallback(Lcom/sec/print/mobileprint/IPrintStatusCallback;)V
    .registers 3
    .parameter "callbackStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_7

    .line 66
    const-string v0, "ERROR : callbackStatus is null in RegisterCallback"

    invoke-static {p0, v0}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    :cond_7
    iget-object v0, p0, Lcom/sec/print/mobileprint/printingservice/PrintingService$1;->this$0:Lcom/sec/print/mobileprint/printingservice/PrintingService;

    iget-object v0, v0, Lcom/sec/print/mobileprint/printingservice/PrintingService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 70
    return-void
.end method

.method public unregisterCallback(Lcom/sec/print/mobileprint/IPrintStatusCallback;)V
    .registers 3
    .parameter "callbackStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    if-nez p1, :cond_7

    .line 84
    const-string v0, "ERROR : callbackStatus is null in UnregisterCallback"

    invoke-static {p0, v0}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    :cond_7
    iget-object v0, p0, Lcom/sec/print/mobileprint/printingservice/PrintingService$1;->this$0:Lcom/sec/print/mobileprint/printingservice/PrintingService;

    iget-object v0, v0, Lcom/sec/print/mobileprint/printingservice/PrintingService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 88
    return-void
.end method
