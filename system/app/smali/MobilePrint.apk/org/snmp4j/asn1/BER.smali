.class public Lorg/snmp4j/asn1/BER;
.super Ljava/lang/Object;
.source "BER.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/snmp4j/asn1/BER$MutableByte;
    }
.end annotation


# static fields
.field public static final ASN_APPLICATION:B = 0x40t

.field public static final ASN_BIT8:B = -0x80t

.field public static final ASN_BIT_STR:B = 0x3t

.field public static final ASN_BOOLEAN:B = 0x1t

.field public static final ASN_CONSTRUCTOR:B = 0x20t

.field public static final ASN_CONTEXT:B = -0x80t

.field public static final ASN_EXTENSION_ID:B = 0x1ft

.field public static final ASN_INTEGER:B = 0x2t

.field public static final ASN_LONG_LEN:B = -0x80t

.field public static final ASN_NULL:B = 0x5t

.field public static final ASN_OBJECT_ID:B = 0x6t

.field public static final ASN_OCTET_STR:B = 0x4t

.field public static final ASN_PRIMITIVE:B = 0x0t

.field public static final ASN_PRIVATE:B = -0x40t

.field public static final ASN_SEQUENCE:B = 0x10t

.field public static final ASN_SET:B = 0x11t

.field public static final ASN_UNIVERSAL:B = 0x0t

.field public static final BITSTRING:B = 0x3t

.field public static final COUNTER:B = 0x41t

.field public static final COUNTER32:B = 0x41t

.field public static final COUNTER64:B = 0x46t

.field public static final ENDOFMIBVIEW:I = 0x82

.field public static final GAUGE:B = 0x42t

.field public static final GAUGE32:B = 0x42t

.field public static final INTEGER:B = 0x2t

.field public static final INTEGER32:B = 0x2t

.field public static final IPADDRESS:B = 0x40t

.field private static final LENMASK:I = 0xff

.field public static final MAX_OID_LENGTH:I = 0x7f

.field public static final NOSUCHINSTANCE:I = 0x81

.field public static final NOSUCHOBJECT:I = 0x80

.field public static final NULL:B = 0x5t

.field public static final OCTETSTRING:B = 0x4t

.field public static final OID:B = 0x6t

.field public static final OPAQUE:B = 0x44t

.field public static final SEQUENCE:B = 0x30t

.field public static final TIMETICKS:B = 0x43t

.field private static checkSequenceLength:Z

.field private static checkValueLength:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x1

    .line 77
    sput-boolean v0, Lorg/snmp4j/asn1/BER;->checkSequenceLength:Z

    .line 78
    sput-boolean v0, Lorg/snmp4j/asn1/BER;->checkValueLength:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method private static checkLength(Lorg/snmp4j/asn1/BERInputStream;I)V
    .registers 5
    .parameter "is"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 899
    sget-boolean v0, Lorg/snmp4j/asn1/BER;->checkValueLength:Z

    if-nez v0, :cond_5

    .line 909
    :cond_4
    return-void

    .line 902
    :cond_5
    if-ltz p1, :cond_d

    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->getAvailableBytes()I

    move-result v0

    if-le p1, v0, :cond_4

    .line 903
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The encoded length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " exceeds the number of bytes left in input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p0}, Lorg/snmp4j/asn1/BER;->getPositionMessage(Lorg/snmp4j/asn1/BERInputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " which actually is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->getAvailableBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkSequenceLength(IILorg/snmp4j/asn1/BERSerializable;)V
    .registers 6
    .parameter "expectedLength"
    .parameter "actualLength"
    .parameter "sequence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 878
    invoke-static {}, Lorg/snmp4j/asn1/BER;->isCheckSequenceLength()Z

    move-result v0

    if-eqz v0, :cond_43

    if-eq p0, p1, :cond_43

    .line 880
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The actual length of the SEQUENCE object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " was expected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_43
    return-void
.end method

.method public static checkSequenceLength(ILorg/snmp4j/asn1/BERSerializable;)V
    .registers 5
    .parameter "expectedLength"
    .parameter "sequence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 865
    invoke-static {}, Lorg/snmp4j/asn1/BER;->isCheckSequenceLength()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p1}, Lorg/snmp4j/asn1/BERSerializable;->getBERPayloadLength()I

    move-result v0

    if-eq p0, v0, :cond_4b

    .line 867
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The actual length of the SEQUENCE object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p1}, Lorg/snmp4j/asn1/BERSerializable;->getBERPayloadLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " was expected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_4b
    return-void
.end method

.method public static final decodeHeader(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)I
    .registers 3
    .parameter "is"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 609
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/snmp4j/asn1/BER;->decodeHeader(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;Z)I

    move-result v0

    return v0
