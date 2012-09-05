.class public Lcom/samsung/upnp/AllowedValue;
.super Ljava/lang/Object;
.source "AllowedValue.java"


# instance fields
.field private allowedValueNode:Lcom/samsung/xml/Node;


# direct methods
.method public constructor <init>(Lcom/samsung/xml/Node;)V
    .registers 2
    .parameter "node"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/samsung/upnp/AllowedValue;->allowedValueNode:Lcom/samsung/xml/Node;

    .line 64
    return-void
.end method

.method public static isAllowedValueNode(Lcom/samsung/xml/Node;)Z
    .registers 3
    .parameter "node"

    .prologue
    .line 72
    const-string v0, "allowedValue"

    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAllowedValueNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/upnp/AllowedValue;->allowedValueNode:Lcom/samsung/xml/Node;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/samsung/upnp/AllowedValue;->getAllowedValueNode()Lcom/samsung/xml/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
