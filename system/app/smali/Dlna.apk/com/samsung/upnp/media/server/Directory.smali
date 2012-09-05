.class public abstract Lcom/samsung/upnp/media/server/Directory;
.super Lcom/samsung/upnp/media/server/object/container/ContainerNode;
.source "Directory.java"


# direct methods
.method public constructor <init>(Lcom/samsung/upnp/media/server/ContentDirectory;Ljava/lang/String;)V
    .registers 3
    .parameter "cdir"
    .parameter "name"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/object/container/ContainerNode;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/Directory;->setContentDirectory(Lcom/samsung/upnp/media/server/ContentDirectory;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/samsung/upnp/media/server/Directory;->setFriendlyName(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/upnp/media/server/Directory;-><init>(Lcom/samsung/upnp/media/server/ContentDirectory;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public setFriendlyName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/Directory;->setTitle(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public abstract update()V
.end method
