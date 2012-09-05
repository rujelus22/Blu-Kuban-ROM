.class public La/D;
.super Ljava/lang/Object;

# interfaces
.implements Ld/r;


# instance fields
.field private final a:Li/E;

.field private b:J

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:La/F;

.field private g:J

.field private h:J

.field private i:Ljava/util/List;

.field private j:J

.field private k:Ld/I;

.field private final l:La/o;

.field private final m:La/w;


# direct methods
.method public constructor <init>(Li/E;La/o;La/w;)V
    .registers 13

    const-wide/16 v3, 0x0

    const-wide/16 v1, -0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, La/D;->b:J

    iput-boolean v8, p0, La/D;->c:Z

    iput-boolean v8, p0, La/D;->d:Z

    iput-boolean v8, p0, La/D;->e:Z

    sget-object v0, La/F;->a:La/F;

    iput-object v0, p0, La/D;->f:La/F;

    iput-wide v1, p0, La/D;->g:J

    iput-wide v3, p0, La/D;->h:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/D;->i:Ljava/util/List;

    iput-wide v3, p0, La/D;->j:J

    iput-object p1, p0, La/D;->a:Li/E;

    iput-object p2, p0, La/D;->l:La/o;

    iput-object p3, p0, La/D;->m:La/w;

    invoke-virtual {p2}, La/o;->f()J

    move-result-wide v0

    invoke-interface {p1}, Li/E;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-interface {p1}, Li/E;->a()J

    move-result-wide v2

    sub-long v4, v2, v0

    const-wide/32 v6, 0x6cf2a0

    cmp-long v4, v4, v6

    if-lez v4, :cond_46

    const-wide/32 v0, 0x6ddd00

    sub-long v0, v2, v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    :cond_46
    invoke-direct {p0, v0, v1, v8}, La/D;->a(JZ)V

    return-void
.end method

.method private a(J)V
    .registers 8

    iget-wide v0, p0, La/D;->j:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    :cond_b
    return-void

    :cond_c
    iput-wide p1, p0, La/D;->j:J

    iget-object v0, p0, La/D;->a:Li/E;

    invoke-interface {v0}, Li/E;->t()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_20
    if-ge v0, v2, :cond_b

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-direct {p0, v3}, La/D;->a(Ljava/io/File;)V

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_20
.end method

.method private a(JZ)V
    .registers 8

    iput-wide p1, p0, La/D;->g:J

    iget-wide v0, p0, La/D;->g:J

    const-wide/32 v2, 0x6ddd00

    add-long/2addr v0, v2

    if-eqz p3, :cond_16

    iget-object v0, p0, La/D;->l:La/o;

    iget-object v1, p0, La/D;->a:Li/E;

    invoke-interface {v1}, Li/E;->c()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, La/o;->b(J)V

    :cond_16
    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 5

    iget-object v0, p0, La/D;->a:Li/E;

    invoke-interface {v0}, Li/E;->b()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, La/D;->b(Ljava/io/File;J)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-direct {p0, p1, v0, v1}, La/D;->a(Ljava/io/File;J)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_12
    invoke-static {p1}, Ll/b;->a(Ljava/io/File;)Z

    :cond_15
    return-void
.end method

