.class public Lorg/snmp4j/transport/DefaultTcpTransportMapping$SnmpMesssageLengthDecoder;
.super Ljava/lang/Object;
.source "DefaultTcpTransportMapping.java"

# interfaces
.implements Lorg/snmp4j/transport/MessageLengthDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/transport/DefaultTcpTransportMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnmpMesssageLengthDecoder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 502
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageLength(Ljava/nio/ByteBuffer;)Lorg/snmp4j/transport/MessageLength;
    .registers 9
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    new-instance v4, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v4}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 508
    .local v4, type:Lorg/snmp4j/asn1/BER$MutableByte;
    new-instance v1, Lorg/snmp4j/asn1/BERInputStream;

    invoke-direct {v1, p1}, Lorg/snmp4j/asn1/BERInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 509
    .local v1, is:Lorg/snmp4j/asn1/BERInputStream;
    invoke-static {v1, v4}, Lorg/snmp4j/asn1/BER;->decodeHeader(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)I

    move-result v3

    .line 510
    .local v3, ml:I
    invoke-virtual {v1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v5

    long-to-int v0, v5

    .line 511
    .local v0, hl:I
    new-instance v2, Lorg/snmp4j/transport/MessageLength;

    invoke-direct {v2, v0, v3}, Lorg/snmp4j/transport/MessageLength;-><init>(II)V

    .line 512
    .local v2, messageLength:Lorg/snmp4j/transport/MessageLength;
    return-object v2
.end method

.method public getMinHeaderLength()I
    .registers 2

    .prologue
    .line 504
    const/4 v0, 0x6

    return v0
.end method
