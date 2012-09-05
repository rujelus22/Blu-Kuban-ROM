.class public interface abstract Lorg/snmp4j/Session;
.super Ljava/lang/Object;
.source "Session.java"


# virtual methods
.method public abstract cancel(Lorg/snmp4j/PDU;Lorg/snmp4j/event/ResponseListener;)V
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;)Lorg/snmp4j/event/ResponseEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;)Lorg/snmp4j/event/ResponseEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