.method private a(Ljava/io/File;J)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_9

    array-length v3, v2

    move v1, v0

    :goto_12
    if-ge v1, v3, :cond_9

    aget-object v4, v2, v1

    invoke-direct {p0, v4, p2, p3}, La/D;->b(Ljava/io/File;J)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v0, 0x1

    goto :goto_9

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method private b()V
    .registers 5

    iget-object v0, p0, La/D;->m:La/w;

    invoke-virtual {v0}, La/w;->b()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, La/D;->f:La/F;

    sget-object v1, La/F;->a:La/F;

    if-eq v0, v1, :cond_12

    invoke-direct {p0}, La/D;->g()V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, La/D;->a:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, La/D;->a(J)V

    goto :goto_11

    :cond_1c
    const/4 v0, 0x0

    :cond_1d
    iget-object v1, p0, La/D;->f:La/F;

    sget-object v2, La/E;->a:[I

    iget-object v3, p0, La/D;->f:La/F;

    invoke-virtual {v3}, La/F;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_42

    :goto_2c
    iget-object v2, p0, La/D;->f:La/F;

    if-eq v1, v2, :cond_30

    :cond_30
    if-nez v0, :cond_1d

    goto :goto_11

    :pswitch_33
    invoke-direct {p0}, La/D;->c()Z

    move-result v0

    goto :goto_2c

    :pswitch_38
    invoke-direct {p0}, La/D;->d()Z

    move-result v0

    goto :goto_2c

    :pswitch_3d
    invoke-direct {p0}, La/D;->e()Z

    move-result v0

    goto :goto_2c

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_33
        :pswitch_38
        :pswitch_3d
    .end packed-switch
.end method

.method private b(J)Z
    .registers 7

    iget-wide v0, p0, La/D;->h:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private b(Ljava/io/File;J)Z
    .registers 10

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sub-long v2, p2, v0

    const-wide/32 v4, 0x240c8400

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1b

    const-wide/32 v4, 0x36ee80

    add-long/2addr v4, p2

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1b

    invoke-direct {p0, p1, v2, v3}, La/D;->c(Ljava/io/File;J)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private c(J)V
    .registers 7

    iget-wide v0, p0, La/D;->b:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_10

    iput-wide p1, p0, La/D;->b:J

    iget-object v0, p0, La/D;->a:Li/E;

    const/4 v1, 0x7

    iget-wide v2, p0, La/D;->b:J

    invoke-interface {v0, v1, v2, v3}, Li/E;->a(IJ)V

    :cond_10
    return-void
.end method

.method private c()Z
    .registers 10

    const-wide/32 v7, 0x6ddd00

    const/4 v0, 0x1

    iget-object v1, p0, La/D;->a:Li/E;

    invoke-interface {v1}, Li/E;->a()J

    move-result-wide v1

    iget-wide v3, p0, La/D;->g:J

    add-long/2addr v3, v7

    invoke-direct {p0}, La/D;->h()Z

    move-result v5

    if-eqz v5, :cond_43

    cmp-long v5, v1, v3

    if-ltz v5, :cond_43

    invoke-direct {p0}, La/D;->i()Z

    move-result v3

    if-nez v3, :cond_21

    invoke-direct {p0, v1, v2, v0}, La/D;->a(JZ)V

    :goto_20
    return v0

    :cond_21
    invoke-direct {p0, v1, v2}, La/D;->b(J)Z

    move-result v3

    if-eqz v3, :cond_32

    const-wide/16 v3, 0x1388

    add-long/2addr v3, v1

    invoke-direct {p0, v3, v4}, La/D;->c(J)V

    :cond_2d
    :goto_2d
    invoke-direct {p0, v1, v2}, La/D;->a(J)V

    const/4 v0, 0x0

    goto :goto_20

    :cond_32
    invoke-direct {p0}, La/D;->k()V

    sget-object v1, La/F;->b:La/F;

    iput-object v1, p0, La/D;->f:La/F;

    iget-object v1, p0, La/D;->a:Li/E;

    invoke-interface {v1}, Li/E;->a()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0}, La/D;->a(JZ)V

    goto :goto_20

    :cond_43
    cmp-long v0, v3, v1

    if-gtz v0, :cond_5b

    iget-wide v3, p0, La/D;->b:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_55

    iget-wide v3, p0, La/D;->b:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_2d

    :cond_55
    add-long v3, v1, v7

    invoke-direct {p0, v3, v4}, La/D;->c(J)V

    goto :goto_2d

    :cond_5b
    invoke-direct {p0, v3, v4}, La/D;->c(J)V

    goto :goto_2d
.end method

.method private c(Ljava/io/File;J)Z
    .registers 6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".lck"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-wide/32 v0, 0x36ee80

    cmp-long v0, p2, v0

    if-lez v0, :cond_17

    const/4 v0, 0x1

    :goto_14
    if-eqz v0, :cond_16

    :cond_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private d()Z
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, La/D;->h()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-direct {p0}, La/D;->g()V

    :goto_b
    return v0

    :cond_c
    iget-object v2, p0, La/D;->a:Li/E;

    invoke-interface {v2}, Li/E;->a()J

    move-result-wide v2

    iget-wide v4, p0, La/D;->g:J

    const-wide/16 v6, 0x3a98

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_51

    invoke-direct {p0}, La/D;->j()Z

    move-result v2

    if-eqz v2, :cond_4d

    sget-object v2, La/F;->c:La/F;

    iput-object v2, p0, La/D;->f:La/F;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, La/D;->i:Ljava/util/List;

    iget-object v2, p0, La/D;->a:Li/E;

    invoke-interface {v2}, Li/E;->t()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    :goto_37
    if-ge v1, v3, :cond_49

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_46

    iget-object v5, p0, La/D;->i:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_49
    invoke-direct {p0}, La/D;->f()V

    goto :goto_b

    :cond_4d
    invoke-direct {p0}, La/D;->g()V

    goto :goto_b

    :cond_51
    invoke-direct {p0, v4, v5}, La/D;->c(J)V

    move v0, v1

    goto :goto_b
.end method

.method private e()Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v3, p0, La/D;->g:J

    const-wide/32 v5, 0x124f80

    add-long/2addr v3, v5

    iget-object v0, p0, La/D;->a:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-ltz v0, :cond_26

    move v0, v1

    :goto_13
    invoke-direct {p0}, La/D;->h()Z

    move-result v5

    invoke-direct {p0}, La/D;->j()Z

    move-result v6

    if-nez v0, :cond_21

    if-eqz v5, :cond_21

    if-nez v6, :cond_28

    :cond_21
    invoke-direct {p0}, La/D;->g()V

    move v2, v1

    :goto_25
    return v2

    :cond_26
    move v0, v2

    goto :goto_13

    :cond_28
    invoke-direct {p0, v3, v4}, La/D;->c(J)V

    goto :goto_25
