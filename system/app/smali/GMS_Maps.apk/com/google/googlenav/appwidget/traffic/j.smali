.class Lcom/google/googlenav/appwidget/traffic/j;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/appwidget/traffic/j;->g:I

    .line 86
    iput p1, p0, Lcom/google/googlenav/appwidget/traffic/j;->a:I

    .line 87
    iput-wide p2, p0, Lcom/google/googlenav/appwidget/traffic/j;->b:J

    .line 88
    iput p4, p0, Lcom/google/googlenav/appwidget/traffic/j;->c:I

    .line 89
    return-void
.end method


# virtual methods
.method declared-synchronized a()I
    .registers 2

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/googlenav/appwidget/traffic/j;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/appwidget/traffic/j;->g:I
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
    .parameter
    .parameter

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/googlenav/appwidget/traffic/j;->d:J

    .line 97
    iget-wide v0, p0, Lcom/google/googlenav/appwidget/traffic/j;->d:J

    iget-wide v2, p0, Lcom/google/googlenav/appwidget/traffic/j;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/appwidget/traffic/j;->e:J

    .line 98
    iput p3, p0, Lcom/google/googlenav/appwidget/traffic/j;->f:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 99
    monitor-exit p0

    return-void

    .line 96
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()J
    .registers 3

    .prologue
    .line 102
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/googlenav/appwidget/traffic/j;->d:J
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

    .prologue
    .line 106
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/googlenav/appwidget/traffic/j;->e:J
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

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/googlenav/appwidget/traffic/j;->f:I
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

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/googlenav/appwidget/traffic/j;->g:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
