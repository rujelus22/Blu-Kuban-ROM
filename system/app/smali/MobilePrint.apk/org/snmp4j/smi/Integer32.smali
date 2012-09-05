.class public Lorg/snmp4j/smi/Integer32;
.super Lorg/snmp4j/smi/AbstractVariable;
.source "Integer32.java"

# interfaces
.implements Lorg/snmp4j/smi/AssignableFromInteger;
.implements Lorg/snmp4j/smi/AssignableFromString;


# static fields
.field private static final serialVersionUID:J = 0x460776aea10a6dc0L


# instance fields
.field private value:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/snmp4j/smi/AbstractVariable;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/snmp4j/smi/Integer32;->value:I

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/snmp4j/smi/AbstractVariable;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/snmp4j/smi/Integer32;->value:I

    .line 52
    invoke-virtual {p0, p1}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 53
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 130
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    iget v1, p0, Lorg/snmp4j/smi/Integer32;->value:I

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 4
    .parameter "o"

    .prologue
    .line 100
    iget v0, p0, Lorg/snmp4j/smi/Integer32;->value:I

    check-cast p1, Lorg/snmp4j/smi/Integer32;

    .end local p1
    iget v1, p1, Lorg/snmp4j/smi/Integer32;->value:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V
    .registers 7
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v1, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v1}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 61
    .local v1, type:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-static {p1, v1}, Lorg/snmp4j/asn1/BER;->decodeInteger(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)I

    move-result v0

    .line 62
    .local v0, newValue:I
    invoke-virtual {v1}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2d

    .line 63
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Wrong type encountered when decoding Counter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_2d
    invoke-virtual {p0, v0}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 66
    return-void
.end method

.method public encodeBER(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x2

    iget v1, p0, Lorg/snmp4j/smi/Integer32;->value:I

    invoke-static {p1, v0, v1}, Lorg/snmp4j/asn1/BER;->encodeInteger(Ljava/io/OutputStream;BI)V

    .line 57
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 93
    instance-of v1, p1, Lorg/snmp4j/smi/Integer32;

    if-eqz v1, :cond_e

    .line 94
    check-cast p1, Lorg/snmp4j/smi/Integer32;

    .end local p1
    iget v1, p1, Lorg/snmp4j/smi/Integer32;->value:I

    iget v2, p0, Lorg/snmp4j/smi/Integer32;->value:I

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    .line 96
    :cond_e
    return v0
.end method

.method public fromSubIndex(Lorg/snmp4j/smi/OID;Z)V
    .registers 4
    .parameter "subIndex"
    .parameter "impliedLength"

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/snmp4j/smi/OID;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 147
    return-void
.end method

.method public getBERLength()I
    .registers 3

    .prologue
    .line 77
    iget v0, p0, Lorg/snmp4j/smi/Integer32;->value:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_e

    iget v0, p0, Lorg/snmp4j/smi/Integer32;->value:I

    const/16 v1, -0x80

    if-lt v0, v1, :cond_e

    .line 79
    const/4 v0, 0x3

    .line 89
    :goto_d
    return v0

    .line 81
    :cond_e
    iget v0, p0, Lorg/snmp4j/smi/Integer32;->value:I

    const v1, 0x8000

    if-ge v0, v1, :cond_1d

    iget v0, p0, Lorg/snmp4j/smi/Integer32;->value:I

    const/16 v1, -0x8000

    if-lt v0, v1, :cond_1d

    .line 83
    const/4 v0, 0x4

    goto :goto_d

    .line 85
    :cond_1d
    iget v0, p0, Lorg/snmp4j/smi/Integer32;->value:I

    const/high16 v1, 0x80

    if-ge v0, v1, :cond_2b

    iget v0, p0, Lorg/snmp4j/smi/Integer32;->value:I

    const/high16 v1, -0x80

    if-lt v0, v1, :cond_2b

    .line 87
    const/4 v0, 0x5

    goto :goto_d

    .line 89
    :cond_2b
    const/4 v0, 0x6

    goto :goto_d
.end method

.method public getSyntax()I
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x2

    return v0
.end method

.method public final getValue()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lorg/snmp4j/smi/Integer32;->value:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lorg/snmp4j/smi/Integer32;->value:I

    return v0
.end method

.method public final setValue(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 117
    iput p1, p0, Lorg/snmp4j/smi/Integer32;->value:I

    .line 118
    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/snmp4j/smi/Integer32;->value:I

    .line 109
    return-void
.end method

.method public final toInt()I
    .registers 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v0

    return v0
.end method

.method public final toLong()J
    .registers 3

    .prologue
    .line 138
    invoke-virtual {p0}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lorg/snmp4j/smi/Integer32;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSubIndex(Z)Lorg/snmp4j/smi/OID;
    .registers 6
    .parameter "impliedLength"

    .prologue
    .line 142
    new-instance v0, Lorg/snmp4j/smi/OID;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lorg/snmp4j/smi/Integer32;->value:I

    aput v3, v1, v2

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>([I)V

    return-object v0
.end method
