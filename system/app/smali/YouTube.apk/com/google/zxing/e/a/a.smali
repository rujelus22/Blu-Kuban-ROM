.class final Lcom/google/zxing/e/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/b;

.field private b:Lcom/google/zxing/e/a/q;

.field private c:Lcom/google/zxing/e/a/o;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/b;)V
    .registers 4
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget v0, p1, Lcom/google/zxing/common/b;->b:I

    .line 37
    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    .line 38
    :cond_e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 40
    :cond_13
    iput-object p1, p0, Lcom/google/zxing/e/a/a;->a:Lcom/google/zxing/common/b;

    .line 41
    return-void
.end method

.method private a(III)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/zxing/e/a/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_d

    shl-int/lit8 v0, p3, 0x1

    or-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    shl-int/lit8 v0, p3, 0x1

    goto :goto_c
.end method


# virtual methods
.method final a()Lcom/google/zxing/e/a/o;
    .registers 7

    .prologue
    const/4 v4, 0x7

    const/4 v1, 0x0

    const/16 v5, 0x8

    .line 52
    iget-object v0, p0, Lcom/google/zxing/e/a/a;->c:Lcom/google/zxing/e/a/o;

    if-eqz v0, :cond_b

    .line 53
    iget-object v0, p0, Lcom/google/zxing/e/a/a;->c:Lcom/google/zxing/e/a/o;

    .line 83
    :goto_a
    return-object v0

    :cond_b
    move v0, v1

    move v2, v1

    .line 58
    :goto_d
    const/4 v3, 0x6

    if-ge v0, v3, :cond_17

    .line 59
    invoke-direct {p0, v0, v5, v2}, Lcom/google/zxing/e/a/a;->a(III)I

    move-result v2

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 62
    :cond_17
    invoke-direct {p0, v4, v5, v2}, Lcom/google/zxing/e/a/a;->a(III)I

    move-result v0

    .line 63
    invoke-direct {p0, v5, v5, v0}, Lcom/google/zxing/e/a/a;->a(III)I

    move-result v0

    .line 64
    invoke-direct {p0, v5, v4, v0}, Lcom/google/zxing/e/a/a;->a(III)I

    move-result v2

    .line 66
    const/4 v0, 0x5

    :goto_24
    if-ltz v0, :cond_2d

    .line 67
    invoke-direct {p0, v5, v0, v2}, Lcom/google/zxing/e/a/a;->a(III)I

    move-result v2

    .line 66
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    .line 71
    :cond_2d
    iget-object v0, p0, Lcom/google/zxing/e/a/a;->a:Lcom/google/zxing/common/b;

    iget v3, v0, Lcom/google/zxing/common/b;->b:I

    .line 73
    add-int/lit8 v4, v3, -0x7

    .line 74
    add-int/lit8 v0, v3, -0x1

    :goto_35
    if-lt v0, v4, :cond_3e

    .line 75
    invoke-direct {p0, v5, v0, v1}, Lcom/google/zxing/e/a/a;->a(III)I

    move-result v1

    .line 74
    add-int/lit8 v0, v0, -0x1

    goto :goto_35

    .line 77
    :cond_3e
    add-int/lit8 v0, v3, -0x8

    :goto_40
    if-ge v0, v3, :cond_49

    .line 78
    invoke-direct {p0, v0, v5, v1}, Lcom/google/zxing/e/a/a;->a(III)I

    move-result v1

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 81
    :cond_49
    invoke-static {v2, v1}, Lcom/google/zxing/e/a/o;->b(II)Lcom/google/zxing/e/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/e/a/a;->c:Lcom/google/zxing/e/a/o;

    .line 82
    iget-object v0, p0, Lcom/google/zxing/e/a/a;->c:Lcom/google/zxing/e/a/o;

    if-eqz v0, :cond_56

    .line 83
    iget-object v0, p0, Lcom/google/zxing/e/a/a;->c:Lcom/google/zxing/e/a/o;

    goto :goto_a

    .line 85
    :cond_56
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method final b()Lcom/google/zxing/e/a/q;
    .registers 8

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/google/zxing/e/a/a;->b:Lcom/google/zxing/e/a/q;

    if-eqz v0, :cond_9

    .line 98
    iget-object v0, p0, Lcom/google/zxing/e/a/a;->b:Lcom/google/zxing/e/a/q;

    .line 134
    :goto_8
    return-object v0

    .line 101
    :cond_9
    iget-object v0, p0, Lcom/google/zxing/e/a/a;->a:Lcom/google/zxing/common/b;

    iget v5, v0, Lcom/google/zxing/common/b;->b:I

    .line 103
    add-int/lit8 v0, v5, -0x11

    shr-int/lit8 v0, v0, 0x2

    .line 104
    const/4 v3, 0x6

    if-gt v0, v3, :cond_19

    .line 105
    invoke-static {v0}, Lcom/google/zxing/e/a/q;->b(I)Lcom/google/zxing/e/a/q;

    move-result-object v0

    goto :goto_8

    .line 110
    :cond_19
    add-int/lit8 v6, v5, -0xb

    move v4, v1

    move v3, v2

    .line 111
    :goto_1d
    if-ltz v4, :cond_2e

    .line 112
    add-int/lit8 v0, v5, -0x9

    :goto_21
    if-lt v0, v6, :cond_2a

    .line 113
    invoke-direct {p0, v0, v4, v3}, Lcom/google/zxing/e/a/a;->a(III)I

    move-result v3

    .line 112
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 111
    :cond_2a
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1d

    .line 117
    :cond_2e
    invoke-static {v3}, Lcom/google/zxing/e/a/q;->c(I)Lcom/google/zxing/e/a/q;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/google/zxing/e/a/q;->d()I

    move-result v3

    if-ne v3, v5, :cond_3d

    .line 119
    iput-object v0, p0, Lcom/google/zxing/e/a/a;->b:Lcom/google/zxing/e/a/q;

    goto :goto_8

    :cond_3d
    move v0, v1

    move v1, v2

    .line 125
    :goto_3f
    if-ltz v0, :cond_51

    .line 126
    add-int/lit8 v2, v5, -0x9

    :goto_43
    if-lt v2, v6, :cond_4e

    .line 127
    invoke-direct {p0, v0, v2, v1}, Lcom/google/zxing/e/a/a;->a(III)I

    move-result v3

    .line 126
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v3

    goto :goto_43

    .line 125
    :cond_4e
    add-int/lit8 v0, v0, -0x1

    goto :goto_3f

    .line 131
    :cond_51
    invoke-static {v1}, Lcom/google/zxing/e/a/q;->c(I)Lcom/google/zxing/e/a/q;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/google/zxing/e/a/q;->d()I

    move-result v1

    if-ne v1, v5, :cond_60

    .line 133
    iput-object v0, p0, Lcom/google/zxing/e/a/a;->b:Lcom/google/zxing/e/a/q;

    goto :goto_8

    .line 136
    :cond_60
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method final c()[B
    .registers 16

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/google/zxing/e/a/a;->a()Lcom/google/zxing/e/a/o;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/google/zxing/e/a/a;->b()Lcom/google/zxing/e/a/q;

    move-result-object v9

    .line 158
    invoke-virtual {v0}, Lcom/google/zxing/e/a/o;->b()B

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/e/a/c;->a(I)Lcom/google/zxing/e/a/c;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/google/zxing/e/a/a;->a:Lcom/google/zxing/common/b;

    iget v10, v1, Lcom/google/zxing/common/b;->b:I

    .line 160
    iget-object v1, p0, Lcom/google/zxing/e/a/a;->a:Lcom/google/zxing/common/b;

    invoke-virtual {v0, v1, v10}, Lcom/google/zxing/e/a/c;->a(Lcom/google/zxing/common/b;I)V

    .line 162
    invoke-virtual {v9}, Lcom/google/zxing/e/a/q;->e()Lcom/google/zxing/common/b;

    move-result-object v11

    .line 164
    const/4 v1, 0x1

    .line 165
    invoke-virtual {v9}, Lcom/google/zxing/e/a/q;->c()I

    move-result v0

    new-array v12, v0, [B

    .line 170
    add-int/lit8 v0, v10, -0x1

    move v3, v4

    move v5, v4

    move v6, v4

    move v8, v1

    :goto_2b
    if-lez v0, :cond_70

    .line 171
    const/4 v1, 0x6

    if-ne v0, v1, :cond_32

    .line 174
    add-int/lit8 v0, v0, -0x1

    :cond_32
    move v2, v4

    .line 177
    :goto_33
    if-ge v2, v10, :cond_6a

    .line 178
    if-eqz v8, :cond_65

    add-int/lit8 v1, v10, -0x1

    sub-int/2addr v1, v2

    :goto_3a
    move v7, v4

    .line 179
    :goto_3b
    const/4 v13, 0x2

    if-ge v7, v13, :cond_67

    .line 181
    sub-int v13, v0, v7

    invoke-virtual {v11, v13, v1}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v13

    if-nez v13, :cond_62

    .line 183
    add-int/lit8 v3, v3, 0x1

    .line 184
    shl-int/lit8 v5, v5, 0x1

    .line 185
    iget-object v13, p0, Lcom/google/zxing/e/a/a;->a:Lcom/google/zxing/common/b;

    sub-int v14, v0, v7

    invoke-virtual {v13, v14, v1}, Lcom/google/zxing/common/b;->a(II)Z

    move-result v13

    if-eqz v13, :cond_56

    .line 186
    or-int/lit8 v5, v5, 0x1

    .line 189
    :cond_56
    const/16 v13, 0x8

    if-ne v3, v13, :cond_62

    .line 190
    add-int/lit8 v3, v6, 0x1

    int-to-byte v5, v5

    aput-byte v5, v12, v6

    move v5, v4

    move v6, v3

    move v3, v4

    .line 179
    :cond_62
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b

    :cond_65
    move v1, v2

    .line 178
    goto :goto_3a

    .line 177
    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 197
    :cond_6a
    xor-int/lit8 v1, v8, 0x1

    .line 170
    add-int/lit8 v0, v0, -0x2

    move v8, v1

    goto :goto_2b

    .line 199
    :cond_70
    invoke-virtual {v9}, Lcom/google/zxing/e/a/q;->c()I

    move-result v0

    if-eq v6, v0, :cond_7b

    .line 200
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 202
    :cond_7b
    return-object v12
.end method
