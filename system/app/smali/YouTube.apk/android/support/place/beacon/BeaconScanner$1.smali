.class Landroid/support/place/beacon/BeaconScanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/place/beacon/BeaconScanner;

.field final synthetic val$beacons:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/support/place/beacon/BeaconScanner;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Landroid/support/place/beacon/BeaconScanner$1;->this$0:Landroid/support/place/beacon/BeaconScanner;

    iput-object p2, p0, Landroid/support/place/beacon/BeaconScanner$1;->val$beacons:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/place/beacon/BeaconScanner$1;->this$0:Landroid/support/place/beacon/BeaconScanner;

    #getter for: Landroid/support/place/beacon/BeaconScanner;->mListener:Landroid/support/place/beacon/BeaconScanner$Listener;
    invoke-static {v0}, Landroid/support/place/beacon/BeaconScanner;->access$000(Landroid/support/place/beacon/BeaconScanner;)Landroid/support/place/beacon/BeaconScanner$Listener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/beacon/BeaconScanner$1;->val$beacons:Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/support/place/beacon/BeaconScanner$Listener;->onBeaconsChanged(Ljava/util/List;)V

    .line 138
    return-void
.end method
