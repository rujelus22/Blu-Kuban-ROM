.class public Lorg/snmp4j/smi/VariableBinding;
.super Ljava/lang/Object;
.source "VariableBinding.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/snmp4j/asn1/BERSerializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0xe54ec3a5fa3ca01L


# instance fields
.field private oid:Lorg/snmp4j/smi/OID;

.field private variable:Lorg/snmp4j/smi/Variable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/snmp4j/smi/OID;

    invoke-direct {v0}, Lorg/snmp4j/smi/OID;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/smi/VariableBinding;->oid:Lorg/snmp4j/smi/OID;

    .line 51
    sget-object v0, Lorg/snmp4j/smi/Null;->instance:Lorg/snmp4j/smi/Null;

    iput-object v0, p0, Lorg/snmp4j/smi/VariableBinding;->variable:Lorg/snmp4j/smi/Variable;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/smi/OID;)V
    .registers 3
    .parameter "oid"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lorg/snmp4j/smi/VariableBinding;->setOid(Lorg/snmp4j/smi/OID;)V

    .line 62
    sget-object v0, Lorg/snmp4j/smi/Null;->instance:Lorg/snmp4j/smi/Null;

    iput-object v0, p0, Lorg/snmp4j/smi/VariableBinding;->variable:Lorg/snmp4j/smi/Variable;

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;)V
    .registers 3
    .parameter "oid"
    .parameter "variable"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p0, p1}, Lorg/snmp4j/smi/VariableBinding;->setOid(Lorg/snmp4j/smi/OID;)V

    .line 74
    invoke-virtual {p0, p2}, Lorg/snmp4j/smi/VariableBinding;->setVariable(Lorg/snmp4j/smi/Variable;)V

    .line 75
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 208
    new-instance v0, Lorg/snmp4j/smi/VariableBinding;

    iget-object v1, p0, Lorg/snmp4j/smi/VariableBinding;->oid:Lorg/snmp4j/smi/OID;

    iget-object v2, p0, Lorg/snmp4j/smi/VariableBinding;->variable:Lorg/snmp4j/smi/Variable;

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;)V

    return-object v0
.end method

