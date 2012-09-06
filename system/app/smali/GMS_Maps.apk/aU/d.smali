.class public LaU/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:LaU/b;

.field private c:J

.field private d:LaU/f;

.field private e:LaU/c;

.field private final f:LaV/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/google/googlenav/wallpaper/i;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, LaU/d;->a:Landroid/content/Context;

    .line 47
    new-instance v0, LaU/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LaU/f;-><init>(LaU/d;LaU/e;)V

    iput-object v0, p0, LaU/d;->d:LaU/f;

    .line 48
    new-instance v0, LaV/a;

    invoke-direct {v0, p1, p2, p3, p4}, LaV/a;-><init>(Landroid/content/Context;IILcom/google/googlenav/wallpaper/i;)V

    iput-object v0, p0, LaU/d;->f:LaV/a;

    .line 49
    return-void
.end method

.method static synthetic a(LaU/d;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    iput-wide p1, p0, LaU/d;->c:J

    return-wide p1
.end method

.method static synthetic a(LaU/d;LaU/b;)LaU/b;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, LaU/d;->b:LaU/b;

    return-object p1
.end method

.method static synthetic a(LaU/d;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, LaU/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->d()J

    move-result-wide v3

    iget-wide v5, p0, LaU/d;->c:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x927c0

    cmp-long v0, v3, v5

    if-lez v0, :cond_3b

    move v0, v1

    .line 119
    :goto_19
    iget-object v3, p0, LaU/d;->d:LaU/f;

    invoke-virtual {v3}, LaU/f;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_3d

    move v3, v1

    .line 122
    :goto_24
    iget-object v4, p0, LaU/d;->d:LaU/f;

    invoke-virtual {v4}, LaU/f;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v4, v5, :cond_36

    .line 123
    new-instance v4, LaU/f;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, LaU/f;-><init>(LaU/d;LaU/e;)V

    iput-object v4, p0, LaU/d;->d:LaU/f;

    .line 126
    :cond_36
    if-eqz v0, :cond_3f

    if-eqz v3, :cond_3f

    :goto_3a
    return v1

    :cond_3b
    move v0, v2

    .line 114
    goto :goto_19

    :cond_3d
    move v3, v2

    .line 119
    goto :goto_24

    :cond_3f
    move v1, v2

    .line 126
    goto :goto_3a
.end method

.method static synthetic a(LaU/d;LaU/c;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, LaU/d;->b(LaU/c;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(LaU/d;)LaU/c;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, LaU/d;->e:LaU/c;

    return-object v0
.end method

.method private b(LaU/c;)Z
    .registers 3
    .parameter

    .prologue
    .line 101
    if-eqz p1, :cond_8

    sget-object v0, LaU/c;->a:LaU/c;

    if-eq p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic c(LaU/d;)LaV/a;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, LaU/d;->f:LaV/a;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .registers 3
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, LaU/d;->f:LaV/a;

    invoke-virtual {v0, p1}, LaV/a;->a(F)V

    .line 53
    return-void
.end method

.method public a(LaU/c;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 84
    iput-object p1, p0, LaU/d;->e:LaU/c;

    .line 85
    invoke-direct {p0, p1}, LaU/d;->b(LaU/c;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 86
    iget-object v0, p0, LaU/d;->f:LaV/a;

    new-instance v1, LaU/b;

    invoke-direct {v1, p1, v2, v2}, LaU/b;-><init>(LaU/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LaV/a;->a(LaU/b;)V

    .line 94
    :goto_13
    return-void

    .line 88
    :cond_14
    iget-object v0, p0, LaU/d;->b:LaU/b;

    if-nez v0, :cond_1e

    .line 89
    iget-object v0, p0, LaU/d;->f:LaV/a;

    invoke-virtual {v0, v2}, LaV/a;->a(LaU/b;)V

    goto :goto_13

    .line 91
    :cond_1e
    iget-object v0, p0, LaU/d;->f:LaV/a;

    iget-object v1, p0, LaU/d;->b:LaU/b;

    invoke-virtual {v0, v1}, LaV/a;->a(LaU/b;)V

    goto :goto_13
.end method

.method public a(Landroid/graphics/Canvas;IIZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, LaU/d;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 64
    iget-object v1, p0, LaU/d;->d:LaU/f;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, LaU/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    :cond_e
    iget-object v0, p0, LaU/d;->b:LaU/b;

    if-eqz v0, :cond_20

    iget-object v0, p0, LaU/d;->b:LaU/b;

    iget-object v0, v0, LaU/b;->a:LaU/c;

    if-eqz v0, :cond_20

    sget-object v0, LaU/c;->a:LaU/c;

    iget-object v1, p0, LaU/d;->b:LaU/b;

    iget-object v1, v1, LaU/b;->a:LaU/c;

    if-ne v0, v1, :cond_2b

    :cond_20
    iget-object v0, p0, LaU/d;->e:LaU/c;

    if-eqz v0, :cond_2a

    sget-object v0, LaU/c;->a:LaU/c;

    iget-object v1, p0, LaU/d;->e:LaU/c;

    if-ne v0, v1, :cond_2b

    .line 77
    :cond_2a
    :goto_2a
    return-void

    .line 76
    :cond_2b
    iget-object v0, p0, LaU/d;->f:LaV/a;

    invoke-virtual {v0, p1, p2, p3, p4}, LaV/a;->a(Landroid/graphics/Canvas;IIZ)V

    goto :goto_2a
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, LaU/d;->f:LaV/a;

    invoke-virtual {v0, p1}, LaV/a;->a(Z)V

    .line 57
    return-void
.end method
