.class public Lcom/google/googlenav/ab;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Lcom/google/googlenav/ui/bg;

.field protected static final b:Lcom/google/googlenav/ui/bg;


# instance fields
.field private c:Z

.field private d:Lcom/google/googlenav/bF;

.field private e:Lcom/google/googlenav/bH;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    sput-object v0, Lcom/google/googlenav/ab;->a:Lcom/google/googlenav/ui/bg;

    sget-object v0, Lcom/google/googlenav/ui/bg;->bj:Lcom/google/googlenav/ui/bg;

    sput-object v0, Lcom/google/googlenav/ab;->b:Lcom/google/googlenav/ui/bg;

    return-void
.end method

.method public constructor <init>(Lam/b;J)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/googlenav/ab;->c:Z

    invoke-static {p1, v0}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/bF;

    invoke-direct {v1, v0}, Lcom/google/googlenav/bF;-><init>(Lam/b;)V

    iput-object v1, p0, Lcom/google/googlenav/ab;->d:Lcom/google/googlenav/bF;

    iget-object v0, p0, Lcom/google/googlenav/ab;->d:Lcom/google/googlenav/bF;

    invoke-virtual {v0, p2, p3}, Lcom/google/googlenav/bF;->a(J)Lcom/google/googlenav/bH;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ab;->e:Lcom/google/googlenav/bH;

    iget-object v0, p0, Lcom/google/googlenav/ab;->e:Lcom/google/googlenav/bH;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/ab;->e:Lcom/google/googlenav/bH;

    invoke-virtual {v0}, Lcom/google/googlenav/bH;->c()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, p2

    :goto_27
    iput-wide v0, p0, Lcom/google/googlenav/ab;->f:J

    return-void

    :cond_2a
    const-wide/16 v0, -0x1

    goto :goto_27
.end method

.method private a(JLjava/lang/String;ZI)Ljava/util/Vector;
    .registers 15

    const/16 v8, 0x2c3

    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ab;->c(J)Z

    move-result v0

    if-nez v0, :cond_a4

    invoke-virtual {p0}, Lcom/google/googlenav/ab;->a()Z

    move-result v0

    if-eqz v0, :cond_a4

    int-to-long v0, p5

    mul-long/2addr v0, v6

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_33

    if-eqz p4, :cond_28

    const/16 v0, 0x2bf

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ab;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    :goto_27
    return-object v0

    :cond_28
    const/16 v0, 0x2be

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ab;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_27

    :cond_33
    int-to-long v0, p5

    mul-long/2addr v0, v6

    add-long/2addr v0, p1

    invoke-static {p1, p2, v0, v1}, Lcom/google/googlenav/ab;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_7e

    if-eqz p4, :cond_6b

    int-to-long v0, p5

    mul-long/2addr v0, v6

    const-wide/32 v2, 0x3dcc500

    cmp-long v0, v0, v2

    if-lez v0, :cond_5a

    const/16 v0, 0x2c2

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ab;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_27

    :cond_5a
    invoke-static {v8}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ab;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_27

    :cond_6b
    const/16 v0, 0x2c1

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ab;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_27

    :cond_7e
    if-eqz p4, :cond_91

    invoke-static {v8}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ab;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_27

    :cond_91
    const/16 v0, 0x2c0

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ab;->a(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    goto :goto_27

    :cond_a4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    goto/16 :goto_27
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Vector;
    .registers 4

    sget-object v0, Lcom/google/googlenav/ab;->a:Lcom/google/googlenav/ui/bg;

    sget-object v1, Lcom/google/googlenav/ab;->b:Lcom/google/googlenav/ui/bg;

    invoke-static {p0, v0, v1}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_f
    return-object v0

    :cond_10
    const-string v1, ""

    sget-object v2, Lcom/google/googlenav/ab;->a:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method protected static a(JJ)Z
    .registers 8

    const/4 v3, 0x5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_25

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method


# virtual methods
.method public a(J)Ljava/util/Vector;
    .registers 9

    iget-object v0, p0, Lcom/google/googlenav/ab;->e:Lcom/google/googlenav/bH;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ab;->e:Lcom/google/googlenav/bH;

    invoke-virtual {v0}, Lcom/google/googlenav/bH;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/googlenav/ab;->e:Lcom/google/googlenav/bH;

    invoke-virtual {v0}, Lcom/google/googlenav/bH;->b()Z

    move-result v4

    iget-object v0, p0, Lcom/google/googlenav/ab;->e:Lcom/google/googlenav/bH;

    invoke-virtual {v0}, Lcom/google/googlenav/bH;->c()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ab;->a(JLjava/lang/String;ZI)Ljava/util/Vector;

    move-result-object v0

    goto :goto_9
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ab;->c:Z

    return v0
.end method

.method public b(J)Lcom/google/googlenav/ac;
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ab;->e:Lcom/google/googlenav/bH;

    if-eqz v1, :cond_11

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ab;->c(J)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/google/googlenav/ab;->a()Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    iget-object v1, p0, Lcom/google/googlenav/ab;->e:Lcom/google/googlenav/bH;

    invoke-virtual {v1}, Lcom/google/googlenav/bH;->b()Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v0, Lcom/google/googlenav/ac;

    const/16 v1, 0x2b9

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->bk:Lcom/google/googlenav/ui/bg;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ac;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)V

    goto :goto_11

    :cond_28
    iget-object v1, p0, Lcom/google/googlenav/ab;->e:Lcom/google/googlenav/bH;

    invoke-virtual {v1}, Lcom/google/googlenav/bH;->c()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v3, v1, v3

    if-gtz v3, :cond_40

    add-long/2addr v1, p1

    invoke-static {p1, p2, v1, v2}, Lcom/google/googlenav/ab;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_40
    new-instance v0, Lcom/google/googlenav/ac;

    const/16 v1, 0xc7

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->bl:Lcom/google/googlenav/ui/bg;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ac;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)V

    goto :goto_11
.end method

.method public c(J)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ab;->e:Lcom/google/googlenav/bH;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-wide v1, p0, Lcom/google/googlenav/ab;->f:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method
