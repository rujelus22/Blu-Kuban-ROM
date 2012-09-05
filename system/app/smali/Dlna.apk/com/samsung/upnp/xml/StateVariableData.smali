.class public Lcom/samsung/upnp/xml/StateVariableData;
.super Lcom/samsung/upnp/xml/NodeData;
.source "StateVariableData.java"


# instance fields
.field private queryListener:Lcom/samsung/upnp/control/QueryListener;

.field private queryRes:Lcom/samsung/upnp/control/QueryResponse;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/samsung/upnp/xml/NodeData;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/xml/StateVariableData;->value:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/samsung/upnp/xml/StateVariableData;->queryListener:Lcom/samsung/upnp/control/QueryListener;

    .line 66
    iput-object v1, p0, Lcom/samsung/upnp/xml/StateVariableData;->queryRes:Lcom/samsung/upnp/control/QueryResponse;

    .line 32
    return-void
.end method


# virtual methods
.method public getQueryListener()Lcom/samsung/upnp/control/QueryListener;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/upnp/xml/StateVariableData;->queryListener:Lcom/samsung/upnp/control/QueryListener;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/upnp/xml/StateVariableData;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setQueryListener(Lcom/samsung/upnp/control/QueryListener;)V
    .registers 2
    .parameter "queryListener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/samsung/upnp/xml/StateVariableData;->queryListener:Lcom/samsung/upnp/control/QueryListener;

    .line 60
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/samsung/upnp/xml/StateVariableData;->value:Ljava/lang/String;

    .line 46
    return-void
.end method
