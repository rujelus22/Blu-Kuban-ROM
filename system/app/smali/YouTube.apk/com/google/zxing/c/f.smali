.class public final Lcom/google/zxing/c/f;
.super Lcom/google/zxing/c/n;
.source "SourceFile"


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/zxing/c/n;-><init>()V

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/c/f;->a:[I

    .line 34
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/zxing/common/a;[ILjava/lang/StringBuffer;)I
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 38
    iget-object v4, p0, Lcom/google/zxing/c/f;->a:[I

    .line 39
    aput v1, v4, v1

    .line 40
    aput v1, v4, v7

    .line 41
    const/4 v0, 0x2

    aput v1, v4, v0

    .line 42
    const/4 v0, 0x3

    aput v1, v4, v0

    .line 43
    iget v5, p1, Lcom/google/zxing/common/a;->b:I

    .line 44
    aget v0, p2, v7

    move v3, v1

    .line 46
    :goto_14
    if-ge v3, v8, :cond_34

    if-ge v0, v5, :cond_34

    .line 47
    sget-object v2, Lcom/google/zxing/c/f;->d:[[I

    invoke-static {p1, v4, v0, v2}, Lcom/google/zxing/c/f;->a(Lcom/google/zxing/common/a;[II[[I)I

    move-result v2

    .line 48
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v0

    move v0, v1

    .line 49
    :goto_26
    array-length v6, v4

    if-ge v0, v6, :cond_2f

    .line 50
    aget v6, v4, v0

    add-int/2addr v2, v6

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 46
    :cond_2f
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_14

    .line 54
    :cond_34
    sget-object v2, Lcom/google/zxing/c/f;->c:[I

    invoke-static {p1, v0, v7, v2}, Lcom/google/zxing/c/f;->a(Lcom/google/zxing/common/a;IZ[I)[I

    move-result-object v0

    .line 55
    aget v0, v0, v7

    move v3, v1

    .line 57
    :goto_3d
    if-ge v3, v8, :cond_5d

    if-ge v0, v5, :cond_5d

    .line 58
    sget-object v2, Lcom/google/zxing/c/f;->d:[[I

    invoke-static {p1, v4, v0, v2}, Lcom/google/zxing/c/f;->a(Lcom/google/zxing/common/a;[II[[I)I

    move-result v2

    .line 59
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v0

    move v0, v1

    .line 60
    :goto_4f
    array-length v6, v4

    if-ge v0, v6, :cond_58

    .line 61
    aget v6, v4, v0

    add-int/2addr v2, v6

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 57
    :cond_58
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_3d

    .line 65
    :cond_5d
    return v0
.end method

.method final b()Lcom/google/zxing/a;
    .registers 2

    .prologue
    .line 69
    sget-object v0, Lcom/google/zxing/a;->g:Lcom/google/zxing/a;

    return-object v0
.end method
