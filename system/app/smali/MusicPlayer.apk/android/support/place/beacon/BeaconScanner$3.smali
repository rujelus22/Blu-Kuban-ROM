.class Landroid/support/place/beacon/BeaconScanner$3;
.super Landroid/support/place/beacon/IBeaconScannerListener$Stub;
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
    .line 162
    iput-object p1, p0, Landroid/support/place/beacon/BeaconScanner$3;->this$0:Landroid/support/place/beacon/BeaconScanner;

    invoke-direct {p0}, Landroid/support/place/beacon/IBeaconScannerListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeaconsChanged(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/place/beacon/BeaconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, beacons:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/beacon/BeaconInfo;>;"
    iget-object v0, p0, Landroid/support/place/beacon/BeaconScanner$3;->this$0:Landroid/support/place/beacon/BeaconScanner;

    #calls: Landroid/support/place/beacon/BeaconScanner;->postBeaconScannerChange()V
    invoke-static {v0}, Landroid/support/place/beacon/BeaconScanner;->access$300(Landroid/support/place/beacon/BeaconScanner;)V

    .line 166
    return-void
.end method
