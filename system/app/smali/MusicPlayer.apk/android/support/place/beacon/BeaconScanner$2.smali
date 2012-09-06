.class Landroid/support/place/beacon/BeaconScanner$2;
.super Landroid/support/place/beacon/SafeServiceConnection;
.source "BeaconScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/beacon/BeaconScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/place/beacon/BeaconScanner;


# direct methods
.method constructor <init>(Landroid/support/place/beacon/BeaconScanner;)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Landroid/support/place/beacon/BeaconScanner$2;->this$0:Landroid/support/place/beacon/BeaconScanner;

    invoke-direct {p0}, Landroid/support/place/beacon/SafeServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 147
    iget-object v1, p0, Landroid/support/place/beacon/BeaconScanner$2;->this$0:Landroid/support/place/beacon/BeaconScanner;

    invoke-static {p2}, Landroid/support/place/beacon/IBeaconScanner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/place/beacon/IBeaconScanner;

    move-result-object v2

    #setter for: Landroid/support/place/beacon/BeaconScanner;->mBeaconScanner:Landroid/support/place/beacon/IBeaconScanner;
    invoke-static {v1, v2}, Landroid/support/place/beacon/BeaconScanner;->access$102(Landroid/support/place/beacon/BeaconScanner;Landroid/support/place/beacon/IBeaconScanner;)Landroid/support/place/beacon/IBeaconScanner;

    .line 149
    :try_start_9
    iget-object v1, p0, Landroid/support/place/beacon/BeaconScanner$2;->this$0:Landroid/support/place/beacon/BeaconScanner;

    #getter for: Landroid/support/place/beacon/BeaconScanner;->mBeaconScanner:Landroid/support/place/beacon/IBeaconScanner;
    invoke-static {v1}, Landroid/support/place/beacon/BeaconScanner;->access$100(Landroid/support/place/beacon/BeaconScanner;)Landroid/support/place/beacon/IBeaconScanner;

    move-result-object v1

    iget-object v2, p0, Landroid/support/place/beacon/BeaconScanner$2;->this$0:Landroid/support/place/beacon/BeaconScanner;

    #getter for: Landroid/support/place/beacon/BeaconScanner;->mBeaconScannerListener:Landroid/support/place/beacon/IBeaconScannerListener;
    invoke-static {v2}, Landroid/support/place/beacon/BeaconScanner;->access$200(Landroid/support/place/beacon/BeaconScanner;)Landroid/support/place/beacon/IBeaconScannerListener;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/place/beacon/IBeaconScanner;->addListener(Landroid/support/place/beacon/IBeaconScannerListener;)V

    .line 150
    iget-object v1, p0, Landroid/support/place/beacon/BeaconScanner$2;->this$0:Landroid/support/place/beacon/BeaconScanner;

    #calls: Landroid/support/place/beacon/BeaconScanner;->postBeaconScannerChange()V
    invoke-static {v1}, Landroid/support/place/beacon/BeaconScanner;->access$300(Landroid/support/place/beacon/BeaconScanner;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1d} :catch_1e

    .line 154
    :goto_1d
    return-void

    .line 151
    :catch_1e
    move-exception v0

    .line 152
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "aah.BeaconScanner"

    const-string v2, "BeaconScanner service failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 158
    iget-object v0, p0, Landroid/support/place/beacon/BeaconScanner$2;->this$0:Landroid/support/place/beacon/BeaconScanner;

    const/4 v1, 0x0

    #setter for: Landroid/support/place/beacon/BeaconScanner;->mBeaconScanner:Landroid/support/place/beacon/IBeaconScanner;
    invoke-static {v0, v1}, Landroid/support/place/beacon/BeaconScanner;->access$102(Landroid/support/place/beacon/BeaconScanner;Landroid/support/place/beacon/IBeaconScanner;)Landroid/support/place/beacon/IBeaconScanner;

    .line 159
    return-void
.end method
