.class public Lorg/snmp4j/smi/Gauge32;
.super Lorg/snmp4j/smi/UnsignedInteger32;
.source "Gauge32.java"


# static fields
.field static final serialVersionUID:J = 0x1464f941bd670a45L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/snmp4j/smi/UnsignedInteger32;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .parameter "value"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/snmp4j/smi/UnsignedInteger32;-><init>(J)V

    .line 43
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 50
    new-instance v0, Lorg/snmp4j/smi/Gauge32;

    iget-wide v1, p0, Lorg/snmp4j/smi/UnsignedInteger32;->value:J

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/smi/Gauge32;-><init>(J)V

    return-object v0
.end method

.method public getSyntax()I
    .registers 2

    .prologue
    .line 46
    const/16 v0, 0x42

    return v0
.end method
