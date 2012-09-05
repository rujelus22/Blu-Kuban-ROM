.class public La/l;
.super La/a;


# instance fields
.field g:J

.field h:J

.field i:J

.field private final j:La/w;

.field private final k:La/o;

.field private l:Ld/J;

.field private m:LW/a;

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Li/E;Lc/m;La/G;La/d;LW/a;La/w;La/o;)V
    .registers 15

    const-string v1, "CalibrationCollector"

    sget-object v6, La/e;->a:La/e;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, La/a;-><init>(Ljava/lang/String;Li/E;Lc/m;La/G;La/d;La/e;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/l;->g:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/l;->i:J

    iput-object p6, p0, La/l;->j:La/w;

    iput-object p5, p0, La/l;->m:LW/a;

    iput-object p7, p0, La/l;->k:La/o;

    invoke-direct {p0, p5}, La/l;->b(LW/a;)J

    move-result-wide v0

    iput-wide v0, p0, La/l;->g:J

    invoke-direct {p0}, La/l;->e()J

    move-result-wide v0

    iput-wide v0, p0, La/l;->h:J

    return-void
.end method

.method static synthetic a(La/l;)I
    .registers 2

    iget v0, p0, La/l;->n:I

    return v0
.end method

.method static synthetic a(La/l;LW/a;)LW/a;
    .registers 2

    iput-object p1, p0, La/l;->m:LW/a;

    return-object p1
.end method

.method static a(Li/E;)LW/a;
    .registers 5

    const/4 v0, 0x0

    invoke-interface {p0}, Li/E;->t()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "calibration"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    :try_start_13
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, LW/a;

    sget-object v2, Lk/a;->l:LW/d;

    invoke-direct {v1, v2}, LW/a;-><init>(LW/d;)V

    invoke-virtual {v1, v3}, LW/a;->a(Ljava/io/InputStream;)LW/a;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2a} :catch_2c

    move-object v0, v1

    goto :goto_12

    :catch_2c
    move-exception v1

    goto :goto_12
.end method

