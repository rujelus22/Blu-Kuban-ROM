.class public Lorg/snmp4j/asn1/BEROutputStream;
.super Ljava/io/OutputStream;
.source "BEROutputStream.java"


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private offset:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/snmp4j/asn1/BEROutputStream;->offset:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/snmp4j/asn1/BEROutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .parameter "buffer"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/snmp4j/asn1/BEROutputStream;->offset:I

    .line 59
    iput-object p1, p0, Lorg/snmp4j/asn1/BEROutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 60
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/snmp4j/asn1/BEROutputStream;->offset:I

    .line 61
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    return-void
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/snmp4j/asn1/BEROutputStream;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public rewind()Ljava/nio/ByteBuffer;
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lorg/snmp4j/asn1/BEROutputStream;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/snmp4j/asn1/BEROutputStream;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3
    .parameter "buffer"

    .prologue
    .line 111
    iput-object p1, p0, Lorg/snmp4j/asn1/BEROutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 112
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/snmp4j/asn1/BEROutputStream;->offset:I

    .line 113
    return-void
.end method

.method public setFilledBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3
    .parameter "buffer"

    .prologue
    .line 123
    iput-object p1, p0, Lorg/snmp4j/asn1/BEROutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/snmp4j/asn1/BEROutputStream;->offset:I

    .line 125
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    return-void
.end method

.method public write(I)V
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lorg/snmp4j/asn1/BEROutputStream;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 65
    return-void
.end method

.method public write([B)V
    .registers 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lorg/snmp4j/asn1/BEROutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 69
    return-void
.end method

.method public write([BII)V
    .registers 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lorg/snmp4j/asn1/BEROutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 73
    return-void
.end method
