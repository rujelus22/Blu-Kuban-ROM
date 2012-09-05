.class Lcom/google/googlenav/appwidget/traffic/i;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:J

.field final c:I

.field private d:J

.field private e:J

.field private f:I

.field private g:I


# direct methods
.method constructor <init>(IJI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/appwidget/traffic/i;->g:I

    iput p1, p0, Lcom/google/googlenav/appwidget/traffic/i;->a:I

    iput-wide p2, p0, Lcom/google/googlenav/appwidget/traffic/i;->b:J

    iput p4, p0, Lcom/google/googlenav/appwidget/traffic/i;->c:I

    return-void
.end method


# virtual methods
.method declared-synchronized a()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/googlenav/appwidget/traffic/i;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/appwidget/traffic/i;->g:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(JI)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/googlenav/appwidget/traffic/i;->d:J

    iget-wide v0, p0, Lcom/google/googlenav/appwidget/traffic/i;->d:J

    iget-wide v2, p0, Lcom/google/googlenav/appwidget/traffic/i;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/appwidget/traffic/i;->e:J

    iput p3, p0, Lcom/google/googlenav/appwidget/traffic/i;->f:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/googlenav/appwidget/traffic/i;->d:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/googlenav/appwidget/traffic/i;->e:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/googlenav/appwidget/traffic/i;->f:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized e()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/googlenav/appwidget/traffic/i;->g:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
