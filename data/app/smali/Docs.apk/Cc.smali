.class public LCc;
.super Ljava/lang/Object;
.source "CharSequenceIterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field private final a:I

.field private final a:Ljava/lang/CharSequence;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, LCc;->a:Ljava/lang/CharSequence;

    .line 30
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, LCc;->a:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, LCc;->b:I

    .line 32
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 37
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 38
    :catch_5
    move-exception v0

    .line 39
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public current()C
    .registers 3

    .prologue
    .line 45
    iget v0, p0, LCc;->b:I

    iget v1, p0, LCc;->a:I

    if-ne v0, v1, :cond_a

    .line 46
    const v0, 0xffff

    .line 48
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, LCc;->a:Ljava/lang/CharSequence;

    iget v1, p0, LCc;->b:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_9
.end method

.method public first()C
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LCc;->setIndex(I)C

    move-result v0

    return v0
.end method

.method public getBeginIndex()I
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getEndIndex()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, LCc;->a:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, LCc;->b:I

    return v0
.end method

.method public last()C
    .registers 2

    .prologue
    .line 73
    iget v0, p0, LCc;->a:I

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0}, LCc;->setIndex(I)C

    move-result v0

    return v0

    :cond_a
    iget v0, p0, LCc;->a:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_5
.end method

.method public next()C
    .registers 3

    .prologue
    .line 78
    iget v0, p0, LCc;->b:I

    iget v1, p0, LCc;->a:I

    if-ne v0, v1, :cond_a

    .line 79
    const v0, 0xffff

    .line 81
    :goto_9
    return v0

    :cond_a
    iget v0, p0, LCc;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, LCc;->setIndex(I)C

    move-result v0

    goto :goto_9
.end method

.method public previous()C
    .registers 2

    .prologue
    .line 86
    iget v0, p0, LCc;->b:I

    if-nez v0, :cond_8

    .line 87
    const v0, 0xffff

    .line 89
    :goto_7
    return v0

    :cond_8
    iget v0, p0, LCc;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, LCc;->setIndex(I)C

    move-result v0

    goto :goto_7
.end method

.method public setIndex(I)C
    .registers 5
    .parameter

    .prologue
    .line 94
    if-ltz p1, :cond_6

    iget v0, p0, LCc;->a:I

    if-le p1, v0, :cond_27

    .line 95
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Valid range is [0..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LCc;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_27
    iput p1, p0, LCc;->b:I

    .line 98
    invoke-virtual {p0}, LCc;->current()C

    move-result v0

    return v0
.end method
