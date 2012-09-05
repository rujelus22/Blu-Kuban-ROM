.class public final Lcom/google/net/async/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/net/async/ah;


# instance fields
.field private final a:Lcom/google/net/async/ag;

.field private b:J

.field private c:Lcom/google/net/async/ae;


# direct methods
.method public constructor <init>(Lcom/google/net/async/d;)V
    .registers 4
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/net/async/ad;->b:J

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/net/async/ad;->c:Lcom/google/net/async/ae;

    .line 39
    new-instance v0, Lcom/google/net/async/ag;

    invoke-direct {v0, p1}, Lcom/google/net/async/ag;-><init>(Lcom/google/net/async/d;)V

    iput-object v0, p0, Lcom/google/net/async/ad;->a:Lcom/google/net/async/ag;

    .line 40
    return-void
.end method


# virtual methods
.method public final a(JLcom/google/net/async/ae;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 60
    cmp-long v0, p1, v2

    if-gtz v0, :cond_1b

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid period for PeriodicAlarm (must be positive): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1b
    monitor-enter p0

    .line 65
    :try_start_1c
    iget-wide v0, p0, Lcom/google/net/async/ad;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2d

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 67
    const-string v1, "switchOn() is called when a PeriodicAlarm is already on"

    .line 66
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_2a

    .line 64
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 69
    :cond_2d
    :try_start_2d
    iput-wide p1, p0, Lcom/google/net/async/ad;->b:J

    .line 70
    iput-object p3, p0, Lcom/google/net/async/ad;->c:Lcom/google/net/async/ae;

    .line 71
    iget-object v0, p0, Lcom/google/net/async/ad;->a:Lcom/google/net/async/ag;

    iget-wide v1, p0, Lcom/google/net/async/ad;->b:J

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/net/async/ag;->a(JLcom/google/net/async/ah;)V

    .line 64
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_2a

    return-void
.end method

.method public final a(Lcom/google/net/async/ag;)V
    .registers 6
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/net/async/ad;->a:Lcom/google/net/async/ag;

    if-eq p1, v0, :cond_19

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown ResettableAlarm expired:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_19
    iget-object v0, p0, Lcom/google/net/async/ad;->c:Lcom/google/net/async/ae;

    invoke-interface {v0}, Lcom/google/net/async/ae;->b()V

    .line 121
    monitor-enter p0

    .line 122
    :try_start_1f
    iget-wide v0, p0, Lcom/google/net/async/ad;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2e

    .line 124
    iget-object v0, p0, Lcom/google/net/async/ad;->a:Lcom/google/net/async/ag;

    iget-wide v1, p0, Lcom/google/net/async/ad;->b:J

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/net/async/ag;->a(JLcom/google/net/async/ah;)V

    .line 121
    :cond_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/net/async/ad;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PeriodicAlarm is on with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/net/async/ad;->a:Lcom/google/net/async/ag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1f

    move-result-object v0

    .line 47
    :goto_1a
    monitor-exit p0

    return-object v0

    :cond_1c
    :try_start_1c
    const-string v0, "PeriodicAlarm is off"
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_1f

    goto :goto_1a

    .line 44
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
