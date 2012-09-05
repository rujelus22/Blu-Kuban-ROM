.class public interface abstract Lorg/snmp4j/security/AuthenticationProtocol;
.super Ljava/lang/Object;
.source "AuthenticationProtocol.java"

# interfaces
.implements Lorg/snmp4j/security/SecurityProtocol;


# static fields
.field public static final MESSAGE_AUTHENTICATION_CODE_LENGTH:I = 0xc


# virtual methods
.method public abstract authenticate([B[BIILorg/snmp4j/security/ByteArrayWindow;)Z
.end method

.method public abstract changeDelta([B[B[B)[B
.end method

.method public abstract getDigestLength()I
.end method

.method public abstract getID()Lorg/snmp4j/smi/OID;
.end method

.method public abstract hash([B)[B
.end method

.method public abstract hash([BII)[B
.end method

.method public abstract isAuthentic([B[BIILorg/snmp4j/security/ByteArrayWindow;)Z
.end method

.method public abstract passwordToKey(Lorg/snmp4j/smi/OctetString;[B)[B
.end method
