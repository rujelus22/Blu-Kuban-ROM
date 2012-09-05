.class public final Lorg/codehaus/jackson/c/h;
.super Lorg/codehaus/jackson/c/e;
.source "SourceFile"


# instance fields
.field final c:I

.field final d:I

.field final e:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/c/e;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lorg/codehaus/jackson/c/h;->c:I

    .line 19
    iput p4, p0, Lorg/codehaus/jackson/c/h;->d:I

    .line 20
    iput p5, p0, Lorg/codehaus/jackson/c/h;->e:I

    .line 21
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 3
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public final a(II)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public final a([II)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x3

    if-ne p2, v2, :cond_19

    aget v2, p1, v1

    iget v3, p0, Lorg/codehaus/jackson/c/h;->c:I

    if-ne v2, v3, :cond_19

    aget v2, p1, v0

    iget v3, p0, Lorg/codehaus/jackson/c/h;->d:I

    if-ne v2, v3, :cond_19

    const/4 v2, 0x2

    aget v2, p1, v2

    iget v3, p0, Lorg/codehaus/jackson/c/h;->e:I

    if-ne v2, v3, :cond_19

    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18
.end method
