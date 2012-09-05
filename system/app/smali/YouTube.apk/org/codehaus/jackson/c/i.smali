.class public final Lorg/codehaus/jackson/c/i;
.super Lorg/codehaus/jackson/c/e;
.source "SourceFile"


# instance fields
.field final c:[I

.field final d:I


# direct methods
.method constructor <init>(Ljava/lang/String;I[II)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/c/e;-><init>(Ljava/lang/String;I)V

    .line 19
    const/4 v0, 0x3

    if-ge p4, v0, :cond_e

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Qlen must >= 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_e
    iput-object p3, p0, Lorg/codehaus/jackson/c/i;->c:[I

    .line 23
    iput p4, p0, Lorg/codehaus/jackson/c/i;->d:I

    .line 24
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 3
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public final a(II)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public final a([II)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    iget v1, p0, Lorg/codehaus/jackson/c/i;->d:I

    if-eq p2, v1, :cond_6

    .line 66
    :cond_5
    :goto_5
    return v0

    :cond_6
    move v1, v0

    .line 61
    :goto_7
    if-ge v1, p2, :cond_14

    .line 62
    aget v2, p1, v1

    iget-object v3, p0, Lorg/codehaus/jackson/c/i;->c:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_5

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 66
    :cond_14
    const/4 v0, 0x1

    goto :goto_5
.end method
