.class Ld/X;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Ld/D;

.field private c:Ld/F;

.field private d:Ld/y;

.field private e:Lm/c;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lm/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/X;->a:Landroid/os/Handler;

    invoke-static {p2}, Ld/ax;->a(Lm/c;)Lm/c;

    move-result-object v0

    iput-object v0, p0, Ld/X;->e:Lm/c;

    return-void
.end method

.method private a(Landroid/content/Context;Ld/w;Ld/C;)Ld/aj;
    .registers 12

    sget-object v0, Ld/Y;->a:[I

    invoke-interface {p2}, Ld/w;->c()Ld/x;

    move-result-object v1

    invoke-virtual {v1}, Ld/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4a

    new-instance v0, Ld/Q;

    iget-object v1, p0, Ld/X;->e:Lm/c;

    invoke-direct {v0, p3, v1}, Ld/Q;-><init>(Ld/C;Lm/c;)V

    :goto_16
    return-object v0

    :pswitch_17
    new-instance v0, Ld/L;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-interface {p2}, Ld/w;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Ld/w;->f()[B

    move-result-object v3

    iget-object v5, p0, Ld/X;->e:Lm/c;

    new-instance v6, Ld/aq;

    invoke-direct {v6}, Ld/aq;-><init>()V

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Ld/L;-><init>(Landroid/os/PowerManager;Ljava/lang/String;[BLd/C;Lm/c;Ld/aq;)V

    goto :goto_16

    :pswitch_35
    new-instance v0, Ld/ad;

    sget-object v2, Ld/ag;->a:Ld/ag;

    const/4 v3, 0x0

    invoke-interface {p2}, Ld/w;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Ld/w;->f()[B

    move-result-object v5

    iget-object v7, p0, Ld/X;->e:Lm/c;

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Ld/ad;-><init>(Landroid/content/Context;Ld/ag;Ljava/lang/String;Ljava/lang/String;[BLd/C;Lm/c;)V

    goto :goto_16

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_35
    .end packed-switch
.end method


# virtual methods
.method a()V
    .registers 3

    iget-object v0, p0, Ld/X;->b:Ld/D;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ld/X;->d:Ld/y;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ld/X;->d:Ld/y;

    iget-object v1, p0, Ld/X;->b:Ld/D;

    invoke-virtual {v0, v1}, Ld/y;->a(Ld/al;)V

    :cond_f
    return-void
.end method

.method a(Landroid/content/Context;Ld/w;Ljava/lang/Integer;LW/a;Ld/C;)Z
    .registers 15

    invoke-direct {p0, p1, p2, p5}, Ld/X;->a(Landroid/content/Context;Ld/w;Ld/C;)Ld/aj;

    move-result-object v1

    const/4 v8, 0x0

    new-instance v0, Ld/F;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Ld/w;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Ld/X;->e:Lm/c;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Ld/F;-><init>(Ld/aj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;LW/a;Lm/c;)V

    iput-object v0, p0, Ld/X;->c:Ld/F;

    new-instance v0, Ld/y;

    iget-object v1, p0, Ld/X;->c:Ld/F;

    iget-object v2, p0, Ld/X;->a:Landroid/os/Handler;

    const/4 v3, 0x2

    iget-object v4, p0, Ld/X;->e:Lm/c;

    invoke-direct {v0, v1, v2, v3, v4}, Ld/y;-><init>(Ld/F;Landroid/os/Handler;ILm/c;)V

    iput-object v0, p0, Ld/X;->d:Ld/y;

    new-instance v0, Ld/D;

    invoke-interface {p2}, Ld/w;->b()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p2}, Ld/w;->i()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p2}, Ld/w;->g()Z

    move-result v4

    iget-object v5, p0, Ld/X;->d:Ld/y;

    iget-object v7, p0, Ld/X;->e:Lm/c;

    move-object v1, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Ld/D;-><init>(Landroid/content/Context;Ljava/util/Set;Ljava/util/Map;ZLd/y;Ld/C;Lm/c;)V

    iput-object v0, p0, Ld/X;->b:Ld/D;

    iget-object v0, p0, Ld/X;->b:Ld/D;

    invoke-virtual {v0}, Ld/D;->c()I

    move-result v0

    if-lez v0, :cond_62

    invoke-interface {p2}, Ld/w;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_58

    iget-object v0, p0, Ld/X;->b:Ld/D;

    invoke-virtual {v0}, Ld/D;->d()V

    :goto_56
    const/4 v0, 0x1

    :goto_57
    return v0

    :cond_58
    iget-object v0, p0, Ld/X;->b:Ld/D;

    invoke-interface {p2}, Ld/w;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ld/D;->a(J)V

    goto :goto_56

    :cond_62
    move v0, v8

    goto :goto_57
.end method
