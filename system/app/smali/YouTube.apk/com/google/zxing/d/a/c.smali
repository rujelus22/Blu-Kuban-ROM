.class public final Lcom/google/zxing/d/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static a(Lcom/google/zxing/common/b;)Lcom/google/zxing/common/g;
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 74
    new-instance v0, Lcom/google/zxing/d/a/a;

    invoke-direct {v0, p0}, Lcom/google/zxing/d/a/a;-><init>(Lcom/google/zxing/common/b;)V

    .line 75
    invoke-virtual {v0}, Lcom/google/zxing/d/a/a;->a()[I

    move-result-object v1

    .line 76
    array-length v2, v1

    if-nez v2, :cond_12

    .line 77
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 80
    :cond_12
    invoke-virtual {v0}, Lcom/google/zxing/d/a/a;->c()I

    move-result v2

    .line 81
    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    shl-int v2, v3, v2

    .line 82
    invoke-virtual {v0}, Lcom/google/zxing/d/a/a;->b()[I

    move-result-object v0

    .line 84
    array-length v3, v0

    div-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x3

    if-gt v3, v4, :cond_2c

    if-ltz v2, :cond_2c

    const/16 v3, 0x200

    if-le v2, v3, :cond_31

    :cond_2c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_31
    array-length v0, v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_3a

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 85
    :cond_3a
    array-length v0, v1

    const/4 v3, 0x4

    if-ge v0, v3, :cond_43

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_43
    aget v0, v1, v5

    array-length v3, v1

    if-le v0, v3, :cond_4d

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_4d
    if-nez v0, :cond_56

    array-length v0, v1

    if-ge v2, v0, :cond_5b

    array-length v0, v1

    sub-int/2addr v0, v2

    aput v0, v1, v5

    .line 88
    :cond_56
    invoke-static {v1}, Lcom/google/zxing/d/a/b;->a([I)Lcom/google/zxing/common/g;

    move-result-object v0

    return-object v0

    .line 85
    :cond_5b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method
