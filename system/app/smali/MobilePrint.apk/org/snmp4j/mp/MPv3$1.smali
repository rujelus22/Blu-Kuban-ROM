.class Lorg/snmp4j/mp/MPv3$1;
.super Ljava/lang/Object;
.source "MPv3.java"

# interfaces
.implements Lorg/snmp4j/util/PDUFactory;


# instance fields
.field private final this$0:Lorg/snmp4j/mp/MPv3;


# direct methods
.method constructor <init>(Lorg/snmp4j/mp/MPv3;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lorg/snmp4j/mp/MPv3$1;->this$0:Lorg/snmp4j/mp/MPv3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPDU(Lorg/snmp4j/Target;)Lorg/snmp4j/PDU;
    .registers 3
    .parameter "target"

    .prologue
    .line 82
    new-instance v0, Lorg/snmp4j/ScopedPDU;

    invoke-direct {v0}, Lorg/snmp4j/ScopedPDU;-><init>()V

    return-object v0
.end method
