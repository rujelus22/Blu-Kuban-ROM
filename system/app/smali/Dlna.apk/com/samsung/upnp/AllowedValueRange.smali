.class public Lcom/samsung/upnp/AllowedValueRange;
.super Ljava/lang/Object;
.source "AllowedValueRange.java"


# instance fields
.field private allowedValueRangeNode:Lcom/samsung/xml/Node;


# direct methods
.method public constructor <init>(Lcom/samsung/xml/Node;)V
    .registers 2
    .parameter "node"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/samsung/upnp/AllowedValueRange;->allowedValueRangeNode:Lcom/samsung/xml/Node;

    .line 52
    return-void
.end method


# virtual methods
.method public getAllowedValueRangeNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/upnp/AllowedValueRange;->allowedValueRangeNode:Lcom/samsung/xml/Node;

    return-object v0
.end method

.method public getMaximum()Ljava/lang/String;
    .registers 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/samsung/upnp/AllowedValueRange;->getAllowedValueRangeNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "maximum"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinimum()Ljava/lang/String;
    .registers 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/samsung/upnp/AllowedValueRange;->getAllowedValueRangeNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "minimum"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
