.class final Lcom/google/zxing/c/a/a/a/k;
.super Lcom/google/zxing/c/a/a/a/j;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/zxing/common/a;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/zxing/c/a/a/a/j;-><init>(Lcom/google/zxing/common/a;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/k;->b:Lcom/google/zxing/c/a/a/a/s;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/google/zxing/c/a/a/a/s;->a(Ljava/lang/StringBuffer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
