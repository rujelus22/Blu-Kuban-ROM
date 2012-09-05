.class public interface abstract Lorg/snmp4j/Target;
.super Ljava/lang/Object;
.source "Target.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract getAddress()Lorg/snmp4j/smi/Address;
.end method

.method public abstract getMaxSizeRequestPDU()I
.end method

.method public abstract getRetries()I
.end method

.method public abstract getTimeout()J
.end method

.method public abstract getVersion()I
.end method

.method public abstract setAddress(Lorg/snmp4j/smi/Address;)V
.end method

.method public abstract setMaxSizeRequestPDU(I)V
.end method

.method public abstract setRetries(I)V
.end method

.method public abstract setTimeout(J)V
.end method

.method public abstract setVersion(I)V
.end method
