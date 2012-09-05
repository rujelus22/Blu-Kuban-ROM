.class public LaV/g;
.super LaV/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, LaV/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;)LaV/r;
    .registers 18

    new-instance v11, LaV/r;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, LaV/r;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/googlenav/layer/f;->b()Ljava/util/List;

    move-result-object v13

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v3}, Las/b;->a(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v1, 0x0

    move v10, v1

    :goto_37
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_9a

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/layer/e;

    invoke-virtual {v1}, Lcom/google/googlenav/layer/e;->f()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-virtual {v1}, Lcom/google/googlenav/layer/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/googlenav/layer/f;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-virtual {v1}, Lcom/google/googlenav/layer/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    :cond_61
    :goto_61
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_37

    :cond_65
    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    new-instance v1, LaV/q;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-virtual/range {p0 .. p0}, LaV/g;->g()I

    move-result v7

    const/4 v9, 0x0

    move-object v3, v2

    move-object v8, v2

    invoke-direct/range {v1 .. v9}, LaV/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;LaJ/B;)V

    invoke-virtual {v11, v1}, LaV/r;->b(LaV/q;)V

    goto :goto_61

    :cond_7e
    invoke-virtual {v2, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_61

    new-instance v1, LaV/q;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-virtual/range {p0 .. p0}, LaV/g;->g()I

    move-result v3

    add-int/lit8 v7, v3, 0x32

    const/4 v9, 0x0

    move-object v3, v2

    move-object v8, v2

    invoke-direct/range {v1 .. v9}, LaV/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;LaJ/B;)V

    invoke-virtual {v11, v1}, LaV/r;->b(LaV/q;)V

    goto :goto_61

    :cond_9a
    return-object v11
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method
