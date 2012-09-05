.class Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;
.super Ljava/lang/Object;
.source "ControlPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/upnp/ControlPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "checkDuplicatePacket"
.end annotation


# instance fields
.field _packet:Lcom/samsung/upnp/ssdp/SSDPPacket;

.field final synthetic this$0:Lcom/samsung/upnp/ControlPoint;


# direct methods
.method public constructor <init>(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 4
    .parameter
    .parameter "packet"

    .prologue
    .line 727
    iput-object p1, p0, Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;->this$0:Lcom/samsung/upnp/ControlPoint;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;->_packet:Lcom/samsung/upnp/ssdp/SSDPPacket;

    .line 728
    iput-object p2, p0, Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;->_packet:Lcom/samsung/upnp/ssdp/SSDPPacket;

    .line 729
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 733
    iget-object v3, p0, Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;->_packet:Lcom/samsung/upnp/ssdp/SSDPPacket;

    invoke-virtual {v3}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v1

    .line 734
    .local v1, usn:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/upnp/device/USN;->getUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 736
    .local v2, uuid:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;->this$0:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {v3, v2}, Lcom/samsung/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 738
    .local v0, dev:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_18

    .line 740
    iget-object v3, p0, Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;->_packet:Lcom/samsung/upnp/ssdp/SSDPPacket;

    invoke-virtual {v0, v3}, Lcom/samsung/upnp/Device;->setSSDPPacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 749
    :cond_17
    :goto_17
    return-void

    .line 744
    :cond_18
    iget-object v3, p0, Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;->this$0:Lcom/samsung/upnp/ControlPoint;

    #calls: Lcom/samsung/upnp/ControlPoint;->isActivityDevice(Ljava/lang/String;)Z
    invoke-static {v3, v2}, Lcom/samsung/upnp/ControlPoint;->access$3(Lcom/samsung/upnp/ControlPoint;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 746
    iget-object v3, p0, Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;->this$0:Lcom/samsung/upnp/ControlPoint;

    #calls: Lcom/samsung/upnp/ControlPoint;->addActivityDevice(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/samsung/upnp/ControlPoint;->access$4(Lcom/samsung/upnp/ControlPoint;Ljava/lang/String;)V

    .line 747
    iget-object v3, p0, Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;->this$0:Lcom/samsung/upnp/ControlPoint;

    iget-object v3, v3, Lcom/samsung/upnp/ControlPoint;->mExeutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/samsung/upnp/ControlPoint$descriptionWorker;

    iget-object v5, p0, Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;->this$0:Lcom/samsung/upnp/ControlPoint;

    iget-object v6, p0, Lcom/samsung/upnp/ControlPoint$checkDuplicatePacket;->_packet:Lcom/samsung/upnp/ssdp/SSDPPacket;

    invoke-direct {v4, v5, v6}, Lcom/samsung/upnp/ControlPoint$descriptionWorker;-><init>(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_17
.end method
