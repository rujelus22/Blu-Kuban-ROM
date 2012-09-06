.class final Lcom/google/zxing/c/a/a/a/b;
.super Lcom/google/zxing/c/a/a/a/f;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/zxing/common/a;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/zxing/c/a/a/a/f;-><init>(Lcom/google/zxing/common/a;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected final a(I)I
    .registers 3
    .parameter

    .prologue
    .line 49
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_5

    .line 52
    :goto_4
    return p1

    :cond_5
    add-int/lit16 p1, p1, -0x2710

    goto :goto_4
.end method

.method protected final a(Ljava/lang/StringBuffer;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 41
    const/16 v0, 0x2710

    if-ge p2, v0, :cond_a

    .line 42
    const-string v0, "(3202)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    :goto_9
    return-void

    .line 44
    :cond_a
    const-string v0, "(3203)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9
.end method
