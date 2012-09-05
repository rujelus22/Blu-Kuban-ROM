.class public Lcom/google/googlenav/aO;
.super Ljava/lang/Object;


# instance fields
.field public final a:LaJ/B;

.field public final b:Ljava/lang/String;

.field public final c:Lam/b;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lam/b;

.field public final g:Lam/b;


# direct methods
.method public constructor <init>(LaJ/B;Ljava/lang/String;Lam/b;Ljava/lang/String;Ljava/lang/String;Lam/b;Lam/b;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/aO;->a:LaJ/B;

    iput-object p2, p0, Lcom/google/googlenav/aO;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/aO;->c:Lam/b;

    iput-object p4, p0, Lcom/google/googlenav/aO;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/googlenav/aO;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/googlenav/aO;->f:Lam/b;

    iput-object p7, p0, Lcom/google/googlenav/aO;->g:Lam/b;

    return-void
.end method

.method public static a(Lam/b;)Lcom/google/googlenav/aO;
    .registers 14

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    if-eqz v0, :cond_2c

    new-instance v1, LaJ/B;

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lam/g;->e(Lam/b;I)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v0, v9}, Lam/g;->e(Lam/b;I)I

    move-result v9

    invoke-direct {v1, v8, v9}, LaJ/B;-><init>(II)V

    const/4 v8, 0x5

    invoke-static {v0, v8}, Lam/g;->g(Lam/b;I)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v0, v8, v10

    if-eqz v0, :cond_2c

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :cond_2c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/b;->l(I)I

    move-result v9

    const/4 v0, 0x0

    move v8, v0

    :goto_33
    if-ge v8, v9, :cond_bf

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v8}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    const/4 v10, 0x1

    invoke-static {v0, v10}, Lam/g;->e(Lam/b;I)I

    move-result v10

    const/4 v11, 0x3

    invoke-virtual {v0, v11}, Lam/b;->k(I)Z

    move-result v11

    if-eqz v11, :cond_51

    const/4 v11, 0x3

    invoke-virtual {v0, v11}, Lam/b;->c(I)[B

    move-result-object v0

    :goto_4b
    if-nez v0, :cond_53

    :goto_4d
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_33

    :cond_51
    const/4 v0, 0x0

    goto :goto_4b

    :cond_53
    sparse-switch v10, :sswitch_data_c6

    goto :goto_4d

    :sswitch_57
    :try_start_57
    new-instance v11, Lam/b;

    sget-object v12, LbA/bg;->a:Lam/e;

    invoke-direct {v11, v12}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v11, v0}, Lam/b;->a([B)Lam/b;

    move-result-object v0

    const/4 v11, 0x1

    invoke-static {v0, v11}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v3

    goto :goto_4d

    :sswitch_68
    new-instance v11, Lam/b;

    sget-object v12, LbA/S;->a:Lam/e;

    invoke-direct {v11, v12}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v11, v0}, Lam/b;->a([B)Lam/b;

    move-result-object v0

    const/4 v11, 0x1

    invoke-static {v0, v11}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4d

    :sswitch_79
    new-instance v11, Lam/b;

    sget-object v12, LbA/a;->a:Lam/e;

    invoke-direct {v11, v12}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v11, v0}, Lam/b;->a([B)Lam/b;

    move-result-object v0

    const/4 v11, 0x1

    invoke-static {v0, v11}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4d

    :sswitch_8a
    new-instance v11, Lam/b;

    sget-object v12, LbA/bb;->a:Lam/e;

    invoke-direct {v11, v12}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v11, v0}, Lam/b;->a([B)Lam/b;

    move-result-object v0

    const/4 v11, 0x1

    invoke-static {v0, v11}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v6

    goto :goto_4d

    :sswitch_9b
    new-instance v11, Lam/b;

    sget-object v12, LbA/u;->a:Lam/e;

    invoke-direct {v11, v12}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v11, v0}, Lam/b;->a([B)Lam/b;
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_a5} :catch_a7

    move-result-object v7

    goto :goto_4d

    :catch_a7
    move-exception v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PLACE_PAGE, received related place with corrupted story of type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4d

    :cond_bf
    new-instance v0, Lcom/google/googlenav/aO;

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/aO;-><init>(LaJ/B;Ljava/lang/String;Lam/b;Ljava/lang/String;Ljava/lang/String;Lam/b;Lam/b;)V

    return-object v0

    nop

    :sswitch_data_c6
    .sparse-switch
        0x2 -> :sswitch_57
        0x3 -> :sswitch_79
        0x6 -> :sswitch_9b
        0x10 -> :sswitch_68
        0x1e -> :sswitch_8a
    .end sparse-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/aO;->f:Lam/b;

    if-eqz v1, :cond_43

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/aO;->f:Lam/b;

    invoke-virtual {v1, v3}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/google/googlenav/aO;->f:Lam/b;

    invoke-virtual {v1, v3}, Lam/b;->d(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/ah;->k(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    iget-object v1, p0, Lcom/google/googlenav/aO;->f:Lam/b;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lam/g;->e(Lam/b;I)I

    move-result v1

    if-lez v1, :cond_3f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_34

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    if-ne v1, v3, :cond_44

    const/16 v1, 0x3ae

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    :goto_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_43
    return-object v0

    :cond_44
    const/16 v2, 0x3ad

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f
.end method
