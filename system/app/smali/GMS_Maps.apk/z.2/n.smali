.class public final Lz/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static volatile b:Z

.field private static volatile c:Lz/l;

.field private static volatile d:Lcom/google/android/maps/driveabout/vector/dp;

.field private static volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lz/l;

    new-instance v1, Lam/b;

    sget-object v2, LbD/z;->f:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    invoke-direct {v0, v1}, Lz/l;-><init>(Lam/b;)V

    sput-object v0, Lz/n;->c:Lz/l;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/dp;)Lcom/google/android/maps/driveabout/vector/dp;
    .registers 1

    sput-object p0, Lz/n;->d:Lcom/google/android/maps/driveabout/vector/dp;

    return-object p0
.end method

.method public static declared-synchronized a()Lz/l;
    .registers 2

    const-class v0, Lz/n;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lz/n;->c:Lz/l;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lz/l;)Lz/l;
    .registers 1

    sput-object p0, Lz/n;->c:Lz/l;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Lat/h;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lz/n;->b(Landroid/content/Context;Lat/h;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lat/h;Ljava/lang/Runnable;Z)V
    .registers 10

    sget-boolean v0, Lz/n;->a:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lz/n;->a:Z

    new-instance v0, Lz/o;

    const-string v1, "ParameterManagerLoad"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lz/o;-><init>(Ljava/lang/String;Landroid/content/Context;Lat/h;Ljava/lang/Runnable;Z)V

    invoke-virtual {v0}, Lz/o;->start()V

    goto :goto_4
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lz/n;->e:Z

    return p0
.end method

.method public static declared-synchronized b()Lz/l;
    .registers 2

    const-class v1, Lz/n;

    monitor-enter v1

    :goto_3
    :try_start_3
    sget-boolean v0, Lz/n;->b:Z

    if-nez v0, :cond_13

    sget-boolean v0, Lz/n;->e:Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1d

    if-nez v0, :cond_13

    :try_start_b
    const-class v0, Lz/n;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1d
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_3

    :catch_11
    move-exception v0

    goto :goto_3

    :cond_13
    :try_start_13
    sget-boolean v0, Lz/n;->b:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lz/n;->c:Lz/l;
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1d

    :goto_19
    monitor-exit v1

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_19

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;Lat/h;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/4 v4, 0x0

    const-class v7, Lz/n;

    monitor-enter v7

    :try_start_4
    sget-object v0, LbD/z;->d:Lam/e;

    invoke-static {p0, p3, v0}, Ln/b;->a(Landroid/content/Context;Ljava/lang/String;Lam/e;)Lam/b;

    move-result-object v1

    if-eqz v1, :cond_8d

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_8d

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    :goto_18
    new-instance v2, Lz/l;

    invoke-direct {v2, v0}, Lz/l;-><init>(Lam/b;)V

    sput-object v2, Lz/n;->c:Lz/l;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_a0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lam/b;->e(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_2f
    sget-object v0, LbD/z;->d:Lam/e;

    invoke-static {p0, p4, v0}, Ln/b;->a(Landroid/content/Context;Ljava/lang/String;Lam/e;)Lam/b;

    move-result-object v0

    if-eqz v0, :cond_5e

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/dp;->a(Lam/b;)Lcom/google/android/maps/driveabout/vector/dp;

    move-result-object v1

    sput-object v1, Lz/n;->d:Lcom/google/android/maps/driveabout/vector/dp;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_59

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->e(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_59
    const-class v0, Lz/n;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_5e
    if-eqz p1, :cond_8b

    sget-object v0, Lz/n;->d:Lcom/google/android/maps/driveabout/vector/dp;

    if-nez v0, :cond_77

    invoke-virtual {p1}, Lat/h;->k()Z

    move-result v0

    if-eqz v0, :cond_77

    if-eqz p2, :cond_6f

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_6f
    const/4 v0, 0x1

    sput-boolean v0, Lz/n;->e:Z

    const-class v0, Lz/n;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_77
    new-instance v0, Lz/p;

    invoke-direct {v0, p1, p2}, Lz/p;-><init>(Lat/h;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lat/h;->a(Lat/p;)V

    new-instance v0, Lz/q;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lz/q;-><init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lz/o;)V

    invoke-virtual {p1, v0}, Lat/h;->c(Lat/g;)V
    :try_end_8b
    .catchall {:try_start_4 .. :try_end_8b} :catchall_9d

    :cond_8b
    monitor-exit v7

    return-void

    :cond_8d
    :try_start_8d
    new-instance v1, Lam/b;

    sget-object v0, LbD/z;->d:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    new-instance v0, Lam/b;

    sget-object v2, LbD/z;->f:Lam/e;

    invoke-direct {v0, v2}, Lam/b;-><init>(Lam/e;)V
    :try_end_9b
    .catchall {:try_start_8d .. :try_end_9b} :catchall_9d

    goto/16 :goto_18

    :catchall_9d
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_a0
    move-object v2, v4

    goto :goto_2f
.end method

.method static synthetic b(Z)Z
    .registers 1

    sput-boolean p0, Lz/n;->b:Z

    return p0
.end method

.method public static declared-synchronized c()Lcom/google/android/maps/driveabout/vector/dp;
    .registers 2

    const-class v1, Lz/n;

    monitor-enter v1

    :goto_3
    :try_start_3
    sget-object v0, Lz/n;->d:Lcom/google/android/maps/driveabout/vector/dp;

    if-nez v0, :cond_13

    sget-boolean v0, Lz/n;->e:Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_17

    if-nez v0, :cond_13

    :try_start_b
    const-class v0, Lz/n;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_17
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_3

    :catch_11
    move-exception v0

    goto :goto_3

    :cond_13
    :try_start_13
    sget-object v0, Lz/n;->d:Lcom/google/android/maps/driveabout/vector/dp;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d()Z
    .registers 1

    sget-object v0, Lz/n;->d:Lcom/google/android/maps/driveabout/vector/dp;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static e()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lz/n;->e:Z

    sput-boolean v0, Lz/n;->a:Z

    sput-boolean v0, Lz/n;->b:Z

    return-void
.end method

.method static synthetic f()Lcom/google/android/maps/driveabout/vector/dp;
    .registers 1

    sget-object v0, Lz/n;->d:Lcom/google/android/maps/driveabout/vector/dp;

    return-object v0
.end method
