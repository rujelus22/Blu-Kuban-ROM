.class public Lx/au;
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

    sput-object v0, Lx/au;->b:Lt/ae;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz/g;

    invoke-direct {v0, p1}, Lz/g;-><init>(I)V

    iput-object v0, p0, Lx/au;->a:Lz/g;

    return-void
.end method


# virtual methods
.method public a(Lt/af;Lt/ae;)V
    .registers 6

    iget-object v1, p0, Lx/au;->a:Lz/g;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lx/au;->a:Lz/g;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public a()Z
    .registers 3

    iget-object v1, p0, Lx/au;->a:Lz/g;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lx/au;->a:Lz/g;

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

    sget-object v0, Lx/au;->b:Lt/ae;

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

    sget-object v0, Lx/au;->b:Lt/ae;

    invoke-virtual {p0, p1, v0}, Lx/au;->a(Lt/af;Lt/ae;)V

    return-void
.end method

.method public b(Lt/af;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lx/au;->c(Lt/af;)Lt/ae;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c(Lt/af;)Lt/ae;
    .registers 5

    iget-object v1, p0, Lx/au;->a:Lz/g;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lx/au;->a:Lz/g;

    invoke-virtual {v0, p1}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/ae;

    if-nez v0, :cond_1a

    iget-object v2, p0, Lx/au;->a:Lz/g;

    invoke-virtual {v2, p1}, Lz/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    monitor-exit v1

    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_1b

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method
