.class public interface abstract Lorg/snmp4j/mp/MessageProcessingModel;
.super Ljava/lang/Object;
.source "MessageProcessingModel.java"


# static fields
.field public static final MPv1:I = 0x0

.field public static final MPv2c:I = 0x1

.field public static final MPv2u:I = 0x2

.field public static final MPv3:I = 0x3


# virtual methods
.method public abstract getID()I
.end method

.method public abstract isProtocolVersionSupported(I)Z
.end method

.method public abstract prepareDataElements(Lorg/snmp4j/MessageDispatcher;Lorg/snmp4j/smi/Address;Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/MutablePDU;Lorg/snmp4j/mp/PduHandle;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/mp/StatusInformation;Lorg/snmp4j/mp/MutableStateReference;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract prepareOutgoingMessage(Lorg/snmp4j/smi/Address;III[BILorg/snmp4j/PDU;ZLorg/snmp4j/mp/PduHandle;Lorg/snmp4j/smi/Address;Lorg/snmp4j/asn1/BEROutputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract prepareResponseMessage(III[BILorg/snmp4j/PDU;ILorg/snmp4j/mp/StateReference;Lorg/snmp4j/mp/StatusInformation;Lorg/snmp4j/asn1/BEROutputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract releaseStateReference(Lorg/snmp4j/mp/PduHandle;)V
.end method
