.class public Lay/n;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:I


# instance fields
.field private final c:Lay/o;

.field private d:Lah/f;

.field private e:Lah/f;

.field private f:Lah/f;

.field private final g:Lah/f;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    new-array v2, v0, [I

    fill-array-data v2, :array_34

    new-array v3, v0, [I

    fill-array-data v3, :array_3e

    invoke-static {}, Lcom/google/googlenav/ui/bw;->X()Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    :goto_13
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/M;->ak()Z

    move-result v4

    if-eqz v4, :cond_21

    if-ge v0, v1, :cond_21

    add-int/lit8 v0, v0, 0x1

    :cond_21
    aget v1, v2, v0

    sput v1, Lay/n;->a:I

    aget v0, v3, v0

    sput v0, Lay/n;->b:I

    return-void

    :cond_2a
    invoke-static {}, Lcom/google/googlenav/ui/bw;->W()Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_13

    :cond_32
    const/4 v0, 0x0

    goto :goto_13

    :array_34
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    :array_3e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lah/f;Lah/f;Lah/f;Lah/f;Lay/o;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lay/n;->g:Lah/f;

    iput-object p2, p0, Lay/n;->f:Lah/f;

    iput-object p3, p0, Lay/n;->e:Lah/f;

    iput-object p4, p0, Lay/n;->d:Lah/f;

    iput-object p5, p0, Lay/n;->c:Lay/o;

    return-void
.end method

.method public constructor <init>(Lah/f;Lah/f;Lah/f;Lah/f;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 13

    new-instance v5, Lay/o;

    invoke-direct {v5, p5, p6}, Lay/o;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lay/n;-><init>(Lah/f;Lah/f;Lah/f;Lah/f;Lay/o;)V

    return-void
.end method

.method private a(II)Lah/f;
    .registers 4

    iget-object v0, p0, Lay/n;->g:Lah/f;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lay/n;->g:Lah/f;

    invoke-interface {v0, p1, p2}, Lah/f;->a(II)Lah/f;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static a(Lam/b;I)Lah/f;
    .registers 6

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Lam/b;->k(I)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0, p1}, Lam/b;->c(I)[B

    move-result-object v0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->o()Lah/h;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lah/h;->a([BII)Lah/f;

    move-result-object v0

    goto :goto_9
.end method

.method private a(Lah/f;)Lam/b;
    .registers 5

    new-instance v0, Lam/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x3

    invoke-static {p1}, Lah/j;->c(Lah/f;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(I[B)V

    return-object v0
.end method

.method public static a(Lah/f;Ljava/lang/String;Ljava/lang/Long;)Lay/n;
    .registers 14

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlenav/ui/bw;->j()Lah/g;

    move-result-object v0

    sget-char v2, Lcom/google/googlenav/ui/bw;->H:C

    invoke-interface {v0, v2}, Lah/g;->b(C)I

    move-result v5

    invoke-interface {p0}, Lah/f;->a()I

    move-result v3

    invoke-interface {p0}, Lah/f;->b()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v6, v5

    move v7, v1

    invoke-static/range {v0 .. v7}, Lah/j;->a(Lah/f;IIIIIII)Lah/f;

    move-result-object v10

    invoke-virtual {v8}, Lcom/google/googlenav/ui/bw;->k()Lah/g;

    move-result-object v0

    sget-char v2, Lcom/google/googlenav/ui/bw;->H:C

    invoke-interface {v0, v2}, Lah/g;->b(C)I

    move-result v5

    invoke-interface {p0}, Lah/f;->a()I

    move-result v3

    invoke-interface {p0}, Lah/f;->b()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v6, v5

    move v7, v1

    invoke-static/range {v0 .. v7}, Lah/j;->a(Lah/f;IIIIIII)Lah/f;

    move-result-object v0

    invoke-virtual {v8}, Lcom/google/googlenav/ui/bw;->l()Lah/g;

    move-result-object v2

    sget-char v3, Lcom/google/googlenav/ui/bw;->H:C

    invoke-interface {v2, v3}, Lah/g;->b(C)I

    move-result v5

    invoke-interface {v0}, Lah/f;->a()I

    move-result v3

    invoke-interface {v0}, Lah/f;->b()I

    move-result v4

    move v2, v1

    move v6, v5

    move v7, v1

    invoke-static/range {v0 .. v7}, Lah/j;->a(Lah/f;IIIIIII)Lah/f;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/googlenav/ui/bw;->m()Lah/g;

    move-result-object v3

    sget-char v4, Lcom/google/googlenav/ui/bw;->H:C

    invoke-interface {v3, v4}, Lah/g;->b(C)I

    move-result v7

    invoke-interface {v2}, Lah/f;->a()I

    move-result v5

    invoke-interface {v2}, Lah/f;->b()I

    move-result v6

    move v3, v1

    move v4, v1

    move v8, v7

    move v9, v1

    invoke-static/range {v2 .. v9}, Lah/j;->a(Lah/f;IIIIIII)Lah/f;

    move-result-object v7

    new-instance v3, Lay/n;

    move-object v4, v10

    move-object v5, v0

    move-object v6, v2

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v3 .. v9}, Lay/n;-><init>(Lah/f;Lah/f;Lah/f;Lah/f;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v3
.end method

.method public static a(Lay/o;ILam/b;II)Lay/n;
    .registers 11

    const/4 v2, 0x0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, p3, p1}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    invoke-static {}, Lcom/google/googlenav/ui/bw;->W()Z

    move-result v1

    if-nez v1, :cond_32

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, p3, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v1

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p2, p3, v3}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    move-object v4, v0

    move-object v3, v1

    :goto_1b
    new-instance v0, Lay/n;

    invoke-static {v5, p4}, Lay/n;->a(Lam/b;I)Lah/f;

    move-result-object v1

    invoke-static {v2, p4}, Lay/n;->a(Lam/b;I)Lah/f;

    move-result-object v2

    invoke-static {v3, p4}, Lay/n;->a(Lam/b;I)Lah/f;

    move-result-object v3

    invoke-static {v4, p4}, Lay/n;->a(Lam/b;I)Lah/f;

    move-result-object v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lay/n;-><init>(Lah/f;Lah/f;Lah/f;Lah/f;Lay/o;)V

    return-object v0

    :cond_32
    move-object v4, v2

    move-object v3, v2

    goto :goto_1b
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lay/n;->c:Lay/o;

    invoke-virtual {v0}, Lay/o;->b()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public b()Lay/o;
    .registers 2

    iget-object v0, p0, Lay/n;->c:Lay/o;

    return-object v0
.end method

.method public c()Lah/f;
    .registers 4

    iget-object v0, p0, Lay/n;->d:Lah/f;

    if-nez v0, :cond_2c

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->m()Lah/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bw;->H:C

    invoke-interface {v0, v1}, Lah/g;->c(C)I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->m()Lah/g;

    move-result-object v1

    sget-char v2, Lcom/google/googlenav/ui/bw;->H:C

    invoke-interface {v1, v2}, Lah/g;->b(C)I

    move-result v1

    invoke-virtual {p0}, Lay/n;->f()Lah/f;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-direct {p0, v0, v1}, Lay/n;->a(II)Lah/f;

    move-result-object v0

    iput-object v0, p0, Lay/n;->d:Lah/f;

    :cond_2c
    iget-object v0, p0, Lay/n;->d:Lah/f;

    return-object v0
.end method

.method public d()Lah/f;
    .registers 4

    iget-object v0, p0, Lay/n;->e:Lah/f;

    if-nez v0, :cond_2c

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->l()Lah/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bw;->H:C

    invoke-interface {v0, v1}, Lah/g;->c(C)I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->l()Lah/g;

    move-result-object v1

    sget-char v2, Lcom/google/googlenav/ui/bw;->H:C

    invoke-interface {v1, v2}, Lah/g;->b(C)I

    move-result v1

    invoke-virtual {p0}, Lay/n;->f()Lah/f;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-direct {p0, v0, v1}, Lay/n;->a(II)Lah/f;

    move-result-object v0

    iput-object v0, p0, Lay/n;->e:Lah/f;

    :cond_2c
    iget-object v0, p0, Lay/n;->e:Lah/f;

    return-object v0
.end method

.method public e()Lah/f;
    .registers 4

    iget-object v0, p0, Lay/n;->f:Lah/f;

    if-nez v0, :cond_2d

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->k()Lah/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bw;->H:C

    invoke-interface {v0, v1}, Lah/g;->c(C)I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->k()Lah/g;

    move-result-object v1

    sget-char v2, Lcom/google/googlenav/ui/bw;->H:C

    invoke-interface {v1, v2}, Lah/g;->b(C)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lay/n;->a(II)Lah/f;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->X()Z

    move-result v1

    if-eqz v1, :cond_2c

    iput-object v0, p0, Lay/n;->f:Lah/f;

    :cond_2c
    :goto_2c
    return-object v0

    :cond_2d
    iget-object v0, p0, Lay/n;->f:Lah/f;

    goto :goto_2c
.end method

.method public f()Lah/f;
    .registers 2

    iget-object v0, p0, Lay/n;->g:Lah/f;

    return-object v0
.end method

.method public g()Lam/b;
    .registers 4

    const/4 v2, 0x2

    new-instance v0, Lam/b;

    sget-object v1, LbD/Z;->w:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iget-object v1, p0, Lay/n;->g:Lah/f;

    invoke-direct {p0, v1}, Lay/n;->a(Lah/f;)Lam/b;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lam/b;->a(ILam/b;)V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->W()Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lay/n;->e:Lah/f;

    invoke-direct {p0, v1}, Lay/n;->a(Lah/f;)Lam/b;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lam/b;->a(ILam/b;)V

    iget-object v1, p0, Lay/n;->d:Lah/f;

    invoke-direct {p0, v1}, Lay/n;->a(Lah/f;)Lam/b;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lam/b;->a(ILam/b;)V

    :cond_29
    return-object v0
.end method

.method public h()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->W()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lay/n;->g:Lah/f;

    if-eqz v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c

    :cond_f
    iget-object v2, p0, Lay/n;->g:Lah/f;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lay/n;->e:Lah/f;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lay/n;->d:Lah/f;

    if-nez v2, :cond_c

    :cond_1b
    move v0, v1

    goto :goto_c
.end method

.method public i()I
    .registers 3

    iget-object v0, p0, Lay/n;->c:Lay/o;

    invoke-virtual {v0}, Lay/o;->d()I

    move-result v0

    iget-object v1, p0, Lay/n;->d:Lah/f;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lay/n;->d:Lah/f;

    invoke-interface {v1}, Lah/f;->g()I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lay/n;->e:Lah/f;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lay/n;->e:Lah/f;

    invoke-interface {v1}, Lah/f;->g()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lay/n;->f:Lah/f;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lay/n;->f:Lah/f;

    invoke-interface {v1}, Lah/f;->g()I

    move-result v1

    add-int/2addr v0, v1

    :cond_27
    iget-object v1, p0, Lay/n;->g:Lah/f;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lay/n;->g:Lah/f;

    invoke-interface {v1}, Lah/f;->g()I

    move-result v1

    add-int/2addr v0, v1

    :cond_32
    return v0
.end method
