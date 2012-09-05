.class public interface abstract Lorg/snmp4j/asn1/BERSerializable;
.super Ljava/lang/Object;
.source "BERSerializable.java"


# virtual methods
.method public abstract decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract encodeBER(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBERLength()I
.end method

.method public abstract getBERPayloadLength()I
.end method
