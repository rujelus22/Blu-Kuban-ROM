.class public Lorg/snmp4j/security/UsmTimeEntry;
.super Ljava/lang/Object;
.source "UsmTimeEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6feacc938774bb19L


# instance fields
.field private engineBoots:I

.field private engineID:Lorg/snmp4j/smi/OctetString;

.field private latestReceivedTime:I

.field private timeDiff:I


# direct methods
.method public constructor <init>(Lorg/snmp4j/smi/OctetString;II)V
    .registers 4
    .parameter "engineID"
    .parameter "engineBoots"
    .parameter "engineTime"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/snmp4j/security/UsmTimeEntry;->engineID:Lorg/snmp4j/smi/OctetString;

    .line 55
    iput p2, p0, Lorg/snmp4j/security/UsmTimeEntry;->engineBoots:I

    .line 56
    invoke-virtual {p0, p3}, Lorg/snmp4j/security/UsmTimeEntry;->setEngineTime(I)V

    .line 57
    return-void
.end method


# virtual methods
.method public getEngineBoots()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lorg/snmp4j/security/UsmTimeEntry;->engineBoots:I

    return v0
.end method

.method public getEngineID()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lorg/snmp4j/security/UsmTimeEntry;->engineID:Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public getLatestReceivedTime()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lorg/snmp4j/security/UsmTimeEntry;->latestReceivedTime:I

    return v0
.end method

.method public getTimeDiff()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lorg/snmp4j/security/UsmTimeEntry;->timeDiff:I

    return v0
.end method

.method public setEngineBoots(I)V
    .registers 2
    .parameter "engineBoots"

    .prologue
    .line 68
    iput p1, p0, Lorg/snmp4j/security/UsmTimeEntry;->engineBoots:I

    .line 69
    return-void
.end method

.method public setEngineTime(I)V
    .registers 6
    .parameter "engineTime"

    .prologue
    .line 106
    iput p1, p0, Lorg/snmp4j/security/UsmTimeEntry;->latestReceivedTime:I

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Lorg/snmp4j/security/UsmTimeEntry;->timeDiff:I

    .line 108
    return-void
.end method

.method public setLatestReceivedTime(I)V
    .registers 2
    .parameter "latestReceivedTime"

    .prologue
    .line 96
    iput p1, p0, Lorg/snmp4j/security/UsmTimeEntry;->latestReceivedTime:I

    .line 97
    return-void
.end method

.method public setTimeDiff(I)V
    .registers 2
    .parameter "timeDiff"

    .prologue
    .line 76
    iput p1, p0, Lorg/snmp4j/security/UsmTimeEntry;->timeDiff:I

    .line 77
    return-void
.end method
