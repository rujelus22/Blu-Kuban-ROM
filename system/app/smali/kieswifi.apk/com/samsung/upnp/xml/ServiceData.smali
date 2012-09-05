.class public Lcom/samsung/upnp/xml/ServiceData;
.super Lcom/samsung/upnp/xml/NodeData;
.source "ServiceData.java"


# instance fields
.field private scpdNode:Lcom/samsung/xml/Node;

.field private sid:Ljava/lang/String;

.field private subscriberList:Lcom/samsung/upnp/event/SubscriberList;

.field private timeout:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/upnp/xml/NodeData;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/upnp/xml/ServiceData;->scpdNode:Lcom/samsung/xml/Node;

    .line 67
    new-instance v0, Lcom/samsung/upnp/event/SubscriberList;

    invoke-direct {v0}, Lcom/samsung/upnp/event/SubscriberList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/xml/ServiceData;->subscriberList:Lcom/samsung/upnp/event/SubscriberList;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/xml/ServiceData;->sid:Ljava/lang/String;

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/upnp/xml/ServiceData;->timeout:J

    .line 37
    return-void
.end method


# virtual methods
.method public getSCPDNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/upnp/xml/ServiceData;->scpdNode:Lcom/samsung/xml/Node;

    return-object v0
.end method

.method public getSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/upnp/xml/ServiceData;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberList()Lcom/samsung/upnp/event/SubscriberList;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/upnp/xml/ServiceData;->subscriberList:Lcom/samsung/upnp/event/SubscriberList;

    return-object v0
.end method

.method public setSCPDNode(Lcom/samsung/xml/Node;)V
    .registers 2
    .parameter "node"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/upnp/xml/ServiceData;->scpdNode:Lcom/samsung/xml/Node;

    .line 61
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/upnp/xml/ServiceData;->sid:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setTimeout(J)V
    .registers 3
    .parameter "value"

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/samsung/upnp/xml/ServiceData;->timeout:J

    .line 101
    return-void
.end method
