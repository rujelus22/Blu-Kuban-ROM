.class public Lcom/samsung/upnp/Icon;
.super Ljava/lang/Object;
.source "Icon.java"


# instance fields
.field private iconNode:Lcom/samsung/xml/Node;


# direct methods
.method public constructor <init>(Lcom/samsung/xml/Node;)V
    .registers 2
    .parameter "node"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/samsung/upnp/Icon;->iconNode:Lcom/samsung/xml/Node;

    .line 53
    return-void
.end method

.method public static isIconNode(Lcom/samsung/xml/Node;)Z
    .registers 3
    .parameter "node"

    .prologue
    .line 61
    const-string v0, "icon"

    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getIconNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/upnp/Icon;->iconNode:Lcom/samsung/xml/Node;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .registers 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/samsung/upnp/Icon;->getIconNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
