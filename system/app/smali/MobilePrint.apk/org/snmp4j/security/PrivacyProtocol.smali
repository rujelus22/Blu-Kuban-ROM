.class public interface abstract Lorg/snmp4j/security/PrivacyProtocol;
.super Ljava/lang/Object;
.source "PrivacyProtocol.java"

# interfaces
.implements Lorg/snmp4j/security/SecurityProtocol;


# virtual methods
.method public abstract decrypt([BII[BJJLorg/snmp4j/security/DecryptParams;)[B
.end method

.method public abstract encrypt([BII[BJJLorg/snmp4j/security/DecryptParams;)[B
.end method

.method public abstract extendShortKey([BLorg/snmp4j/smi/OctetString;[BLorg/snmp4j/security/AuthenticationProtocol;)[B
.end method

.method public abstract getDecryptParamsLength()I
.end method

.method public abstract getEncryptedLength(I)I
.end method

.method public abstract getID()Lorg/snmp4j/smi/OID;
.end method

.method public abstract getMaxKeyLength()I
.end method

.method public abstract getMinKeyLength()I
.end method
