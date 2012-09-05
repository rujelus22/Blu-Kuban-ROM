.class public interface abstract Lorg/snmp4j/transport/MessageLengthDecoder;
.super Ljava/lang/Object;
.source "MessageLengthDecoder.java"


# virtual methods
.method public abstract getMessageLength(Ljava/nio/ByteBuffer;)Lorg/snmp4j/transport/MessageLength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getMinHeaderLength()I
.end method
