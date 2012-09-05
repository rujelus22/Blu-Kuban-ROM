.class public Lorg/columba/ristretto/io/ConcatenatedSource;
.super Ljava/lang/Object;
.source "ConcatenatedSource.java"

# interfaces
.implements Lorg/columba/ristretto/io/Source;


# instance fields
.field length:I

.field nextSourceBegin:Ljava/util/ArrayList;

.field position:I

.field sourceIndex:I

.field sources:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->nextSourceBegin:Ljava/util/ArrayList;

    .line 60
    iget-object v0, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->nextSourceBegin:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iput v2, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->position:I

    .line 62
    iput v2, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->length:I

    .line 63
    iput v2, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sourceIndex:I

    .line 64
    return-void
.end method


# virtual methods
.method public addSource(Lorg/columba/ristretto/io/Source;)V
    .registers 5
    .parameter "source"

    .prologue
    .line 72
    iget-object v0, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget v0, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->length:I

    invoke-interface {p1}, Lorg/columba/ristretto/io/Source;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->length:I

    .line 74
    iget-object v0, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->nextSourceBegin:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->length:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public charAt(I)C
    .registers 6
    .parameter "arg0"

    .prologue
    .line 137
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/columba/ristretto/io/ConcatenatedSource;->seek(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_20

    .line 141
    iget-object v1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    iget v2, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sourceIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/columba/ristretto/io/Source;

    iget-object v2, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    iget v3, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sourceIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/columba/ristretto/io/Source;

    invoke-interface {v2}, Lorg/columba/ristretto/io/Source;->getPosition()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/columba/ristretto/io/Source;->charAt(I)C

    move-result v1

    :goto_1f
    return v1

    .line 138
    :catch_20
    move-exception v0

    .line 139
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 220
    iget-object v1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/columba/ristretto/io/Source;

    invoke-interface {v1}, Lorg/columba/ristretto/io/Source;->close()V

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    :cond_17
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    .line 223
    return-void
.end method

.method public deepClose()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 230
    iget-object v1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/columba/ristretto/io/Source;

    invoke-interface {v1}, Lorg/columba/ristretto/io/Source;->deepClose()V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 232
    :cond_17
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    .line 233
    return-void
.end method

.method public fromActualPosition()Lorg/columba/ristretto/io/Source;
    .registers 5

    .prologue
    .line 81
    new-instance v1, Lorg/columba/ristretto/io/ConcatenatedSource;

    invoke-direct {v1}, Lorg/columba/ristretto/io/ConcatenatedSource;-><init>()V

    .line 82
    .local v1, newsource:Lorg/columba/ristretto/io/ConcatenatedSource;
    iget-object v2, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    iget v3, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sourceIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/columba/ristretto/io/Source;

    invoke-interface {v2}, Lorg/columba/ristretto/io/Source;->fromActualPosition()Lorg/columba/ristretto/io/Source;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/io/ConcatenatedSource;->addSource(Lorg/columba/ristretto/io/Source;)V

    .line 83
    iget v2, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sourceIndex:I

    add-int/lit8 v0, v2, 0x1

    .local v0, i:I
    :goto_1a
    iget-object v2, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_30

    .line 84
    iget-object v2, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/columba/ristretto/io/Source;

    invoke-virtual {v1, v2}, Lorg/columba/ristretto/io/ConcatenatedSource;->addSource(Lorg/columba/ristretto/io/Source;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 86
    :cond_30
    return-object v1
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->position:I

    return v0
.end method

.method public isEOF()Z
    .registers 3

    .prologue
    .line 100
    iget v0, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->position:I

    iget v1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->length:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public length()I
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->length:I

    return v0
.end method

.method public next()C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    iget v1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sourceIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/columba/ristretto/io/Source;

    invoke-interface {v0}, Lorg/columba/ristretto/io/Source;->isEOF()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 108
    iget v0, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sourceIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sourceIndex:I

    .line 111
    :cond_16
    iget-object v0, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    iget v1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sourceIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/columba/ristretto/io/Source;

    invoke-interface {v0}, Lorg/columba/ristretto/io/Source;->next()C

    move-result v0

    return v0
.end method

.method public seek(I)V
    .registers 5
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->nextSourceBegin:Ljava/util/ArrayList;

    iget v2, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sourceIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, p1, :cond_22

    iget-object v1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->nextSourceBegin:Ljava/util/ArrayList;

    iget v2, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sourceIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt p1, v1, :cond_4e

    .line 121
    :cond_22
    const/4 v1, 0x0

    iput v1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sourceIndex:I

    .line 122
    :goto_25
    iget-object v1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->nextSourceBegin:Ljava/util/ArrayList;

    iget v2, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sourceIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, p1, :cond_47

    iget-object v1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->nextSourceBegin:Ljava/util/ArrayList;

    iget v2, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sourceIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt p1, v1, :cond_4e

    .line 123
    :cond_47
    iget v1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sourceIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sourceIndex:I

    goto :goto_25

    .line 126
    :cond_4e
    iget-object v1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->nextSourceBegin:Ljava/util/ArrayList;

    iget v2, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sourceIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v0, p1, v1

    .line 127
    .local v0, posInSource:I
    iput p1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->position:I

    .line 129
    iget-object v1, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    iget v2, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sourceIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/columba/ristretto/io/Source;

    invoke-interface {v1, v0}, Lorg/columba/ristretto/io/Source;->seek(I)V

    .line 130
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 155
    sub-int v2, p2, p1

    const/16 v3, 0x400

    if-ge v2, v3, :cond_1a

    .line 156
    new-instance v1, Ljava/lang/StringBuffer;

    sub-int v2, p2, p1

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 157
    .local v1, result:Ljava/lang/StringBuffer;
    move v0, p1

    .local v0, i:I
    :goto_e
    if-ge v0, p2, :cond_1e

    .line 158
    invoke-virtual {p0, v0}, Lorg/columba/ristretto/io/ConcatenatedSource;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 162
    .end local v0           #i:I
    .end local v1           #result:Ljava/lang/StringBuffer;
    :cond_1a
    invoke-virtual {p0, p1, p2}, Lorg/columba/ristretto/io/ConcatenatedSource;->subSource(II)Lorg/columba/ristretto/io/Source;

    move-result-object v1

    :cond_1e
    return-object v1
.end method

.method public subSource(II)Lorg/columba/ristretto/io/Source;
    .registers 11
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 171
    new-instance v5, Lorg/columba/ristretto/io/ConcatenatedSource;

    invoke-direct {v5}, Lorg/columba/ristretto/io/ConcatenatedSource;-><init>()V

    .line 174
    .local v5, newsource:Lorg/columba/ristretto/io/ConcatenatedSource;
    const/4 v1, 0x0

    .line 175
    .local v1, beginSourceIndex:I
    :goto_6
    iget-object v6, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->nextSourceBegin:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, p1, :cond_24

    iget-object v6, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->nextSourceBegin:Ljava/util/ArrayList;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt p1, v6, :cond_27

    .line 176
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 179
    :cond_27
    iget-object v6, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->nextSourceBegin:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v0, p1, v6

    .line 183
    .local v0, beginPos:I
    const/4 v3, 0x0

    .line 184
    .local v3, endSourceIndex:I
    :goto_36
    iget-object v6, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->nextSourceBegin:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, p2, :cond_54

    iget-object v6, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->nextSourceBegin:Ljava/util/ArrayList;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt p2, v6, :cond_57

    .line 185
    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 188
    :cond_57
    iget-object v6, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->nextSourceBegin:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v2, p2, v6

    .line 191
    .local v2, endPos:I
    if-ne v1, v3, :cond_79

    .line 192
    iget-object v6, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/columba/ristretto/io/Source;

    invoke-interface {v6, v0, v2}, Lorg/columba/ristretto/io/Source;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Lorg/columba/ristretto/io/Source;

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/io/ConcatenatedSource;->addSource(Lorg/columba/ristretto/io/Source;)V

    .line 201
    :goto_78
    return-object v5

    .line 194
    :cond_79
    iget-object v6, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/columba/ristretto/io/Source;

    iget-object v7, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/columba/ristretto/io/Source;

    invoke-interface {v7}, Lorg/columba/ristretto/io/Source;->length()I

    move-result v7

    invoke-interface {v6, v0, v7}, Lorg/columba/ristretto/io/Source;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Lorg/columba/ristretto/io/Source;

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/io/ConcatenatedSource;->addSource(Lorg/columba/ristretto/io/Source;)V

    .line 195
    add-int/lit8 v4, v1, 0x1

    .local v4, i:I
    :goto_98
    add-int/lit8 v6, v3, -0x1

    if-ge v4, v6, :cond_aa

    .line 196
    iget-object v6, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/columba/ristretto/io/Source;

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/io/ConcatenatedSource;->addSource(Lorg/columba/ristretto/io/Source;)V

    .line 195
    add-int/lit8 v4, v4, 0x1

    goto :goto_98

    .line 198
    :cond_aa
    iget-object v6, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/columba/ristretto/io/Source;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v2}, Lorg/columba/ristretto/io/Source;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Lorg/columba/ristretto/io/Source;

    invoke-virtual {v5, v6}, Lorg/columba/ristretto/io/ConcatenatedSource;->addSource(Lorg/columba/ristretto/io/Source;)V

    goto :goto_78
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 208
    new-instance v1, Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->length:I

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 209
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget-object v2, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 210
    iget-object v2, p0, Lorg/columba/ristretto/io/ConcatenatedSource;->sources:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 212
    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
