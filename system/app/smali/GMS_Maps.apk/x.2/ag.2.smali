.class public Lx/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lat/p;


# static fields
.field private static a:Lx/ag;


# instance fields
.field private final b:Lat/h;

.field private final c:Laf/a;

.field private final d:Lz/g;

.field private final e:Lz/g;

.field private final f:Lx/w;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lx/ag;->b:Lat/h;

    iput-object v0, p0, Lx/ag;->c:Laf/a;

    iput-object v0, p0, Lx/ag;->d:Lz/g;

    iput-object v0, p0, Lx/ag;->e:Lz/g;

    iput-object v0, p0, Lx/ag;->f:Lx/w;

    return-void
.end method

.method private constructor <init>(Lat/h;Ljava/io/File;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/ag;->b:Lat/h;

    iget-object v0, p0, Lx/ag;->b:Lat/h;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lx/ag;->b:Lat/h;

    invoke-virtual {v0, p0}, Lat/h;->a(Lat/p;)V

    :cond_e
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    iput-object v0, p0, Lx/ag;->c:Laf/a;

    new-instance v0, Lz/g;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lz/g;-><init>(I)V

    iput-object v0, p0, Lx/ag;->d:Lz/g;

    new-instance v0, Lz/g;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lz/g;-><init>(I)V

    iput-object v0, p0, Lx/ag;->e:Lz/g;

    invoke-static {p2}, Lx/w;->a(Ljava/io/File;)Lx/w;

    move-result-object v0

    iput-object v0, p0, Lx/ag;->f:Lx/w;

    return-void
.end method

.method public static a(Lat/h;Ljava/io/File;)Lx/ag;
    .registers 3

    sget-object v0, Lx/ag;->a:Lx/ag;

    if-nez v0, :cond_b

    new-instance v0, Lx/ag;

    invoke-direct {v0, p0, p1}, Lx/ag;-><init>(Lat/h;Ljava/io/File;)V

    sput-object v0, Lx/ag;->a:Lx/ag;

    :cond_b
    sget-object v0, Lx/ag;->a:Lx/ag;

    return-object v0
.end method

.method static synthetic a(Lx/ag;)Lx/w;
    .registers 2

    iget-object v0, p0, Lx/ag;->f:Lx/w;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lx/ad;)V
    .registers 7

    new-instance v0, Lam/b;

    sget-object v1, LbD/es;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {p2}, Lx/ad;->b()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x2

    invoke-virtual {p2}, Lx/ad;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->b(IJ)V

    :cond_19
    new-instance v1, Lx/ai;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p2, v2}, Lx/ai;-><init>(Lx/ag;Lam/b;Lx/ad;Lx/ah;)V

    new-instance v0, LC/g;

    const-string v2, "addRequest"

    invoke-direct {v0, v2, v1}, LC/g;-><init>(Ljava/lang/String;Lat/g;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    iget-object v0, p0, Lx/ag;->b:Lat/h;

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method public static c()Lx/ag;
    .registers 1

    sget-object v0, Lx/ag;->a:Lx/ag;

    return-object v0
.end method

.method public static d()V
    .registers 1

    sget-object v0, Lx/ag;->a:Lx/ag;

    if-eqz v0, :cond_c

    sget-object v0, Lx/ag;->a:Lx/ag;

    invoke-virtual {v0}, Lx/ag;->a()V

    const/4 v0, 0x0

    sput-object v0, Lx/ag;->a:Lx/ag;

    :cond_c
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lx/af;)Lx/ad;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lx/ag;->a(Ljava/lang/String;Lx/af;Z)Lx/ad;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lx/af;Z)Lx/ad;
    .registers 11

    const/4 v1, 0x0

    if-eqz p3, :cond_55

    iget-object v2, p0, Lx/ag;->e:Lz/g;

    monitor-enter v2

    :try_start_6
    iget-object v0, p0, Lx/ag;->e:Lz/g;

    invoke-virtual {v0, p1}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_80

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/ad;

    :goto_16
    if-nez v0, :cond_2b

    new-instance v0, Lx/ad;

    invoke-direct {v0}, Lx/ad;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/ad;->a(Z)V

    iget-object v1, p0, Lx/ag;->e:Lz/g;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v3}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_52

    :goto_2c
    monitor-enter v0

    :try_start_2d
    iget-object v1, p0, Lx/ag;->c:Laf/a;

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    invoke-virtual {v0}, Lx/ad;->h()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-gez v3, :cond_45

    invoke-direct {p0, p1, v0}, Lx/ag;->a(Ljava/lang/String;Lx/ad;)V

    invoke-virtual {v0, v1, v2}, Lx/ad;->a(J)V

    :cond_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_2d .. :try_end_46} :catchall_7d

    if-eqz p2, :cond_51

    invoke-virtual {v0}, Lx/ad;->b()Z

    move-result v1

    if-nez v1, :cond_51

    invoke-virtual {v0, p2}, Lx/ad;->a(Lx/af;)V

    :cond_51
    return-object v0

    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v0

    :cond_55
    iget-object v1, p0, Lx/ag;->d:Lz/g;

    monitor-enter v1

    :try_start_58
    iget-object v0, p0, Lx/ag;->d:Lz/g;

    invoke-virtual {v0, p1}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/ad;

    if-nez v0, :cond_68

    iget-object v0, p0, Lx/ag;->f:Lx/w;

    invoke-virtual {v0, p1}, Lx/w;->a(Ljava/lang/String;)Lx/ad;

    move-result-object v0

    :cond_68
    if-nez v0, :cond_73

    new-instance v0, Lx/ad;

    invoke-direct {v0}, Lx/ad;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lx/ad;->a(Z)V

    :cond_73
    iget-object v2, p0, Lx/ag;->d:Lz/g;

    invoke-virtual {v2, p1, v0}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v1

    goto :goto_2c

    :catchall_7a
    move-exception v0

    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_58 .. :try_end_7c} :catchall_7a

    throw v0

    :catchall_7d
    move-exception v1

    :try_start_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw v1

    :cond_80
    move-object v0, v1

    goto :goto_16
.end method

.method a()V
    .registers 2

    iget-object v0, p0, Lx/ag;->f:Lx/w;

    invoke-virtual {v0}, Lx/w;->a()V

    return-void
.end method

.method public a(IZLjava/lang/String;)V
    .registers 4

    return-void
.end method

.method public a(Lat/g;)V
    .registers 3

    instance-of v0, p1, Lx/ai;

    if-eqz v0, :cond_9

    check-cast p1, Lx/ai;

    invoke-virtual {p1}, Lx/ai;->c()V

    :cond_9
    return-void
.end method

.method public a(Z)V
    .registers 4

    iget-object v1, p0, Lx/ag;->e:Lz/g;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lx/ag;->e:Lz/g;

    invoke-virtual {v0}, Lz/g;->f()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1a

    iget-object v1, p0, Lx/ag;->d:Lz/g;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lx/ag;->d:Lz/g;

    invoke-virtual {v0}, Lz/g;->f()V

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1d

    if-eqz p1, :cond_19

    iget-object v0, p0, Lx/ag;->f:Lx/w;

    invoke-virtual {v0}, Lx/w;->c()V

    :cond_19
    return-void

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public b()J
    .registers 3

    iget-object v0, p0, Lx/ag;->f:Lx/w;

    invoke-virtual {v0}, Lx/w;->b()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public b(Lat/g;)V
    .registers 2

    return-void
.end method
