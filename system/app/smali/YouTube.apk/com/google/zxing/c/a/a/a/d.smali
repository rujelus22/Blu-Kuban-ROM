.class final Lcom/google/zxing/c/a/a/a/d;
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
    .registers 6

    .prologue
    const/16 v4, 0x30

    .line 45
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/d;->a:Lcom/google/zxing/common/a;

    iget v0, v0, Lcom/google/zxing/common/a;->b:I

    if-ge v0, v4, :cond_d

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

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/c/a/a/a/d;->b(Ljava/lang/StringBuffer;I)V

    .line 53
    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/d;->b:Lcom/google/zxing/c/a/a/a/s;

    const/4 v2, 0x2

    invoke-virtual {v1, v4, v2}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v1

    .line 56
    const-string v2, "(393"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 58
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/d;->b:Lcom/google/zxing/c/a/a/a/s;

    const/16 v2, 0x32

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v1

    .line 62
    div-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_3c

    .line 63
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    :cond_3c
    div-int/lit8 v2, v1, 0xa

    if-nez v2, :cond_43

    .line 66
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    :cond_43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 70
    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/d;->b:Lcom/google/zxing/c/a/a/a/s;

    const/16 v2, 0x3c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/c/a/a/a/s;->a(ILjava/lang/String;)Lcom/google/zxing/c/a/a/a/o;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcom/google/zxing/c/a/a/a/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
