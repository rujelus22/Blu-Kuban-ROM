.class public Lcom/samsung/upnp/xml/ArgumentData;
.super Lcom/samsung/upnp/xml/NodeData;
.source "ArgumentData.java"


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/samsung/upnp/xml/NodeData;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/xml/ArgumentData;->value:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/upnp/xml/ArgumentData;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/samsung/upnp/xml/ArgumentData;->value:Ljava/lang/String;

    .line 44
    return-void
.end method
