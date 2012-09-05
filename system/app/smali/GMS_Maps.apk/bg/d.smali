.class public Lbg/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lbg/b;

.field private c:J

.field private d:Lbg/f;

.field private e:Lbg/c;

.field private final f:Lbh/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/google/googlenav/wallpaper/f;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbg/d;->a:Landroid/content/Context;

    new-instance v0, Lbg/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbg/f;-><init>(Lbg/d;Lbg/e;)V

    iput-object v0, p0, Lbg/d;->d:Lbg/f;

    new-instance v0, Lbh/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lbh/a;-><init>(Landroid/content/Context;IILcom/google/googlenav/wallpaper/f;)V

    iput-object v0, p0, Lbg/d;->f:Lbh/a;

    return-void
.end method

.method static synthetic a(Lbg/d;J)J
    .registers 3

    iput-wide p1, p0, Lbg/d;->c:J

    return-wide p1
.end method

.method static synthetic a(Lbg/d;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lbg/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lbg/d;Lbg/b;)Lbg/b;
    .registers 2

    iput-object p1, p0, Lbg/d;->b:Lbg/b;

    return-object p1
.end method

.method private a()Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->d()J

    move-result-wide v3

    iget-wide v5, p0, Lbg/d;->c:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x927c0

    cmp-long v0, v3, v5

    if-lez v0, :cond_3b

    move v0, v1

    :goto_19
    iget-object v3, p0, Lbg/d;->d:Lbg/f;

    invoke-virtual {v3}, Lbg/f;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_3d

    move v3, v1

    :goto_24
    iget-object v4, p0, Lbg/d;->d:Lbg/f;

    invoke-virtual {v4}, Lbg/f;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v4, v5, :cond_36

    new-instance v4, Lbg/f;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lbg/f;-><init>(Lbg/d;Lbg/e;)V

    iput-object v4, p0, Lbg/d;->d:Lbg/f;

    :cond_36
    if-eqz v0, :cond_3f

    if-eqz v3, :cond_3f

    :goto_3a
    return v1

    :cond_3b
    move v0, v2

    goto :goto_19

    :cond_3d
    move v3, v2

    goto :goto_24

    :cond_3f
    move v1, v2

    goto :goto_3a
.end method

.method static synthetic a(Lbg/d;Lbg/c;)Z
    .registers 3

    invoke-direct {p0, p1}, Lbg/d;->b(Lbg/c;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lbg/d;)Lbg/c;
    .registers 2

    iget-object v0, p0, Lbg/d;->e:Lbg/c;

    return-object v0
.end method

.method private b(Lbg/c;)Z
    .registers 3

    if-eqz p1, :cond_8

    sget-object v0, Lbg/c;->a:Lbg/c;

    if-eq p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic c(Lbg/d;)Lbh/a;
    .registers 2

    iget-object v0, p0, Lbg/d;->f:Lbh/a;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .registers 3

    iget-object v0, p0, Lbg/d;->f:Lbh/a;

    invoke-virtual {v0, p1}, Lbh/a;->a(F)V

    return-void
.end method

.method public a(II)V
    .registers 4

    iget-object v0, p0, Lbg/d;->f:Lbh/a;

    invoke-virtual {v0, p1, p2}, Lbh/a;->a(II)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;IIZ)V
    .registers 7

    invoke-direct {p0}, Lbg/d;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lbg/d;->d:Lbg/f;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lbg/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_e
    iget-object v0, p0, Lbg/d;->b:Lbg/b;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lbg/d;->b:Lbg/b;

    iget-object v0, v0, Lbg/b;->a:Lbg/c;

    if-eqz v0, :cond_20

    sget-object v0, Lbg/c;->a:Lbg/c;

    iget-object v1, p0, Lbg/d;->b:Lbg/b;

    iget-object v1, v1, Lbg/b;->a:Lbg/c;

    if-ne v0, v1, :cond_2b

    :cond_20
    iget-object v0, p0, Lbg/d;->e:Lbg/c;

    if-eqz v0, :cond_2a

    sget-object v0, Lbg/c;->a:Lbg/c;

    iget-object v1, p0, Lbg/d;->e:Lbg/c;

    if-ne v0, v1, :cond_2b

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lbg/d;->f:Lbh/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lbh/a;->a(Landroid/graphics/Canvas;IIZ)V

    goto :goto_2a
.end method

.method public a(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lbg/d;->f:Lbh/a;

    invoke-virtual {v0, p1}, Lbh/a;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public a(Lbg/c;)V
    .registers 5

    const/4 v2, 0x0

    iput-object p1, p0, Lbg/d;->e:Lbg/c;

    invoke-direct {p0, p1}, Lbg/d;->b(Lbg/c;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lbg/d;->f:Lbh/a;

    new-instance v1, Lbg/b;

    invoke-direct {v1, p1, v2, v2}, Lbg/b;-><init>(Lbg/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbh/a;->a(Lbg/b;)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lbg/d;->b:Lbg/b;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lbg/d;->f:Lbh/a;

    invoke-virtual {v0, v2}, Lbh/a;->a(Lbg/b;)V

    goto :goto_13

    :cond_1e
    iget-object v0, p0, Lbg/d;->f:Lbh/a;

    iget-object v1, p0, Lbg/d;->b:Lbg/b;

    invoke-virtual {v0, v1}, Lbh/a;->a(Lbg/b;)V

    goto :goto_13
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lbg/d;->f:Lbh/a;

    invoke-virtual {v0, p1}, Lbh/a;->a(Z)V

    return-void
.end method
