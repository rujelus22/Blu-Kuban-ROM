.class final Lcom/google/zxing/c/a/a/a/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/zxing/common/a;

.field private final b:Lcom/google/zxing/c/a/a/a/m;

.field private final c:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/a;)V
    .registers 3
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/zxing/c/a/a/a/m;

    invoke-direct {v0}, Lcom/google/zxing/c/a/a/a/m;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->c:Ljava/lang/StringBuffer;

    .line 43
    iput-object p1, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    .line 44
    return-void
.end method

.method static a(Lcom/google/zxing/common/a;II)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 107
    const/16 v1, 0x20

    if-le p2, v1, :cond_d

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extractNumberValueFromBitArray can\'t handle more than 32 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move v1, v0

    .line 112
    :goto_e
    if-ge v1, p2, :cond_22

    .line 113
    add-int v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 114
    const/4 v2, 0x1

    sub-int v3, p2, v1

    add-int/lit8 v3, v3, -0x1

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 112
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 118
    :cond_22
    return v0
.end method

.method private a()Lcom/google/zxing/c/a/a/a/l;
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/16 v6, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 164
    :goto_5
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v3, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    add-int/lit8 v0, v3, 0x7

    iget-object v4, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    iget v4, v4, Lcom/google/zxing/common/a;->b:I

    if-le v0, v4, :cond_63

    add-int/lit8 v0, v3, 0x4

    iget-object v3, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    iget v3, v3, Lcom/google/zxing/common/a;->b:I

    if-gt v0, v3, :cond_61

    move v0, v2

    :goto_1a
    if-eqz v0, :cond_e3

    .line 165
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v3, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    add-int/lit8 v0, v3, 0x7

    iget-object v4, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    iget v4, v4, Lcom/google/zxing/common/a;->b:I

    if-le v0, v4, :cond_8a

    invoke-virtual {p0, v3, v7}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v3

    if-nez v3, :cond_7e

    new-instance v0, Lcom/google/zxing/c/a/a/a/p;

    iget-object v3, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    iget v3, v3, Lcom/google/zxing/common/a;->b:I

    invoke-direct {v0, v3, v6, v6}, Lcom/google/zxing/c/a/a/a/p;-><init>(III)V

    .line 166
    :goto_37
    iget-object v3, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/p;->e()I

    move-result v4

    iput v4, v3, Lcom/google/zxing/c/a/a/a/m;->a:I

    .line 168
    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/p;->c()Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 170
    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/p;->d()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 171
    new-instance v0, Lcom/google/zxing/c/a/a/a/o;

    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v1, v1, Lcom/google/zxing/c/a/a/a/m;->a:I

    iget-object v3, p0, Lcom/google/zxing/c/a/a/a/s;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/c/a/a/a/o;-><init>(ILjava/lang/String;)V

    .line 175
    :goto_5a
    new-instance v1, Lcom/google/zxing/c/a/a/a/l;

    invoke-direct {v1, v0, v2}, Lcom/google/zxing/c/a/a/a/l;-><init>(Lcom/google/zxing/c/a/a/a/o;Z)V

    move-object v0, v1

    .line 190
    :goto_60
    return-object v0

    :cond_61
    move v0, v1

    .line 164
    goto :goto_1a

    :cond_63
    move v0, v3

    :goto_64
    add-int/lit8 v4, v3, 0x3

    if-ge v0, v4, :cond_75

    iget-object v4, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    invoke-virtual {v4, v0}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_72

    move v0, v2

    goto :goto_1a

    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    :cond_75
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v0

    goto :goto_1a

    .line 165
    :cond_7e
    new-instance v0, Lcom/google/zxing/c/a/a/a/p;

    iget-object v4, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    iget v4, v4, Lcom/google/zxing/common/a;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v4, v3, v6}, Lcom/google/zxing/c/a/a/a/p;-><init>(III)V

    goto :goto_37

    :cond_8a
    const/4 v0, 0x7

    invoke-virtual {p0, v3, v0}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v0

    add-int/lit8 v4, v0, -0x8

    div-int/lit8 v4, v4, 0xb

    add-int/lit8 v0, v0, -0x8

    rem-int/lit8 v5, v0, 0xb

    new-instance v0, Lcom/google/zxing/c/a/a/a/p;

    add-int/lit8 v3, v3, 0x7

    invoke-direct {v0, v3, v4, v5}, Lcom/google/zxing/c/a/a/a/p;-><init>(III)V

    goto :goto_37

    .line 173
    :cond_9f
    new-instance v1, Lcom/google/zxing/c/a/a/a/o;

    iget-object v3, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v3, v3, Lcom/google/zxing/c/a/a/a/m;->a:I

    iget-object v4, p0, Lcom/google/zxing/c/a/a/a/s;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/p;->b()I

    move-result v0

    invoke-direct {v1, v3, v4, v0}, Lcom/google/zxing/c/a/a/a/o;-><init>(ILjava/lang/String;I)V

    move-object v0, v1

    goto :goto_5a

    .line 177
    :cond_b4
    iget-object v3, p0, Lcom/google/zxing/c/a/a/a/s;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/p;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/p;->d()Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 180
    new-instance v1, Lcom/google/zxing/c/a/a/a/o;

    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v0, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    iget-object v3, p0, Lcom/google/zxing/c/a/a/a/s;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/zxing/c/a/a/a/o;-><init>(ILjava/lang/String;)V

    .line 181
    new-instance v0, Lcom/google/zxing/c/a/a/a/l;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/c/a/a/a/l;-><init>(Lcom/google/zxing/c/a/a/a/o;Z)V

    goto :goto_60

    .line 183
    :cond_d8
    iget-object v3, p0, Lcom/google/zxing/c/a/a/a/s;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/p;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 186
    :cond_e3
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v3, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    add-int/lit8 v0, v3, 0x1

    iget-object v4, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    iget v4, v4, Lcom/google/zxing/common/a;->b:I

    if-le v0, v4, :cond_106

    move v0, v1

    :goto_f0
    if-eqz v0, :cond_ff

    .line 187
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/m;->d()V

    .line 188
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v2, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    add-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    .line 190
    :cond_ff
    new-instance v0, Lcom/google/zxing/c/a/a/a/l;

    invoke-direct {v0, v1}, Lcom/google/zxing/c/a/a/a/l;-><init>(Z)V

    goto/16 :goto_60

    :cond_106
    move v0, v1

    .line 186
    :goto_107
    if-ge v0, v7, :cond_120

    add-int v4, v0, v3

    iget-object v5, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    iget v5, v5, Lcom/google/zxing/common/a;->b:I

    if-ge v4, v5, :cond_120

    iget-object v4, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    add-int v5, v3, v0

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_11d

    move v0, v1

    goto :goto_f0

    :cond_11d
    add-int/lit8 v0, v0, 0x1

    goto :goto_107

    :cond_120
    move v0, v2

    goto :goto_f0
