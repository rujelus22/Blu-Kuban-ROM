.class public Lcom/samsung/upnp/media/server/action/CreateObjectAction;
.super Lcom/samsung/upnp/Action;
.source "CreateObjectAction.java"


# direct methods
.method public constructor <init>(Lcom/samsung/upnp/Action;)V
    .registers 2
    .parameter "action"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Action;-><init>(Lcom/samsung/upnp/Action;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getContainerID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    const-string v0, "ContainerID"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/action/CreateObjectAction;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElements()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    const-string v0, "Elements"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/action/CreateObjectAction;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnyContainer()Z
    .registers 3

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/action/CreateObjectAction;->getContainerID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLNA.ORG_AnyContainer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setObjectID(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 38
    const-string v0, "ObjectID"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/action/CreateObjectAction;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 42
    const-string v0, "Result"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/action/CreateObjectAction;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method
