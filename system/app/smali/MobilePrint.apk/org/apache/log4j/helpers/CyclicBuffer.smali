.class public Lorg/apache/log4j/helpers/CyclicBuffer;
.super Ljava/lang/Object;
.source "CyclicBuffer.java"


# instance fields
.field ea:[Lorg/apache/log4j/spi/LoggingEvent;

.field first:I

.field last:I

.field maxSize:I

.field numElems:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .parameter "maxSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    if-ge p1, v0, :cond_26

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The maxSize argument ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") is not a positive integer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_26
    iput p1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    .line 54
    new-array v0, p1, [Lorg/apache/log4j/spi/LoggingEvent;

    iput-object v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    .line 55
    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    .line 56
    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    .line 57
    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    .line 58
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/log4j/spi/LoggingEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-object v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    aput-object p1, v0, v1

    .line 67
    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    if-ne v0, v1, :cond_13

    .line 68
    iput v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    .line 70
    :cond_13
    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    if-ge v0, v1, :cond_20

    .line 71
    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    .line 74
    :cond_1f
    :goto_1f
    return-void

    .line 72
    :cond_20
    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    if-ne v0, v1, :cond_1f

    .line 73
    iput v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    goto :goto_1f
.end method

.method public get()Lorg/apache/log4j/spi/LoggingEvent;
    .registers 5

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, r:Lorg/apache/log4j/spi/LoggingEvent;
    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-lez v1, :cond_25

    .line 105
    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    .line 106
    iget-object v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    aget-object v0, v1, v2

    .line 107
    iget-object v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 108
    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    iget v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    if-ne v1, v2, :cond_25

    .line 109
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    .line 111
    :cond_25
    return-object v0
.end method

.method public get(I)Lorg/apache/log4j/spi/LoggingEvent;
    .registers 5
    .parameter "i"

    .prologue
    .line 86
    if-ltz p1, :cond_6

    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-lt p1, v0, :cond_8

    .line 87
    :cond_6
    const/4 v0, 0x0

    .line 89
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_7
.end method

.method public getMaxSize()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    return v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    return v0
.end method

.method public resize(I)V
    .registers 9
    .parameter "newSize"

    .prologue
    const/4 v6, 0x0

    .line 131
    if-gez p1, :cond_22

    .line 132
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Negative array size ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "] not allowed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 135
    :cond_22
    iget v3, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-ne p1, v3, :cond_27

    .line 157
    :goto_26
    return-void

    .line 138
    :cond_27
    new-array v2, p1, [Lorg/apache/log4j/spi/LoggingEvent;

    .line 140
    .local v2, temp:[Lorg/apache/log4j/spi/LoggingEvent;
    iget v3, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-ge p1, v3, :cond_3e

    move v1, p1

    .line 142
    .local v1, loopLen:I
    :goto_2e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2f
    if-lt v0, v1, :cond_41

    .line 148
    iput-object v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    .line 149
    iput v6, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    .line 150
    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    .line 151
    iput p1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    .line 152
    if-ne v1, p1, :cond_5f

    .line 153
    iput v6, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    goto :goto_26

    .line 140
    .end local v0           #i:I
    .end local v1           #loopLen:I
    :cond_3e
    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    goto :goto_2e

    .line 143
    .restart local v0       #i:I
    .restart local v1       #loopLen:I
    :cond_41
    iget-object v3, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v4, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 144
    iget-object v3, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v4, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 145
    iget v3, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    iget v4, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-ne v3, v4, :cond_5c

    .line 146
    iput v6, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    .line 142
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 155
    :cond_5f
    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    goto :goto_26
.end method
