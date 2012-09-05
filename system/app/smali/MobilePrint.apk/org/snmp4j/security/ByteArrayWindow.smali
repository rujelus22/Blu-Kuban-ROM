.class public Lorg/snmp4j/security/ByteArrayWindow;
.super Ljava/lang/Object;
.source "ByteArrayWindow.java"


# instance fields
.field private length:I

.field private offset:I

.field private value:[B


# direct methods
.method public constructor <init>([BII)V
    .registers 4
    .parameter "value"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/snmp4j/security/ByteArrayWindow;->value:[B

    .line 47
    iput p2, p0, Lorg/snmp4j/security/ByteArrayWindow;->offset:I

    .line 48
    iput p3, p0, Lorg/snmp4j/security/ByteArrayWindow;->length:I

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 95
    instance-of v3, p1, Lorg/snmp4j/security/ByteArrayWindow;

    if-eqz v3, :cond_e

    move-object v1, p1

    .line 96
    check-cast v1, Lorg/snmp4j/security/ByteArrayWindow;

    .line 97
    .local v1, other:Lorg/snmp4j/security/ByteArrayWindow;
    iget v3, v1, Lorg/snmp4j/security/ByteArrayWindow;->length:I

    iget v4, p0, Lorg/snmp4j/security/ByteArrayWindow;->length:I

    if-eq v3, v4, :cond_f

    .line 107
    .end local v1           #other:Lorg/snmp4j/security/ByteArrayWindow;
    :cond_e
    :goto_e
    return v2

    .line 100
    .restart local v1       #other:Lorg/snmp4j/security/ByteArrayWindow;
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    iget v3, p0, Lorg/snmp4j/security/ByteArrayWindow;->length:I

    if-ge v0, v3, :cond_21

    .line 101
    iget-object v3, v1, Lorg/snmp4j/security/ByteArrayWindow;->value:[B

    aget-byte v3, v3, v0

    iget-object v4, p0, Lorg/snmp4j/security/ByteArrayWindow;->value:[B

    aget-byte v4, v4, v0

    if-ne v3, v4, :cond_e

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 105
    :cond_21
    const/4 v2, 0x1

    goto :goto_e
.end method

.method public equals(Lorg/snmp4j/security/ByteArrayWindow;I)Z
    .registers 8
    .parameter "other"
    .parameter "maxBytesToCompare"

    .prologue
    const/4 v1, 0x0

    .line 111
    iget v2, p1, Lorg/snmp4j/security/ByteArrayWindow;->length:I

    if-lt v2, p2, :cond_9

    iget v2, p0, Lorg/snmp4j/security/ByteArrayWindow;->length:I

    if-ge v2, p2, :cond_a

    .line 120
    :cond_9
    :goto_9
    return v1

    .line 115
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, p2, :cond_20

    .line 116
    iget-object v2, p0, Lorg/snmp4j/security/ByteArrayWindow;->value:[B

    iget v3, p0, Lorg/snmp4j/security/ByteArrayWindow;->offset:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    iget-object v3, p1, Lorg/snmp4j/security/ByteArrayWindow;->value:[B

    iget v4, p1, Lorg/snmp4j/security/ByteArrayWindow;->offset:I

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    if-ne v2, v3, :cond_9

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 120
    :cond_20
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public get(I)B
    .registers 5
    .parameter "i"

    .prologue
    .line 74
    iget v0, p0, Lorg/snmp4j/security/ByteArrayWindow;->length:I

    if-lt p1, v0, :cond_29

    .line 75
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/snmp4j/security/ByteArrayWindow;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_29
    if-gez p1, :cond_44

    .line 78
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_44
    iget-object v0, p0, Lorg/snmp4j/security/ByteArrayWindow;->value:[B

    iget v1, p0, Lorg/snmp4j/security/ByteArrayWindow;->offset:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lorg/snmp4j/security/ByteArrayWindow;->length:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lorg/snmp4j/security/ByteArrayWindow;->offset:I

    return v0
.end method

.method public getValue()[B
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/snmp4j/security/ByteArrayWindow;->value:[B

    return-object v0
.end method

.method public set(IB)V
    .registers 6
    .parameter "i"
    .parameter "b"

    .prologue
    .line 64
    iget v0, p0, Lorg/snmp4j/security/ByteArrayWindow;->length:I

    if-lt p1, v0, :cond_29

    .line 65
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/snmp4j/security/ByteArrayWindow;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_29
    if-gez p1, :cond_44

    .line 68
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_44
    iget-object v0, p0, Lorg/snmp4j/security/ByteArrayWindow;->value:[B

    iget v1, p0, Lorg/snmp4j/security/ByteArrayWindow;->offset:I

    add-int/2addr v1, p1

    aput-byte p2, v0, v1

    .line 71
    return-void
.end method

.method public setValue([B)V
    .registers 2
    .parameter "value"

    .prologue
    .line 56
    iput-object p1, p0, Lorg/snmp4j/security/ByteArrayWindow;->value:[B

    .line 57
    return-void
.end method