.end method

.method private a(I)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 371
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    iget v2, v2, Lcom/google/zxing/common/a;->b:I

    if-le v1, v2, :cond_a

    .line 385
    :cond_9
    :goto_9
    return v0

    :cond_a
    move v1, v0

    .line 375
    :goto_b
    const/4 v2, 0x5

    if-ge v1, v2, :cond_31

    add-int v2, v1, p1

    iget-object v3, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    iget v3, v3, Lcom/google/zxing/common/a;->b:I

    if-ge v2, v3, :cond_31

    .line 376
    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    .line 377
    iget-object v2, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 375
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 380
    :cond_26
    iget-object v2, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_9

    .line 385
    :cond_31
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private b()Lcom/google/zxing/c/a/a/a/l;
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v2, 0x0

    const/4 v5, 0x5

    const/4 v1, 0x1

    .line 194
    :goto_6
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v0, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    add-int/lit8 v3, v0, 0x5

    iget-object v4, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    iget v4, v4, Lcom/google/zxing/common/a;->b:I

    if-gt v3, v4, :cond_83

    invoke-virtual {p0, v0, v5}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v3

    if-lt v3, v5, :cond_57

    const/16 v4, 0x10

    if-ge v3, v4, :cond_57

    move v0, v1

    :goto_1d
    if-eqz v0, :cond_1d1

    .line 195
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v3, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    invoke-virtual {p0, v3, v5}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v4

    const/16 v0, 0xf

    if-ne v4, v0, :cond_85

    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x5

    const/16 v4, 0x24

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    .line 196
    :goto_34
    iget-object v3, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/n;->e()I

    move-result v4

    iput v4, v3, Lcom/google/zxing/c/a/a/a/m;->a:I

    .line 198
    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/n;->b()Z

    move-result v3

    if-eqz v3, :cond_1c6

    .line 199
    new-instance v2, Lcom/google/zxing/c/a/a/a/o;

    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v0, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    iget-object v3, p0, Lcom/google/zxing/c/a/a/a/s;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/zxing/c/a/a/a/o;-><init>(ILjava/lang/String;)V

    .line 200
    new-instance v0, Lcom/google/zxing/c/a/a/a/l;

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/c/a/a/a/l;-><init>(Lcom/google/zxing/c/a/a/a/o;Z)V

    .line 217
    :goto_56
    return-object v0

    .line 194
    :cond_57
    add-int/lit8 v3, v0, 0x7

    iget-object v4, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    iget v4, v4, Lcom/google/zxing/common/a;->b:I

    if-gt v3, v4, :cond_83

    invoke-virtual {p0, v0, v6}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v3

    const/16 v4, 0x40

    if-lt v3, v4, :cond_6d

    const/16 v4, 0x74

    if-ge v3, v4, :cond_6d

    move v0, v1

    goto :goto_1d

    :cond_6d
    add-int/lit8 v3, v0, 0x8

    iget-object v4, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    iget v4, v4, Lcom/google/zxing/common/a;->b:I

    if-gt v3, v4, :cond_83

    invoke-virtual {p0, v0, v7}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v0

    const/16 v3, 0xe8

    if-lt v0, v3, :cond_83

    const/16 v3, 0xfd

    if-ge v0, v3, :cond_83

    move v0, v1

    goto :goto_1d

    :cond_83
    move v0, v2

    goto :goto_1d

    .line 195
    :cond_85
    if-lt v4, v5, :cond_98

    const/16 v0, 0xf

    if-ge v4, v0, :cond_98

    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x5

    add-int/lit8 v4, v4, 0x30

    add-int/lit8 v4, v4, -0x5

    int-to-char v4, v4

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto :goto_34

    :cond_98
    invoke-virtual {p0, v3, v6}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v4

    const/16 v0, 0x40

    if-lt v4, v0, :cond_af

    const/16 v0, 0x5a

    if-ge v4, v0, :cond_af

    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x7

    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto :goto_34

    :cond_af
    const/16 v0, 0x5a

    if-lt v4, v0, :cond_c3

    const/16 v0, 0x74

    if-ge v4, v0, :cond_c3

    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x7

    add-int/lit8 v4, v4, 0x7

    int-to-char v4, v4

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :cond_c3
    invoke-virtual {p0, v3, v7}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v0

    packed-switch v0, :pswitch_data_21c

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Decoding invalid ISO/IEC 646 value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_df
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x21

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_ea
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x22

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_f5
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x25

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_100
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x26

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_10b
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x27

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_116
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x28

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_121
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x29

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_12c
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x2a

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_137
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x2b

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_142
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x2c

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_14d
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x2d

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_158
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x2e

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_163
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x2f

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_16e
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x3a

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_179
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x3b

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_184
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x3c

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_18f
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x3d

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_19a
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x3e

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_1a5
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x3f

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_1b0
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x5f

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    :pswitch_1bb
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v3, v3, 0x8

    const/16 v4, 0x20

    invoke-direct {v0, v3, v4}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_34

    .line 202
    :cond_1c6
    iget-object v3, p0, Lcom/google/zxing/c/a/a/a/s;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/n;->a()C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 205
    :cond_1d1
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v0, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    invoke-direct {p0, v0}, Lcom/google/zxing/c/a/a/a/s;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1ef

    .line 206
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v1, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    .line 207
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/m;->c()V

    .line 217
    :cond_1e8
    :goto_1e8
    new-instance v0, Lcom/google/zxing/c/a/a/a/l;

    invoke-direct {v0, v2}, Lcom/google/zxing/c/a/a/a/l;-><init>(Z)V

    goto/16 :goto_56

    .line 208
    :cond_1ef
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v0, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    invoke-direct {p0, v0}, Lcom/google/zxing/c/a/a/a/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1e8

    .line 209
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v0, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    iget v1, v1, Lcom/google/zxing/common/a;->b:I

    if-ge v0, v1, :cond_213

    .line 210
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v1, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    add-int/lit8 v1, v1, 0x5

    iput v1, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    .line 215
    :goto_20d
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/m;->d()V

    goto :goto_1e8

    .line 212
    :cond_213
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    iget v1, v1, Lcom/google/zxing/common/a;->b:I

    iput v1, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    goto :goto_20d

    .line 195
    :pswitch_data_21c
    .packed-switch 0xe8
        :pswitch_df
        :pswitch_ea
        :pswitch_f5
        :pswitch_100
        :pswitch_10b
        :pswitch_116
        :pswitch_121
        :pswitch_12c
        :pswitch_137
        :pswitch_142
        :pswitch_14d
        :pswitch_158
        :pswitch_163
        :pswitch_16e
        :pswitch_179
        :pswitch_184
        :pswitch_18f
        :pswitch_19a
        :pswitch_1a5
        :pswitch_1b0
        :pswitch_1bb
    .end packed-switch