.end method

.method public static final decodeHeader(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;Z)I
    .registers 7
    .parameter "is"
    .parameter "type"
    .parameter "checkLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->read()I

    move-result v1

    int-to-byte v0, v1

    .line 579
    .local v0, t:B
    and-int/lit8 v1, v0, 0x1f

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_28

    .line 580
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot process extension IDs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p0}, Lorg/snmp4j/asn1/BER;->getPositionMessage(Lorg/snmp4j/asn1/BERInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 583
    :cond_28
    invoke-virtual {p1, v0}, Lorg/snmp4j/asn1/BER$MutableByte;->setValue(B)V

    .line 584
    invoke-static {p0, p2}, Lorg/snmp4j/asn1/BER;->decodeLength(Lorg/snmp4j/asn1/BERInputStream;Z)I

    move-result v1

    return v1
.end method

.method public static final decodeInteger(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)I
    .registers 9
    .parameter "is"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 616
    const/4 v3, 0x0

    .line 618
    .local v3, value:I
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Lorg/snmp4j/asn1/BER$MutableByte;->setValue(B)V

    .line 620
    iget-byte v4, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3d

    iget-byte v4, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/16 v5, 0x43

    if-eq v4, v5, :cond_3d

    iget-byte v4, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/16 v5, 0x41

    if-eq v4, v5, :cond_3d

    .line 622
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Wrong ASN.1 type. Not an integer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-byte v6, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {p0}, Lorg/snmp4j/asn1/BER;->getPositionMessage(Lorg/snmp4j/asn1/BERInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 625
    :cond_3d
    invoke-static {p0}, Lorg/snmp4j/asn1/BER;->decodeLength(Lorg/snmp4j/asn1/BERInputStream;)I

    move-result v1

    .line 626
    .local v1, length:I
    const/4 v4, 0x4

    if-le v1, v4, :cond_61

    .line 627
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Length greater than 32bit are not supported  for integers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {p0}, Lorg/snmp4j/asn1/BER;->getPositionMessage(Lorg/snmp4j/asn1/BERInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 630
    :cond_61
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->read()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 631
    .local v0, b:I
    and-int/lit16 v4, v0, 0x80

    if-lez v4, :cond_7e

    .line 632
    const/4 v3, -0x1

    move v2, v1

    .line 634
    .end local v1           #length:I
    .local v2, length:I
    :goto_6d
    add-int/lit8 v1, v2, -0x1

    .end local v2           #length:I
    .restart local v1       #length:I
    if-lez v2, :cond_7d

    .line 635
    shl-int/lit8 v4, v3, 0x8

    or-int v3, v4, v0

    .line 636
    if-lez v1, :cond_7e

    .line 637
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->read()I

    move-result v0

    move v2, v1

    .end local v1           #length:I
    .restart local v2       #length:I
    goto :goto_6d

    .line 640
    .end local v2           #length:I
    .restart local v1       #length:I
    :cond_7d
    return v3

    :cond_7e
    move v2, v1

    .end local v1           #length:I
    .restart local v2       #length:I
    goto :goto_6d
.end method

.method public static final decodeLength(Lorg/snmp4j/asn1/BERInputStream;)I
    .registers 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/snmp4j/asn1/BER;->decodeLength(Lorg/snmp4j/asn1/BERInputStream;Z)I

    move-result v0

    return v0
.end method

.method public static final decodeLength(Lorg/snmp4j/asn1/BERInputStream;Z)I
    .registers 8
    .parameter "is"
    .parameter "checkLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    const/4 v2, 0x0

    .line 521
    .local v2, length:I
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->read()I

    move-result v3

    .line 523
    .local v3, lengthbyte:I
    and-int/lit8 v4, v3, -0x80

    if-lez v4, :cond_3e

    .line 524
    and-int/lit8 v3, v3, 0x7f

    .line 525
    if-nez v3, :cond_15

    .line 526
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Indefinite lengths are not supported"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 528
    :cond_15
    const/4 v4, 0x4

    if-le v3, v4, :cond_20

    .line 529
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Data length > 4 bytes are not supported!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 531
    :cond_20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    if-ge v0, v3, :cond_34

    .line 532
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->read()I

    move-result v4

    and-int/lit16 v1, v4, 0xff

    .line 533
    .local v1, l:I
    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v0

    mul-int/lit8 v4, v4, 0x8

    shl-int v4, v1, v4

    or-int/2addr v2, v4

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 535
    .end local v1           #l:I
    :cond_34
    if-gez v2, :cond_40

    .line 536
    new-instance v4, Ljava/io/IOException;

    const-string v5, "SNMP does not support data lengths > 2^31"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 540
    .end local v0           #i:I
    :cond_3e
    and-int/lit16 v2, v3, 0xff

    .line 546
    :cond_40
    if-eqz p1, :cond_45

    .line 547
    invoke-static {p0, v2}, Lorg/snmp4j/asn1/BER;->checkLength(Lorg/snmp4j/asn1/BERInputStream;I)V

    .line 549
    :cond_45
    return v2
.end method

.method public static final decodeNull(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)V
    .registers 6
    .parameter "is"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 795
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Lorg/snmp4j/asn1/BER$MutableByte;->setValue(B)V

    .line 796
    iget-byte v1, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/4 v2, 0x5

    if-eq v1, v2, :cond_44

    iget-byte v1, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/16 v2, -0x80

    if-eq v1, v2, :cond_44

    iget-byte v1, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/16 v2, -0x7f

    if-eq v1, v2, :cond_44

    iget-byte v1, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/16 v2, -0x7e

    if-eq v1, v2, :cond_44

    .line 798
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Wrong ASN.1 type. Is not null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-byte v3, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p0}, Lorg/snmp4j/asn1/BER;->getPositionMessage(Lorg/snmp4j/asn1/BERInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 801
    :cond_44
    invoke-static {p0}, Lorg/snmp4j/asn1/BER;->decodeLength(Lorg/snmp4j/asn1/BERInputStream;)I

    move-result v0

    .line 802
    .local v0, length:I
    if-eqz v0, :cond_6b

    .line 803
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid Null encoding, length is not zero: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p0}, Lorg/snmp4j/asn1/BER;->getPositionMessage(Lorg/snmp4j/asn1/BERInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 806
    :cond_6b
    return-void
.end method

.method public static final decodeOID(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)[I
    .registers 14
    .parameter "is"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 739
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->read()I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {p1, v8}, Lorg/snmp4j/asn1/BER$MutableByte;->setValue(B)V

    .line 740
    iget-byte v8, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/4 v9, 0x6

    if-eq v8, v9, :cond_32

    .line 741
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Wrong type. Not an OID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-byte v10, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {p0}, Lorg/snmp4j/asn1/BER;->getPositionMessage(Lorg/snmp4j/asn1/BERInputStream;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 744
    :cond_32
    invoke-static {p0}, Lorg/snmp4j/asn1/BER;->decodeLength(Lorg/snmp4j/asn1/BERInputStream;)I

    move-result v1

    .line 746
    .local v1, length:I
    add-int/lit8 v8, v1, 0x2

    new-array v3, v8, [I

    .line 748
    .local v3, oid:[I
    if-nez v1, :cond_40

    .line 749
    aput v10, v3, v11

    aput v10, v3, v10

    .line 751
    :cond_40
    const/4 v4, 0x1

    .local v4, pos:I
    move v5, v4

    .line 752
    .end local v4           #pos:I
    .local v5, pos:I
    :goto_42
    if-lez v1, :cond_7e

    .line 753
    const/4 v6, 0x0

    .line 756
    .local v6, subidentifier:I
    :cond_45
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->read()I

    move-result v2

    .line 757
    .local v2, next:I
    if-gez v2, :cond_68

    .line 758
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Unexpected end of input stream"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {p0}, Lorg/snmp4j/asn1/BER;->getPositionMessage(Lorg/snmp4j/asn1/BERInputStream;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 761
    :cond_68
    and-int/lit16 v0, v2, 0xff

    .line 762
    .local v0, b:I
    shl-int/lit8 v8, v6, 0x7

    and-int/lit8 v9, v0, 0x7f

    add-int v6, v8, v9

    .line 763
    add-int/lit8 v1, v1, -0x1

    .line 764
    if-lez v1, :cond_78

    and-int/lit8 v8, v0, -0x80

    if-nez v8, :cond_45

    .line 765
    :cond_78
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pos:I
    .restart local v4       #pos:I
    aput v6, v3, v5

    move v5, v4

    .line 766
    .end local v4           #pos:I
    .restart local v5       #pos:I
    goto :goto_42

    .line 774
    .end local v0           #b:I
    .end local v2           #next:I
    .end local v6           #subidentifier:I
    :cond_7e
    aget v6, v3, v11

    .line 775
    .restart local v6       #subidentifier:I
    const/16 v8, 0x2b

    if-ne v6, v8, :cond_93

    .line 776
    aput v11, v3, v10

    .line 777
    const/4 v8, 0x3

    aput v8, v3, v11

    .line 783
    :goto_89
    const/4 v8, 0x2

    if-ge v5, v8, :cond_a0

    .line 784
    const/4 v4, 0x2

    .line 786
    .end local v5           #pos:I
    .restart local v4       #pos:I
    :goto_8d
    new-array v7, v4, [I

    .line 787
    .local v7, value:[I
    invoke-static {v3, v10, v7, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 788
    return-object v7

    .line 780
    .end local v4           #pos:I
    .end local v7           #value:[I
    .restart local v5       #pos:I
    :cond_93
    rem-int/lit8 v8, v6, 0x28

    aput v8, v3, v11

    .line 781
    aget v8, v3, v11

    sub-int v8, v6, v8

    div-int/lit8 v8, v8, 0x28

    aput v8, v3, v10

    goto :goto_89

    :cond_a0
    move v4, v5

    .end local v5           #pos:I
    .restart local v4       #pos:I
    goto :goto_8d
.end method

.method public static final decodeString(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)[B
    .registers 9
    .parameter "is"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 700
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Lorg/snmp4j/asn1/BER$MutableByte;->setValue(B)V

    .line 701
    iget-byte v4, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4d

    iget-byte v4, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/16 v5, 0x24

    if-eq v4, v5, :cond_4d

    iget-byte v4, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/16 v5, 0x40

    if-eq v4, v5, :cond_4d

    iget-byte v4, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/16 v5, 0x44

    if-eq v4, v5, :cond_4d

    iget-byte v4, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4d

    iget-byte v4, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/16 v5, 0x45

    if-eq v4, v5, :cond_4d

    .line 705
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Wrong ASN.1 type. Not a string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-byte v6, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {p0}, Lorg/snmp4j/asn1/BER;->getPositionMessage(Lorg/snmp4j/asn1/BERInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 708
    :cond_4d
    invoke-static {p0}, Lorg/snmp4j/asn1/BER;->decodeLength(Lorg/snmp4j/asn1/BERInputStream;)I

    move-result v0

    .line 710
    .local v0, length:I
    new-array v3, v0, [B

    .line 711
    .local v3, value:[B
    const/4 v1, 0x0

    .line 713
    .local v1, pos:I
    :cond_54
    :goto_54
    if-ge v1, v0, :cond_89

    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->available()I

    move-result v4

    if-lez v4, :cond_89

    .line 714
    invoke-virtual {p0, v3}, Lorg/snmp4j/asn1/BERInputStream;->read([B)I

    move-result v2

    .line 715
    .local v2, read:I
    if-lez v2, :cond_64

    .line 716
    add-int/2addr v1, v2

    goto :goto_54

    .line 718
    :cond_64
    if-gez v2, :cond_54

    .line 719
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Wrong string length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 722
    .end local v2           #read:I
    :cond_89
    return-object v3
.end method

.method public static final decodeUnsignedInt64(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)J
    .registers 11
    .parameter "is"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 812
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Lorg/snmp4j/asn1/BER$MutableByte;->setValue(B)V

    .line 813
    iget-byte v5, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/4 v6, 0x2

    if-eq v5, v6, :cond_36

    iget-byte v5, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/16 v6, 0x46

    if-eq v5, v6, :cond_36

    .line 814
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Wrong type. Not an integer 64: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-byte v7, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {p0}, Lorg/snmp4j/asn1/BER;->getPositionMessage(Lorg/snmp4j/asn1/BERInputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 817
    :cond_36
    invoke-static {p0}, Lorg/snmp4j/asn1/BER;->decodeLength(Lorg/snmp4j/asn1/BERInputStream;)I

    move-result v2

    .line 818
    .local v2, length:I
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->read()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 819
    .local v0, b:I
    const/16 v5, 0x9

    if-le v2, v5, :cond_65

    .line 820
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Invalid 64bit unsigned integer length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {p0}, Lorg/snmp4j/asn1/BER;->getPositionMessage(Lorg/snmp4j/asn1/BERInputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 824
    :cond_65
    if-nez v0, :cond_70

    .line 825
    const/4 v5, 0x1

    if-le v2, v5, :cond_6e

    .line 826
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->read()I

    move-result v0

    .line 828
    :cond_6e
    add-int/lit8 v2, v2, -0x1

    .line 830
    :cond_70
    const-wide/16 v3, 0x0

    .line 832
    .local v3, value:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_73
    if-ge v1, v2, :cond_89

    .line 833
    const/16 v5, 0x8

    shl-long v5, v3, v5

    and-int/lit16 v7, v0, 0xff

    int-to-long v7, v7

    or-long v3, v5, v7

    .line 834
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_86

    .line 835
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->read()I

    move-result v0

    .line 832
    :cond_86
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    .line 838
    :cond_89
    return-wide v3
.end method

.method public static final decodeUnsignedInteger(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)J
    .registers 11
    .parameter "is"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    const-wide/16 v3, 0x0

    .line 654
    .local v3, value:J
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Lorg/snmp4j/asn1/BER$MutableByte;->setValue(B)V

    .line 655
    iget-byte v5, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4a

    iget-byte v5, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/16 v6, 0x43

    if-eq v5, v6, :cond_4a

    iget-byte v5, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/16 v6, 0x41

    if-eq v5, v6, :cond_4a

    iget-byte v5, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/16 v6, 0x42

    if-eq v5, v6, :cond_4a

    iget-byte v5, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    const/16 v6, 0x47

    if-eq v5, v6, :cond_4a

    .line 658
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Wrong ASN.1 type. Not an unsigned integer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-byte v7, p1, Lorg/snmp4j/asn1/BER$MutableByte;->value:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {p0}, Lorg/snmp4j/asn1/BER;->getPositionMessage(Lorg/snmp4j/asn1/BERInputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 663
    :cond_4a
    invoke-static {p0}, Lorg/snmp4j/asn1/BER;->decodeLength(Lorg/snmp4j/asn1/BERInputStream;)I

    move-result v2

    .line 666
    .local v2, length:I
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->read()I

    move-result v0

    .line 667
    .local v0, b:I
    const/4 v5, 0x5

    if-gt v2, v5, :cond_5a

    const/4 v5, 0x4

    if-le v2, v5, :cond_77

    if-eqz v0, :cond_77

    .line 668
    :cond_5a
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Only 32bit unsigned integers are supported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {p0}, Lorg/snmp4j/asn1/BER;->getPositionMessage(Lorg/snmp4j/asn1/BERInputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 673
    :cond_77
    if-nez v0, :cond_82

    .line 674
    const/4 v5, 0x1

    if-le v2, v5, :cond_80

    .line 675
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->read()I

    move-result v0

    .line 677
    :cond_80
    add-int/lit8 v2, v2, -0x1

    .line 681
    :cond_82
    const/4 v1, 0x0

    .local v1, i:I
    :goto_83
    if-ge v1, v2, :cond_99

    .line 682
    const/16 v5, 0x8

    shl-long v5, v3, v5

    and-int/lit16 v7, v0, 0xff

    int-to-long v7, v7

    or-long v3, v5, v7

    .line 683
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_96

    .line 684
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->read()I

    move-result v0

    .line 681
    :cond_96
    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    .line 687
    :cond_99
    return-wide v3
.end method

.method public static final encodeHeader(Ljava/io/OutputStream;II)V
    .registers 3
    .parameter "os"
    .parameter "type"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 120
    invoke-static {p0, p2}, Lorg/snmp4j/asn1/BER;->encodeLength(Ljava/io/OutputStream;I)V

    .line 121
    return-void
.end method

.method public static final encodeHeader(Ljava/io/OutputStream;III)V
    .registers 4
    .parameter "os"
    .parameter "type"
    .parameter "length"
    .parameter "numBytesLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 141
    invoke-static {p0, p2, p3}, Lorg/snmp4j/asn1/BER;->encodeLength(Ljava/io/OutputStream;II)V

    .line 142
    return-void
.end method

.method public static final encodeInteger(Ljava/io/OutputStream;BI)V
    .registers 8
    .parameter "os"
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    move v0, p2

    .line 252
    .local v0, integer:I
    const/4 v1, 0x4

    .line 260
    .local v1, intsize:I
    const/high16 v3, -0x80

    .line 263
    .local v3, mask:I
    :goto_4
    and-int v4, v0, v3

    if-eqz v4, :cond_c

    and-int v4, v0, v3

    if-ne v4, v3, :cond_14

    :cond_c
    const/4 v4, 0x1

    if-le v1, v4, :cond_14

    .line 264
    add-int/lit8 v1, v1, -0x1

    .line 265
    shl-int/lit8 v0, v0, 0x8

    goto :goto_4

    .line 267
    :cond_14
    invoke-static {p0, p1, v1}, Lorg/snmp4j/asn1/BER;->encodeHeader(Ljava/io/OutputStream;II)V

    .line 268
    const/high16 v3, -0x100

    move v2, v1

    .line 270
    .end local v1           #intsize:I
    .local v2, intsize:I
    :goto_1a
    add-int/lit8 v1, v2, -0x1

    .end local v2           #intsize:I
    .restart local v1       #intsize:I
    if-lez v2, :cond_29

    .line 271
    and-int v4, v0, v3

    shr-int/lit8 v4, v4, 0x18

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 272
    shl-int/lit8 v0, v0, 0x8

    move v2, v1

    .end local v1           #intsize:I
    .restart local v2       #intsize:I
    goto :goto_1a

    .line 274
    .end local v2           #intsize:I
    .restart local v1       #intsize:I
    :cond_29
    return-void
.end method

.method public static final encodeLength(Ljava/io/OutputStream;I)V
    .registers 4
    .parameter "os"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, -0x7c

    .line 182
    if-gez p1, :cond_22

    .line 183
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 184
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 185
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 186
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 187
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 214
    :goto_21
    return-void

    .line 189
    :cond_22
    const/16 v0, 0x80

    if-ge p1, v0, :cond_2a

    .line 190
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_21

    .line 192
    :cond_2a
    const/16 v0, 0xff

    if-gt p1, v0, :cond_37

    .line 193
    const/16 v0, -0x7f

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 194
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_21

    .line 196
    :cond_37
    const v0, 0xffff

    if-gt p1, v0, :cond_4e

    .line 197
    const/16 v0, -0x7e

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 198
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 199
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_21

    .line 201
    :cond_4e
    const v0, 0xffffff

    if-gt p1, v0, :cond_6c

    .line 202
    const/16 v0, -0x7d

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 203
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 204
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 205
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_21

    .line 208
    :cond_6c
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 209
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 210
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 211
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 212
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_21
.end method

.method public static final encodeLength(Ljava/io/OutputStream;II)V
    .registers 5
    .parameter "os"
    .parameter "length"
    .parameter "numLengthBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    or-int/lit8 v1, p2, -0x80

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 232
    add-int/lit8 v1, p2, -0x1

    mul-int/lit8 v0, v1, 0x8

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_15

    .line 233
    shr-int v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 232
    add-int/lit8 v0, v0, -0x8

    goto :goto_9

    .line 235
    :cond_15
    return-void
.end method

.method public static final encodeOID(Ljava/io/OutputStream;B[I)V
    .registers 24
    .parameter "os"
    .parameter "type"
    .parameter "oid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-static/range {p2 .. p2}, Lorg/snmp4j/asn1/BER;->getOIDLength([I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lorg/snmp4j/asn1/BER;->encodeHeader(Ljava/io/OutputStream;II)V

    .line 421
    move-object/from16 v0, p2

    array-length v5, v0

    .line 422
    .local v5, encodedLength:I
    const/4 v9, 0x0

    .line 424
    .local v9, rpos:I
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_57

    .line 425
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 426
    const/4 v5, 0x0

    move v10, v9

    .end local v9           #rpos:I
    .local v10, rpos:I
    move v6, v5

    .line 434
    .end local v5           #encodedLength:I
    .local v6, encodedLength:I
    :goto_2a
    add-int/lit8 v5, v6, -0x1

    .end local v6           #encodedLength:I
    .restart local v5       #encodedLength:I
    if-lez v6, :cond_d7

    .line 435
    add-int/lit8 v9, v10, 0x1

    .end local v10           #rpos:I
    .restart local v9       #rpos:I
    aget v17, p2, v10

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    const-wide v19, 0xffffffffL

    and-long v11, v17, v19

    .line 436
    .local v11, subid:J
    const-wide/16 v17, 0x7f

    cmp-long v17, v11, v17

    if-gez v17, :cond_76

    .line 437
    long-to-int v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_54
    move v10, v9

    .end local v9           #rpos:I
    .restart local v10       #rpos:I
    move v6, v5

    .line 461
    .end local v5           #encodedLength:I
    .restart local v6       #encodedLength:I
    goto :goto_2a

    .line 429
    .end local v6           #encodedLength:I
    .end local v10           #rpos:I
    .end local v11           #subid:J
    .restart local v5       #encodedLength:I
    .restart local v9       #rpos:I
    :cond_57
    const/16 v17, 0x1

    aget v17, p2, v17

    const/16 v18, 0x0

    aget v18, p2, v18

    mul-int/lit8 v18, v18, 0x28

    add-int v17, v17, v18

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 430
    add-int/lit8 v5, v5, -0x2

    .line 431
    const/4 v9, 0x2

    move v10, v9

    .end local v9           #rpos:I
    .restart local v10       #rpos:I
    move v6, v5

    .end local v5           #encodedLength:I
    .restart local v6       #encodedLength:I
    goto :goto_2a

    .line 440
    .end local v6           #encodedLength:I
    .end local v10           #rpos:I
    .restart local v5       #encodedLength:I
    .restart local v9       #rpos:I
    .restart local v11       #subid:J
    :cond_76
    const-wide/16 v7, 0x7f

    .line 441
    .local v7, mask:J
    const-wide/16 v3, 0x0

    .line 444
    .local v3, bits:J
    const-wide/16 v15, 0x7f

    .local v15, testmask:J
    const-wide/16 v13, 0x0

    .local v13, testbits:J
    :goto_7e
    const-wide/16 v17, 0x0

    cmp-long v17, v15, v17

    if-eqz v17, :cond_97

    .line 446
    and-long v17, v11, v15

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-lez v17, :cond_8e

    .line 447
    move-wide v7, v15

    .line 448
    move-wide v3, v13

    .line 445
    :cond_8e
    const/16 v17, 0x7

    shl-long v15, v15, v17

    const-wide/16 v17, 0x7

    add-long v13, v13, v17

    goto :goto_7e

    .line 452
    :cond_97
    :goto_97
    const-wide/16 v17, 0x7f

    cmp-long v17, v7, v17

    if-eqz v17, :cond_c7

    .line 454
    const-wide/32 v17, 0x1e00000

    cmp-long v17, v7, v17

    if-nez v17, :cond_a7

    .line 455
    const-wide/32 v7, 0xfe00000

    .line 457
    :cond_a7
    and-long v17, v11, v7

    long-to-int v0, v3

    move/from16 v19, v0

    shr-long v17, v17, v19

    const-wide/16 v19, -0x80

    or-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 452
    const/16 v17, 0x7

    shr-long v7, v7, v17

    const-wide/16 v17, 0x7

    sub-long v3, v3, v17

    goto :goto_97

    .line 459
    :cond_c7
    and-long v17, v11, v7

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_54

    .line 462
    .end local v3           #bits:J
    .end local v7           #mask:J
    .end local v9           #rpos:I
    .end local v11           #subid:J
    .end local v13           #testbits:J
    .end local v15           #testmask:J
    .restart local v10       #rpos:I
    :cond_d7
    return-void
.end method

.method public static final encodeSequence(Ljava/io/OutputStream;BI)V
    .registers 3
    .parameter "os"
    .parameter "type"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 366
    invoke-static {p0, p2}, Lorg/snmp4j/asn1/BER;->encodeLength(Ljava/io/OutputStream;I)V

    .line 367
    return-void
.end method

.method public static final encodeString(Ljava/io/OutputStream;B[B)V
    .registers 4
    .parameter "os"
    .parameter "type"
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    array-length v0, p2

    invoke-static {p0, p1, v0}, Lorg/snmp4j/asn1/BER;->encodeHeader(Ljava/io/OutputStream;II)V

    .line 346
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 347
    return-void
.end method

.method public static final encodeUnsignedInt64(Ljava/io/OutputStream;BJ)V
    .registers 12
    .parameter "os"
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 475
    const/16 v0, 0x8

    .local v0, len:I
    :goto_4
    const/4 v2, 0x1

    if-le v0, v2, :cond_14

    .line 476
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x8

    shr-long v2, p2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_43

    .line 480
    :cond_14
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x8

    shr-long v2, p2, v2

    const-wide/16 v4, 0x80

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_23

    .line 481
    add-int/lit8 v0, v0, 0x1

    .line 483
    :cond_23
    invoke-static {p0, p1, v0}, Lorg/snmp4j/asn1/BER;->encodeHeader(Ljava/io/OutputStream;II)V

    .line 484
    const/16 v2, 0x9

    if-ne v0, v2, :cond_30

    .line 485
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 486
    add-int/lit8 v0, v0, -0x1

    .line 488
    :cond_30
    const/4 v1, 0x0

    .local v1, x:I
    :goto_31
    if-ge v1, v0, :cond_46

    .line 489
    add-int/lit8 v2, v0, -0x1

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    shr-long v2, p2, v2

    long-to-int v2, v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 475
    .end local v1           #x:I
    :cond_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 491
    .restart local v1       #x:I
    :cond_46
    return-void
.end method

.method public static final encodeUnsignedInteger(Ljava/io/OutputStream;BJ)V
    .registers 12
    .parameter "os"
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0xff

    const-wide/16 v6, 0x0

    .line 291
    const/4 v0, 0x1

    .line 292
    .local v0, len:I
    const/16 v2, 0x18

    shr-long v2, p2, v2

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3a

    .line 293
    const/4 v0, 0x4

    .line 303
    :cond_f
    :goto_f
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x8

    shr-long v2, p2, v2

    const-wide/16 v4, 0x80

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1e

    .line 304
    add-int/lit8 v0, v0, 0x1

    .line 308
    :cond_1e
    invoke-static {p0, p1, v0}, Lorg/snmp4j/asn1/BER;->encodeHeader(Ljava/io/OutputStream;II)V

    .line 311
    const/4 v2, 0x5

    if-ne v0, v2, :cond_50

    .line 312
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 313
    const/4 v1, 0x1

    .local v1, x:I
    :goto_29
    if-ge v1, v0, :cond_63

    .line 314
    rsub-int/lit8 v2, v1, 0x4

    mul-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    shr-long v2, p2, v2

    long-to-int v2, v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 295
    .end local v1           #x:I
    :cond_3a
    const/16 v2, 0x10

    shr-long v2, p2, v2

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_45

    .line 296
    const/4 v0, 0x3

    goto :goto_f

    .line 298
    :cond_45
    const/16 v2, 0x8

    shr-long v2, p2, v2

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_f

    .line 299
    const/4 v0, 0x2

    goto :goto_f

    .line 319
    :cond_50
    const/4 v1, 0x0

    .restart local v1       #x:I
    :goto_51
    if-ge v1, v0, :cond_63

    .line 320
    add-int/lit8 v2, v0, -0x1

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    shr-long v2, p2, v2

    long-to-int v2, v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 323
    :cond_63
    return-void
.end method

.method public static final getBERLengthOfLength(I)I
    .registers 3
    .parameter "length"

    .prologue
    const/4 v0, 0x5

    .line 153
    if-gez p0, :cond_4

    .line 168
    :cond_3
    :goto_3
    return v0

    .line 156
    :cond_4
    const/16 v1, 0x80

    if-ge p0, v1, :cond_a

    .line 157
    const/4 v0, 0x1

    goto :goto_3

    .line 159
    :cond_a
    const/16 v1, 0xff

    if-gt p0, v1, :cond_10

    .line 160
    const/4 v0, 0x2

    goto :goto_3

    .line 162
    :cond_10
    const v1, 0xffff

    if-gt p0, v1, :cond_17

    .line 163
    const/4 v0, 0x3

    goto :goto_3

    .line 165
    :cond_17
    const v1, 0xffffff

    if-gt p0, v1, :cond_3

    .line 166
    const/4 v0, 0x4

    goto :goto_3
.end method

.method public static final getOIDLength([I)I
    .registers 9
    .parameter "value"

    .prologue
    .line 377
    const/4 v1, 0x1

    .line 378
    .local v1, length:I
    const/4 v0, 0x2

    .local v0, i:I
    :goto_2
    array-length v4, p0

    if-ge v0, v4, :cond_3a

    .line 379
    aget v4, p0, v0

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long v2, v4, v6

    .line 380
    .local v2, v:J
    const-wide/16 v4, 0x80

    cmp-long v4, v2, v4

    if-gez v4, :cond_1a

    .line 381
    add-int/lit8 v1, v1, 0x1

    .line 378
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 383
    :cond_1a
    const-wide/16 v4, 0x4000

    cmp-long v4, v2, v4

    if-gez v4, :cond_23

    .line 384
    add-int/lit8 v1, v1, 0x2

    goto :goto_17

    .line 386
    :cond_23
    const-wide/32 v4, 0x200000

    cmp-long v4, v2, v4

    if-gez v4, :cond_2d

    .line 387
    add-int/lit8 v1, v1, 0x3

    goto :goto_17

    .line 389
    :cond_2d
    const-wide/32 v4, 0x10000000

    cmp-long v4, v2, v4

    if-gez v4, :cond_37

    .line 390
    add-int/lit8 v1, v1, 0x4

    goto :goto_17

    .line 393
    :cond_37
    add-int/lit8 v1, v1, 0x5

    goto :goto_17

    .line 396
    .end local v2           #v:J
    :cond_3a
    return v1
.end method

.method private static getPositionMessage(Lorg/snmp4j/asn1/BERInputStream;)Ljava/lang/String;
    .registers 4
    .parameter "is"

    .prologue
    .line 644
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isCheckSequenceLength()Z
    .registers 1

    .prologue
    .line 848
    sget-boolean v0, Lorg/snmp4j/asn1/BER;->checkSequenceLength:Z

    return v0
.end method

.method public static setCheckSequenceLength(Z)V
    .registers 1
    .parameter "checkSequenceLen"

    .prologue
    .line 858
    sput-boolean p0, Lorg/snmp4j/asn1/BER;->checkSequenceLength:Z

    .line 859
    return-void
.end method


# virtual methods
.method public isCheckValueLength()Z
    .registers 2

    .prologue
    .line 912
    sget-boolean v0, Lorg/snmp4j/asn1/BER;->checkValueLength:Z

    return v0
.end method

.method public setCheckValueLength(Z)V
    .registers 2
    .parameter "checkValueLength"

    .prologue
    .line 916
    sput-boolean p1, Lorg/snmp4j/asn1/BER;->checkValueLength:Z

    .line 917
    return-void
.end method
