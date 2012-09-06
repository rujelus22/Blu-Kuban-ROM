.class public Lcom/a/a/a/u;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g;


# instance fields
.field private a:La/a/a/f;

.field private b:Lcom/a/a/a/i;


# direct methods
.method public constructor <init>(La/a/a/f;Lcom/a/a/a/i;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/u;->a:La/a/a/f;

    iput-object p2, p0, Lcom/a/a/a/u;->b:Lcom/a/a/a/i;

    return-void
.end method


# virtual methods
.method public a(La/b/f;)La/a/a/a;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/a/u;->a(La/b/f;La/b/a;)La/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(La/b/f;La/b/a;)La/a/a/a;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/a/a/a/u;->a:La/a/a/f;

    if-nez v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Session closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    if-nez p1, :cond_1a

    :try_start_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Lcom/a/a/a/s;

    iget-object v1, p0, Lcom/a/a/a/u;->a:La/a/a/f;

    invoke-interface {v1}, La/a/a/f;->a()La/a/a/e;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/u;->b:Lcom/a/a/a/i;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/a/a/a/s;-><init>(La/a/a/e;La/b/f;La/b/a;Lcom/a/a/a/i;)V

    invoke-virtual {v0}, Lcom/a/a/a/s;->a()V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_d

    monitor-exit p0

    return-object v0
.end method

.method public e()V
    .registers 3

    iget-object v0, p0, Lcom/a/a/a/u;->a:La/a/a/f;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/a/a/a/u;->a:La/a/a/f;

    if-eqz v0, :cond_a

    invoke-interface {v0}, La/a/a/f;->e()V

    :cond_a
    return-void
.end method
