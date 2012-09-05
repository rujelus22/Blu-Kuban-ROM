.class public Lcom/google/googlenav/bn;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:I

.field public final i:Lam/b;

.field public final j:Lam/b;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILam/b;Lam/b;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/googlenav/bn;->a:Z

    iput-object p2, p0, Lcom/google/googlenav/bn;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/bn;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/googlenav/bn;->d:Z

    iput-object p5, p0, Lcom/google/googlenav/bn;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/googlenav/bn;->f:Ljava/lang/String;

    iput p7, p0, Lcom/google/googlenav/bn;->g:I

    iput p8, p0, Lcom/google/googlenav/bn;->h:I

    iput-object p9, p0, Lcom/google/googlenav/bn;->i:Lam/b;

    iput-object p10, p0, Lcom/google/googlenav/bn;->j:Lam/b;

    return-void
.end method

.method public static a(Lam/b;)Lcom/google/googlenav/bn;
    .registers 13

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v4

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v7

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v3

    if-nez v4, :cond_1b

    if-nez v7, :cond_1b

    :cond_1a
    :goto_1a
    return-object v0

    :cond_1b
    invoke-static {v3, v5}, Lam/g;->h(Lam/b;I)Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-static {v3, v10}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v11}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v3

    :goto_29
    const/4 v6, 0x0

    if-eqz v4, :cond_59

    invoke-virtual {v4, v5}, Lam/b;->k(I)Z

    move-result v8

    if-eqz v8, :cond_59

    invoke-virtual {v4, v5}, Lam/b;->b(I)Z

    move-result v8

    if-eqz v8, :cond_59

    invoke-virtual {v4, v9}, Lam/b;->k(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {v4, v9}, Lam/b;->h(I)Lam/b;

    move-result-object v4

    move-object v8, v4

    move-object v10, v0

    move-object v9, v0

    move-object v6, v0

    move v4, v5

    move-object v5, v0

    :goto_48
    new-instance v0, Lcom/google/googlenav/bn;

    invoke-static {v8}, Lcom/google/googlenav/bn;->c(Lam/b;)I

    move-result v7

    invoke-static {v8}, Lcom/google/googlenav/bn;->b(Lam/b;)I

    move-result v8

    invoke-direct/range {v0 .. v10}, Lcom/google/googlenav/bn;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILam/b;Lam/b;)V

    invoke-virtual {v0}, Lcom/google/googlenav/bn;->c()V

    goto :goto_1a

    :cond_59
    if-eqz v7, :cond_87

    invoke-virtual {v7, v9}, Lam/b;->k(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual {v7, v11}, Lam/b;->h(I)Lam/b;

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlenav/bn;->c(Lam/b;)I

    move-result v5

    invoke-static {v4}, Lcom/google/googlenav/bn;->b(Lam/b;)I

    move-result v8

    add-int/2addr v5, v8

    if-lez v5, :cond_74

    invoke-virtual {v7, v9}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    :cond_74
    invoke-static {v7, v10}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lam/b;->h(I)Lam/b;

    move-result-object v9

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lam/b;->h(I)Lam/b;

    move-result-object v10

    move-object v8, v4

    move v4, v6

    move-object v6, v5

    move-object v5, v0

    goto :goto_48

    :cond_87
    move-object v8, v0

    move v4, v6

    move-object v10, v0

    move-object v9, v0

    move-object v5, v0

    move-object v6, v0

    goto :goto_48

    :cond_8e
    move-object v3, v0

    move-object v2, v0

    goto :goto_29
.end method

.method private static b(Lam/b;)I
    .registers 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lam/g;->c(Lam/b;II)I

    move-result v0

    return v0
.end method

.method public static b()Lcom/google/googlenav/bn;
    .registers 12

    const/4 v11, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "SPICY_BOWL_FEATURE_PROVIDER_OPT_IN_SETTING"

    invoke-interface {v0, v1}, Lak/m;->a_(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_13

    move-object v0, v11

    :goto_12
    return-object v0

    :cond_13
    new-instance v8, Lan/a;

    invoke-direct {v8, v0}, Lan/a;-><init>([B)V

    :try_start_18
    invoke-virtual {v8}, Lan/a;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    invoke-static {}, Lcom/google/googlenav/bn;->d()V

    move-object v0, v11

    goto :goto_12

    :cond_24
    invoke-virtual {v8}, Lan/a;->readBoolean()Z

    move-result v1

    invoke-virtual {v8}, Lan/a;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-virtual {v8}, Lan/a;->readUTF()Ljava/lang/String;

    move-result-object v2

    :goto_32
    invoke-virtual {v8}, Lan/a;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {v8}, Lan/a;->readUTF()Ljava/lang/String;

    move-result-object v3

    :goto_3c
    invoke-virtual {v8}, Lan/a;->readBoolean()Z

    move-result v4

    invoke-virtual {v8}, Lan/a;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {v8}, Lan/a;->readUTF()Ljava/lang/String;

    move-result-object v5

    :goto_4a
    invoke-virtual {v8}, Lan/a;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {v8}, Lan/a;->readUTF()Ljava/lang/String;

    move-result-object v6

    :goto_54
    invoke-virtual {v8}, Lan/a;->readInt()I

    move-result v7

    invoke-virtual {v8}, Lan/a;->readInt()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v0, Lcom/google/googlenav/bn;

    invoke-direct/range {v0 .. v10}, Lcom/google/googlenav/bn;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILam/b;Lam/b;)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_63} :catch_64

    goto :goto_12

    :catch_64
    move-exception v0

    move-object v0, v11

    goto :goto_12

    :cond_67
    move-object v6, v11

    goto :goto_54

    :cond_69
    move-object v5, v11

    goto :goto_4a

    :cond_6b
    move-object v3, v11

    goto :goto_3c

    :cond_6d
    move-object v2, v11

    goto :goto_32
.end method

.method private static c(Lam/b;)I
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lam/g;->c(Lam/b;II)I

    move-result v0

    return v0
.end method

.method public static d()V
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "SPICY_BOWL_FEATURE_PROVIDER_OPT_IN_SETTING"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lak/m;->a(Ljava/lang/String;[B)Z

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-interface {v0}, Lak/m;->a()V

    return-void
.end method


# virtual methods
.method a(I)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v3, Lan/b;

    invoke-direct {v3}, Lan/b;-><init>()V

    :try_start_7
    invoke-virtual {v3, p1}, Lan/b;->writeInt(I)V

    iget-boolean v2, p0, Lcom/google/googlenav/bn;->a:Z

    invoke-virtual {v3, v2}, Lan/b;->writeBoolean(Z)V

    iget-object v2, p0, Lcom/google/googlenav/bn;->b:Ljava/lang/String;

    if-eqz v2, :cond_7e

    move v2, v0

    :goto_14
    invoke-virtual {v3, v2}, Lan/b;->writeBoolean(Z)V

    iget-object v2, p0, Lcom/google/googlenav/bn;->b:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/google/googlenav/bn;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lan/b;->writeUTF(Ljava/lang/String;)V

    :cond_20
    iget-object v2, p0, Lcom/google/googlenav/bn;->c:Ljava/lang/String;

    if-eqz v2, :cond_80

    move v2, v0

    :goto_25
    invoke-virtual {v3, v2}, Lan/b;->writeBoolean(Z)V

    iget-object v2, p0, Lcom/google/googlenav/bn;->c:Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/google/googlenav/bn;->c:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lan/b;->writeUTF(Ljava/lang/String;)V

    :cond_31
    iget-boolean v2, p0, Lcom/google/googlenav/bn;->d:Z

    invoke-virtual {v3, v2}, Lan/b;->writeBoolean(Z)V

    iget-object v2, p0, Lcom/google/googlenav/bn;->e:Ljava/lang/String;

    if-eqz v2, :cond_82

    move v2, v0

    :goto_3b
    invoke-virtual {v3, v2}, Lan/b;->writeBoolean(Z)V

    iget-object v2, p0, Lcom/google/googlenav/bn;->e:Ljava/lang/String;

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/google/googlenav/bn;->e:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lan/b;->writeUTF(Ljava/lang/String;)V

    :cond_47
    iget-object v2, p0, Lcom/google/googlenav/bn;->f:Ljava/lang/String;

    if-eqz v2, :cond_84

    :goto_4b
    invoke-virtual {v3, v0}, Lan/b;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/google/googlenav/bn;->f:Ljava/lang/String;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/google/googlenav/bn;->f:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lan/b;->writeUTF(Ljava/lang/String;)V

    :cond_57
    iget v0, p0, Lcom/google/googlenav/bn;->g:I

    invoke-virtual {v3, v0}, Lan/b;->writeInt(I)V

    iget v0, p0, Lcom/google/googlenav/bn;->h:I

    invoke-virtual {v3, v0}, Lan/b;->writeInt(I)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_61} :catch_86

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "SPICY_BOWL_FEATURE_PROVIDER_OPT_IN_SETTING"

    invoke-virtual {v3}, Lan/b;->a()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lak/m;->a(Ljava/lang/String;[B)Z

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-interface {v0}, Lak/m;->a()V

    :goto_7d
    return-void

    :cond_7e
    move v2, v1

    goto :goto_14

    :cond_80
    move v2, v1

    goto :goto_25

    :cond_82
    move v2, v1

    goto :goto_3b

    :cond_84
    move v0, v1

    goto :goto_4b

    :catch_86
    move-exception v0

    goto :goto_7d
.end method

.method public a()Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/bn;->d:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/google/googlenav/bn;->h:I

    iget v1, p0, Lcom/google/googlenav/bn;->g:I

    add-int/2addr v0, v1

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/bn;->a(I)V

    return-void
.end method
