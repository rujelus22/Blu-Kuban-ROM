.class public LG/h;
.super LF/b;


# instance fields
.field private final a:LI/a;

.field private final b:Landroid/content/Context;

.field private final c:LI/b;

.field private final d:LK/ch;

.field private final e:LF/T;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(LF/T;Landroid/content/Context;LK/ch;LI/a;)V
    .registers 7

    const-string v0, "playback_signal_provider"

    invoke-direct {p0, v0, p1}, LF/b;-><init>(Ljava/lang/String;LF/T;)V

    new-instance v0, LG/i;

    invoke-direct {v0, p0}, LG/i;-><init>(LG/h;)V

    iput-object v0, p0, LG/h;->f:Ljava/lang/Runnable;

    iput-object p2, p0, LG/h;->b:Landroid/content/Context;

    iput-object p1, p0, LG/h;->e:LF/T;

    iput-object p3, p0, LG/h;->d:LK/ch;

    iput-object p4, p0, LG/h;->a:LI/a;

    new-instance v0, LI/b;

    invoke-direct {v0, p4}, LI/b;-><init>(LI/a;)V

    iput-object v0, p0, LG/h;->c:LI/b;

    invoke-virtual {p4}, LI/a;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, LG/h;->a(J)V

    return-void
.end method

.method static synthetic a(LG/h;)LK/ch;
    .registers 2

    iget-object v0, p0, LG/h;->d:LK/ch;

    return-object v0
.end method

.method private a(J)V
    .registers 5

    :cond_0
    iget-object v0, p0, LG/h;->d:LK/ch;

    invoke-interface {v0}, LK/ch;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, LG/h;->d:LK/ch;

    invoke-interface {v0}, LK/ch;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/g;

    iget-wide v0, v0, LG/g;->c:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    :cond_16
    return-void
.end method

.method static synthetic b(LG/h;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, LG/h;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(LG/h;)LI/a;
    .registers 2

    iget-object v0, p0, LG/h;->a:LI/a;

    return-object v0
.end method

.method static synthetic d(LG/h;)LF/T;
    .registers 2

    iget-object v0, p0, LG/h;->e:LF/T;

    return-object v0
.end method

.method static synthetic e(LG/h;)LI/b;
    .registers 2

    iget-object v0, p0, LG/h;->c:LI/b;

    return-object v0
.end method

.method static synthetic f(LG/h;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, LG/h;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public b()V
    .registers 3

    invoke-virtual {p0}, LG/h;->e()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-super {p0}, LF/b;->b()V

    iget-object v0, p0, LG/h;->c:LI/b;

    iget-object v1, p0, LG/h;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, LI/b;->b(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method

.method public d()V
    .registers 4

    iget-object v1, p0, LG/h;->f:Ljava/lang/Runnable;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, LG/h;->c:LI/b;

    iget-object v2, p0, LG/h;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, LI/b;->a(Ljava/lang/Runnable;)V

    invoke-super {p0}, LF/b;->d()V

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method
