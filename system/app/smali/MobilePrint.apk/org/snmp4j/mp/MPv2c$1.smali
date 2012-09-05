.class Lorg/snmp4j/mp/MPv2c$1;
.super Ljava/lang/Object;
.source "MPv2c.java"

# interfaces
.implements Lorg/snmp4j/util/PDUFactory;


# instance fields
.field private final this$0:Lorg/snmp4j/mp/MPv2c;


# direct methods
.method constructor <init>(Lorg/snmp4j/mp/MPv2c;)V
    .registers 2
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lorg/snmp4j/mp/MPv2c$1;->this$0:Lorg/snmp4j/mp/MPv2c;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPDU(Lorg/snmp4j/Target;)Lorg/snmp4j/PDU;
    .registers 3
    .parameter "target"

    .prologue
    .line 57
    new-instance v0, Lorg/snmp4j/PDU;

    invoke-direct {v0}, Lorg/snmp4j/PDU;-><init>()V

    return-object v0
.end method
