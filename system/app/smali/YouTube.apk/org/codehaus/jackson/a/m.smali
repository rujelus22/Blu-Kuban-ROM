.class public abstract Lorg/codehaus/jackson/a/m;
.super Lorg/codehaus/jackson/a/d;
.source "SourceFile"


# instance fields
.field protected K:Ljava/io/Reader;

.field protected L:[C


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/b/c;ILjava/io/Reader;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/a/d;-><init>(Lorg/codehaus/jackson/b/c;I)V

    .line 54
    iput-object p3, p0, Lorg/codehaus/jackson/a/m;->K:Ljava/io/Reader;

    .line 55
    invoke-virtual {p1}, Lorg/codehaus/jackson/b/c;->g()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->L:[C

    .line 56
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;I)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 175
    :cond_6
    iget v1, p0, Lorg/codehaus/jackson/a/m;->s:I

    iget v2, p0, Lorg/codehaus/jackson/a/m;->t:I

    if-lt v1, v2, :cond_15

    .line 176
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v1

    if-nez v1, :cond_15

    .line 177
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->u()V

    .line 180
    :cond_15
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->L:[C

    iget v2, p0, Lorg/codehaus/jackson/a/m;->s:I

    aget-char v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_28

    .line 181
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/a/m;->f(Ljava/lang/String;)V

    .line 183
    :cond_28
    iget v1, p0, Lorg/codehaus/jackson/a/m;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/a/m;->s:I

    .line 184
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_6

    .line 187
    iget v0, p0, Lorg/codehaus/jackson/a/m;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/m;->t:I

    if-lt v0, v1, :cond_3f

    .line 188
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 198
    :cond_3e
    :goto_3e
    return v4

    .line 192
    :cond_3f
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->L:[C

    iget v1, p0, Lorg/codehaus/jackson/a/m;->s:I

    aget-char v0, v0, v1

    .line 194
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 195
    iget v0, p0, Lorg/codehaus/jackson/a/m;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/m;->s:I

    .line 196
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->f(Ljava/lang/String;)V

    goto :goto_3e
.end method

.method protected final e(Ljava/lang/String;)C
    .registers 5
    .parameter

    .prologue
    .line 114
    iget v0, p0, Lorg/codehaus/jackson/a/m;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/m;->t:I

    if-lt v0, v1, :cond_f

    .line 115
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v0

    if-nez v0, :cond_f

    .line 116
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/a/m;->c(Ljava/lang/String;)V

    .line 119
    :cond_f
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->L:[C

    iget v1, p0, Lorg/codehaus/jackson/a/m;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/m;->s:I

    aget-char v0, v0, v1

    return v0
.end method

.method protected final f(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    :goto_5
    iget v1, p0, Lorg/codehaus/jackson/a/m;->s:I

    iget v2, p0, Lorg/codehaus/jackson/a/m;->t:I

    if-lt v1, v2, :cond_11

    .line 211
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 212
    :cond_11
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->L:[C

    iget v2, p0, Lorg/codehaus/jackson/a/m;->s:I

    aget-char v1, v1, v2

    .line 216
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 217
    iget v2, p0, Lorg/codehaus/jackson/a/m;->s:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/m;->s:I

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 222
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': was expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->d(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method protected final p()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-wide v1, p0, Lorg/codehaus/jackson/a/m;->u:J

    iget v3, p0, Lorg/codehaus/jackson/a/m;->t:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/codehaus/jackson/a/m;->u:J

    .line 92
    iget v1, p0, Lorg/codehaus/jackson/a/m;->w:I

    iget v2, p0, Lorg/codehaus/jackson/a/m;->t:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/a/m;->w:I

    .line 94
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->K:Ljava/io/Reader;

    if-eqz v1, :cond_26

    .line 95
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->K:Ljava/io/Reader;

    iget-object v2, p0, Lorg/codehaus/jackson/a/m;->L:[C

    iget-object v3, p0, Lorg/codehaus/jackson/a/m;->L:[C

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 96
    if-lez v1, :cond_27

    .line 97
    iput v0, p0, Lorg/codehaus/jackson/a/m;->s:I

    .line 98
    iput v1, p0, Lorg/codehaus/jackson/a/m;->t:I

    .line 99
    const/4 v0, 0x1

    .line 108
    :cond_26
    return v0

    .line 102
    :cond_27
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->q()V

    .line 104
    if-nez v1, :cond_26

    .line 105
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reader returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/codehaus/jackson/a/m;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final q()V
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->K:Ljava/io/Reader;

    if-eqz v0, :cond_1c

    .line 133
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->q:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/b/c;->c()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 134
    :cond_14
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->K:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 136
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->K:Ljava/io/Reader;

    .line 138
    :cond_1c
    return-void
.end method

.method protected final r()V
    .registers 3

    .prologue
    .line 150
    invoke-super {p0}, Lorg/codehaus/jackson/a/d;->r()V

    .line 151
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->L:[C

    .line 152
    if-eqz v0, :cond_f

    .line 153
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/a/m;->L:[C

    .line 154
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->q:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/b/c;->a([C)V

    .line 156
    :cond_f
    return-void
.end method
