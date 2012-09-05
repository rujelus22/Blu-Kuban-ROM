.class public Lcom/sec/print/mobileprint/printingservice/PrintingService;
.super Landroid/app/Service;
.source "PrintingService.java"


# instance fields
.field private final binder:Lcom/sec/print/mobileprint/ISamsungPrintingService$Stub;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sec/print/mobileprint/IPrintStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field public printJob:Lcom/sec/print/mobileprint/PrintJob;

.field statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/printingservice/PrintingService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 30
    new-instance v0, Lcom/sec/print/mobileprint/printingservice/PrintingService$1;

    invoke-direct {v0, p0}, Lcom/sec/print/mobileprint/printingservice/PrintingService$1;-><init>(Lcom/sec/print/mobileprint/printingservice/PrintingService;)V

    iput-object v0, p0, Lcom/sec/print/mobileprint/printingservice/PrintingService;->binder:Lcom/sec/print/mobileprint/ISamsungPrintingService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/print/mobileprint/printingservice/PrintingService;->binder:Lcom/sec/print/mobileprint/ISamsungPrintingService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 97
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/printingservice/PrintingService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 99
    .local v0, assetMgr:Landroid/content/res/AssetManager;
    new-instance v1, Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    iget-object v2, p0, Lcom/sec/print/mobileprint/printingservice/PrintingService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-direct {v1, v2}, Lcom/sec/print/mobileprint/PrintingStatusMonitor;-><init>(Landroid/os/RemoteCallbackList;)V

    iput-object v1, p0, Lcom/sec/print/mobileprint/printingservice/PrintingService;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    .line 100
    new-instance v1, Lcom/sec/print/mobileprint/PrintJob;

    iget-object v2, p0, Lcom/sec/print/mobileprint/printingservice/PrintingService;->statusMonitor:Lcom/sec/print/mobileprint/PrintingStatusMonitor;

    invoke-direct {v1, v2, v0}, Lcom/sec/print/mobileprint/PrintJob;-><init>(Lcom/sec/print/mobileprint/PrintingStatusMonitor;Landroid/content/res/AssetManager;)V

    iput-object v1, p0, Lcom/sec/print/mobileprint/printingservice/PrintingService;->printJob:Lcom/sec/print/mobileprint/PrintJob;

    .line 101
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 107
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 113
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 125
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .parameter "intent"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
