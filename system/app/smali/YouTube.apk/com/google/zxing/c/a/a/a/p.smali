.class final Lcom/google/zxing/c/a/a/a/p;
.super Lcom/google/zxing/c/a/a/a/q;
.source "SourceFile"


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(III)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0xa

    .line 41
    invoke-direct {p0, p1}, Lcom/google/zxing/c/a/a/a/q;-><init>(I)V

    .line 43
    iput p2, p0, Lcom/google/zxing/c/a/a/a/p;->b:I

    .line 44
    iput p3, p0, Lcom/google/zxing/c/a/a/a/p;->c:I

    .line 46
    iget v0, p0, Lcom/google/zxing/c/a/a/a/p;->b:I

    if-ltz v0, :cond_11

    iget v0, p0, Lcom/google/zxing/c/a/a/a/p;->b:I

    if-le v0, v1, :cond_26

    .line 47
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Invalid firstDigit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_26
    iget v0, p0, Lcom/google/zxing/c/a/a/a/p;->c:I

    if-ltz v0, :cond_2e

    iget v0, p0, Lcom/google/zxing/c/a/a/a/p;->c:I

    if-le v0, v1, :cond_43

    .line 51
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Invalid secondDigit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_43
    return-void
.end method


# virtual methods
.method final a()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/google/zxing/c/a/a/a/p;->b:I

    return v0
.end method

.method final b()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/google/zxing/c/a/a/a/p;->c:I

    return v0
.end method

.method final c()Z
    .registers 3

    .prologue
    .line 68
    iget v0, p0, Lcom/google/zxing/c/a/a/a/p;->b:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method final d()Z
    .registers 3

    .prologue
    .line 72
    iget v0, p0, Lcom/google/zxing/c/a/a/a/p;->c:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
