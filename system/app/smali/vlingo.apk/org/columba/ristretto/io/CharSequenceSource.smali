.class public Lorg/columba/ristretto/io/CharSequenceSource;
.super Ljava/lang/Object;
.source "CharSequenceSource.java"

# interfaces
.implements Lorg/columba/ristretto/io/Source;


# instance fields
.field private end:I

.field private pos:I

.field private source:Ljava/lang/CharSequence;

.field private start:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/columba/ristretto/io/CharSequenceSource;->source:Ljava/lang/CharSequence;

    .line 59
    iput v0, p0, Lorg/columba/ristretto/io/CharSequenceSource;->pos:I

    .line 60
    iput v0, p0, Lorg/columba/ristretto/io/CharSequenceSource;->start:I

    .line 61
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lorg/columba/ristretto/io/CharSequenceSource;->end:I

    .line 62
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .registers 4
    .parameter "arg0"

    .prologue
    .line 126
    :try_start_0
    iput p1, p0, Lorg/columba/ristretto/io/CharSequenceSource;->pos:I

    .line 127
    invoke-virtual {p0}, Lorg/columba/ristretto/io/CharSequenceSource;->next()C
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 130
    :goto_6
    return v1

    .line 128
    :catch_7
    move-exception v0

    .line 129
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 130
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/columba/ristretto/io/CharSequenceSource;->source:Ljava/lang/CharSequence;

    .line 159
    return-void
.end method

.method public deepClose()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0}, Lorg/columba/ristretto/io/CharSequenceSource;->close()V

    .line 166
    return-void
.end method

.method public fromActualPosition()Lorg/columba/ristretto/io/Source;
    .registers 4

    .prologue
    .line 86
    new-instance v0, Lorg/columba/ristretto/io/CharSequenceSource;

    iget-object v1, p0, Lorg/columba/ristretto/io/CharSequenceSource;->source:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Lorg/columba/ristretto/io/CharSequenceSource;-><init>(Ljava/lang/CharSequence;)V

    .line 87
    .local v0, subsource:Lorg/columba/ristretto/io/CharSequenceSource;
    iget v1, p0, Lorg/columba/ristretto/io/CharSequenceSource;->start:I

    iget v2, p0, Lorg/columba/ristretto/io/CharSequenceSource;->pos:I

    add-int/2addr v1, v2

    iput v1, v0, Lorg/columba/ristretto/io/CharSequenceSource;->start:I

    .line 88
    iget v1, p0, Lorg/columba/ristretto/io/CharSequenceSource;->end:I

    iput v1, v0, Lorg/columba/ristretto/io/CharSequenceSource;->end:I

    .line 89
    const/4 v1, 0x0

    iput v1, v0, Lorg/columba/ristretto/io/CharSequenceSource;->pos:I

    .line 90
    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lorg/columba/ristretto/io/CharSequenceSource;->pos:I

    return v0
.end method

.method public isEOF()Z
    .registers 3

    .prologue
    .line 151
    iget v0, p0, Lorg/columba/ristretto/io/CharSequenceSource;->pos:I

    iget v1, p0, Lorg/columba/ristretto/io/CharSequenceSource;->end:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public length()I
    .registers 3

    .prologue
    .line 118
    iget v0, p0, Lorg/columba/ristretto/io/CharSequenceSource;->end:I

    iget v1, p0, Lorg/columba/ristretto/io/CharSequenceSource;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public next()C
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lorg/columba/ristretto/io/CharSequenceSource;->source:Ljava/lang/CharSequence;

    iget v1, p0, Lorg/columba/ristretto/io/CharSequenceSource;->start:I

    iget v2, p0, Lorg/columba/ristretto/io/CharSequenceSource;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/columba/ristretto/io/CharSequenceSource;->pos:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public seek(I)V
    .registers 2
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iput p1, p0, Lorg/columba/ristretto/io/CharSequenceSource;->pos:I

    .line 105
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 79
    invoke-virtual {p0, p1, p2}, Lorg/columba/ristretto/io/CharSequenceSource;->subSource(II)Lorg/columba/ristretto/io/Source;

    move-result-object v0

    return-object v0
.end method

.method public subSource(II)Lorg/columba/ristretto/io/Source;
    .registers 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 68
    new-instance v0, Lorg/columba/ristretto/io/CharSequenceSource;

    iget-object v1, p0, Lorg/columba/ristretto/io/CharSequenceSource;->source:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Lorg/columba/ristretto/io/CharSequenceSource;-><init>(Ljava/lang/CharSequence;)V

    .line 69
    .local v0, subsource:Lorg/columba/ristretto/io/CharSequenceSource;
    iget v1, p0, Lorg/columba/ristretto/io/CharSequenceSource;->start:I

    add-int/2addr v1, p1

    iput v1, v0, Lorg/columba/ristretto/io/CharSequenceSource;->start:I

    .line 70
    iget v1, p0, Lorg/columba/ristretto/io/CharSequenceSource;->start:I

    add-int/2addr v1, p2

    iput v1, v0, Lorg/columba/ristretto/io/CharSequenceSource;->end:I

    .line 71
    const/4 v1, 0x0

    iput v1, v0, Lorg/columba/ristretto/io/CharSequenceSource;->pos:I

    .line 72
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/columba/ristretto/io/CharSequenceSource;->length()I

    move-result v2

    if-gez v2, :cond_9

    const-string v2, ""

    .line 144
    :goto_8
    return-object v2

    .line 140
    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/columba/ristretto/io/CharSequenceSource;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 141
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    invoke-virtual {p0}, Lorg/columba/ristretto/io/CharSequenceSource;->length()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 142
    invoke-virtual {p0, v1}, Lorg/columba/ristretto/io/CharSequenceSource;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 144
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method
