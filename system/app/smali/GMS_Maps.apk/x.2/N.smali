.class public Lx/N;
.super Ljava/lang/Object;

# interfaces
.implements Lx/av;


# static fields
.field protected static final b:Lt/ae;


# instance fields
.field protected final a:Lz/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lt/G;

    invoke-direct {v0}, Lt/G;-><init>()V

    sput-object v0, Lx/N;->b:Lt/ae;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz/g;

    invoke-direct {v0, p1}, Lz/g;-><init>(I)V

    iput-object v0, p0, Lx/N;->a:Lz/g;

    return-void
.end method


# virtual methods
.method public a(Lt/af;Lt/ae;)V
    .registers 5

    iget-object v1, p0, Lx/N;->a:Lz/g;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lx/N;->a:Lz/g;

    invoke-virtual {v0, p1, p2}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public a()Z
    .registers 3

    iget-object v1, p0, Lx/N;->a:Lz/g;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lx/N;->a:Lz/g;

    invoke-virtual {v0}, Lz/g;->f()V

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public a(Lt/ae;)Z
    .registers 3

    sget-object v0, Lx/N;->b:Lt/ae;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a_(Lt/af;)V
    .registers 3

    sget-object v0, Lx/N;->b:Lt/ae;

    invoke-virtual {p0, p1, v0}, Lx/N;->a(Lt/af;Lt/ae;)V

    return-void
.end method

.method public b(Lt/af;)Z
    .registers 4

    iget-object v1, p0, Lx/N;->a:Lz/g;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lx/N;->a:Lz/g;

    invoke-virtual {v0, p1}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public c(Lt/af;)Lt/ae;
    .registers 4

    iget-object v1, p0, Lx/N;->a:Lz/g;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lx/N;->a:Lz/g;

    invoke-virtual {v0, p1}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/ae;

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method
