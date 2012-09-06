.class public Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;
.super Ljava/lang/Object;
.source "SimpleCharStream.java"


# instance fields
.field available:I

.field protected bufcolumn:[I

.field protected buffer:[C

.field protected bufline:[I

.field public bufpos:I

.field bufsize:I

.field protected column:I

.field protected inBuf:I

.field protected inputStream:Ljava/io/Reader;

.field protected line:I

.field protected maxNextCharInd:I

.field protected prevCharIsCR:Z

.field protected prevCharIsLF:Z

.field protected tabSize:I

.field tokenBegin:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;II)V
    .registers 5
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"

    .prologue
    .line 273
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 274
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .registers 7
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"

    .prologue
    const/4 v1, 0x0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    .line 34
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->line:I

    .line 37
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->prevCharIsCR:Z

    .line 38
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 43
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    .line 44
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    .line 45
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tabSize:I

    .line 260
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 261
    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->line:I

    .line 262
    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    .line 264
    iput p4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iput p4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    .line 265
    new-array v0, p4, [C

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    .line 266
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    .line 267
    new-array v0, p4, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    .line 268
    return-void
.end method


# virtual methods
.method public BeginToken()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    .line 149
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v0

    .line 150
    .local v0, c:C
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    .line 152
    return v0
.end method

.method protected ExpandBuff(Z)V
    .registers 12
    .parameter "wrapAround"

    .prologue
    const/4 v9, 0x0

    .line 53
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v1, v4, [C

    .line 54
    .local v1, newbuffer:[C
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v2, v4, [I

    .line 55
    .local v2, newbufline:[I
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v0, v4, [I

    .line 59
    .local v0, newbufcolumn:[I
    if-eqz p1, :cond_82

    .line 61
    :try_start_15
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    .line 66
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    .line 70
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    const/4 v5, 0x0

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    .line 74
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_75} :catch_b9

    .line 96
    :goto_75
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    .line 97
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    .line 98
    iput v9, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    .line 99
    return-void

    .line 78
    :cond_82
    :try_start_82
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    .line 81
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    .line 84
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    .line 87
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_b8} :catch_b9

    goto :goto_75

    .line 90
    :catch_b9
    move-exception v3

    .line 92
    .local v3, t:Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/Error;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected FillBuff()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x800

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 103
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    if-ne v2, v3, :cond_1c

    .line 105
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    if-ne v2, v3, :cond_58

    .line 107
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    if-le v2, v4, :cond_4b

    .line 109
    iput v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    iput v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    .line 110
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    .line 127
    :cond_1c
    :goto_1c
    :try_start_1c
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, i:I
    if-ne v1, v8, :cond_74

    .line 130
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 131
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_38} :catch_38

    .line 137
    .end local v1           #i:I
    :catch_38
    move-exception v0

    .line 138
    .local v0, e:Ljava/io/IOException;
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    .line 139
    invoke-virtual {p0, v7}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->backup(I)V

    .line 140
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    if-ne v2, v8, :cond_4a

    .line 141
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    .line 142
    :cond_4a
    throw v0

    .line 112
    .end local v0           #e:Ljava/io/IOException;
    :cond_4b
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    if-gez v2, :cond_54

    .line 113
    iput v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    iput v7, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    goto :goto_1c

    .line 115
    :cond_54
    invoke-virtual {p0, v7}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_1c

    .line 117
    :cond_58
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    if-le v2, v3, :cond_63

    .line 118
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    goto :goto_1c

    .line 119
    :cond_63
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    sub-int/2addr v2, v3

    if-ge v2, v4, :cond_6f

    .line 120
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_1c

    .line 122
    :cond_6f
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->available:I

    goto :goto_1c

    .line 134
    .restart local v1       #i:I
    :cond_74
    :try_start_74
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_79} :catch_38

    .line 135
    return-void
.end method

.method public GetImage()Ljava/lang/String;
    .registers 7

    .prologue
    .line 376
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    if-lt v0, v1, :cond_17

    .line 377
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 379
    :goto_16
    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public GetSuffix(I)[C
    .registers 7
    .parameter "len"

    .prologue
    const/4 v4, 0x0

    .line 385
    new-array v0, p1, [C

    .line 387
    .local v0, ret:[C
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_14

    .line 388
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    :goto_13
    return-object v0

    .line 391
    :cond_14
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_13
.end method

.method protected UpdateLineColumn(C)V
    .registers 6
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 157
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    .line 159
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->prevCharIsLF:Z

    if-eqz v0, :cond_2a

    .line 161
    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 162
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->line:I

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->line:I

    .line 175
    :cond_16
    :goto_16
    packed-switch p1, :pswitch_data_5a

    .line 191
    :goto_19
    :pswitch_19
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->line:I

    aput v2, v0, v1

    .line 192
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    aput v2, v0, v1

    .line 193
    return-void

    .line 164
    :cond_2a
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->prevCharIsCR:Z

    if-eqz v0, :cond_16

    .line 166
    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->prevCharIsCR:Z

    .line 167
    const/16 v0, 0xa

    if-ne p1, v0, :cond_37

    .line 169
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_16

    .line 172
    :cond_37
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->line:I

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->line:I

    goto :goto_16

    .line 178
    :pswitch_40
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->prevCharIsCR:Z

    goto :goto_19

    .line 181
    :pswitch_43
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_19

    .line 184
    :pswitch_46
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    .line 185
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tabSize:I

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tabSize:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->column:I

    goto :goto_19

    .line 175
    :pswitch_data_5a
    .packed-switch 0x9
        :pswitch_46
        :pswitch_43
        :pswitch_19
        :pswitch_19
        :pswitch_40
    .end packed-switch
.end method

.method public backup(I)V
    .registers 4
    .parameter "amount"

    .prologue
    .line 252
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    .line 253
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    if-gez v0, :cond_13

    .line 254
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    .line 255
    :cond_13
    return-void
.end method

.method public getBeginColumn()I
    .registers 3

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndColumn()I
    .registers 3

    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public readChar()C
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    if-lez v1, :cond_1e

    .line 199
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    .line 201
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    if-ne v1, v2, :cond_17

    .line 202
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    .line 204
    :cond_17
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    .line 213
    :goto_1d
    return v0

    .line 207
    :cond_1e
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    if-lt v1, v2, :cond_2b

    .line 208
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->FillBuff()V

    .line 210
    :cond_2b
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    .line 212
    .local v0, c:C
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->UpdateLineColumn(C)V

    goto :goto_1d
.end method
