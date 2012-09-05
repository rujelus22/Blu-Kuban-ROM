.class public interface abstract Lorg/snmp4j/security/SecurityModel;
.super Ljava/lang/Object;
.source "SecurityModel.java"


# static fields
.field public static final SECURITY_MODEL_ANY:I = 0x0

.field public static final SECURITY_MODEL_SNMPv1:I = 0x1

.field public static final SECURITY_MODEL_SNMPv2c:I = 0x2

.field public static final SECURITY_MODEL_USM:I = 0x3


# virtual methods
.method public abstract generateRequestMessage(I[BII[B[BILorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/security/SecurityParameters;Lorg/snmp4j/asn1/BEROutputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract generateResponseMessage(I[BII[B[BILorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/security/SecurityStateReference;Lorg/snmp4j/security/SecurityParameters;Lorg/snmp4j/asn1/BEROutputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getID()I
.end method

.method public abstract newSecurityParametersInstance()Lorg/snmp4j/security/SecurityParameters;
.end method

.method public abstract newSecurityStateReference()Lorg/snmp4j/security/SecurityStateReference;
.end method

.method public abstract processIncomingMsg(IILorg/snmp4j/security/SecurityParameters;Lorg/snmp4j/security/SecurityModel;ILorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/smi/OctetString;Lorg/snmp4j/asn1/BEROutputStream;Lorg/snmp4j/smi/Integer32;Lorg/snmp4j/security/SecurityStateReference;Lorg/snmp4j/mp/StatusInformation;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
