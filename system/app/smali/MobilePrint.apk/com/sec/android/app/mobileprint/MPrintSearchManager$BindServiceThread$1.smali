.class Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread$1;
.super Ljava/lang/Object;
.source "MPrintSearchManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread;)V
    .registers 2
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    invoke-static {p2}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    move-result-object v1

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    invoke-static {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$202(Lcom/sec/android/app/mobileprint/MPrintSearchManager;Lcom/sec/print/mobileprint/dm/IDeviceManagerService;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    .line 210
    const-string v0, "MobilePrint"

    const-string v1, "MPrintSearchManager : onServiceConnected - mSAPSDeviceManagerService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    invoke-static {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$202(Lcom/sec/android/app/mobileprint/MPrintSearchManager;Lcom/sec/print/mobileprint/dm/IDeviceManagerService;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    .line 215
    const-string v0, "MobilePrint"

    const-string v1, "MPrintSearchManager : onServiceDisconnected - mSAPSDeviceManagerService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method
