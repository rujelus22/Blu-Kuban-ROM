.class abstract Ld/aj;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ld/C;

.field protected final b:Lm/c;

.field protected volatile c:Z

.field protected final d:Ld/aq;


# direct methods
.method constructor <init>(Ld/C;Lm/c;Ld/aq;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/aj;->c:Z

    iput-object p1, p0, Ld/aj;->a:Ld/C;

    invoke-static {p2}, Ld/ax;->a(Lm/c;)Lm/c;

    move-result-object v0

    iput-object v0, p0, Ld/aj;->b:Lm/c;

    iput-object p3, p0, Ld/aj;->d:Ld/aq;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(LW/a;LW/a;)Z
.end method

.method public declared-synchronized b(LW/a;LW/a;)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ld/aj;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Ld/aj;->d:Ld/aq;

    if-eqz v0, :cond_11

    iget-object v0, p0, Ld/aj;->d:Ld/aq;

    invoke-virtual {v0, p1}, Ld/aq;->a(LW/a;)V

    :cond_11
    invoke-virtual {p0, p1, p2}, Ld/aj;->a(LW/a;LW/a;)Z
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_16

    move-result v0

    goto :goto_6

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ld/aj;->c:Z

    invoke-virtual {p0}, Ld/aj;->a()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
