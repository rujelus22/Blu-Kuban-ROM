.class abstract Lorg/simpleframework/xml/stream/Splitter;
.super Ljava/lang/Object;


# instance fields
.field protected builder:Ljava/lang/StringBuilder;

.field protected count:I

.field protected off:I

.field protected text:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Splitter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget-object v0, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    array-length v0, v0

    iput v0, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    return-void
.end method

.method private acronym()Z
    .registers 8

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    move v2, v0

    move v0, v1

    :goto_6
    iget v4, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-lt v2, v4, :cond_2f

    :cond_a
    if-le v0, v3, :cond_2b

    iget v4, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-ge v2, v4, :cond_1e

    iget-object v4, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    add-int/lit8 v5, v2, -0x1

    aget-char v4, v4, v5

    invoke-direct {p0, v4}, Lorg/simpleframework/xml/stream/Splitter;->isUpper(C)Z

    move-result v4

    if-eqz v4, :cond_1e

    add-int/lit8 v2, v2, -0x1

    :cond_1e
    iget-object v4, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v5, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v6, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    sub-int v6, v2, v6

    invoke-virtual {p0, v4, v5, v6}, Lorg/simpleframework/xml/stream/Splitter;->commit([CII)V

    iput v2, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    :cond_2b
    if-le v0, v3, :cond_2e

    move v1, v3

    :cond_2e
    return v1

    :cond_2f
    iget-object v4, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    aget-char v4, v4, v2

    invoke-direct {p0, v4}, Lorg/simpleframework/xml/stream/Splitter;->isUpper(C)Z

    move-result v4

    if-eqz v4, :cond_a

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method private isDigit(C)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method private isLetter(C)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    return v0
.end method

.method private isSpecial(C)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private isUpper(C)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    return v0
.end method

.method private number()Z
    .registers 7

    const/4 v1, 0x0

    iget v0, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    move v2, v0

    move v0, v1

    :goto_5
    iget v3, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-lt v2, v3, :cond_1c

    :cond_9
    if-lez v0, :cond_16

    iget-object v3, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v4, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v5, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    sub-int v5, v2, v5

    invoke-virtual {p0, v3, v4, v5}, Lorg/simpleframework/xml/stream/Splitter;->commit([CII)V

    :cond_16
    iput v2, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    if-lez v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    :cond_1c
    iget-object v3, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    aget-char v3, v3, v2

    invoke-direct {p0, v3}, Lorg/simpleframework/xml/stream/Splitter;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private token()V
    .registers 5

    iget v0, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    :goto_2
    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-lt v0, v1, :cond_23

    :cond_6
    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    if-le v0, v1, :cond_20

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v2, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v3, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/simpleframework/xml/stream/Splitter;->parse([CII)V

    iget-object v1, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v2, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v3, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/simpleframework/xml/stream/Splitter;->commit([CII)V

    :cond_20
    iput v0, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    return-void

    :cond_23
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    aget-char v1, v1, v0

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/stream/Splitter;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    if-le v0, v2, :cond_37

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/stream/Splitter;->isUpper(C)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method protected abstract commit([CII)V
.end method

.method protected abstract parse([CII)V
.end method

.method public process()Ljava/lang/String;
    .registers 3

    :cond_0
    :goto_0
    iget v0, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-lt v0, v1, :cond_2c

    iget-object v0, p0, Lorg/simpleframework/xml/stream/Splitter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Splitter;->text:[C

    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Splitter;->isSpecial(C)Z

    move-result v0

    if-nez v0, :cond_26

    :goto_19
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/Splitter;->acronym()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/Splitter;->token()V

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/Splitter;->number()Z

    goto :goto_0

    :cond_26
    iget v0, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    :cond_2c
    iget v0, p0, Lorg/simpleframework/xml/stream/Splitter;->off:I

    iget v1, p0, Lorg/simpleframework/xml/stream/Splitter;->count:I

    if-lt v0, v1, :cond_d

    goto :goto_19
.end method

.method protected toLower(C)C
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    return v0
.end method

.method protected toUpper(C)C
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    return v0
.end method
