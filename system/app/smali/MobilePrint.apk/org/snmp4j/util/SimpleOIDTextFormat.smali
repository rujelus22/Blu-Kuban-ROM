.class public Lorg/snmp4j/util/SimpleOIDTextFormat;
.super Ljava/lang/Object;
.source "SimpleOIDTextFormat.java"

# interfaces
.implements Lorg/snmp4j/util/OIDTextFormat;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public format([I)Ljava/lang/String;
    .registers 8
    .parameter "value"

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 55
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_22

    .line 56
    if-eqz v1, :cond_13

    .line 57
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 59
    :cond_13
    aget v2, p1, v1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 61
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public parse(Ljava/lang/String;)[I
    .registers 14
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 76
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v8, "."

    invoke-direct {v5, p1, v8, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    .local v5, st:Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    .line 78
    .local v3, size:I
    new-array v7, v3, [I

    .line 79
    .local v7, value:[I
    const/4 v3, 0x0

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, buf:Ljava/lang/StringBuffer;
    :cond_11
    :goto_11
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_92

    .line 82
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, t:Ljava/lang/String;
    if-nez v0, :cond_2e

    const-string v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 87
    :cond_2e
    if-eqz v0, :cond_75

    const-string v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 88
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    new-instance v8, Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/snmp4j/smi/OctetString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Lorg/snmp4j/smi/OctetString;->toSubIndex(Z)Lorg/snmp4j/smi/OID;

    move-result-object v2

    .line 90
    .local v2, o:Lorg/snmp4j/smi/OID;
    move-object v1, v7

    .line 91
    .local v1, h:[I
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v8

    array-length v9, v1

    add-int/2addr v8, v9

    invoke-virtual {v2}, Lorg/snmp4j/smi/OID;->size()I

    move-result v9

    add-int/2addr v8, v9

    new-array v7, v8, [I

    .line 92
    invoke-static {v1, v10, v7, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    invoke-virtual {v2}, Lorg/snmp4j/smi/OID;->getValue()[I

    move-result-object v8

    invoke-virtual {v2}, Lorg/snmp4j/smi/OID;->size()I

    move-result v9

    invoke-static {v8, v10, v7, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    invoke-virtual {v2}, Lorg/snmp4j/smi/OID;->size()I

    move-result v8

    add-int/2addr v3, v8

    .line 95
    const/4 v0, 0x0

    .line 96
    goto :goto_11

    .line 97
    .end local v1           #h:[I
    .end local v2           #o:Lorg/snmp4j/smi/OID;
    :cond_75
    if-eqz v0, :cond_7b

    .line 98
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 100
    :cond_7b
    const-string v8, "."

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 101
    add-int/lit8 v4, v3, 0x1

    .end local v3           #size:I
    .local v4, size:I
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v8, v8

    aput v8, v7, v3

    move v3, v4

    .end local v4           #size:I
    .restart local v3       #size:I
    goto :goto_11

    .line 104
    .end local v6           #t:Ljava/lang/String;
    :cond_92
    array-length v8, v7

    if-ge v3, v8, :cond_9b

    .line 105
    move-object v1, v7

    .line 106
    .restart local v1       #h:[I
    new-array v7, v3, [I

    .line 107
    invoke-static {v1, v10, v7, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    .end local v1           #h:[I
    :cond_9b
    return-object v7
.end method
