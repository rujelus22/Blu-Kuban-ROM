.class public Lcom/samsung/upnp/control/ControlRequest;
.super Lcom/samsung/soap/SOAPRequest;
.source "ControlRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/samsung/soap/SOAPRequest;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public isQueryControl()Z
    .registers 2

    .prologue
    .line 79
    const-string v0, "urn:schemas-upnp-org:control-1-0#QueryStateVariable"

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/control/ControlRequest;->isSOAPAction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
