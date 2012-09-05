.class public interface abstract Lorg/snmp4j/smi/Variable;
.super Ljava/lang/Object;
.source "Variable.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;
.implements Lorg/snmp4j/asn1/BERSerializable;


# static fields
.field public static final serialVersionUID:J = 0x135f05c4f032ae88L


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract compareTo(Ljava/lang/Object;)I
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract fromSubIndex(Lorg/snmp4j/smi/OID;Z)V
.end method

.method public abstract getSyntax()I
.end method

.method public abstract getSyntaxString()Ljava/lang/String;
.end method

.method public abstract hashCode()I
.end method

.method public abstract isDynamic()Z
.end method

.method public abstract isException()Z
.end method

.method public abstract toInt()I
.end method

.method public abstract toLong()J
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract toSubIndex(Z)Lorg/snmp4j/smi/OID;
.end method
