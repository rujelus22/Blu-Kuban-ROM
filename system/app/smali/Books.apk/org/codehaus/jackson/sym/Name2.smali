.class public final Lorg/codehaus/jackson/sym/Name2;
.super Lorg/codehaus/jackson/sym/Name;
.source "Name2.java"


# instance fields
.field final mQuad1:I

.field final mQuad2:I


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter "name"
    .parameter "hash"
    .parameter "quad1"
    .parameter "quad2"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/sym/Name;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lorg/codehaus/jackson/sym/Name2;->mQuad1:I

    .line 23
    iput p4, p0, Lorg/codehaus/jackson/sym/Name2;->mQuad2:I

    .line 24
    return-void
.end method


# virtual methods
.method public equals(I)Z
    .registers 3
    .parameter "quad"

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public equals(II)Z
    .registers 4
    .parameter "quad1"
    .parameter "quad2"

    .prologue
    .line 32
    iget v0, p0, Lorg/codehaus/jackson/sym/Name2;->mQuad1:I

    if-ne p1, v0, :cond_a

    iget v0, p0, Lorg/codehaus/jackson/sym/Name2;->mQuad2:I

    if-ne p2, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public equals([II)Z
    .registers 7
    .parameter "quads"
    .parameter "qlen"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x2

    if-ne p2, v2, :cond_12

    aget v2, p1, v1

    iget v3, p0, Lorg/codehaus/jackson/sym/Name2;->mQuad1:I

    if-ne v2, v3, :cond_12

    aget v2, p1, v0

    iget v3, p0, Lorg/codehaus/jackson/sym/Name2;->mQuad2:I

    if-ne v2, v3, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method
