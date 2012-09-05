.class public abstract LU/a;
.super Ljava/lang/Object;

# interfaces
.implements LU/d;


# instance fields
.field protected final a:LU/m;

.field private b:Z

.field private c:Z

.field private d:Z

.field private final e:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, LU/a;->b:Z

    iput-boolean v0, p0, LU/a;->c:Z

    iput-boolean v0, p0, LU/a;->d:Z

    iput-object p1, p0, LU/a;->e:Ljava/lang/String;

    invoke-static {}, LP/b;->a()LP/b;

    move-result-object v0

    invoke-virtual {v0}, LP/b;->h()LU/m;

    move-result-object v0

    iput-object v0, p0, LU/a;->a:LU/m;

    return-void
.end method

.method private b(Z)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, LU/a;->d:Z

    iput-boolean p1, p0, LU/a;->c:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    iget-object v0, p0, LU/a;->a:LU/m;

    iget-object v1, p0, LU/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, LU/m;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-direct {p0, v0}, LU/a;->b(Z)V

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public declared-synchronized a(Z)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    const/4 v2, 0x1

    :try_start_4
    iput-boolean v2, p0, LU/a;->b:Z

    invoke-virtual {p0}, LU/a;->d()Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz p1, :cond_23

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, LU/a;->c:Z

    iget-object v0, p0, LU/a;->a:LU/m;

    iget-object v2, p0, LU/a;->e:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-virtual {p0}, LU/a;->b()B

    move-result v5

    aput-byte v5, v3, v4

    invoke-interface {v0, v2, v3}, LU/m;->a(Ljava/lang/String;[B)Z
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_25

    move v0, v1

    :cond_23
    monitor-exit p0

    return v0

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b()B
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, LU/a;->d:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, LU/a;->a()V

    :cond_7
    iget-boolean v0, p0, LU/a;->c:Z

    return v0
.end method
