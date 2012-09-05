.class public final Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
.super Ljava/lang/Object;
.source "GeneralPurposeBit.java"


# static fields
.field private static final DATA_DESCRIPTOR_FLAG:I = 0x8

.field private static final ENCRYPTION_FLAG:I = 0x1

.field private static final STRONG_ENCRYPTION_FLAG:I = 0x40

.field public static final UFT8_NAMES_FLAG:I = 0x800


# instance fields
.field private dataDescriptorFlag:Z

.field private encryptionFlag:Z

.field private languageEncodingFlag:Z

.field private strongEncryptionFlag:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    .line 53
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    .line 54
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    .line 55
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    .line 58
    return-void
.end method

.method public static parse([BI)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    .registers 7
    .parameter "data"
    .parameter "offset"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 142
    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v1

    .line 143
    .local v1, generalPurposeFlag:I
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;-><init>()V

    .line 144
    .local v0, b:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_2b

    move v2, v3

    :goto_10
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useDataDescriptor(Z)V

    .line 145
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_2d

    move v2, v3

    :goto_18
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useUTF8ForNames(Z)V

    .line 146
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_2f

    move v2, v3

    :goto_20
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useStrongEncryption(Z)V

    .line 148
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_31

    :goto_27
    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useEncryption(Z)V

    .line 149
    return-object v0

    :cond_2b
    move v2, v4

    .line 144
    goto :goto_10

    :cond_2d
    move v2, v4

    .line 145
    goto :goto_18

    :cond_2f
    move v2, v4

    .line 146
    goto :goto_20

    :cond_31
    move v3, v4

    .line 148
    goto :goto_27
.end method


# virtual methods
.method public encode()[B
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    if-eqz v0, :cond_20

    const/16 v0, 0x8

    :goto_7
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    if-eqz v2, :cond_22

    const/16 v2, 0x800

    :goto_d
    or-int/2addr v2, v0

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_13
    or-int/2addr v0, v2

    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-eqz v2, :cond_1a

    const/16 v1, 0x40

    :cond_1a
    or-int/2addr v0, v1

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v0

    return-object v0

    :cond_20
    move v0, v1

    goto :goto_7

    :cond_22
    move v2, v1

    goto :goto_d

    :cond_24
    move v0, v1

    goto :goto_13
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 160
    instance-of v2, p1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    if-nez v2, :cond_6

    .line 164
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 163
    check-cast v0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 164
    .local v0, g:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    iget-boolean v2, v0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, v0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, v0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, v0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    if-eqz v0, :cond_21

    move v0, v1

    :goto_7
    mul-int/lit8 v3, v0, 0x11

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-eqz v0, :cond_23

    move v0, v1

    :goto_e
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0xd

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    if-eqz v0, :cond_25

    move v0, v1

    :goto_16
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x7

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    if-eqz v3, :cond_27

    :goto_1d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    return v0

    :cond_21
    move v0, v2

    goto :goto_7

    :cond_23
    move v0, v2

    goto :goto_e

    :cond_25
    move v0, v2

    goto :goto_16

    :cond_27
    move v1, v2

    goto :goto_1d
.end method

.method public useDataDescriptor(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 87
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    .line 88
    return-void
.end method

.method public useEncryption(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 101
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    .line 102
    return-void
.end method

.method public useStrongEncryption(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 115
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    .line 116
    if-eqz p1, :cond_8

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useEncryption(Z)V

    .line 119
    :cond_8
    return-void
.end method

.method public useUTF8ForNames(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 71
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    .line 72
    return-void
.end method

.method public usesDataDescriptor()Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->dataDescriptorFlag:Z

    return v0
.end method

.method public usesEncryption()Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    return v0
.end method

.method public usesStrongEncryption()Z
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encryptionFlag:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->strongEncryptionFlag:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public usesUTF8ForNames()Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->languageEncodingFlag:Z

    return v0
.end method
