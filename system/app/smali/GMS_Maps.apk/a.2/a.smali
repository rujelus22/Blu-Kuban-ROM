.class abstract La/a;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/lang/String;

.field final b:Li/E;

.field final c:Lc/m;

.field final d:La/G;

.field final e:La/d;

.field protected f:La/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Li/E;Lc/m;La/G;La/d;La/e;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, La/a;->b:Li/E;

    iput-object p3, p0, La/a;->c:Lc/m;

    iput-object p4, p0, La/a;->d:La/G;

    iput-object p5, p0, La/a;->e:La/d;

    iput-object p6, p0, La/a;->f:La/e;

    iput-object p1, p0, La/a;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Li/B;JZ)LW/a;
    .registers 12

    const/4 v6, 0x1

    const-wide v4, 0x416312d000000000L

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->w:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    invoke-interface {p1}, Li/B;->b()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {v0, v6, v1}, LW/a;->g(II)V

    const/4 v1, 0x2

    invoke-interface {p1}, Li/B;->c()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    new-instance v1, LW/a;

    sget-object v2, Lk/a;->K:LW/d;

    invoke-direct {v1, v2}, LW/a;-><init>(LW/d;)V

    invoke-virtual {v1, v6, v0}, LW/a;->b(ILW/a;)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LW/a;->g(II)V

    const/4 v0, 0x6

    invoke-interface {p1}, Li/B;->g()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, LW/a;->b(IJ)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0, p4}, LW/a;->a(IZ)V

    const/4 v0, 0x3

    invoke-interface {p1}, Li/B;->a()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, LW/a;->g(II)V

    invoke-interface {p1}, Li/B;->i()Z

    move-result v0

    if-eqz v0, :cond_55

    const/16 v0, 0x10

    invoke-interface {p1}, Li/B;->e()F

    move-result v2

    invoke-virtual {v1, v0, v2}, LW/a;->a(IF)V

    :cond_55
    invoke-interface {p1}, Li/B;->j()Z

    move-result v0

    if-eqz v0, :cond_65

    const/16 v0, 0xd

    invoke-interface {p1}, Li/B;->k()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v0, v2}, LW/a;->g(II)V

    :cond_65
    invoke-interface {p1}, Li/B;->l()Z

    move-result v0

    if-eqz v0, :cond_75

    const/16 v0, 0xa

    invoke-interface {p1}, Li/B;->m()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v0, v2}, LW/a;->g(II)V

    :cond_75
    return-object v1
.end method

.method protected static a(Li/B;Li/B;I)Z
    .registers 11

    invoke-interface {p0}, Li/B;->b()D

    move-result-wide v0

    invoke-interface {p0}, Li/B;->c()D

    move-result-wide v2

    invoke-interface {p1}, Li/B;->b()D

    move-result-wide v4

    invoke-interface {p1}, Li/B;->c()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/localizer/b;->c(DDDD)D

    move-result-wide v0

    int-to-double v2, p2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private final d()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fault from instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Li/B;Le/b;Le/L;ZI)LW/a;
    .registers 12

    const/4 v5, 0x1

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->c:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    iget-object v1, p0, La/a;->b:Li/E;

    invoke-interface {v1}, Li/E;->c()J

    move-result-wide v1

    if-eqz p1, :cond_18

    const/4 v3, 0x3

    invoke-direct {p0, p1, v1, v2, p4}, La/a;->a(Li/B;JZ)LW/a;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, LW/a;->b(ILW/a;)V

    :cond_18
    if-eqz p2, :cond_21

    invoke-static {p2, v1, v2}, Le/d;->a(Le/b;J)LW/a;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, LW/a;->b(ILW/a;)V

    :cond_21
    if-eqz p3, :cond_2b

    invoke-virtual {p3, v1, v2}, Le/L;->a(J)LW/a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, LW/a;->b(ILW/a;)V

    :cond_2b
    new-instance v1, LW/a;

    sget-object v2, Lk/a;->N:LW/d;

    invoke-direct {v1, v2}, LW/a;-><init>(LW/d;)V

    invoke-virtual {v1, v5, p5}, LW/a;->g(II)V

    const/16 v2, 0x63

    invoke-virtual {v0, v2, v1}, LW/a;->a(ILW/a;)V

    return-object v0
.end method

.method a()V
    .registers 7

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, La/a;->f:La/e;

    iget-object v2, p0, La/a;->b:Li/E;

    invoke-interface {v2}, Li/E;->a()J

    move-result-wide v2

    sget-object v4, La/b;->a:[I

    iget-object v5, p0, La/a;->f:La/e;

    invoke-virtual {v5}, La/e;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_46

    :goto_16
    iget-object v2, p0, La/a;->f:La/e;

    if-eq v1, v2, :cond_1a

    :cond_1a
    if-nez v0, :cond_1

    return-void

    :pswitch_1d
    invoke-virtual {p0, v2, v3}, La/a;->a(J)Z

    move-result v0

    goto :goto_16

    :pswitch_22
    invoke-virtual {p0, v2, v3}, La/a;->b(J)Z

    move-result v0

    goto :goto_16

    :pswitch_27
    invoke-virtual {p0, v2, v3}, La/a;->c(J)Z

    move-result v0

    goto :goto_16

    :pswitch_2c
    invoke-virtual {p0, v2, v3}, La/a;->d(J)Z

    move-result v0

    goto :goto_16

    :pswitch_31
    invoke-virtual {p0, v2, v3}, La/a;->e(J)Z

    move-result v0

    goto :goto_16

    :pswitch_36
    invoke-virtual {p0, v2, v3}, La/a;->f(J)Z

    move-result v0

    goto :goto_16

    :pswitch_3b
    invoke-virtual {p0, v2, v3}, La/a;->g(J)Z

    move-result v0

    goto :goto_16

    :pswitch_40
    invoke-virtual {p0, v2, v3}, La/a;->h(J)Z

    move-result v0

    goto :goto_16

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_22
        :pswitch_27
        :pswitch_2c
        :pswitch_31
        :pswitch_36
        :pswitch_3b
        :pswitch_40
    .end packed-switch
.end method

.method a(I)V
    .registers 2

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
    .registers 5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, La/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(LW/a;Le/b;)Z
    .registers 4

    if-eqz p2, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p2, p1}, Le/b;->a(LW/a;)Z

    move-result v0

    goto :goto_5
.end method

.method protected a(Le/L;Li/B;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-wide v1, p1, Le/L;->a:J

    invoke-interface {p2}, Li/B;->f()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0xafc80

    cmp-long v1, v1, v3

    if-gtz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method b(I)V
    .registers 2

    return-void
.end method

.method b(Z)V
    .registers 2

    return-void
.end method

.method b()Z
    .registers 3

    iget-object v0, p0, La/a;->f:La/e;

    sget-object v1, La/e;->a:La/e;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, La/a;->f:La/e;

    sget-object v1, La/e;->b:La/e;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected b(J)Z
    .registers 5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, La/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method c(Z)V
    .registers 2

    return-void
.end method

.method protected c(J)Z
    .registers 5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, La/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected d(J)Z
    .registers 5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, La/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected e(J)Z
    .registers 5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, La/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected f(J)Z
    .registers 5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, La/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected g(J)Z
    .registers 5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, La/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected h(J)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method
