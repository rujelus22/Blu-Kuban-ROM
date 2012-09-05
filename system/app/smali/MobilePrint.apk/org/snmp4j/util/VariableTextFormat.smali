.class public interface abstract Lorg/snmp4j/util/VariableTextFormat;
.super Ljava/lang/Object;
.source "VariableTextFormat.java"


# virtual methods
.method public abstract format(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;Z)Ljava/lang/String;
.end method

.method public abstract parse(ILjava/lang/String;)Lorg/snmp4j/smi/Variable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract parse(Lorg/snmp4j/smi/OID;Ljava/lang/String;)Lorg/snmp4j/smi/Variable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract parseVariableBinding(Ljava/lang/String;)Lorg/snmp4j/smi/VariableBinding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
