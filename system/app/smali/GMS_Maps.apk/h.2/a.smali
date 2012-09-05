.class public Lh/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lh/a;


# instance fields
.field private b:Lbv/g;


# direct methods
.method private constructor <init>(Lbv/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/a;->b:Lbv/g;

    return-void
.end method

.method public static declared-synchronized a()Lh/a;
    .registers 3

    const-class v1, Lh/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lh/a;->a:Lh/a;

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Please call init() before calling getInstance."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_12
    :try_start_12
    sget-object v0, Lh/a;->a:Lh/a;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_f

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lbv/k;)V
    .registers 5

    const-class v1, Lh/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lh/a;->a:Lh/a;

    if-nez v0, :cond_22

    new-instance v0, LQ/b;

    invoke-direct {v0, p0}, LQ/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, LP/b;->a(LP/b;)V

    new-instance v0, Lbv/k;

    invoke-direct {v0}, Lbv/k;-><init>()V

    invoke-static {p1}, Lbv/g;->a(Lbv/k;)V

    new-instance v0, Lh/a;

    invoke-static {}, Lbv/g;->e()Lbv/g;

    move-result-object v2

    invoke-direct {v0, v2}, Lh/a;-><init>(Lbv/g;)V

    sput-object v0, Lh/a;->a:Lh/a;
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    :cond_22
    monitor-exit v1

    return-void

    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lbw/m;Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lh/a;->b:Lbv/g;

    invoke-virtual {v0, p1, p2}, Lbv/g;->a(Lbw/m;Z)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
