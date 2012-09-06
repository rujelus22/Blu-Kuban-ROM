.class Lat/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lat/B;

.field private b:Lat/Y;

.field private c:Lat/q;

.field private d:Lat/B;

.field private e:Lat/Y;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lat/t;->a:Lat/B;

    .line 26
    iput-object v0, p0, Lat/t;->b:Lat/Y;

    .line 27
    iput-object v0, p0, Lat/t;->c:Lat/q;

    .line 31
    iput-object v0, p0, Lat/t;->d:Lat/B;

    .line 32
    iput-object v0, p0, Lat/t;->e:Lat/Y;

    return-void
.end method

.method private a(Lat/B;ZZLat/p;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-virtual {p4}, Lat/p;->b()Lat/H;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lat/t;->a:Lat/B;

    iput-object v1, p0, Lat/t;->d:Lat/B;

    .line 132
    iget-object v1, p0, Lat/t;->b:Lat/Y;

    iput-object v1, p0, Lat/t;->e:Lat/Y;

    .line 133
    iput-object p1, p0, Lat/t;->a:Lat/B;

    .line 134
    invoke-virtual {v0}, Lat/H;->b()Lat/Y;

    move-result-object v1

    iput-object v1, p0, Lat/t;->b:Lat/Y;

    .line 135
    invoke-static {p1, p2, p3, p4}, Lat/t;->b(Lat/B;ZZLat/p;)V

    .line 138
    iget-object v1, p0, Lat/t;->c:Lat/q;

    if-eqz v1, :cond_20

    .line 139
    iget-object v1, p0, Lat/t;->c:Lat/q;

    invoke-interface {v1, v0}, Lat/q;->a(Lat/H;)V

    .line 141
    :cond_20
    return-void
.end method

.method private static a()Z
    .registers 2

    .prologue
    .line 147
    invoke-static {}, Lat/P;->a()B

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static b(Lat/B;ZZLat/p;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-virtual {p3}, Lat/p;->b()Lat/H;

    move-result-object v0

    .line 156
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 157
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 159
    :try_start_f
    invoke-static {p0, v1}, Lat/B;->a(Lat/B;Ljava/io/DataOutput;)V

    .line 162
    invoke-virtual {v0}, Lat/H;->a()Lat/B;

    move-result-object v4

    invoke-static {v4, v1}, Lat/B;->a(Lat/B;Ljava/io/DataOutput;)V

    .line 164
    invoke-virtual {v0}, Lat/H;->b()Lat/Y;

    move-result-object v4

    invoke-virtual {v4}, Lat/Y;->a()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 166
    invoke-virtual {p3, v0}, Lat/p;->b(Lat/H;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 167
    invoke-virtual {p3, v0}, Lat/p;->c(Lat/H;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 169
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 171
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_38} :catch_47

    .line 179
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v5, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lac/h;->a(I[BZZZ)V

    .line 182
    return-void

    .line 172
    :catch_47
    move-exception v0

    .line 174
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method a(Lat/q;)V
    .registers 2
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lat/t;->c:Lat/q;

    .line 186
    return-void
.end method

.method a(ZZLat/p;)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p3}, Lat/p;->b()Lat/H;

    move-result-object v4

    .line 47
    invoke-virtual {v4}, Lat/H;->e()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lat/t;->a()Z

    move-result v0

    if-nez v0, :cond_12

    .line 123
    :cond_11
    :goto_11
    return-void

    .line 71
    :cond_12
    iget-object v0, p0, Lat/t;->a:Lat/B;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lat/t;->b:Lat/Y;

    invoke-virtual {v4}, Lat/H;->b()Lat/Y;

    move-result-object v2

    if-eq v0, v2, :cond_26

    .line 73
    :cond_1e
    invoke-virtual {v4}, Lat/H;->a()Lat/B;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lat/t;->a(Lat/B;ZZLat/p;)V

    goto :goto_11

    .line 75
    :cond_26
    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Lat/t;->a:Lat/B;

    invoke-virtual {p3, v0}, Lat/p;->c(Lat/B;)Landroid/graphics/Point;

    move-result-object v5

    .line 80
    invoke-virtual {p3}, Lat/p;->r()I

    move-result v0

    invoke-virtual {p3}, Lat/p;->t()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 81
    invoke-virtual {p3}, Lat/p;->q()I

    move-result v3

    invoke-virtual {p3}, Lat/p;->s()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 82
    div-int/lit8 v6, v0, 0x2

    .line 83
    div-int/lit8 v7, v3, 0x2

    .line 84
    iget v8, v5, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v8, v0, :cond_59

    iget v8, v5, Landroid/graphics/Point;->y:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v3, :cond_83

    .line 87
    :cond_59
    invoke-virtual {v4}, Lat/H;->a()Lat/B;

    move-result-object v0

    .line 116
    :goto_5d
    if-eqz v0, :cond_11

    iget-object v1, p0, Lat/t;->d:Lat/B;

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lat/t;->e:Lat/Y;

    iget-object v2, p0, Lat/t;->b:Lat/Y;

    if-ne v1, v2, :cond_7f

    invoke-virtual {v4}, Lat/H;->a()Lat/B;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/B;->a(Lat/B;)J

    move-result-wide v1

    invoke-virtual {v4}, Lat/H;->a()Lat/B;

    move-result-object v3

    iget-object v4, p0, Lat/t;->a:Lat/B;

    invoke-virtual {v3, v4}, Lat/B;->a(Lat/B;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_11

    .line 120
    :cond_7f
    invoke-direct {p0, v0, p1, p2, p3}, Lat/t;->a(Lat/B;ZZLat/p;)V

    goto :goto_11

    .line 95
    :cond_83
    iget v8, v5, Landroid/graphics/Point;->x:I

    neg-int v9, v6

    if-ge v8, v9, :cond_9d

    .line 101
    :goto_88
    iget v6, v5, Landroid/graphics/Point;->y:I

    neg-int v8, v7

    if-ge v6, v8, :cond_a3

    move v1, v3

    .line 107
    :cond_8e
    :goto_8e
    if-nez v1, :cond_92

    if-eqz v0, :cond_a9

    .line 109
    :cond_92
    iget-object v2, p0, Lat/t;->a:Lat/B;

    invoke-virtual {v4}, Lat/H;->b()Lat/Y;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lat/B;->a(IILat/Y;)Lat/B;

    move-result-object v0

    goto :goto_5d

    .line 97
    :cond_9d
    iget v8, v5, Landroid/graphics/Point;->x:I

    if-le v8, v6, :cond_ab

    .line 98
    neg-int v0, v0

    goto :goto_88

    .line 103
    :cond_a3
    iget v5, v5, Landroid/graphics/Point;->y:I

    if-le v5, v7, :cond_8e

    .line 104
    neg-int v1, v3

    goto :goto_8e

    :cond_a9
    move-object v0, v2

    goto :goto_5d

    :cond_ab
    move v0, v1

    goto :goto_88
.end method
