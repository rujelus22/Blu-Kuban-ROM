.class abstract Lcom/google/zxing/c/a/a/a/f;
.super Lcom/google/zxing/c/a/a/a/i;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/zxing/common/a;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/zxing/c/a/a/a/i;-><init>(Lcom/google/zxing/common/a;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/f;->a:Lcom/google/zxing/common/a;

    iget v0, v0, Lcom/google/zxing/common/a;->b:I

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_d

    .line 46
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 49
    :cond_d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/c/a/a/a/f;->b(Ljava/lang/StringBuffer;I)V

    .line 52
    const/16 v1, 0x2d

    const/16 v2, 0xf

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/zxing/c/a/a/a/f;->b(Ljava/lang/StringBuffer;II)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
