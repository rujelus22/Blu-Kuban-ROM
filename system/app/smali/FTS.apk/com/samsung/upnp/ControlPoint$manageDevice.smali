.class Lcom/samsung/upnp/ControlPoint$manageDevice;
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
    name = "manageDevice"
.end annotation


# instance fields
.field mRootNode:Lcom/samsung/xml/Node;

.field mSSDPPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

.field final synthetic this$0:Lcom/samsung/upnp/ControlPoint;


# direct methods
.method public constructor <init>(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/upnp/ssdp/SSDPPacket;Lcom/samsung/xml/Node;)V
    .registers 5
    .parameter
    .parameter "ssdpPacket"
    .parameter "rootNode"

    .prologue
    const/4 v0, 0x0

    .line 309
    iput-object p1, p0, Lcom/samsung/upnp/ControlPoint$manageDevice;->this$0:Lcom/samsung/upnp/ControlPoint;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint$manageDevice;->mSSDPPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

    .line 307
    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint$manageDevice;->mRootNode:Lcom/samsung/xml/Node;

    .line 310
    iput-object p2, p0, Lcom/samsung/upnp/ControlPoint$manageDevice;->mSSDPPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

    .line 311
    iput-object p3, p0, Lcom/samsung/upnp/ControlPoint$manageDevice;->mRootNode:Lcom/samsung/xml/Node;

    .line 312
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 315
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint$manageDevice;->mSSDPPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

    if-nez v4, :cond_5

    .line 338
    :goto_4
    return-void

    .line 318
    :cond_5
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint$manageDevice;->mSSDPPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

    invoke-virtual {v4}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, usn:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/upnp/device/USN;->getUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, uuid:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint$manageDevice;->this$0:Lcom/samsung/upnp/ControlPoint;

    iget-object v5, p0, Lcom/samsung/upnp/ControlPoint$manageDevice;->mRootNode:Lcom/samsung/xml/Node;

    #calls: Lcom/samsung/upnp/ControlPoint;->getDevice(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;
    invoke-static {v4, v5}, Lcom/samsung/upnp/ControlPoint;->access$0(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 322
    .local v1, rootDev:Lcom/samsung/upnp/Device;
    if-nez v1, :cond_1f

    .line 323
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint$manageDevice;->this$0:Lcom/samsung/upnp/ControlPoint;

    #calls: Lcom/samsung/upnp/ControlPoint;->removeActivityDevice(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/samsung/upnp/ControlPoint;->access$1(Lcom/samsung/upnp/ControlPoint;Ljava/lang/String;)V

    goto :goto_4

    .line 327
    :cond_1f
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint$manageDevice;->mSSDPPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

    invoke-virtual {v1, v4}, Lcom/samsung/upnp/Device;->setSSDPPacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 328
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint$manageDevice;->this$0:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {v4, v3}, Lcom/samsung/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 330
    .local v0, dev:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_37

    .line 331
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint$manageDevice;->mSSDPPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

    invoke-virtual {v0, v4}, Lcom/samsung/upnp/Device;->setSSDPPacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 332
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint$manageDevice;->this$0:Lcom/samsung/upnp/ControlPoint;

    #calls: Lcom/samsung/upnp/ControlPoint;->removeActivityDevice(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/samsung/upnp/ControlPoint;->access$1(Lcom/samsung/upnp/ControlPoint;Ljava/lang/String;)V

    goto :goto_4

    .line 335
    :cond_37
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint$manageDevice;->this$0:Lcom/samsung/upnp/ControlPoint;

    iget-object v5, p0, Lcom/samsung/upnp/ControlPoint$manageDevice;->mRootNode:Lcom/samsung/xml/Node;

    #calls: Lcom/samsung/upnp/ControlPoint;->addDevice(Lcom/samsung/xml/Node;)V
    invoke-static {v4, v5}, Lcom/samsung/upnp/ControlPoint;->access$2(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/xml/Node;)V

    .line 336
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint$manageDevice;->this$0:Lcom/samsung/upnp/ControlPoint;

    invoke-virtual {v4, v1}, Lcom/samsung/upnp/ControlPoint;->performAddDeviceListener(Lcom/samsung/upnp/Device;)V

    .line 337
    iget-object v4, p0, Lcom/samsung/upnp/ControlPoint$manageDevice;->this$0:Lcom/samsung/upnp/ControlPoint;

    #calls: Lcom/samsung/upnp/ControlPoint;->removeActivityDevice(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/samsung/upnp/ControlPoint;->access$1(Lcom/samsung/upnp/ControlPoint;Ljava/lang/String;)V

    goto :goto_4
.end method
