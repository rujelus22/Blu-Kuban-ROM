.class public Lcom/google/android/voicesearch/tcp/StunAttribute;
.super Ljava/lang/Object;
.source "StunAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/tcp/StunAttribute$UnknownAttribute;,
        Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;,
        Lcom/google/android/voicesearch/tcp/StunAttribute$Username;,
        Lcom/google/android/voicesearch/tcp/StunAttribute$Address;
    }
.end annotation


# instance fields
.field private data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

.field private type:Lcom/google/android/voicesearch/tcp/StunAttributeType;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/google/android/voicesearch/tcp/StunAttributeType;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 37
    return-void
.end method

.method private equalsSTUNAttribute(Lcom/google/android/voicesearch/tcp/StunAttribute;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    iget-object v3, p1, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    if-eq v3, v4, :cond_9

    .line 148
    :cond_8
    :goto_8
    return v2

    .line 137
    :cond_9
    iget-object v3, p1, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    if-nez v3, :cond_1b

    .line 138
    :cond_11
    iget-object v3, p1, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    if-ne v3, v4, :cond_19

    :goto_17
    move v2, v1

    goto :goto_8

    :cond_19
    move v1, v2

    goto :goto_17

    .line 139
    :cond_1b
    iget-object v3, p1, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v3}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->asByteArray()[B

    move-result-object v3

    array-length v3, v3

    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v4}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->asByteArray()[B

    move-result-object v4

    array-length v4, v4

    if-ne v3, v4, :cond_8

    .line 142
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2c
    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v3}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->asByteArray()[B

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_4a

    .line 143
    iget-object v3, p1, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v3}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->asByteArray()[B

    move-result-object v3

    aget-byte v3, v3, v0

    iget-object v4, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v4}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->asByteArray()[B

    move-result-object v4

    aget-byte v4, v4, v0

    if-ne v3, v4, :cond_8

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_4a
    move v2, v1

    .line 148
    goto :goto_8
.end method

.method public static fromByteArray([BI)Lcom/google/android/voicesearch/tcp/StunAttribute;
    .registers 8
    .parameter "src"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/google/android/voicesearch/tcp/StunAttribute;

    invoke-direct {v0}, Lcom/google/android/voicesearch/tcp/StunAttribute;-><init>()V

    .line 90
    .local v0, attr:Lcom/google/android/voicesearch/tcp/StunAttribute;
    add-int/lit8 v3, p1, 0x0

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    or-int v2, v3, v4

    .line 91
    .local v2, wireValue:I
    invoke-static {v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;->fromWireValue(I)Lcom/google/android/voicesearch/tcp/StunAttributeType;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 93
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v1, v3, v4

    .line 95
    .local v1, length:I
    iget-object v3, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    sget-object v4, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_MAPPED_ADDRESS:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    if-eq v3, v4, :cond_3b

    iget-object v3, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    sget-object v4, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_SOURCE_ADDRESS:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    if-eq v3, v4, :cond_3b

    iget-object v3, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    sget-object v4, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_CHANGED_ADDRESS:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    if-ne v3, v4, :cond_44

    .line 98
    :cond_3b
    add-int/lit8 v3, p1, 0x4

    invoke-static {p0, v3}, Lcom/google/android/voicesearch/tcp/StunAttribute$Address;->fromByteArray([BI)Lcom/google/android/voicesearch/tcp/StunAttribute$Address;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    .line 113
    :goto_43
    return-object v0

    .line 99
    :cond_44
    iget-object v3, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    sget-object v4, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_ERROR_CODE:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    if-ne v3, v4, :cond_53

    .line 100
    add-int/lit8 v3, p1, 0x4

    invoke-static {p0, v3, v1}, Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;->fromByteArray([BII)Lcom/google/android/voicesearch/tcp/StunAttribute$ErrorCode;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    goto :goto_43

    .line 101
    :cond_53
    iget-object v3, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    sget-object v4, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_USERNAME:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    if-ne v3, v4, :cond_62

    .line 102
    add-int/lit8 v3, p1, 0x4

    invoke-static {p0, v3, v1}, Lcom/google/android/voicesearch/tcp/StunAttribute$Username;->fromByteArray([BII)Lcom/google/android/voicesearch/tcp/StunAttribute$Username;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    goto :goto_43

    .line 103
    :cond_62
    const v3, 0xffff

    and-int/2addr v3, v2

    const/16 v4, 0x7fff

    if-gt v3, v4, :cond_89

    .line 104
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mandatory STUN attribute type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 109
    :cond_89
    sget-object v3, Lcom/google/android/voicesearch/tcp/StunAttributeType;->STUN_ATTR_UNKNOWN:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    iput-object v3, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    .line 110
    new-instance v3, Lcom/google/android/voicesearch/tcp/StunAttribute$UnknownAttribute;

    invoke-direct {v3, v1}, Lcom/google/android/voicesearch/tcp/StunAttribute$UnknownAttribute;-><init>(I)V

    iput-object v3, v0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    goto :goto_43
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 51
    instance-of v0, p1, Lcom/google/android/voicesearch/tcp/StunAttribute;

    if-eqz v0, :cond_b

    .line 52
    check-cast p1, Lcom/google/android/voicesearch/tcp/StunAttribute;

    .end local p1
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/tcp/StunAttribute;->equalsSTUNAttribute(Lcom/google/android/voicesearch/tcp/StunAttribute;)Z

    move-result v0

    .line 54
    :goto_a
    return v0

    .restart local p1
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v0}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getType()Lcom/google/android/voicesearch/tcp/StunAttributeType;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 60
    const/16 v1, 0x11

    .line 61
    .local v1, result:I
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/tcp/StunAttributeType;->getWireValue()I

    move-result v2

    add-int/lit16 v1, v2, 0x275

    .line 62
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v2, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v2}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->asByteArray()[B

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_23

    .line 63
    mul-int/lit8 v2, v1, 0x25

    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v3}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->asByteArray()[B

    move-result-object v3

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 65
    :cond_23
    return v1
.end method

.method public setData(Lcom/google/android/voicesearch/tcp/StunAttributeData;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/tcp/StunAttributeType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeIntoArray([BI)V
    .registers 7
    .parameter "dest"
    .parameter "offset"

    .prologue
    .line 69
    add-int/lit8 v0, p2, 0x0

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/tcp/StunAttributeType;->getWireValue()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 70
    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->type:Lcom/google/android/voicesearch/tcp/StunAttributeType;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/tcp/StunAttributeType;->getWireValue()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 71
    add-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v1}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->getLength()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 72
    add-int/lit8 v0, p2, 0x3

    iget-object v1, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v1}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->getLength()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 73
    iget-object v0, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v0}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->asByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    add-int/lit8 v2, p2, 0x4

    iget-object v3, p0, Lcom/google/android/voicesearch/tcp/StunAttribute;->data:Lcom/google/android/voicesearch/tcp/StunAttributeData;

    invoke-interface {v3}, Lcom/google/android/voicesearch/tcp/StunAttributeData;->getLength()I

    move-result v3

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-void
.end method
