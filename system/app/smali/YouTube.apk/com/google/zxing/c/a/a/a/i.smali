.class abstract Lcom/google/zxing/c/a/a/a/i;
.super Lcom/google/zxing/c/a/a/a/h;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/zxing/common/a;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/zxing/c/a/a/a/h;-><init>(Lcom/google/zxing/common/a;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected abstract a(I)I
.end method

.method protected abstract a(Ljava/lang/StringBuffer;I)V
.end method

.method protected final b(Ljava/lang/StringBuffer;II)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/i;->b:Lcom/google/zxing/c/a/a/a/s;

    invoke-virtual {v0, p2, p3}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v0

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/c/a/a/a/i;->a(Ljava/lang/StringBuffer;I)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/google/zxing/c/a/a/a/i;->a(I)I

    move-result v2

    .line 46
    const v1, 0x186a0

    .line 47
    const/4 v0, 0x0

    :goto_11
    const/4 v3, 0x5

    if-ge v0, v3, :cond_22

    .line 48
    div-int v3, v2, v1

    if-nez v3, :cond_1d

    .line 49
    const/16 v3, 0x30

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 51
    :cond_1d
    div-int/lit8 v1, v1, 0xa

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 53
    :cond_22
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 54
    return-void
.end method