.method private a(II)V
    .registers 14

    const/4 v6, 0x0

    iput p1, p0, La/l;->n:I

    iput p2, p0, La/l;->o:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Ld/an;->e:Ld/an;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ld/an;->d:Ld/an;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/l;->b:Li/E;

    const/4 v1, 0x2

    new-array v1, v1, [Ld/an;

    const/4 v3, 0x0

    sget-object v4, Ld/an;->e:Ld/an;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    sget-object v4, Ld/an;->d:Ld/an;

    aput-object v4, v1, v3

    invoke-static {v1}, Ld/an;->a([Ld/an;)Ljava/util/Set;

    move-result-object v1

    const-wide/16 v3, 0x3a98

    sget-object v5, Ld/x;->a:Ld/x;

    new-instance v9, La/n;

    invoke-direct {v9, p0, v6}, La/n;-><init>(La/l;La/m;)V

    iget-object v10, p0, La/l;->a:Ljava/lang/String;

    move-object v7, v6

    move-object v8, v6

    invoke-interface/range {v0 .. v10}, Li/E;->a(Ljava/util/Set;Ljava/util/Map;JLd/x;Ljava/lang/String;Ljava/lang/Integer;LW/a;Ld/C;Ljava/lang/String;)Ld/J;

    move-result-object v0

    iput-object v0, p0, La/l;->l:Ld/J;

    iget-object v0, p0, La/l;->l:Ld/J;

    invoke-interface {v0}, Ld/J;->a()V

    return-void
.end method

.method static synthetic a(La/l;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, La/l;->i(J)V

    return-void
.end method

.method static synthetic b(La/l;)I
    .registers 2

    iget v0, p0, La/l;->o:I

    return v0
.end method

.method private b(LW/a;)J
    .registers 8

    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    if-eqz p1, :cond_1e

    invoke-virtual {p1, v3}, LW/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p1, v3}, LW/a;->f(I)LW/a;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, LW/a;->d(I)J

    move-result-wide v2

    iget-object v4, p0, La/l;->b:Li/E;

    invoke-interface {v4}, Li/E;->b()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_1f

    :cond_1e
    :goto_1e
    return-wide v0

    :cond_1f
    move-wide v0, v2

    goto :goto_1e
.end method

.method static synthetic b(La/l;LW/a;)J
    .registers 4

    invoke-direct {p0, p1}, La/l;->b(LW/a;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c(La/l;)La/o;
    .registers 2

    iget-object v0, p0, La/l;->k:La/o;

    return-object v0
.end method

.method static synthetic d(La/l;)Ld/J;
    .registers 2

    iget-object v0, p0, La/l;->l:Ld/J;

    return-object v0
.end method

.method private e()J
    .registers 8

    const/4 v6, 0x6

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iget-wide v0, p0, La/l;->g:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1a

    iget-wide v0, p0, La/l;->g:J

    iget-object v3, p0, La/l;->b:Li/E;

    invoke-interface {v3}, Li/E;->b()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-lez v0, :cond_68

    :cond_1a
    const-wide/16 v0, 0x0

    :goto_1c
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x7

    invoke-virtual {v2, v6, v0}, Ljava/util/Calendar;->add(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, La/l;->b:Li/E;

    invoke-interface {v1}, Li/E;->b()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_3d
    const/16 v1, 0xb

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v2, v1, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v2, v1, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v2, v1, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x1

    invoke-virtual {v2, v6, v0}, Ljava/util/Calendar;->add(II)V

    :cond_5c
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, La/l;->b:Li/E;

    invoke-interface {v2}, Li/E;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_68
    iget-wide v0, p0, La/l;->g:J

    goto :goto_1c
.end method

.method static synthetic e(La/l;)J
    .registers 3

    invoke-direct {p0}, La/l;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method private i(J)V
    .registers 5

    iget-wide v0, p0, La/l;->i:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_e

    iput-wide p1, p0, La/l;->i:J

    iget-object v0, p0, La/l;->b:Li/E;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1, p2}, Li/E;->a(IJ)V

    :cond_e
    return-void
.end method

.method private j(J)Z
    .registers 5

    iget-object v0, p0, La/l;->j:La/w;

    invoke-virtual {v0}, La/w;->c()Le/v;

    move-result-object v0

    iget-object v0, v0, Le/v;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, p2}, La/l;->k(J)Z

    move-result v1

    if-eqz v0, :cond_18

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private k(J)Z
    .registers 7

    iget-wide v0, p0, La/l;->h:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_13

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method a(I)V
    .registers 4

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/l;->i:J

    :cond_7
    return-void
.end method

.method a(IIZ)V
    .registers 4

    return-void
.end method

.method a(LW/a;)V
    .registers 2

    return-void
.end method

.method a(Le/L;)V
    .registers 2

    return-void
.end method

.method a(Le/b;)V
    .registers 2

    return-void
.end method

.method a(Li/B;)V
    .registers 2

    return-void
.end method

.method a(Li/C;)V
    .registers 2

    return-void
.end method

.method a(Z)V
    .registers 2

    return-void
.end method

.method protected a(J)Z
    .registers 4

    iget-object v0, p0, La/l;->j:La/w;

    invoke-virtual {v0}, La/w;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, La/e;->b:La/e;

    iput-object v0, p0, La/l;->f:La/e;

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method b(I)V
    .registers 2

    return-void
.end method

.method b(Z)V
    .registers 2

    return-void
.end method

.method protected b(J)Z
    .registers 9

    const-wide/32 v4, 0x36ee80

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, La/l;->j(J)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, La/e;->g:La/e;

    iput-object v0, p0, La/l;->f:La/e;

    iget-object v0, p0, La/l;->k:La/o;

    invoke-virtual {v0}, La/o;->i()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, La/l;->k:La/o;

    invoke-virtual {v0}, La/o;->g()I

    move-result v0

    :goto_1c
    iget-object v2, p0, La/l;->k:La/o;

    invoke-virtual {v2}, La/o;->j()Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v1, p0, La/l;->k:La/o;

    invoke-virtual {v1}, La/o;->h()I

    move-result v1

    :cond_2a
    invoke-direct {p0, v0, v1}, La/l;->a(II)V

    const/4 v1, 0x1

    :goto_2e
    return v1

    :cond_2f
    move v0, v1

    goto :goto_1c

    :cond_31
    iget-wide v2, p0, La/l;->h:J

    sub-long v2, p1, v2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_45

    invoke-direct {p0}, La/l;->e()J

    move-result-wide v2

    iput-wide v2, p0, La/l;->h:J

    iget-wide v2, p0, La/l;->h:J

    invoke-direct {p0, v2, v3}, La/l;->i(J)V

    goto :goto_2e

    :cond_45
    iget-wide v2, p0, La/l;->h:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_52

    iget-wide v2, p0, La/l;->h:J

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, La/l;->i(J)V

    goto :goto_2e

    :cond_52
    iget-wide v2, p0, La/l;->h:J

    invoke-direct {p0, v2, v3}, La/l;->i(J)V

    goto :goto_2e
.end method

.method public bridge synthetic c()V
    .registers 1

    invoke-super {p0}, La/a;->c()V

    return-void
.end method

.method c(Z)V
    .registers 2

    return-void
.end method

.method public d()LW/a;
    .registers 2

    iget-object v0, p0, La/l;->m:LW/a;

    return-object v0
.end method

.method protected g(J)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method