.end method

.method private f()V
    .registers 4

    invoke-direct {p0}, La/D;->h()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-direct {p0}, La/D;->j()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, La/D;->f:La/F;

    sget-object v1, La/F;->c:La/F;

    if-ne v0, v1, :cond_4c

    :cond_12
    iget-object v0, p0, La/D;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4c

    iget-object v0, p0, La/D;->i:Ljava/util/List;

    iget-object v1, p0, La/D;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {}, Ld/ai;->a()Ld/ai;

    move-result-object v1

    invoke-virtual {v1, v0}, Ld/ai;->c(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, La/D;->a:Li/E;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SensorUploader"

    invoke-interface {v1, v0, p0, v2}, Li/E;->a(Ljava/lang/String;Ld/r;Ljava/lang/String;)Ld/I;

    move-result-object v0

    iput-object v0, p0, La/D;->k:Ld/I;

    iget-object v0, p0, La/D;->k:Ld/I;

    if-eqz v0, :cond_12

    iget-object v0, p0, La/D;->k:Ld/I;

    invoke-interface {v0}, Ld/I;->a()V

    :goto_4b
    return-void

    :cond_4c
    invoke-direct {p0}, La/D;->g()V

    goto :goto_4b
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, La/D;->k:Ld/I;

    if-eqz v0, :cond_c

    iget-object v0, p0, La/D;->k:Ld/I;

    invoke-interface {v0}, Ld/I;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, La/D;->k:Ld/I;

    :cond_c
    iget-object v0, p0, La/D;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, La/D;->l()V

    sget-object v0, La/F;->a:La/F;

    iput-object v0, p0, La/D;->f:La/F;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, La/D;->c(J)V

    return-void
.end method

.method private h()Z
    .registers 2

    iget-boolean v0, p0, La/D;->c:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, La/D;->m:La/w;

    invoke-virtual {v0}, La/w;->c()Le/v;

    move-result-object v0

    iget-object v0, v0, Le/v;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private i()Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, La/D;->a:Li/E;

    invoke-interface {v1}, Li/E;->t()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_14
    if-ge v1, v3, :cond_d

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v0, 0x1

    goto :goto_d

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method private j()Z
    .registers 2

    iget-boolean v0, p0, La/D;->c:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, La/D;->d:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private k()V
    .registers 3

    iget-boolean v0, p0, La/D;->e:Z

    if-nez v0, :cond_16

    iget-object v0, p0, La/D;->a:Li/E;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Li/E;->b(I)V

    iget-boolean v0, p0, La/D;->d:Z

    if-nez v0, :cond_13

    iget-object v0, p0, La/D;->a:Li/E;

    invoke-interface {v0}, Li/E;->u()Z

    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, La/D;->e:Z

    :cond_16
    return-void
.end method

.method private l()V
    .registers 3

    iget-boolean v0, p0, La/D;->e:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, La/D;->a:Li/E;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Li/E;->c(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/D;->e:Z

    :cond_d
    return-void
.end method

.method private m()V
    .registers 3

    invoke-direct {p0}, La/D;->h()Z

    move-result v0

    invoke-direct {p0}, La/D;->j()Z

    move-result v1

    if-eqz v0, :cond_c

    if-nez v1, :cond_f

    :cond_c
    invoke-direct {p0}, La/D;->g()V

    :cond_f
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, La/D;->b()V

    return-void
.end method

.method a(I)V
    .registers 4

    const/4 v0, 0x7

    if-ne p1, v0, :cond_a

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/D;->b:J

    invoke-direct {p0}, La/D;->b()V

    :cond_a
    return-void
.end method

.method public a(ILW/a;)V
    .registers 3

    invoke-direct {p0}, La/D;->m()V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, La/D;->m()V

    return-void
.end method

.method public a(ILjava/lang/String;Ld/aw;)V
    .registers 4

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, La/D;->f()V

    return-void
.end method

.method public a(Ljava/lang/String;Ld/aw;)V
    .registers 4

    iget v0, p2, Ld/aw;->b:I

    if-nez v0, :cond_8

    iget v0, p2, Ld/aw;->d:I

    if-nez v0, :cond_8

    :cond_8
    invoke-direct {p0}, La/D;->f()V

    return-void
.end method

.method a(Z)V
    .registers 2

    iput-boolean p1, p0, La/D;->c:Z

    invoke-direct {p0}, La/D;->b()V

    return-void
.end method

.method a(ZZ)V
    .registers 5

    iput-boolean p1, p0, La/D;->d:Z

    iget-object v0, p0, La/D;->a:Li/E;

    invoke-interface {v0}, Li/E;->a()J

    move-result-wide v0

    iput-wide v0, p0, La/D;->h:J

    invoke-direct {p0}, La/D;->b()V

    return-void
.end method
