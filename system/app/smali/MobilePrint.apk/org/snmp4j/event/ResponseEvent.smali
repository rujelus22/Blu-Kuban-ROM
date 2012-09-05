.class public Lorg/snmp4j/event/ResponseEvent;
.super Ljava/util/EventObject;
.source "ResponseEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x370ca8ae6f91b446L


# instance fields
.field private error:Ljava/lang/Exception;

.field private peerAddress:Lorg/snmp4j/smi/Address;

.field private request:Lorg/snmp4j/PDU;

.field private response:Lorg/snmp4j/PDU;

.field private userObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/snmp4j/smi/Address;Lorg/snmp4j/PDU;Lorg/snmp4j/PDU;Ljava/lang/Object;)V
    .registers 6
    .parameter "source"
    .parameter "peerAddress"
    .parameter "request"
    .parameter "response"
    .parameter "userObject"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0, p2}, Lorg/snmp4j/event/ResponseEvent;->setPeerAddress(Lorg/snmp4j/smi/Address;)V

    .line 64
    invoke-virtual {p0, p3}, Lorg/snmp4j/event/ResponseEvent;->setRequest(Lorg/snmp4j/PDU;)V

    .line 65
    invoke-virtual {p0, p4}, Lorg/snmp4j/event/ResponseEvent;->setResponse(Lorg/snmp4j/PDU;)V

    .line 66
    invoke-virtual {p0, p5}, Lorg/snmp4j/event/ResponseEvent;->setUserObject(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/snmp4j/smi/Address;Lorg/snmp4j/PDU;Lorg/snmp4j/PDU;Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 7
    .parameter "source"
    .parameter "peerAddress"
    .parameter "request"
    .parameter "response"
    .parameter "userObject"
    .parameter "error"

    .prologue
    .line 90
    invoke-direct/range {p0 .. p5}, Lorg/snmp4j/event/ResponseEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/Address;Lorg/snmp4j/PDU;Lorg/snmp4j/PDU;Ljava/lang/Object;)V

    .line 91
    iput-object p6, p0, Lorg/snmp4j/event/ResponseEvent;->error:Ljava/lang/Exception;

    .line 92
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lorg/snmp4j/event/ResponseEvent;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method public getPeerAddress()Lorg/snmp4j/smi/Address;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/snmp4j/event/ResponseEvent;->peerAddress:Lorg/snmp4j/smi/Address;

    return-object v0
.end method

.method public getRequest()Lorg/snmp4j/PDU;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/snmp4j/event/ResponseEvent;->request:Lorg/snmp4j/PDU;

    return-object v0
.end method

.method public getResponse()Lorg/snmp4j/PDU;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/snmp4j/event/ResponseEvent;->response:Lorg/snmp4j/PDU;

    return-object v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/snmp4j/event/ResponseEvent;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method protected final setPeerAddress(Lorg/snmp4j/smi/Address;)V
    .registers 2
    .parameter "peerAddress"

    .prologue
    .line 104
    iput-object p1, p0, Lorg/snmp4j/event/ResponseEvent;->peerAddress:Lorg/snmp4j/smi/Address;

    .line 105
    return-void
.end method

.method protected final setRequest(Lorg/snmp4j/PDU;)V
    .registers 2
    .parameter "request"

    .prologue
    .line 108
    iput-object p1, p0, Lorg/snmp4j/event/ResponseEvent;->request:Lorg/snmp4j/PDU;

    .line 109
    return-void
.end method

.method protected final setResponse(Lorg/snmp4j/PDU;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 112
    iput-object p1, p0, Lorg/snmp4j/event/ResponseEvent;->response:Lorg/snmp4j/PDU;

    .line 113
    return-void
.end method

.method protected final setUserObject(Ljava/lang/Object;)V
    .registers 2
    .parameter "userObject"

    .prologue
    .line 126
    iput-object p1, p0, Lorg/snmp4j/event/ResponseEvent;->userObject:Ljava/lang/Object;

    .line 127
    return-void
.end method
