.class public Lorg/snmp4j/smi/Opaque;
.super Lorg/snmp4j/smi/OctetString;
.source "Opaque.java"


# static fields
.field private static final serialVersionUID:J = -0x3c990b1b76d0cdL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .parameter "bytes"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    .line 48
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 78
    new-instance v0, Lorg/snmp4j/smi/Opaque;

    invoke-super {p0}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/Opaque;-><init>([B)V

    return-object v0
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
    .line 59
    new-instance v0, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v0}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 60
    .local v0, type:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-static {p1, v0}, Lorg/snmp4j/asn1/BER;->decodeString(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)[B

    move-result-object v1

    .line 61
    .local v1, v:[B
    invoke-virtual {v0}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v2

    const/16 v3, 0x44

    if-eq v2, v3, :cond_2e

    .line 62
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Wrong type encountered when decoding OctetString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_2e
    invoke-virtual {p0, v1}, Lorg/snmp4j/smi/Opaque;->setValue([B)V

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
    .line 55
    const/16 v0, 0x44

    invoke-virtual {p0}, Lorg/snmp4j/smi/Opaque;->getValue()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/snmp4j/asn1/BER;->encodeString(Ljava/io/OutputStream;B[B)V

    .line 56
    return-void
.end method

.method public getSyntax()I
    .registers 2

    .prologue
    .line 51
    const/16 v0, 0x44

    return v0
.end method

.method public setValue(Lorg/snmp4j/smi/OctetString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 69
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lorg/snmp4j/smi/Opaque;->setValue([B)V

    .line 70
    invoke-virtual {p0, p1}, Lorg/snmp4j/smi/Opaque;->append(Lorg/snmp4j/smi/OctetString;)V

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    invoke-super {p0}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
