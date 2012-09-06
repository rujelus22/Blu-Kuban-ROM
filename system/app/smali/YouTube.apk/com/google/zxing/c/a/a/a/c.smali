.class final Lcom/google/zxing/c/a/a/a/c;
.super Lcom/google/zxing/c/a/a/a/h;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/zxing/common/a;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/zxing/c/a/a/a/h;-><init>(Lcom/google/zxing/common/a;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x30

    .line 45
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/c;->a:Lcom/google/zxing/common/a;

    iget v0, v0, Lcom/google/zxing/common/a;->b:I

    if-ge v0, v3, :cond_d

    .line 46
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 49
    :cond_d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/c/a/a/a/c;->b(Ljava/lang/StringBuffer;I)V

    .line 53
    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/c;->b:Lcom/google/zxing/c/a/a/a/s;

    const/4 v2, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v1

    .line 55
    const-string v2, "(392"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 57
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 59
    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/c;->b:Lcom/google/zxing/c/a/a/a/s;

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/c/a/a/a/s;->a(ILjava/lang/String;)Lcom/google/zxing/c/a/a/a/o;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/google/zxing/c/a/a/a/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
