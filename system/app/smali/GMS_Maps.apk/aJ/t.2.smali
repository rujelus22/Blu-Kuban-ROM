.class LaJ/t;
.super Ljava/lang/Object;


# instance fields
.field private a:LaJ/B;

.field private b:LaJ/Y;

.field private c:LaJ/q;

.field private d:LaJ/B;

.field private e:LaJ/Y;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaJ/t;->a:LaJ/B;

    iput-object v0, p0, LaJ/t;->b:LaJ/Y;

    iput-object v0, p0, LaJ/t;->c:LaJ/q;

    iput-object v0, p0, LaJ/t;->d:LaJ/B;

    iput-object v0, p0, LaJ/t;->e:LaJ/Y;

    return-void
.end method

.method private a(LaJ/B;ZZLaJ/p;)V
    .registers 7

    invoke-virtual {p4}, LaJ/p;->b()LaJ/H;

    move-result-object v0

    iget-object v1, p0, LaJ/t;->a:LaJ/B;

    iput-object v1, p0, LaJ/t;->d:LaJ/B;

    iget-object v1, p0, LaJ/t;->b:LaJ/Y;

    iput-object v1, p0, LaJ/t;->e:LaJ/Y;

    iput-object p1, p0, LaJ/t;->a:LaJ/B;

    invoke-virtual {v0}, LaJ/H;->b()LaJ/Y;

    move-result-object v1

    iput-object v1, p0, LaJ/t;->b:LaJ/Y;

    invoke-static {p1, p2, p3, p4}, LaJ/t;->b(LaJ/B;ZZLaJ/p;)V

    iget-object v1, p0, LaJ/t;->c:LaJ/q;

    if-eqz v1, :cond_20

    iget-object v1, p0, LaJ/t;->c:LaJ/q;

    invoke-interface {v1, v0}, LaJ/q;->a(LaJ/H;)V

    :cond_20
    return-void
.end method

.method private static a()Z
    .registers 2

    invoke-static {}, LaJ/P;->a()B

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

.method private static b(LaJ/B;ZZLaJ/p;)V
    .registers 10

    const/4 v3, 0x0

    invoke-virtual {p3}, LaJ/p;->b()LaJ/H;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_f
    invoke-static {p0, v1}, LaJ/B;->a(LaJ/B;Ljava/io/DataOutput;)V

    invoke-virtual {v0}, LaJ/H;->a()LaJ/B;

    move-result-object v4

    invoke-static {v4, v1}, LaJ/B;->a(LaJ/B;Ljava/io/DataOutput;)V

    invoke-virtual {v0}, LaJ/H;->b()LaJ/Y;

    move-result-object v4

    invoke-virtual {v4}, LaJ/Y;->a()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p3, v0}, LaJ/p;->b(LaJ/H;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p3, v0}, LaJ/p;->c(LaJ/H;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_38} :catch_47

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v5, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lat/h;->a(I[BZZZ)V

    return-void

    :catch_47
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method a(LaJ/q;)V
    .registers 2

    iput-object p1, p0, LaJ/t;->c:LaJ/q;

    return-void
.end method

.method a(ZZLaJ/p;)V
    .registers 14

    const/4 v1, 0x0

    invoke-virtual {p3}, LaJ/p;->b()LaJ/H;

    move-result-object v4

    invoke-virtual {v4}, LaJ/H;->e()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, LaJ/t;->a()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, LaJ/t;->a:LaJ/B;

    if-eqz v0, :cond_1e

    iget-object v0, p0, LaJ/t;->b:LaJ/Y;

    invoke-virtual {v4}, LaJ/H;->b()LaJ/Y;

    move-result-object v2

    if-eq v0, v2, :cond_26

    :cond_1e
    invoke-virtual {v4}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, LaJ/t;->a(LaJ/B;ZZLaJ/p;)V

    goto :goto_11

    :cond_26
    const/4 v2, 0x0

    iget-object v0, p0, LaJ/t;->a:LaJ/B;

    invoke-virtual {p3, v0}, LaJ/p;->d(LaJ/B;)Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {p3}, LaJ/p;->p()I

    move-result v0

    invoke-virtual {p3}, LaJ/p;->r()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p3}, LaJ/p;->o()I

    move-result v3

    invoke-virtual {p3}, LaJ/p;->q()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v6, v0, 0x2

    div-int/lit8 v7, v3, 0x2

    iget v8, v5, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v8, v0, :cond_59

    iget v8, v5, Landroid/graphics/Point;->y:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v3, :cond_83

    :cond_59
    invoke-virtual {v4}, LaJ/H;->a()LaJ/B;

    move-result-object v0

    :goto_5d
    if-eqz v0, :cond_11

    iget-object v1, p0, LaJ/t;->d:LaJ/B;

    if-eqz v1, :cond_7f

    iget-object v1, p0, LaJ/t;->e:LaJ/Y;

    iget-object v2, p0, LaJ/t;->b:LaJ/Y;

    if-ne v1, v2, :cond_7f

    invoke-virtual {v4}, LaJ/H;->a()LaJ/B;

    move-result-object v1

    invoke-virtual {v1, v0}, LaJ/B;->a(LaJ/B;)J

    move-result-wide v1

    invoke-virtual {v4}, LaJ/H;->a()LaJ/B;

    move-result-object v3

    iget-object v4, p0, LaJ/t;->a:LaJ/B;

    invoke-virtual {v3, v4}, LaJ/B;->a(LaJ/B;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_11

    :cond_7f
    invoke-direct {p0, v0, p1, p2, p3}, LaJ/t;->a(LaJ/B;ZZLaJ/p;)V

    goto :goto_11

    :cond_83
    iget v8, v5, Landroid/graphics/Point;->x:I

    neg-int v9, v6

    if-ge v8, v9, :cond_9d

    :goto_88
    iget v6, v5, Landroid/graphics/Point;->y:I

    neg-int v8, v7

    if-ge v6, v8, :cond_a3

    move v1, v3

    :cond_8e
    :goto_8e
    if-nez v1, :cond_92

    if-eqz v0, :cond_a9

    :cond_92
    iget-object v2, p0, LaJ/t;->a:LaJ/B;

    invoke-virtual {v4}, LaJ/H;->b()LaJ/Y;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, LaJ/B;->a(IILaJ/Y;)LaJ/B;

    move-result-object v0

    goto :goto_5d

    :cond_9d
    iget v8, v5, Landroid/graphics/Point;->x:I

    if-le v8, v6, :cond_ab

    neg-int v0, v0

    goto :goto_88

    :cond_a3
    iget v5, v5, Landroid/graphics/Point;->y:I

    if-le v5, v7, :cond_8e

    neg-int v1, v3

    goto :goto_8e

    :cond_a9
    move-object v0, v2

    goto :goto_5d

    :cond_ab
    move v0, v1

    goto :goto_88
.end method
