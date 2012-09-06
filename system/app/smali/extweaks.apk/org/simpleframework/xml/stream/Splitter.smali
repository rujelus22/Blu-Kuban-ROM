.class abstract Lorg/simpleframework/xml/stream/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# instance fields
.field protected builder:Ljava/lang/StringBuilder;

.field protected count:I

.field protected off:I

.field protected text:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Splitter;->builder:Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    .line 77
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    array-length v0, v0

    iput v0, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    .line 78
    return-void
.end method

.method private acronym()Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 145
    iget v0, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    move v2, v0

    move v0, v1

    .line 148
    :goto_6
    iget v4, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-ge v2, v4, :cond_19

    .line 149
    iget-object v4, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    aget-char v4, v4, v2

    .line 151
    invoke-direct {p0, v4}, Lorg/simpleframework/xml/stream/Splitter;->isUpper(C)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 152
    add-int/lit8 v0, v0, 0x1

    .line 156
    add-int/lit8 v2, v2, 0x1

    .line 157
    goto :goto_6

    .line 158
    :cond_19
    if-le v0, v3, :cond_3a

    .line 159
    iget v4, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-ge v2, v4, :cond_2d

    .line 160
    iget-object v4, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    add-int/lit8 v5, v2, -0x1

    aget-char v4, v4, v5

    .line 162
    invoke-direct {p0, v4}, Lorg/simpleframework/xml/stream/Splitter;->isUpper(C)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 163
    add-int/lit8 v2, v2, -0x1

    .line 166
    :cond_2d
    iget-object v4, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v5, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v6, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    sub-int v6, v2, v6

    invoke-virtual {p0, v4, v5, v6}, Lorg/simpleframework/xml/stream/Splitter;->commit([CII)V

    .line 167
    iput v2, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    .line 169
    :cond_3a
    if-le v0, v3, :cond_3d

    move v1, v3

    :cond_3d
    return v1
.end method

.method private isDigit(C)Z
    .registers 3
    .parameter

    .prologue
    .line 237
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method private isLetter(C)Z
    .registers 3
    .parameter

    .prologue
    .line 211
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    return v0
.end method

.method private isSpecial(C)Z
    .registers 3
    .parameter

    .prologue
    .line 224
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isUpper(C)Z
    .registers 3
    .parameter

    .prologue
    .line 250
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    return v0
.end method

.method private number()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 181
    iget v0, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    move v2, v0

    move v0, v1

    .line 184
    :goto_5
    iget v3, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-ge v2, v3, :cond_18

    .line 185
    iget-object v3, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    aget-char v3, v3, v2

    .line 187
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/stream/Splitter;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 188
    add-int/lit8 v0, v0, 0x1

    .line 192
    add-int/lit8 v2, v2, 0x1

    .line 193
    goto :goto_5

    .line 194
    :cond_18
    if-lez v0, :cond_25

    .line 195
    iget-object v3, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v4, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v5, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    sub-int v5, v2, v5

    invoke-virtual {p0, v3, v4, v5}, Lorg/simpleframework/xml/stream/Splitter;->commit([CII)V

    .line 197
    :cond_25
    iput v2, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    .line 198
    if-lez v0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method private token()V
    .registers 5

    .prologue
    .line 114
    iget v0, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    .line 116
    :goto_2
    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-ge v0, v1, :cond_1d

    .line 117
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    aget-char v1, v1, v0

    .line 119
    invoke-direct {p0, v1}, Lorg/simpleframework/xml/stream/Splitter;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 120
    iget v2, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    if-le v0, v2, :cond_1a

    .line 123
    invoke-direct {p0, v1}, Lorg/simpleframework/xml/stream/Splitter;->isUpper(C)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 124
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    .line 128
    goto :goto_2

    .line 129
    :cond_1d
    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    if-le v0, v1, :cond_37

    .line 130
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v2, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v3, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/simpleframework/xml/stream/Splitter;->parse([CII)V

    .line 131
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v2, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v3, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/simpleframework/xml/stream/Splitter;->commit([CII)V

    .line 133
    :cond_37
    iput v0, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    .line 134
    return-void
.end method


# virtual methods
.method protected abstract commit([CII)V
.end method

.method protected abstract parse([CII)V
.end method

.method public process()Ljava/lang/String;
    .registers 3

    .prologue
    .line 89
    :cond_0
    :goto_0
    iget v0, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-ge v0, v1, :cond_2c

    .line 90
    :goto_6
    iget v0, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-ge v0, v1, :cond_1f

    .line 91
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    aget-char v0, v0, v1

    .line 93
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Splitter;->isSpecial(C)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 94
    iget v0, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    goto :goto_6

    .line 98
    :cond_1f
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/Splitter;->acronym()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/Splitter;->token()V

    .line 100
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/Splitter;->number()Z

    goto :goto_0

    .line 103
    :cond_2c
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Splitter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toLower(C)C
    .registers 3
    .parameter

    .prologue
    .line 276
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    return v0
.end method

.method protected toUpper(C)C
    .registers 3
    .parameter

    .prologue
    .line 263
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    return v0
.end method
