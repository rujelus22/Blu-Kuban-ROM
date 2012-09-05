.class public abstract Lorg/snmp4j/AbstractTarget;
.super Ljava/lang/Object;
.source "AbstractTarget.java"

# interfaces
.implements Lorg/snmp4j/Target;


# instance fields
.field private address:Lorg/snmp4j/smi/Address;

.field private maxSizeRequestPDU:I

.field private retries:I

.field private timeout:J

.field private version:I


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x3

    iput v0, p0, Lorg/snmp4j/AbstractTarget;->version:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/snmp4j/AbstractTarget;->retries:I

    .line 43
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/snmp4j/AbstractTarget;->timeout:J

    .line 44
    const v0, 0xffff

    iput v0, p0, Lorg/snmp4j/AbstractTarget;->maxSizeRequestPDU:I

    .line 50
    return-void
.end method

.method protected constructor <init>(Lorg/snmp4j/smi/Address;)V
    .registers 4
    .parameter "address"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x3

    iput v0, p0, Lorg/snmp4j/AbstractTarget;->version:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/snmp4j/AbstractTarget;->retries:I

    .line 43
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/snmp4j/AbstractTarget;->timeout:J

    .line 44
    const v0, 0xffff

    iput v0, p0, Lorg/snmp4j/AbstractTarget;->maxSizeRequestPDU:I

    .line 58
    iput-object p1, p0, Lorg/snmp4j/AbstractTarget;->address:Lorg/snmp4j/smi/Address;

    .line 59
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 181
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 184
    :goto_4
    return-object v1

    .line 183
    :catch_5
    move-exception v0

    .line 184
    .local v0, ex:Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public getAddress()Lorg/snmp4j/smi/Address;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/snmp4j/AbstractTarget;->address:Lorg/snmp4j/smi/Address;

    return-object v0
.end method

.method public getMaxSizeRequestPDU()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Lorg/snmp4j/AbstractTarget;->maxSizeRequestPDU:I

    return v0
.end method

.method public getRetries()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lorg/snmp4j/AbstractTarget;->retries:I

    return v0
.end method

.method public getTimeout()J
    .registers 3

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/snmp4j/AbstractTarget;->timeout:J

    return-wide v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lorg/snmp4j/AbstractTarget;->version:I

    return v0
.end method

.method public setAddress(Lorg/snmp4j/smi/Address;)V
    .registers 2
    .parameter "address"

    .prologue
    .line 76
    iput-object p1, p0, Lorg/snmp4j/AbstractTarget;->address:Lorg/snmp4j/smi/Address;

    .line 77
    return-void
.end method

.method public setMaxSizeRequestPDU(I)V
    .registers 4
    .parameter "maxSizeRequestPDU"

    .prologue
    .line 163
    const/16 v0, 0x1e4

    if-ge p1, v0, :cond_c

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The minimum PDU length is: 484"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_c
    iput p1, p0, Lorg/snmp4j/AbstractTarget;->maxSizeRequestPDU:I

    .line 168
    return-void
.end method

.method public setRetries(I)V
    .registers 4
    .parameter "retries"

    .prologue
    .line 111
    if-gez p1, :cond_a

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of retries < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_a
    iput p1, p0, Lorg/snmp4j/AbstractTarget;->retries:I

    .line 115
    return-void
.end method

.method public setTimeout(J)V
    .registers 3
    .parameter "timeout"

    .prologue
    .line 133
    iput-wide p1, p0, Lorg/snmp4j/AbstractTarget;->timeout:J

    .line 134
    return-void
.end method

.method public setVersion(I)V
    .registers 2
    .parameter "version"

    .prologue
    .line 89
    iput p1, p0, Lorg/snmp4j/AbstractTarget;->version:I

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/snmp4j/AbstractTarget;->toStringAbstractTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringAbstractTarget()Ljava/lang/String;
    .registers 4

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/snmp4j/AbstractTarget;->getAddress()Lorg/snmp4j/smi/Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/snmp4j/AbstractTarget;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lorg/snmp4j/AbstractTarget;->timeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", retries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/snmp4j/AbstractTarget;->retries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
