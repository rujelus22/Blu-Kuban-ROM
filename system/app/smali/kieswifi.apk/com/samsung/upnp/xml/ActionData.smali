.class public Lcom/samsung/upnp/xml/ActionData;
.super Lcom/samsung/upnp/xml/NodeData;
.source "ActionData.java"


# instance fields
.field private actionListener:Lcom/samsung/upnp/control/ActionListener;

.field private ctrlRes:Lcom/samsung/upnp/control/ControlResponse;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/samsung/upnp/xml/NodeData;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/samsung/upnp/xml/ActionData;->actionListener:Lcom/samsung/upnp/control/ActionListener;

    .line 50
    iput-object v0, p0, Lcom/samsung/upnp/xml/ActionData;->ctrlRes:Lcom/samsung/upnp/control/ControlResponse;

    .line 30
    return-void
.end method


# virtual methods
.method public getActionListener()Lcom/samsung/upnp/control/ActionListener;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/upnp/xml/ActionData;->actionListener:Lcom/samsung/upnp/control/ActionListener;

    return-object v0
.end method

.method public getControlResponse()Lcom/samsung/upnp/control/ControlResponse;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/upnp/xml/ActionData;->ctrlRes:Lcom/samsung/upnp/control/ControlResponse;

    return-object v0
.end method

.method public setControlResponse(Lcom/samsung/upnp/control/ControlResponse;)V
    .registers 2
    .parameter "res"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/samsung/upnp/xml/ActionData;->ctrlRes:Lcom/samsung/upnp/control/ControlResponse;

    .line 60
    return-void
.end method
