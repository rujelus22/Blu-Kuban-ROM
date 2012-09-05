.class public interface abstract Lorg/snmp4j/TransportMapping;
.super Ljava/lang/Object;
.source "TransportMapping.java"


# virtual methods
.method public abstract addMessageDispatcher(Lorg/snmp4j/MessageDispatcher;)V
.end method

.method public abstract addTransportListener(Lorg/snmp4j/transport/TransportListener;)V
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getListenAddress()Lorg/snmp4j/smi/Address;
.end method

.method public abstract getMaxInboundMessageSize()I
.end method

.method public abstract getSupportedAddressClass()Ljava/lang/Class;
.end method

.method public abstract isListening()Z
.end method

.method public abstract listen()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract removeMessageDispatcher(Lorg/snmp4j/MessageDispatcher;)V
.end method

.method public abstract removeTransportListener(Lorg/snmp4j/transport/TransportListener;)V
.end method

.method public abstract sendMessage(Lorg/snmp4j/smi/Address;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
