.class public Lorg/snmp4j/util/DefaultPDUFactory;
.super Ljava/lang/Object;
.source "DefaultPDUFactory.java"

# interfaces
.implements Lorg/snmp4j/util/PDUFactory;


# instance fields
.field private pduType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, -0x60

    iput v0, p0, Lorg/snmp4j/util/DefaultPDUFactory;->pduType:I

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "pduType"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, -0x60

    iput v0, p0, Lorg/snmp4j/util/DefaultPDUFactory;->pduType:I

    .line 54
    invoke-virtual {p0, p1}, Lorg/snmp4j/util/DefaultPDUFactory;->setPduType(I)V

    .line 55
    return-void
.end method

.method public static createPDU(I)Lorg/snmp4j/PDU;
    .registers 2
    .parameter "targetVersion"

    .prologue
    .line 102
    packed-switch p0, :pswitch_data_16

    .line 112
    :pswitch_3
    new-instance v0, Lorg/snmp4j/PDU;

    invoke-direct {v0}, Lorg/snmp4j/PDU;-><init>()V

    .line 114
    .local v0, request:Lorg/snmp4j/PDU;
    :goto_8
    return-object v0

    .line 104
    .end local v0           #request:Lorg/snmp4j/PDU;
    :pswitch_9
    new-instance v0, Lorg/snmp4j/ScopedPDU;

    invoke-direct {v0}, Lorg/snmp4j/ScopedPDU;-><init>()V

    .line 105
    .restart local v0       #request:Lorg/snmp4j/PDU;
    goto :goto_8

    .line 108
    .end local v0           #request:Lorg/snmp4j/PDU;
    :pswitch_f
    new-instance v0, Lorg/snmp4j/PDUv1;

    invoke-direct {v0}, Lorg/snmp4j/PDUv1;-><init>()V

    .line 109
    .restart local v0       #request:Lorg/snmp4j/PDU;
    goto :goto_8

    .line 102
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_f
        :pswitch_3
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method

.method public static createPDU(Lorg/snmp4j/Target;I)Lorg/snmp4j/PDU;
    .registers 4
    .parameter "target"
    .parameter "pduType"

    .prologue
    .line 87
    invoke-interface {p0}, Lorg/snmp4j/Target;->getVersion()I

    move-result v1

    invoke-static {v1}, Lorg/snmp4j/util/DefaultPDUFactory;->createPDU(I)Lorg/snmp4j/PDU;

    move-result-object v0

    .line 88
    .local v0, request:Lorg/snmp4j/PDU;
    invoke-virtual {v0, p1}, Lorg/snmp4j/PDU;->setType(I)V

    .line 89
    return-object v0
.end method


# virtual methods
.method public createPDU(Lorg/snmp4j/Target;)Lorg/snmp4j/PDU;
    .registers 3
    .parameter "target"

    .prologue
    .line 73
    iget v0, p0, Lorg/snmp4j/util/DefaultPDUFactory;->pduType:I

    invoke-static {p1, v0}, Lorg/snmp4j/util/DefaultPDUFactory;->createPDU(Lorg/snmp4j/Target;I)Lorg/snmp4j/PDU;

    move-result-object v0

    return-object v0
.end method

.method public getPduType()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lorg/snmp4j/util/DefaultPDUFactory;->pduType:I

    return v0
.end method

.method public setPduType(I)V
    .registers 2
    .parameter "pduType"

    .prologue
    .line 58
    iput p1, p0, Lorg/snmp4j/util/DefaultPDUFactory;->pduType:I

    .line 59
    return-void
.end method
