.class public Lcom/samsung/upnp/xml/NodeData;
.super Ljava/lang/Object;
.source "NodeData.java"


# instance fields
.field private node:Lcom/samsung/xml/Node;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/xml/NodeData;->setNode(Lcom/samsung/xml/Node;)V

    .line 31
    return-void
.end method


# virtual methods
.method public setNode(Lcom/samsung/xml/Node;)V
    .registers 2
    .parameter "node"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/upnp/xml/NodeData;->node:Lcom/samsung/xml/Node;

    .line 42
    return-void
.end method
