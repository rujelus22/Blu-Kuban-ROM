.class public Lcom/samsung/upnp/media/server/object/container/ContainerNode;
.super Lcom/samsung/upnp/media/server/object/ContentNode;
.source "ContainerNode.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/object/ContentNode;-><init>()V

    .line 46
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;->setID(I)V

    .line 47
    const-string v0, "container"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;->setName(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;->setSearchable(I)V

    .line 49
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;->setChildCount(I)V

    .line 50
    const-string v0, "object.container"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;->setUPnPClass(Ljava/lang/String;)V

    .line 51
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;->setWriteStatus(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public addContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;)V
    .registers 4
    .parameter "node"

    .prologue
    .line 60
    if-nez p1, :cond_3

    .line 76
    :cond_2
    :goto_2
    return-void

    .line 62
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;->addNode(Lcom/samsung/xml/Node;)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->setParentID(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;->setChildCount(I)V

    .line 65
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->setContentDirectory(Lcom/samsung/upnp/media/server/ContentDirectory;)V

    .line 66
    instance-of v1, p1, Lcom/samsung/upnp/media/server/object/container/ContainerNode;

    if-eqz v1, :cond_2d

    .line 67
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v0

    .line 68
    .local v0, cdTemp:Lcom/samsung/upnp/media/server/ContentDirectory;
    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/ContentDirectory;->getNextContainerID()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->setID(I)V

    goto :goto_2

    .line 72
    .end local v0           #cdTemp:Lcom/samsung/upnp/media/server/ContentDirectory;
    :cond_2d
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v0

    .line 73
    .restart local v0       #cdTemp:Lcom/samsung/upnp/media/server/ContentDirectory;
    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;->getContentDirectory()Lcom/samsung/upnp/media/server/ContentDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/ContentDirectory;->getNextItemID()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/upnp/media/server/object/ContentNode;->setID(I)V

    goto :goto_2
.end method

.method public removeContentNode(Lcom/samsung/upnp/media/server/object/ContentNode;)Z
    .registers 4
    .parameter "node"

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;->removeNode(Lcom/samsung/xml/Node;)Z

    move-result v0

    .line 81
    .local v0, ret:Z
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;->setChildCount(I)V

    .line 82
    return v0
.end method

.method public setChildCount(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 91
    const-string v0, "childCount"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;->setAttribute(Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public setSearchable(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 105
    const-string v0, "searchable"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;->setAttribute(Ljava/lang/String;I)V

    .line 106
    return-void
.end method
