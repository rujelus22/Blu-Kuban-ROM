.class public final Lcom/google/android/youtube/googlemobile/masf/b/a;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/google/android/youtube/googlemobile/masf/b/a;


# instance fields
.field private a:Z

.field private b:J

.field private c:Z


# direct methods
.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->a:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->b:J

    const-string v0, "RequestNewInstallId"

    invoke-static {v0, v2}, Lcom/google/android/youtube/googlemobile/common/i;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->c:Z

    iget-boolean v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->c:Z

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/b/a;->c()V

    :cond_19
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/googlemobile/masf/b/a;J)J
    .registers 3

    iput-wide p1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->b:J

    return-wide p1
.end method

.method public static declared-synchronized a()Lcom/google/android/youtube/googlemobile/masf/b/a;
    .registers 2

    const-class v1, Lcom/google/android/youtube/googlemobile/masf/b/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/youtube/googlemobile/masf/b/a;->d:Lcom/google/android/youtube/googlemobile/masf/b/a;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/b/a;

    invoke-direct {v0}, Lcom/google/android/youtube/googlemobile/masf/b/a;-><init>()V

    sput-object v0, Lcom/google/android/youtube/googlemobile/masf/b/a;->d:Lcom/google/android/youtube/googlemobile/masf/b/a;

    :cond_e
    sget-object v0, Lcom/google/android/youtube/googlemobile/masf/b/a;->d:Lcom/google/android/youtube/googlemobile/masf/b/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/android/youtube/googlemobile/masf/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/b/a;->e()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/googlemobile/masf/b/a;Z)Z
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/googlemobile/masf/b/a;Z)Z
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->a:Z

    return v0
.end method

.method private declared-synchronized c()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->a:Z

    if-nez v0, :cond_2c

    invoke-static {}, Lcom/google/android/youtube/googlemobile/masf/f;->b()Lcom/google/android/youtube/googlemobile/masf/f;

    move-result-object v0

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->a:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->c:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->b:J

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/b/a;->e()V

    new-instance v1, Lcom/google/android/youtube/googlemobile/masf/a/j;

    const-string v2, "g:c"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/googlemobile/masf/a/j;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/google/android/youtube/googlemobile/masf/b/b;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/googlemobile/masf/b/b;-><init>(Lcom/google/android/youtube/googlemobile/masf/b/a;)V

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/googlemobile/masf/a/m;->a(Lcom/google/android/youtube/googlemobile/masf/a/n;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/masf/f;->a(Lcom/google/android/youtube/googlemobile/masf/a/m;Z)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    :cond_2c
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/youtube/googlemobile/common/b;->a()Lcom/google/android/youtube/googlemobile/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/b;->f()Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->b:J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .registers 4

    const-string v0, "InstallId"

    iget-wide v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->b:J

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/common/i;->a(Ljava/lang/String;J)V

    const-string v0, "RequestNewInstallId"

    iget-boolean v1, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->c:Z

    invoke-static {v0, v1}, Lcom/google/android/youtube/googlemobile/common/i;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/google/android/youtube/googlemobile/common/b;->a()Lcom/google/android/youtube/googlemobile/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/b;->h()Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;->a()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized b()J
    .registers 6

    const-wide/16 v3, 0x0

    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->c:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/b/a;->c()V

    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->b:J
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_33

    :goto_c
    monitor-exit p0

    return-wide v0

    :cond_e
    :try_start_e
    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->b:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_1e

    const-string v0, "InstallId"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/googlemobile/common/i;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->b:J

    :cond_1e
    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->b:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_27

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/b/a;->d()V

    :cond_27
    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->b:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_30

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/b/a;->c()V

    :cond_30
    iget-wide v0, p0, Lcom/google/android/youtube/googlemobile/masf/b/a;->b:J
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_33

    goto :goto_c

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method
