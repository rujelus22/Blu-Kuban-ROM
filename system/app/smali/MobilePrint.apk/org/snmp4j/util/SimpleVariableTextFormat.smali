.class public Lorg/snmp4j/util/SimpleVariableTextFormat;
.super Ljava/lang/Object;
.source "SimpleVariableTextFormat.java"

# interfaces
.implements Lorg/snmp4j/util/VariableTextFormat;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public format(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;Z)Ljava/lang/String;
    .registers 7
    .parameter "instanceOID"
    .parameter "variable"
    .parameter "withOID"

    .prologue
    .line 62
    if-eqz p3, :cond_26

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->getOIDTextFormat()Lorg/snmp4j/util/OIDTextFormat;

    move-result-object v1

    invoke-virtual {p1}, Lorg/snmp4j/smi/OID;->getValue()[I

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/snmp4j/util/OIDTextFormat;->format([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_25
    return-object v0

    :cond_26
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25
.end method

.method public parse(ILjava/lang/String;)Lorg/snmp4j/smi/Variable;
    .registers 5
    .parameter "smiSyntax"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p1}, Lorg/snmp4j/smi/AbstractVariable;->createFromSyntax(I)Lorg/snmp4j/smi/Variable;

    move-result-object v0

    .line 79
    .local v0, v:Lorg/snmp4j/smi/Variable;
    instance-of v1, v0, Lorg/snmp4j/smi/AssignableFromString;

    if-eqz v1, :cond_e

    move-object v1, v0

    .line 80
    check-cast v1, Lorg/snmp4j/smi/AssignableFromString;

    invoke-interface {v1, p2}, Lorg/snmp4j/smi/AssignableFromString;->setValue(Ljava/lang/String;)V

    .line 82
    :cond_e
    return-object v0
.end method

.method public parse(Lorg/snmp4j/smi/OID;Ljava/lang/String;)Lorg/snmp4j/smi/Variable;
    .registers 4
    .parameter "classOrInstanceOID"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public parseVariableBinding(Ljava/lang/String;)Lorg/snmp4j/smi/VariableBinding;
    .registers 9
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 104
    const-string v3, " = "

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, assignmentPos:I
    if-gtz v0, :cond_22

    .line 106
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Could not locate assignment \' = \' string in \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 109
    :cond_22
    new-instance v1, Lorg/snmp4j/smi/OID;

    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->getOIDTextFormat()Lorg/snmp4j/util/OIDTextFormat;

    move-result-object v3

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/snmp4j/util/OIDTextFormat;->parse(Ljava/lang/String;)[I

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/snmp4j/smi/OID;-><init>([I)V

    .line 111
    .local v1, oid:Lorg/snmp4j/smi/OID;
    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/snmp4j/util/SimpleVariableTextFormat;->parse(Lorg/snmp4j/smi/OID;Ljava/lang/String;)Lorg/snmp4j/smi/Variable;

    move-result-object v2

    .line 112
    .local v2, var:Lorg/snmp4j/smi/Variable;
    new-instance v3, Lorg/snmp4j/smi/VariableBinding;

    invoke-direct {v3, v1, v2}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;)V

    return-object v3
.end method
