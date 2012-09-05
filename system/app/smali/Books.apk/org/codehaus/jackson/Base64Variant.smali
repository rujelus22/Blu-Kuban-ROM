.class public final Lorg/codehaus/jackson/Base64Variant;
.super Ljava/lang/Object;
.source "Base64Variant.java"


# instance fields
.field private final _asciiToBase64:[I

.field private final _base64ToAsciiB:[B

.field private final _base64ToAsciiC:[C

.field final _maxLineLength:I

.field final _name:Ljava/lang/String;

.field final _paddingChar:C

.field final _usesPadding:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZCI)V
    .registers 12
    .parameter "name"
    .parameter "base64Alphabet"
    .parameter "usesPadding"
    .parameter "paddingChar"
    .parameter "maxLineLength"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x40

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v3, 0x80

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    .line 65
    new-array v3, v4, [C

    iput-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    .line 71
    new-array v3, v4, [B

    iput-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    .line 112
    iput-object p1, p0, Lorg/codehaus/jackson/Base64Variant;->_name:Ljava/lang/String;

    .line 113
    iput-boolean p3, p0, Lorg/codehaus/jackson/Base64Variant;->_usesPadding:Z

    .line 114
    iput-char p4, p0, Lorg/codehaus/jackson/Base64Variant;->_paddingChar:C

    .line 115
    iput p5, p0, Lorg/codehaus/jackson/Base64Variant;->_maxLineLength:I

    .line 120
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 121
    .local v1, alphaLen:I
    if-eq v1, v4, :cond_41

    .line 122
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Base64Alphabet length must be exactly 64 (was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    :cond_41
    iget-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    invoke-virtual {p2, v5, v1, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 127
    iget-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 128
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4d
    if-ge v2, v1, :cond_5f

    .line 129
    iget-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    aget-char v0, v3, v2

    .line 130
    .local v0, alpha:C
    iget-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    int-to-byte v4, v0

    aput-byte v4, v3, v2

    .line 131
    iget-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    aput v2, v3, v0

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 135
    .end local v0           #alpha:C
    :cond_5f
    if-eqz p3, :cond_66

    .line 136
    iget-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    const/4 v4, -0x2

    aput v4, v3, p4

    .line 138
    :cond_66
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/Base64Variant;Ljava/lang/String;I)V
    .registers 10
    .parameter "base"
    .parameter "name"
    .parameter "maxLineLength"

    .prologue
    .line 147
    iget-boolean v3, p1, Lorg/codehaus/jackson/Base64Variant;->_usesPadding:Z

    iget-char v4, p1, Lorg/codehaus/jackson/Base64Variant;->_paddingChar:C

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/Base64Variant;-><init>(Lorg/codehaus/jackson/Base64Variant;Ljava/lang/String;ZCI)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/Base64Variant;Ljava/lang/String;ZCI)V
    .registers 12
    .parameter "base"
    .parameter "name"
    .parameter "usesPadding"
    .parameter "paddingChar"
    .parameter "maxLineLength"

    .prologue
    const/16 v4, 0x40

    const/4 v5, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v3, 0x80

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    .line 65
    new-array v3, v4, [C

    iput-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    .line 71
    new-array v3, v4, [B

    iput-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    .line 157
    iput-object p2, p0, Lorg/codehaus/jackson/Base64Variant;->_name:Ljava/lang/String;

    .line 158
    iget-object v0, p1, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    .line 159
    .local v0, srcB:[B
    iget-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiB:[B

    array-length v4, v0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v1, p1, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    .line 161
    .local v1, srcC:[C
    iget-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->_base64ToAsciiC:[C

    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget-object v2, p1, Lorg/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    .line 163
    .local v2, srcV:[I
    iget-object v3, p0, Lorg/codehaus/jackson/Base64Variant;->_asciiToBase64:[I

    array-length v4, v2

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iput-boolean p3, p0, Lorg/codehaus/jackson/Base64Variant;->_usesPadding:Z

    .line 166
    iput-char p4, p0, Lorg/codehaus/jackson/Base64Variant;->_paddingChar:C

    .line 167
    iput p5, p0, Lorg/codehaus/jackson/Base64Variant;->_maxLineLength:I

    .line 168
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Lorg/codehaus/jackson/Base64Variant;->_name:Ljava/lang/String;

    return-object v0
.end method
