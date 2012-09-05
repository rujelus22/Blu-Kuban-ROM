.class Lcom/samsung/upnp/media/server/MediaServer$1;
.super Ljava/lang/Object;
.source "MediaServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/upnp/media/server/MediaServer;->announce(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/upnp/media/server/MediaServer;

.field private final synthetic val$bindAddr:Ljava/lang/String;

.field private final synthetic val$ssdpReq:Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;


# direct methods
.method constructor <init>(Lcom/samsung/upnp/media/server/MediaServer;Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/upnp/media/server/MediaServer$1;->this$0:Lcom/samsung/upnp/media/server/MediaServer;

    iput-object p2, p0, Lcom/samsung/upnp/media/server/MediaServer$1;->val$ssdpReq:Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    iput-object p3, p0, Lcom/samsung/upnp/media/server/MediaServer$1;->val$bindAddr:Ljava/lang/String;

    .line 589
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 592
    iget-object v0, p0, Lcom/samsung/upnp/media/server/MediaServer$1;->this$0:Lcom/samsung/upnp/media/server/MediaServer;

    iget-object v0, v0, Lcom/samsung/upnp/media/server/MediaServer;->localControlPoint:Lcom/samsung/upnp/media/server/MediaControlPoint;

    iget-object v1, p0, Lcom/samsung/upnp/media/server/MediaServer$1;->val$ssdpReq:Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    iget-object v2, p0, Lcom/samsung/upnp/media/server/MediaServer$1;->val$bindAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/upnp/media/server/MediaControlPoint;->addLocalDevice(Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;Ljava/lang/String;)V

    .line 593
    return-void
.end method
