.class public Lcom/samsung/upnp/media/server/action/SearchAction;
.super Lcom/samsung/upnp/Action;
.source "SearchAction.java"


# direct methods
.method public constructor <init>(Lcom/samsung/upnp/Action;)V
    .registers 2
    .parameter "action"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Action;-><init>(Lcom/samsung/upnp/Action;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getContainerID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string v0, "ContainerID"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/action/SearchAction;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    const-string v0, "Filter"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/action/SearchAction;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedCount()I
    .registers 3

    .prologue
    .line 77
    const-string v1, "RequestedCount"

    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/action/SearchAction;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getSearchCriteria()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const-string v0, "SearchCriteria"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/action/SearchAction;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortCriteria()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    const-string v0, "SortCriteria"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/action/SearchAction;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartingIndex()I
    .registers 3

    .prologue
    .line 71
    const-string v1, "StartingIndex"

    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/action/SearchAction;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setNumberReturned(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 102
    const-string v0, "NumberReturned"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/action/SearchAction;->setArgumentValue(Ljava/lang/String;I)V

    .line 103
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 97
    const-string v0, "Result"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/action/SearchAction;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public setTotalMaches(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 107
    const-string v0, "TotalMatches"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/action/SearchAction;->setArgumentValue(Ljava/lang/String;I)V

    .line 108
    return-void
.end method

.method public setUpdateID(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 112
    const-string v0, "UpdateID"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/action/SearchAction;->setArgumentValue(Ljava/lang/String;I)V

    .line 113
    return-void
.end method
