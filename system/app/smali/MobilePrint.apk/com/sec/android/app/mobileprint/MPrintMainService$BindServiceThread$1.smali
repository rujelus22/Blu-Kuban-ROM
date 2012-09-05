.class Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread$1;
.super Ljava/lang/Object;
.source "MPrintMainService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread;)V
    .registers 2
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-static {p2}, Lcom/sec/print/mobileprint/ISamsungPrintingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/print/mobileprint/ISamsungPrintingService;

    move-result-object v1

    #setter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSPrintService:Lcom/sec/print/mobileprint/ISamsungPrintingService;
    invoke-static {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$402(Lcom/sec/android/app/mobileprint/MPrintMainService;Lcom/sec/print/mobileprint/ISamsungPrintingService;)Lcom/sec/print/mobileprint/ISamsungPrintingService;

    .line 411
    const-string v0, "MobilePrint"

    const-string v1, "MPrintMainService : onServiceConnected - mSAPSPrintService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSPrintService:Lcom/sec/print/mobileprint/ISamsungPrintingService;
    invoke-static {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$402(Lcom/sec/android/app/mobileprint/MPrintMainService;Lcom/sec/print/mobileprint/ISamsungPrintingService;)Lcom/sec/print/mobileprint/ISamsungPrintingService;

    .line 416
    const-string v0, "MobilePrint"

    const-string v1, "MPrintMainService : onServiceDisconnected - mSAPSPrintService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void
.end method
