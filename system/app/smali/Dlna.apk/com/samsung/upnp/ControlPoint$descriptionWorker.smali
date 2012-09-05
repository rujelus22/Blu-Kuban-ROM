.class Lcom/samsung/upnp/ControlPoint$descriptionWorker;
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
    name = "descriptionWorker"
.end annotation


# instance fields
.field _ssdpPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

.field final synthetic this$0:Lcom/samsung/upnp/ControlPoint;


# direct methods
.method public constructor <init>(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 4
    .parameter
    .parameter "ssdpPacket"

    .prologue
    .line 756
    iput-object p1, p0, Lcom/samsung/upnp/ControlPoint$descriptionWorker;->this$0:Lcom/samsung/upnp/ControlPoint;

    .line 755
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 754
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/upnp/ControlPoint$descriptionWorker;->_ssdpPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

    .line 757
    iput-object p2, p0, Lcom/samsung/upnp/ControlPoint$descriptionWorker;->_ssdpPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

    .line 758
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 762
    const/4 v5, 0x0

    .line 764
    .local v5, rootNode:Lcom/samsung/xml/Node;
    iget-object v6, p0, Lcom/samsung/upnp/ControlPoint$descriptionWorker;->_ssdpPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

    invoke-virtual {v6}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, location:Ljava/lang/String;
    :try_start_7
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 767
    .local v1, locationUrl:Ljava/net/URL;
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v3

    .line 768
    .local v3, parser:Lcom/samsung/xml/Parser;
    invoke-virtual {v3, v1}, Lcom/samsung/xml/Parser;->parse(Ljava/net/URL;)Lcom/samsung/xml/Node;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_61
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_13} :catch_25
    .catch Lcom/samsung/xml/ParserException; {:try_start_7 .. :try_end_13} :catch_43

    move-result-object v5

    .line 787
    iget-object v6, p0, Lcom/samsung/upnp/ControlPoint$descriptionWorker;->this$0:Lcom/samsung/upnp/ControlPoint;

    iget-object v6, v6, Lcom/samsung/upnp/ControlPoint;->mDeviceHandler:Landroid/os/Handler;

    new-instance v7, Lcom/samsung/upnp/ControlPoint$manageDevice;

    iget-object v8, p0, Lcom/samsung/upnp/ControlPoint$descriptionWorker;->this$0:Lcom/samsung/upnp/ControlPoint;

    iget-object v9, p0, Lcom/samsung/upnp/ControlPoint$descriptionWorker;->_ssdpPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

    invoke-direct {v7, v8, v9, v5}, Lcom/samsung/upnp/ControlPoint$manageDevice;-><init>(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/upnp/ssdp/SSDPPacket;Lcom/samsung/xml/Node;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 789
    .end local v1           #locationUrl:Ljava/net/URL;
    .end local v3           #parser:Lcom/samsung/xml/Parser;
    :goto_24
    return-void

    .line 780
    :catch_25
    move-exception v2

    .line 781
    .local v2, me:Ljava/net/MalformedURLException;
    :try_start_26
    iget-object v6, p0, Lcom/samsung/upnp/ControlPoint$descriptionWorker;->_ssdpPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

    invoke-virtual {v6}, Lcom/samsung/upnp/ssdp/SSDPPacket;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;)V

    .line 782
    invoke-static {v2}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_61

    .line 787
    iget-object v6, p0, Lcom/samsung/upnp/ControlPoint$descriptionWorker;->this$0:Lcom/samsung/upnp/ControlPoint;

    iget-object v6, v6, Lcom/samsung/upnp/ControlPoint;->mDeviceHandler:Landroid/os/Handler;

    new-instance v7, Lcom/samsung/upnp/ControlPoint$manageDevice;

    iget-object v8, p0, Lcom/samsung/upnp/ControlPoint$descriptionWorker;->this$0:Lcom/samsung/upnp/ControlPoint;

    iget-object v9, p0, Lcom/samsung/upnp/ControlPoint$descriptionWorker;->_ssdpPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

    invoke-direct {v7, v8, v9, v5}, Lcom/samsung/upnp/ControlPoint$manageDevice;-><init>(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/upnp/ssdp/SSDPPacket;Lcom/samsung/xml/Node;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    .line 783
    .end local v2           #me:Ljava/net/MalformedURLException;
    :catch_43
    move-exception v4

    .line 784
    .local v4, pe:Lcom/samsung/xml/ParserException;
    :try_start_44
    iget-object v6, p0, Lcom/samsung/upnp/ControlPoint$descriptionWorker;->_ssdpPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

    invoke-virtual {v6}, Lcom/samsung/upnp/ssdp/SSDPPacket;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;)V

    .line 785
    invoke-static {v4}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_61

    .line 787
    iget-object v6, p0, Lcom/samsung/upnp/ControlPoint$descriptionWorker;->this$0:Lcom/samsung/upnp/ControlPoint;

    iget-object v6, v6, Lcom/samsung/upnp/ControlPoint;->mDeviceHandler:Landroid/os/Handler;

    new-instance v7, Lcom/samsung/upnp/ControlPoint$manageDevice;

    iget-object v8, p0, Lcom/samsung/upnp/ControlPoint$descriptionWorker;->this$0:Lcom/samsung/upnp/ControlPoint;

    iget-object v9, p0, Lcom/samsung/upnp/ControlPoint$descriptionWorker;->_ssdpPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

    invoke-direct {v7, v8, v9, v5}, Lcom/samsung/upnp/ControlPoint$manageDevice;-><init>(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/upnp/ssdp/SSDPPacket;Lcom/samsung/xml/Node;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    .line 786
    .end local v4           #pe:Lcom/samsung/xml/ParserException;
    :catchall_61
    move-exception v6

    .line 787
    iget-object v7, p0, Lcom/samsung/upnp/ControlPoint$descriptionWorker;->this$0:Lcom/samsung/upnp/ControlPoint;

    iget-object v7, v7, Lcom/samsung/upnp/ControlPoint;->mDeviceHandler:Landroid/os/Handler;

    new-instance v8, Lcom/samsung/upnp/ControlPoint$manageDevice;

    iget-object v9, p0, Lcom/samsung/upnp/ControlPoint$descriptionWorker;->this$0:Lcom/samsung/upnp/ControlPoint;

    iget-object v10, p0, Lcom/samsung/upnp/ControlPoint$descriptionWorker;->_ssdpPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;

    invoke-direct {v8, v9, v10, v5}, Lcom/samsung/upnp/ControlPoint$manageDevice;-><init>(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/upnp/ssdp/SSDPPacket;Lcom/samsung/xml/Node;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 788
    throw v6
.end method
