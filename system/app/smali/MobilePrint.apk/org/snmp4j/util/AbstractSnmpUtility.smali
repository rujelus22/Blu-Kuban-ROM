.class public abstract Lorg/snmp4j/util/AbstractSnmpUtility;
.super Ljava/lang/Object;
.source "AbstractSnmpUtility.java"


# instance fields
.field protected pduFactory:Lorg/snmp4j/util/PDUFactory;

.field protected session:Lorg/snmp4j/Session;


# direct methods
.method public constructor <init>(Lorg/snmp4j/Session;Lorg/snmp4j/util/PDUFactory;)V
    .registers 3
    .parameter "snmpSession"
    .parameter "pduFactory"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/snmp4j/util/AbstractSnmpUtility;->session:Lorg/snmp4j/Session;

    .line 50
    iput-object p2, p0, Lorg/snmp4j/util/AbstractSnmpUtility;->pduFactory:Lorg/snmp4j/util/PDUFactory;

    .line 51
    return-void
.end method
