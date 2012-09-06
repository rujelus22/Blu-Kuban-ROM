.class public final Lcom/google/zxing/c/e;
.super Lcom/google/zxing/c/n;
.source "SourceFile"


# static fields
.field static final a:[I


# instance fields
.field private final f:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/c/e;->a:[I

    return-void

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/zxing/c/n;-><init>()V

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/c/e;->f:[I

    .line 69
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/zxing/common/a;[ILjava/lang/StringBuffer;)I
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x6

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 73
    iget-object v5, p0, Lcom/google/zxing/c/e;->f:[I

    .line 74
    aput v1, v5, v1

    .line 75
    aput v1, v5, v9

    .line 76
    const/4 v0, 0x2

    aput v1, v5, v0

    .line 77
    const/4 v0, 0x3

    aput v1, v5, v0

    .line 78
    iget v6, p1, Lcom/google/zxing/common/a;->b:I

    .line 79
    aget v0, p2, v9

    move v4, v1

    move v3, v1

    .line 83
    :goto_17
    if-ge v4, v10, :cond_41

    if-ge v0, v6, :cond_41

    .line 84
    sget-object v2, Lcom/google/zxing/c/e;->e:[[I

    invoke-static {p1, v5, v0, v2}, Lcom/google/zxing/c/e;->a(Lcom/google/zxing/common/a;[II[[I)I

    move-result v7

    .line 85
    rem-int/lit8 v2, v7, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v0

    move v0, v1

    .line 86
    :goto_2b
    array-length v8, v5

    if-ge v0, v8, :cond_34

    .line 87
    aget v8, v5, v0

    add-int/2addr v2, v8

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 89
    :cond_34
    if-lt v7, v11, :cond_82

    .line 90
    rsub-int/lit8 v0, v4, 0x5

    shl-int v0, v9, v0

    or-int/2addr v0, v3

    .line 83
    :goto_3b
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    move v0, v2

    goto :goto_17

    :cond_41
    move v2, v1

    .line 94
    :goto_42
    if-ge v2, v11, :cond_77

    sget-object v4, Lcom/google/zxing/c/e;->a:[I

    aget v4, v4, v2

    if-ne v3, v4, :cond_74

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 96
    sget-object v2, Lcom/google/zxing/c/e;->c:[I

    invoke-static {p1, v0, v9, v2}, Lcom/google/zxing/c/e;->a(Lcom/google/zxing/common/a;IZ[I)[I

    move-result-object v0

    .line 97
    aget v0, v0, v9

    move v3, v1

    .line 99
    :goto_59
    if-ge v3, v10, :cond_81

    if-ge v0, v6, :cond_81

    .line 100
    sget-object v2, Lcom/google/zxing/c/e;->d:[[I

    invoke-static {p1, v5, v0, v2}, Lcom/google/zxing/c/e;->a(Lcom/google/zxing/common/a;[II[[I)I

    move-result v2

    .line 101
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v0

    move v0, v1

    .line 102
    :goto_6b
    array-length v4, v5

    if-ge v0, v4, :cond_7c

    .line 103
    aget v4, v5, v0

    add-int/2addr v2, v4

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 94
    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_77
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 99
    :cond_7c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_59

    .line 107
    :cond_81
    return v0

    :cond_82
    move v0, v3

    goto :goto_3b
.end method

.method final b()Lcom/google/zxing/a;
    .registers 2

    .prologue
    .line 111
    sget-object v0, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;

    return-object v0
.end method