.end method

.method private b(I)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 390
    add-int/lit8 v1, p1, 0x3

    iget-object v2, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    iget v2, v2, Lcom/google/zxing/common/a;->b:I

    if-le v1, v2, :cond_a

    .line 399
    :cond_9
    :goto_9
    return v0

    :cond_a
    move v1, p1

    .line 394
    :goto_b
    add-int/lit8 v2, p1, 0x3

    if-ge v1, v2, :cond_1a

    .line 395
    iget-object v2, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    invoke-virtual {v2, v1}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 399
    :cond_1a
    const/4 v0, 0x1

    goto :goto_9
.end method


# virtual methods
.method final a(II)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    invoke-static {v0, p1, p2}, Lcom/google/zxing/c/a/a/a/s;->a(Lcom/google/zxing/common/a;II)I

    move-result v0

    return v0
.end method

.method final a(ILjava/lang/String;)Lcom/google/zxing/c/a/a/a/o;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 122
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 124
    if-eqz p2, :cond_12

    .line 125
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :cond_12
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iput p1, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    .line 130
    :cond_16
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v2, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/m;->a()Z

    move-result v0

    if-eqz v0, :cond_187

    :goto_22
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v0, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    add-int/lit8 v1, v0, 0x5

    iget-object v5, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    iget v5, v5, Lcom/google/zxing/common/a;->b:I

    if-gt v1, v5, :cond_b7

    invoke-virtual {p0, v0, v6}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v1

    if-lt v1, v6, :cond_a1

    const/16 v5, 0x10

    if-ge v1, v5, :cond_a1

    move v0, v3

    :goto_39
    if-eqz v0, :cond_13c

    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v1, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    invoke-virtual {p0, v1, v6}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v5

    if-ne v5, v8, :cond_b9

    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v1, v1, 0x5

    const/16 v5, 0x24

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    :goto_4e
    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/n;->e()I

    move-result v5

    iput v5, v1, Lcom/google/zxing/c/a/a/a/m;->a:I

    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/n;->b()Z

    move-result v1

    if-eqz v1, :cond_131

    new-instance v1, Lcom/google/zxing/c/a/a/a/o;

    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v0, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    iget-object v5, p0, Lcom/google/zxing/c/a/a/a/s;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lcom/google/zxing/c/a/a/a/o;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/google/zxing/c/a/a/a/l;

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/c/a/a/a/l;-><init>(Lcom/google/zxing/c/a/a/a/o;Z)V

    :goto_70
    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/l;->b()Z

    move-result v1

    :goto_74
    iget-object v5, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v5, v5, Lcom/google/zxing/c/a/a/a/m;->a:I

    if-eq v2, v5, :cond_1a3

    move v2, v3

    :goto_7b
    if-nez v2, :cond_7f

    if-eqz v1, :cond_81

    :cond_7f
    if-eqz v1, :cond_16

    :cond_81
    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/l;->a()Lcom/google/zxing/c/a/a/a/o;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_1a6

    invoke-virtual {v1}, Lcom/google/zxing/c/a/a/a/o;->b()Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 132
    new-instance v0, Lcom/google/zxing/c/a/a/a/o;

    iget-object v2, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v2, v2, Lcom/google/zxing/c/a/a/a/m;->a:I

    iget-object v3, p0, Lcom/google/zxing/c/a/a/a/s;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/zxing/c/a/a/a/o;->c()I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Lcom/google/zxing/c/a/a/a/o;-><init>(ILjava/lang/String;I)V

    .line 134
    :goto_a0
    return-object v0

    .line 130
    :cond_a1
    add-int/lit8 v1, v0, 0x6

    iget-object v5, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    iget v5, v5, Lcom/google/zxing/common/a;->b:I

    if-gt v1, v5, :cond_b7

    invoke-virtual {p0, v0, v7}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b7

    const/16 v1, 0x3f

    if-ge v0, v1, :cond_b7

    move v0, v3

    goto :goto_39

    :cond_b7
    move v0, v4

    goto :goto_39

    :cond_b9
    if-lt v5, v6, :cond_ca

    if-ge v5, v8, :cond_ca

    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v1, v1, 0x5

    add-int/lit8 v5, v5, 0x30

    add-int/lit8 v5, v5, -0x5

    int-to-char v5, v5

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto :goto_4e

    :cond_ca
    invoke-virtual {p0, v1, v7}, Lcom/google/zxing/c/a/a/a/s;->a(II)I

    move-result v5

    const/16 v0, 0x20

    if-lt v5, v0, :cond_e2

    const/16 v0, 0x3a

    if-ge v5, v0, :cond_e2

    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v5, v5, 0x21

    int-to-char v5, v5

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_4e

    :cond_e2
    packed-switch v5, :pswitch_data_1b8

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Decoding invalid alphanumeric value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_fa
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v1, v1, 0x6

    const/16 v5, 0x2a

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_4e

    :pswitch_105
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v1, v1, 0x6

    const/16 v5, 0x2c

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_4e

    :pswitch_110
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v1, v1, 0x6

    const/16 v5, 0x2d

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_4e

    :pswitch_11b
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v1, v1, 0x6

    const/16 v5, 0x2e

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_4e

    :pswitch_126
    new-instance v0, Lcom/google/zxing/c/a/a/a/n;

    add-int/lit8 v1, v1, 0x6

    const/16 v5, 0x2f

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/c/a/a/a/n;-><init>(IC)V

    goto/16 :goto_4e

    :cond_131
    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/s;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/n;->a()C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_22

    :cond_13c
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v0, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    invoke-direct {p0, v0}, Lcom/google/zxing/c/a/a/a/s;->b(I)Z

    move-result v0

    if-eqz v0, :cond_15a

    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v1, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/m;->c()V

    :cond_153
    :goto_153
    new-instance v0, Lcom/google/zxing/c/a/a/a/l;

    invoke-direct {v0, v4}, Lcom/google/zxing/c/a/a/a/l;-><init>(Z)V

    goto/16 :goto_70

    :cond_15a
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v0, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    invoke-direct {p0, v0}, Lcom/google/zxing/c/a/a/a/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_153

    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v0, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    iget v1, v1, Lcom/google/zxing/common/a;->b:I

    if-ge v0, v1, :cond_17e

    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v1, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    add-int/lit8 v1, v1, 0x5

    iput v1, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    :goto_178
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/m;->e()V

    goto :goto_153

    :cond_17e
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/s;->a:Lcom/google/zxing/common/a;

    iget v1, v1, Lcom/google/zxing/common/a;->b:I

    iput v1, v0, Lcom/google/zxing/c/a/a/a/m;->a:I

    goto :goto_178

    :cond_187
    iget-object v0, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/m;->b()Z

    move-result v0

    if-eqz v0, :cond_199

    invoke-direct {p0}, Lcom/google/zxing/c/a/a/a/s;->b()Lcom/google/zxing/c/a/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/l;->b()Z

    move-result v1

    goto/16 :goto_74

    :cond_199
    invoke-direct {p0}, Lcom/google/zxing/c/a/a/a/s;->a()Lcom/google/zxing/c/a/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/c/a/a/a/l;->b()Z

    move-result v1

    goto/16 :goto_74

    :cond_1a3
    move v2, v4

    goto/16 :goto_7b

    .line 134
    :cond_1a6
    new-instance v0, Lcom/google/zxing/c/a/a/a/o;

    iget-object v1, p0, Lcom/google/zxing/c/a/a/a/s;->b:Lcom/google/zxing/c/a/a/a/m;

    iget v1, v1, Lcom/google/zxing/c/a/a/a/m;->a:I

    iget-object v2, p0, Lcom/google/zxing/c/a/a/a/s;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/c/a/a/a/o;-><init>(ILjava/lang/String;)V

    goto/16 :goto_a0

    .line 130
    nop

    :pswitch_data_1b8
    .packed-switch 0x3a
        :pswitch_fa
        :pswitch_105
        :pswitch_110
        :pswitch_11b
        :pswitch_126
    .end packed-switch
.end method

.method final a(Ljava/lang/StringBuffer;I)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    move-object v0, v1

    .line 50
    :goto_2
    invoke-virtual {p0, p2, v0}, Lcom/google/zxing/c/a/a/a/s;->a(ILjava/lang/String;)Lcom/google/zxing/c/a/a/a/o;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/google/zxing/c/a/a/a/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/c/a/a/a/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_13

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    :cond_13
    invoke-virtual {v2}, Lcom/google/zxing/c/a/a/a/o;->b()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 56
    invoke-virtual {v2}, Lcom/google/zxing/c/a/a/a/o;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_21
    invoke-virtual {v2}, Lcom/google/zxing/c/a/a/a/o;->e()I

    move-result v3

    if-eq p2, v3, :cond_2e

    .line 62
    invoke-virtual {v2}, Lcom/google/zxing/c/a/a/a/o;->e()I

    move-result p2

    goto :goto_2

    :cond_2c
    move-object v0, v1

    .line 58
    goto :goto_21

    .line 67
    :cond_2e
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
