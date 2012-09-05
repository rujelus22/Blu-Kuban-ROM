.class public abstract Lx/f;
.super Lx/o;


# instance fields
.field protected a:I

.field protected b:[[B

.field final synthetic c:Lx/d;


# direct methods
.method protected constructor <init>(Lx/d;)V
    .registers 3

    const/16 v0, 0x8

    iput-object p1, p0, Lx/f;->c:Lx/d;

    invoke-direct {p0, v0}, Lx/o;-><init>(I)V

    new-array v0, v0, [[B

    iput-object v0, p0, Lx/f;->b:[[B

    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .registers 6

    new-instance v0, Lam/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    sget-object v1, LbD/gy;->g:Lam/e;

    invoke-static {v1, p1, v0}, Lam/g;->a(Lam/e;Ljava/io/InputStream;Lam/b;)I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v1

    iput v1, p0, Lx/f;->a:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    if-eqz v0, :cond_35

    iget-object v1, p0, Lx/f;->c:Lx/d;

    invoke-virtual {v1}, Lx/d;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received tile response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    return-void
.end method

.method private b(Ljava/io/InputStream;)V
    .registers 15

    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v3, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lx/f;->d()I

    move-result v5

    move v0, v1

    :goto_a
    new-instance v4, Lam/b;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lam/b;-><init>(Lam/e;)V

    sget-object v2, LbD/gy;->g:Lam/e;

    invoke-static {v2, p1, v4}, Lam/g;->a(Lam/e;Ljava/io/InputStream;Lam/b;)I

    move-result v2

    if-ne v2, v3, :cond_41

    if-eq v0, v5, :cond_40

    iget-object v1, p0, Lx/f;->c:Lx/d;

    invoke-virtual {v1}, Lx/d;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "tiles, expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    return-void

    :cond_41
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v11}, Lam/b;->d(I)I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Lam/b;->d(I)I

    move-result v7

    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Lam/b;->d(I)I

    move-result v8

    iget-object v9, p0, Lx/f;->c:Lx/d;

    invoke-static {v9}, Lx/d;->e(Lx/d;)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v2, v12}, Lam/b;->k(I)Z

    move-result v9

    if-eqz v9, :cond_7c

    invoke-virtual {v2, v12}, Lam/b;->d(I)I

    move-result v2

    :goto_65
    invoke-virtual {v4, v11}, Lam/b;->c(I)[B

    move-result-object v9

    if-eqz v9, :cond_7e

    array-length v4, v9

    :goto_6c
    invoke-virtual {p0, v4, v2}, Lx/f;->a(II)[B

    move-result-object v2

    if-eqz v9, :cond_77

    array-length v10, v2

    sub-int/2addr v10, v4

    invoke-static {v9, v1, v2, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_77
    if-lt v0, v5, :cond_80

    :cond_79
    :goto_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_7c
    move v2, v3

    goto :goto_65

    :cond_7e
    move v4, v1

    goto :goto_6c

    :cond_80
    invoke-virtual {p0, v0}, Lx/f;->a(I)Lx/r;

    move-result-object v9

    invoke-virtual {v9}, Lx/r;->a()Lt/af;

    move-result-object v9

    invoke-virtual {v9}, Lt/af;->b()I

    move-result v10

    if-ne v8, v10, :cond_9a

    invoke-virtual {v9}, Lt/af;->c()I

    move-result v8

    if-ne v6, v8, :cond_9a

    invoke-virtual {v9}, Lt/af;->d()I

    move-result v6

    if-eq v7, v6, :cond_a6

    :cond_9a
    iget-object v2, p0, Lx/f;->c:Lx/d;

    invoke-virtual {v2}, Lx/d;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Received wrong tile"

    invoke-static {v2, v4}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    :cond_a6
    if-eqz v4, :cond_79

    iget-object v4, p0, Lx/f;->b:[[B

    aput-object v2, v4, v0

    goto :goto_79
.end method

.method private k()Z
    .registers 2

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v0

    invoke-virtual {v0}, Lz/l;->F()Z

    move-result v0

    return v0
.end method

.method private l()Lx/g;
    .registers 6

    sget-object v1, Lx/g;->a:Lx/g;

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Lx/f;->d()I

    move-result v2

    if-ge v0, v2, :cond_23

    invoke-virtual {p0, v0}, Lx/f;->a(I)Lx/r;

    move-result-object v2

    invoke-virtual {v2}, Lx/r;->b()Lx/g;

    move-result-object v2

    sget-object v3, Lx/g;->a:Lx/g;

    if-eq v1, v3, :cond_1f

    invoke-virtual {v2}, Lx/g;->a()I

    move-result v3

    invoke-virtual {v1}, Lx/g;->a()I

    move-result v4

    if-ge v3, v4, :cond_20

    :cond_1f
    move-object v1, v2

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_23
    return-object v1
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x6c

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 14

    const/4 v1, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    new-instance v2, Lam/b;

    sget-object v0, LbD/gy;->c:Lam/e;

    invoke-direct {v2, v0}, Lam/b;-><init>(Lam/e;)V

    new-instance v3, Lam/b;

    sget-object v0, LbD/gy;->d:Lam/e;

    invoke-direct {v3, v0}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v3, v9, v2}, Lam/b;->b(ILam/b;)V

    iget-object v0, p0, Lx/f;->c:Lx/d;

    invoke-static {v0}, Lx/d;->a(Lx/d;)I

    move-result v0

    invoke-virtual {v2, v9, v0}, Lam/b;->h(II)V

    iget-object v0, p0, Lx/f;->c:Lx/d;

    invoke-static {v0}, Lx/d;->b(Lx/d;)I

    move-result v0

    invoke-virtual {v2, v11, v0}, Lam/b;->h(II)V

    const/4 v0, 0x5

    invoke-direct {p0}, Lx/f;->l()Lx/g;

    move-result-object v4

    invoke-virtual {v4}, Lx/g;->a()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lam/b;->h(II)V

    iget-object v0, p0, Lx/f;->c:Lx/d;

    invoke-static {v0}, Lx/d;->c(Lx/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v10, v0}, Lam/b;->a(II)V

    goto :goto_3e

    :cond_52
    iget-object v0, p0, Lx/f;->c:Lx/d;

    invoke-static {v0}, Lx/d;->d(Lx/d;)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {v2, v8, v10}, Lam/b;->a(II)V

    :cond_5d
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->a()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {v2, v8, v1}, Lam/b;->a(II)V

    :cond_66
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->x()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {v2, v8, v11}, Lam/b;->a(II)V

    :cond_73
    invoke-direct {p0}, Lx/f;->k()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-virtual {v2, v8, v8}, Lam/b;->a(II)V

    :cond_7c
    invoke-direct {p0}, Lx/f;->l()Lx/g;

    move-result-object v0

    sget-object v4, Lx/g;->a:Lx/g;

    if-eq v0, v4, :cond_90

    const/4 v0, 0x5

    invoke-direct {p0}, Lx/f;->l()Lx/g;

    move-result-object v4

    invoke-virtual {v4}, Lx/g;->a()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lam/b;->h(II)V

    :cond_90
    invoke-virtual {p0}, Lx/f;->d()I

    move-result v2

    move v0, v1

    :goto_95
    if-ge v0, v2, :cond_124

    invoke-virtual {p0, v0}, Lx/f;->a(I)Lx/r;

    move-result-object v1

    invoke-virtual {v1}, Lx/r;->a()Lt/af;

    move-result-object v4

    new-instance v5, Lam/b;

    sget-object v6, LbD/gy;->i:Lam/e;

    invoke-direct {v5, v6}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v4}, Lt/af;->c()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Lam/b;->h(II)V

    invoke-virtual {v4}, Lt/af;->d()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Lam/b;->h(II)V

    invoke-virtual {v4}, Lt/af;->b()I

    move-result v6

    iget-object v7, p0, Lx/f;->c:Lx/d;

    invoke-static {v7}, Lx/d;->e(Lx/d;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v11, v6}, Lam/b;->h(II)V

    iget-object v6, p0, Lx/f;->c:Lx/d;

    iget-object v6, v6, Lx/d;->a:Lcom/google/android/maps/driveabout/vector/cU;

    iget v6, v6, Lcom/google/android/maps/driveabout/vector/cU;->n:I

    invoke-virtual {v5, v9, v6}, Lam/b;->h(II)V

    const/4 v6, 0x7

    iget-object v7, p0, Lx/f;->c:Lx/d;

    iget-object v7, v7, Lx/d;->a:Lcom/google/android/maps/driveabout/vector/cU;

    iget v7, v7, Lcom/google/android/maps/driveabout/vector/cU;->o:I

    invoke-virtual {v5, v6, v7}, Lam/b;->h(II)V

    invoke-virtual {v4}, Lt/af;->e()Lt/m;

    move-result-object v6

    if-eqz v6, :cond_f1

    iget-object v6, p0, Lx/f;->c:Lx/d;

    iget-object v6, v6, Lx/d;->a:Lcom/google/android/maps/driveabout/vector/cU;

    iget v6, v6, Lcom/google/android/maps/driveabout/vector/cU;->n:I

    const/16 v7, 0xe

    if-ne v6, v7, :cond_10c

    const/4 v6, 0x6

    invoke-virtual {v4}, Lt/af;->e()Lt/m;

    move-result-object v4

    invoke-virtual {v4}, Lt/m;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lam/b;->b(ILjava/lang/String;)V

    :cond_f1
    :goto_f1
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/M;->x()Z

    move-result v4

    if-eqz v4, :cond_104

    const/16 v4, 0x8

    invoke-virtual {v1}, Lx/r;->e()I

    move-result v1

    invoke-virtual {v5, v4, v1}, Lam/b;->h(II)V

    :cond_104
    const/16 v1, 0x9

    invoke-virtual {v3, v1, v5}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_95

    :cond_10c
    iget-object v6, p0, Lx/f;->c:Lx/d;

    iget-object v6, v6, Lx/d;->a:Lcom/google/android/maps/driveabout/vector/cU;

    iget v6, v6, Lcom/google/android/maps/driveabout/vector/cU;->n:I

    const/16 v7, 0xd

    if-ne v6, v7, :cond_f1

    const/16 v6, 0x9

    invoke-virtual {v4}, Lt/af;->e()Lt/m;

    move-result-object v4

    invoke-virtual {v4}, Lt/m;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lam/b;->b(ILjava/lang/String;)V

    goto :goto_f1

    :cond_124
    invoke-static {p1, v3}, Lam/g;->a(Ljava/io/DataOutput;Lam/b;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 4

    invoke-static {p1}, Lam/g;->a(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v1

    :try_start_4
    invoke-direct {p0, v1}, Lx/f;->a(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Lx/f;->b(Ljava/io/InputStream;)V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_f

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    return v0

    :catchall_f
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method protected a(Lx/r;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lx/f;->d()I

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0, v1}, Lx/f;->a(I)Lx/r;

    move-result-object v2

    invoke-virtual {v2}, Lx/r;->a()Lt/af;

    move-result-object v2

    invoke-virtual {v2}, Lt/af;->b()I

    move-result v2

    invoke-virtual {p1}, Lx/r;->a()Lt/af;

    move-result-object v3

    invoke-virtual {v3}, Lt/af;->b()I

    move-result v3

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_8
.end method

.method protected a(II)[B
    .registers 4

    new-array v0, p1, [B

    return-object v0
.end method

.method protected c()I
    .registers 2

    iget v0, p0, Lx/f;->a:I

    return v0
.end method
