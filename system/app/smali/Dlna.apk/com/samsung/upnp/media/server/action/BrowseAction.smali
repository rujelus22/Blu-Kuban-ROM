.class public Lcom/samsung/upnp/media/server/action/BrowseAction;
.super Lcom/samsung/upnp/Action;
.source "BrowseAction.java"


# static fields
.field private static browseActionNode:Lcom/samsung/xml/Node;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/upnp/media/server/action/BrowseAction;->browseActionNode:Lcom/samsung/xml/Node;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/samsung/upnp/Action;)V
    .registers 2
    .parameter "action"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Action;-><init>(Lcom/samsung/upnp/Action;)V

    .line 59
    return-void
.end method

.method public static createDefaultBrowseAction(Lcom/samsung/xml/Node;)Lcom/samsung/upnp/Action;
    .registers 4
    .parameter "serviceNode"

    .prologue
    .line 62
    sget-object v2, Lcom/samsung/upnp/media/server/action/BrowseAction;->browseActionNode:Lcom/samsung/xml/Node;

    if-nez v2, :cond_10

    .line 66
    :try_start_4
    const-string v1, "<action><name>Browse</name><argumentList><argument><name>ObjectID</name><direction>in</direction><relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable></argument><argument><name>BrowseFlag</name><direction>in</direction><relatedStateVariable>A_ARG_TYPE_BrowseFlag</relatedStateVariable></argument><argument><name>Filter</name><direction>in</direction><relatedStateVariable>A_ARG_TYPE_Filter</relatedStateVariable></argument><argument><name>StartingIndex</name><direction>in</direction><relatedStateVariable>A_ARG_TYPE_Index</relatedStateVariable></argument><argument><name>RequestedCount</name><direction>in</direction><relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable></argument><argument><name>SortCriteria</name><direction>in</direction><relatedStateVariable>A_ARG_TYPE_SortCriteria</relatedStateVariable></argument><argument><name>Result</name><direction>out</direction><relatedStateVariable>A_ARG_TYPE_Result</relatedStateVariable></argument><argument><name>NumberReturned</name><direction>out</direction><relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable></argument><argument><name>TotalMatches</name><direction>out</direction><relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable></argument><argument><name>UpdateID</name><direction>out</direction><relatedStateVariable>A_ARG_TYPE_UpdateID</relatedStateVariable></argument></argumentList></action>"

    .line 122
    .local v1, browseNode:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/xml/Parser;->parse(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    sput-object v2, Lcom/samsung/upnp/media/server/action/BrowseAction;->browseActionNode:Lcom/samsung/xml/Node;
    :try_end_10
    .catch Lcom/samsung/xml/ParserException; {:try_start_4 .. :try_end_10} :catch_18

    .line 126
    .end local v1           #browseNode:Ljava/lang/String;
    :cond_10
    :goto_10
    new-instance v0, Lcom/samsung/upnp/Action;

    sget-object v2, Lcom/samsung/upnp/media/server/action/BrowseAction;->browseActionNode:Lcom/samsung/xml/Node;

    invoke-direct {v0, p0, v2}, Lcom/samsung/upnp/Action;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    .line 127
    .local v0, action:Lcom/samsung/upnp/Action;
    return-object v0

    .line 123
    .end local v0           #action:Lcom/samsung/upnp/Action;
    :catch_18
    move-exception v2

    goto :goto_10
.end method


# virtual methods
.method public getBrowseFlag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    const-string v0, "BrowseFlag"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/action/BrowseAction;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    const-string v0, "Filter"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/action/BrowseAction;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    const-string v0, "ObjectID"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/action/BrowseAction;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedCount()J
    .registers 4

    .prologue
    .line 162
    const-string v1, "RequestedCount"

    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/action/BrowseAction;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getSortCriteria()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    const-string v0, "SortCriteria"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/action/BrowseAction;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartingIndex()J
    .registers 4

    .prologue
    .line 156
    const-string v1, "StartingIndex"

    invoke-virtual {p0, v1}, Lcom/samsung/upnp/media/server/action/BrowseAction;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public isDirectChildren()Z
    .registers 3

    .prologue
    .line 146
    const-string v0, "BrowseDirectChildren"

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/action/BrowseAction;->getBrowseFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMetadata()Z
    .registers 3

    .prologue
    .line 141
    const-string v0, "BrowseMetadata"

    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/action/BrowseAction;->getBrowseFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setNumberReturned(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 187
    const-string v0, "NumberReturned"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/action/BrowseAction;->setArgumentValue(Ljava/lang/String;I)V

    .line 188
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 182
    const-string v0, "Result"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/action/BrowseAction;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public setTotalMaches(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 192
    const-string v0, "TotalMatches"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/action/BrowseAction;->setArgumentValue(Ljava/lang/String;I)V

    .line 193
    return-void
.end method

.method public setUpdateID(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 197
    const-string v0, "UpdateID"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/media/server/action/BrowseAction;->setArgumentValue(Ljava/lang/String;I)V

    .line 198
    return-void
.end method