.method public final decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V
    .registers 9
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    new-instance v3, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v3}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 162
    .local v3, type:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-static {p1, v3}, Lorg/snmp4j/asn1/BER;->decodeHeader(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)I

    move-result v0

    .line 163
    .local v0, length:I
    invoke-virtual {p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v1

    .line 164
    .local v1, startPos:J
    invoke-virtual {v3}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_32

    .line 165
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Invalid sequence encoding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 167
    :cond_32
    iget-object v4, p0, Lorg/snmp4j/smi/VariableBinding;->oid:Lorg/snmp4j/smi/OID;

    invoke-virtual {v4, p1}, Lorg/snmp4j/smi/OID;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 168
    invoke-static {p1}, Lorg/snmp4j/smi/AbstractVariable;->createFromBER(Lorg/snmp4j/asn1/BERInputStream;)Lorg/snmp4j/smi/Variable;

    move-result-object v4

    iput-object v4, p0, Lorg/snmp4j/smi/VariableBinding;->variable:Lorg/snmp4j/smi/Variable;

    .line 169
    invoke-static {}, Lorg/snmp4j/asn1/BER;->isCheckSequenceLength()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 170
    invoke-virtual {p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v4

    sub-long/2addr v4, v1

    long-to-int v4, v4

    invoke-static {v0, v4, p0}, Lorg/snmp4j/asn1/BER;->checkSequenceLength(IILorg/snmp4j/asn1/BERSerializable;)V

    .line 174
    :cond_4c
    return-void
.end method

.method public final encodeBER(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/snmp4j/smi/VariableBinding;->getBERPayloadLength()I

    move-result v0

    .line 178
    .local v0, length:I
    const/16 v1, 0x30

    invoke-static {p1, v1, v0}, Lorg/snmp4j/asn1/BER;->encodeHeader(Ljava/io/OutputStream;II)V

    .line 180
    iget-object v1, p0, Lorg/snmp4j/smi/VariableBinding;->oid:Lorg/snmp4j/smi/OID;

    invoke-virtual {v1, p1}, Lorg/snmp4j/smi/OID;->encodeBER(Ljava/io/OutputStream;)V

    .line 181
    iget-object v1, p0, Lorg/snmp4j/smi/VariableBinding;->variable:Lorg/snmp4j/smi/Variable;

    invoke-interface {v1, p1}, Lorg/snmp4j/smi/Variable;->encodeBER(Ljava/io/OutputStream;)V

    .line 182
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 216
    instance-of v2, p1, Lorg/snmp4j/smi/VariableBinding;

    if-eqz v2, :cond_21

    move-object v0, p1

    .line 217
    check-cast v0, Lorg/snmp4j/smi/VariableBinding;

    .line 218
    .local v0, other:Lorg/snmp4j/smi/VariableBinding;
    iget-object v2, p0, Lorg/snmp4j/smi/VariableBinding;->oid:Lorg/snmp4j/smi/OID;

    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/snmp4j/smi/OID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lorg/snmp4j/smi/VariableBinding;->variable:Lorg/snmp4j/smi/Variable;

    invoke-virtual {v0}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    .line 221
    .end local v0           #other:Lorg/snmp4j/smi/VariableBinding;
    :cond_21
    return v1
.end method

.method public final getBERLength()I
    .registers 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/snmp4j/smi/VariableBinding;->getBERPayloadLength()I

    move-result v0

    .line 156
    .local v0, length:I
    invoke-static {v0}, Lorg/snmp4j/asn1/BER;->getBERLengthOfLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 157
    return v0
.end method

.method public final getBERPayloadLength()I
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lorg/snmp4j/smi/VariableBinding;->oid:Lorg/snmp4j/smi/OID;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OID;->getBERLength()I

    move-result v0

    iget-object v1, p0, Lorg/snmp4j/smi/VariableBinding;->variable:Lorg/snmp4j/smi/Variable;

    invoke-interface {v1}, Lorg/snmp4j/smi/Variable;->getBERLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getOid()Lorg/snmp4j/smi/OID;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/snmp4j/smi/VariableBinding;->oid:Lorg/snmp4j/smi/OID;

    return-object v0
.end method

.method public final getSyntax()I
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/snmp4j/smi/VariableBinding;->variable:Lorg/snmp4j/smi/Variable;

    invoke-interface {v0}, Lorg/snmp4j/smi/Variable;->getSyntax()I

    move-result v0

    return v0
.end method

.method public getVariable()Lorg/snmp4j/smi/Variable;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/snmp4j/smi/VariableBinding;->variable:Lorg/snmp4j/smi/Variable;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lorg/snmp4j/smi/VariableBinding;->oid:Lorg/snmp4j/smi/OID;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OID;->hashCode()I

    move-result v0

    return v0
.end method

.method public isException()Z
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lorg/snmp4j/smi/VariableBinding;->variable:Lorg/snmp4j/smi/Variable;

    invoke-interface {v0}, Lorg/snmp4j/smi/Variable;->isException()Z

    move-result v0

    return v0
.end method

.method public setOid(Lorg/snmp4j/smi/OID;)V
    .registers 4
    .parameter "oid"

    .prologue
    .line 93
    if-nez p1, :cond_a

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OID of a VariableBinding must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_a
    invoke-virtual {p1}, Lorg/snmp4j/smi/OID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/OID;

    iput-object v0, p0, Lorg/snmp4j/smi/VariableBinding;->oid:Lorg/snmp4j/smi/OID;

    .line 98
    return-void
.end method

.method public setVariable(Lorg/snmp4j/smi/Variable;)V
    .registers 4
    .parameter "variable"

    .prologue
    .line 108
    if-nez p1, :cond_a

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable of a VariableBinding must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_a
    invoke-interface {p1}, Lorg/snmp4j/smi/Variable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/Variable;

    iput-object v0, p0, Lorg/snmp4j/smi/VariableBinding;->variable:Lorg/snmp4j/smi/Variable;

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 191
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->getVariableTextFormat()Lorg/snmp4j/util/VariableTextFormat;

    move-result-object v0

    .line 192
    .local v0, varFormat:Lorg/snmp4j/util/VariableTextFormat;
    iget-object v1, p0, Lorg/snmp4j/smi/VariableBinding;->oid:Lorg/snmp4j/smi/OID;

    iget-object v2, p0, Lorg/snmp4j/smi/VariableBinding;->variable:Lorg/snmp4j/smi/Variable;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lorg/snmp4j/util/VariableTextFormat;->format(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toValueString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 203
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->getVariableTextFormat()Lorg/snmp4j/util/VariableTextFormat;

    move-result-object v0

    .line 204
    .local v0, varFormat:Lorg/snmp4j/util/VariableTextFormat;
    iget-object v1, p0, Lorg/snmp4j/smi/VariableBinding;->oid:Lorg/snmp4j/smi/OID;

    iget-object v2, p0, Lorg/snmp4j/smi/VariableBinding;->variable:Lorg/snmp4j/smi/Variable;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/snmp4j/util/VariableTextFormat;->format(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
