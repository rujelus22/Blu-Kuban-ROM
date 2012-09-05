.class public Lorg/codehaus/jackson/util/JsonParserSequence;
.super Lorg/codehaus/jackson/util/JsonParserDelegate;
.source "JsonParserSequence.java"


# instance fields
.field protected _nextParser:I

.field protected final _parsers:[Lorg/codehaus/jackson/JsonParser;


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->close()V

    .line 98
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/JsonParserSequence;->switchToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    return-void
.end method

.method public nextToken()Lorg/codehaus/jackson/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v1, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 105
    .local v0, t:Lorg/codehaus/jackson/JsonToken;
    if-eqz v0, :cond_a

    move-object v1, v0

    .line 110
    :goto_9
    return-object v1

    .line 106
    :cond_a
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/JsonParserSequence;->switchToNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 107
    iget-object v1, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->delegate:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_9

    .line 110
    :cond_1a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method protected switchToNext()Z
    .registers 4

    .prologue
    .line 144
    iget v0, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->_nextParser:I

    iget-object v1, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->_parsers:[Lorg/codehaus/jackson/JsonParser;

    array-length v1, v1

    if-lt v0, v1, :cond_9

    .line 145
    const/4 v0, 0x0

    .line 148
    :goto_8
    return v0

    .line 147
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->_parsers:[Lorg/codehaus/jackson/JsonParser;

    iget v1, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->_nextParser:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->_nextParser:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->delegate:Lorg/codehaus/jackson/JsonParser;

    .line 148
    const/4 v0, 0x1

    goto :goto_8
.end method
