.class public Lorg/snmp4j/smi/BitString;
.super Lorg/snmp4j/smi/OctetString;
.source "BitString.java"


# static fields
.field private static final serialVersionUID:J = -0x794872c82b8fa4b0L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 72
    new-instance v0, Lorg/snmp4j/smi/BitString;

    invoke-direct {v0}, Lorg/snmp4j/smi/BitString;-><init>()V

    .line 73
    .local v0, clone:Lorg/snmp4j/smi/BitString;
    invoke-super {p0}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/snmp4j/smi/BitString;->setValue([B)V

    .line 74
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
    .line 62
    new-instance v0, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v0}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 63
    .local v0, type:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-static {p1, v0}, Lorg/snmp4j/asn1/BER;->decodeString(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)[B

    move-result-object v1

    .line 64
    .local v1, v:[B
    invoke-virtual {v0}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2d

    .line 65
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Wrong type encountered when decoding BitString: "

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

    .line 68
    :cond_2d
    invoke-virtual {p0, v1}, Lorg/snmp4j/smi/BitString;->setValue([B)V

    .line 69
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
    .line 58
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/snmp4j/smi/BitString;->getValue()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/snmp4j/asn1/BER;->encodeString(Ljava/io/OutputStream;B[B)V

    .line 59
    return-void
.end method

.method public getSyntax()I
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x3

    return v0
.end method
