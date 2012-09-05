.class public Lorg/snmp4j/event/AuthenticationFailureEvent;
.super Ljava/util/EventObject;
.source "AuthenticationFailureEvent.java"


# static fields
.field private static final serialVersionUID:J = -0x77ad047c28fcabedL


# instance fields
.field private address:Lorg/snmp4j/smi/Address;

.field private error:I

.field private message:Lorg/snmp4j/asn1/BERInputStream;

.field private transient transport:Lorg/snmp4j/TransportMapping;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/snmp4j/smi/Address;Lorg/snmp4j/TransportMapping;ILorg/snmp4j/asn1/BERInputStream;)V
    .registers 6
    .parameter "source"
    .parameter "sourceAddress"
    .parameter "transport"
    .parameter "error"
    .parameter "message"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 70
    iput-object p2, p0, Lorg/snmp4j/event/AuthenticationFailureEvent;->address:Lorg/snmp4j/smi/Address;

    .line 71
    iput-object p3, p0, Lorg/snmp4j/event/AuthenticationFailureEvent;->transport:Lorg/snmp4j/TransportMapping;

    .line 72
    iput p4, p0, Lorg/snmp4j/event/AuthenticationFailureEvent;->error:I

    .line 73
    iput-object p5, p0, Lorg/snmp4j/event/AuthenticationFailureEvent;->message:Lorg/snmp4j/asn1/BERInputStream;

    .line 74
    return-void
.end method


# virtual methods
.method public getAddress()Lorg/snmp4j/smi/Address;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/snmp4j/event/AuthenticationFailureEvent;->address:Lorg/snmp4j/smi/Address;

    return-object v0
.end method

.method public getError()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lorg/snmp4j/event/AuthenticationFailureEvent;->error:I

    return v0
.end method

.method public getMessage()Lorg/snmp4j/asn1/BERInputStream;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/snmp4j/event/AuthenticationFailureEvent;->message:Lorg/snmp4j/asn1/BERInputStream;

    return-object v0
.end method

.method public getTransport()Lorg/snmp4j/TransportMapping;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/snmp4j/event/AuthenticationFailureEvent;->transport:Lorg/snmp4j/TransportMapping;

    return-object v0
.end method
