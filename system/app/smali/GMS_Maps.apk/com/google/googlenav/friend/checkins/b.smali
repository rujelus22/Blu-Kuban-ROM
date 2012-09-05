.class public Lcom/google/googlenav/friend/checkins/b;
.super Ljava/lang/Object;


# instance fields
.field private a:LaY/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()LaY/a;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/b;->a:LaY/a;

    if-nez v0, :cond_10

    new-instance v0, LaY/a;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    invoke-direct {v0, v1}, LaY/a;-><init>(Lap/c;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/checkins/b;->a:LaY/a;

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/b;->a:LaY/a;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
