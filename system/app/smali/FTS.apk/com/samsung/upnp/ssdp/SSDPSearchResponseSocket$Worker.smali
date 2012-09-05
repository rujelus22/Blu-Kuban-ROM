.class Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket$Worker;
.super Ljava/lang/Object;
.source "SSDPSearchResponseSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field _packet:Lcom/samsung/upnp/ssdp/SSDPPacket;

.field final synthetic this$0:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;


# direct methods
.method public constructor <init>(Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 3
    .parameter
    .parameter "packet"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket$Worker;->this$0:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket$Worker;->_packet:Lcom/samsung/upnp/ssdp/SSDPPacket;

    .line 123
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 127
    iget-object v2, p0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket$Worker;->this$0:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;

    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->getControlPoint()Lcom/samsung/upnp/ControlPoint;

    move-result-object v0

    .line 128
    .local v0, ctrlPoint:Lcom/samsung/upnp/ControlPoint;
    iget-object v2, p0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket$Worker;->this$0:Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;

    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->getPersonalMessageCP()Lcom/samsung/pmr/PersonalMessageControlPoint;

    move-result-object v1

    .line 130
    .local v1, pmcp:Lcom/samsung/pmr/PersonalMessageControlPoint;
    if-eqz v0, :cond_13

    .line 131
    iget-object v2, p0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket$Worker;->_packet:Lcom/samsung/upnp/ssdp/SSDPPacket;

    invoke-virtual {v0, v2}, Lcom/samsung/upnp/ControlPoint;->searchResponseReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 132
    :cond_13
    if-eqz v1, :cond_1a

    .line 133
    iget-object v2, p0, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket$Worker;->_packet:Lcom/samsung/upnp/ssdp/SSDPPacket;

    invoke-virtual {v1, v2}, Lcom/samsung/pmr/PersonalMessageControlPoint;->searchResponseReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 134
    :cond_1a
    return-void
.end method
