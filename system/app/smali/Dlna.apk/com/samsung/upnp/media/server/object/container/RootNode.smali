.class public Lcom/samsung/upnp/media/server/object/container/RootNode;
.super Lcom/samsung/upnp/media/server/object/container/ContainerNode;
.source "RootNode.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;-><init>()V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/container/RootNode;->setID(I)V

    .line 36
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/container/RootNode;->setParentID(I)V

    .line 37
    const-string v0, "Root"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/container/RootNode;->setTitle(Ljava/lang/String;)V

    .line 38
    return-void
.end method
