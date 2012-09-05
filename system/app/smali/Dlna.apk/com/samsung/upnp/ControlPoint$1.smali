.class Lcom/samsung/upnp/ControlPoint$1;
.super Ljava/lang/Object;
.source "ControlPoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/upnp/ControlPoint;->notifyReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/upnp/ControlPoint;

.field private final synthetic val$packet:Lcom/samsung/upnp/ssdp/SSDPPacket;


# direct methods
.method constructor <init>(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/upnp/ControlPoint$1;->this$0:Lcom/samsung/upnp/ControlPoint;

    iput-object p2, p0, Lcom/samsung/upnp/ControlPoint$1;->val$packet:Lcom/samsung/upnp/ssdp/SSDPPacket;

    .line 714
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 716
    iget-object v0, p0, Lcom/samsung/upnp/ControlPoint$1;->this$0:Lcom/samsung/upnp/ControlPoint;

    iget-object v1, p0, Lcom/samsung/upnp/ControlPoint$1;->val$packet:Lcom/samsung/upnp/ssdp/SSDPPacket;

    #calls: Lcom/samsung/upnp/ControlPoint;->removeDevice(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    invoke-static {v0, v1}, Lcom/samsung/upnp/ControlPoint;->access$5(Lcom/samsung/upnp/ControlPoint;Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 717
    return-void
.end method
