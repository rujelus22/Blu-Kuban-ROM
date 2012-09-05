.class public Lorg/snmp4j/MutablePDU;
.super Ljava/lang/Object;
.source "MutablePDU.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x22d9567d8537656fL


# instance fields
.field private pdu:Lorg/snmp4j/PDU;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public getPdu()Lorg/snmp4j/PDU;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lorg/snmp4j/MutablePDU;->pdu:Lorg/snmp4j/PDU;

    return-object v0
.end method

.method public setPdu(Lorg/snmp4j/PDU;)V
    .registers 2
    .parameter "pdu"

    .prologue
    .line 46
    iput-object p1, p0, Lorg/snmp4j/MutablePDU;->pdu:Lorg/snmp4j/PDU;

    .line 47
    return-void
.end method
