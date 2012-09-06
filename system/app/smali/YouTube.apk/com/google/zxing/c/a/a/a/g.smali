.class final Lcom/google/zxing/c/a/a/a/g;
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
    const/4 v3, 0x4

    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    const-string v1, "(01)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 49
    iget-object v2, p0, Lcom/google/zxing/c/a/a/a/g;->b:Lcom/google/zxing/c/a/a/a/s;

    invoke-virtual {v2, v3, v3}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 52
    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/zxing/c/a/a/a/g;->a(Ljava/lang/StringBuffer;II)V

    .line 54
    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/g;->b:Lcom/google/zxing/c/a/a/a/s;

    const/16 v2, 0x30

    invoke-virtual {v1, v0, v2}, Lcom/google/zxing/c/a/a/a/s;->a(Ljava/lang/StringBuffer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
