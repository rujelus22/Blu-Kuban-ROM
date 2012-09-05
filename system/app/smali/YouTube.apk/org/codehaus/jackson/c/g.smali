.class public final Lorg/codehaus/jackson/c/g;
.super Lorg/codehaus/jackson/c/e;
.source "SourceFile"


# instance fields
.field final c:I

.field final d:I


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/c/e;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lorg/codehaus/jackson/c/g;->c:I

    .line 23
    iput p4, p0, Lorg/codehaus/jackson/c/g;->d:I

    .line 24
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 3
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public final a(II)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lorg/codehaus/jackson/c/g;->c:I

    if-ne p1, v0, :cond_a

    iget v0, p0, Lorg/codehaus/jackson/c/g;->d:I

    if-ne p2, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final a([II)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x2

    if-ne p2, v2, :cond_12

    aget v2, p1, v1

    iget v3, p0, Lorg/codehaus/jackson/c/g;->c:I

    if-ne v2, v3, :cond_12

    aget v2, p1, v0

    iget v3, p0, Lorg/codehaus/jackson/c/g;->d:I

    if-ne v2, v3, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method
