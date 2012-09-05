.class public final Lcom/google/net/async/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/net/async/c;


# instance fields
.field private final a:Lcom/google/net/async/d;

.field private b:Lcom/google/net/async/b;


# direct methods
.method public constructor <init>(Lcom/google/net/async/d;)V
    .registers 4
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/net/async/ag;->b:Lcom/google/net/async/b;

    .line 59
    if-nez p1, :cond_10

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alarmRegistry cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_10
    iput-object p1, p0, Lcom/google/net/async/ag;->a:Lcom/google/net/async/d;

    .line 63
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(JLcom/google/net/async/ah;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/net/async/ag;->b:Lcom/google/net/async/b;

    if-eqz v0, :cond_10

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 88
    const-string v1, "setExpiration() is called but a previous alarm has not expired yet"

    .line 87
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 86
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 91
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/net/async/ag;->a:Lcom/google/net/async/d;

    invoke-interface {v0, p1, p2, p3, p0}, Lcom/google/net/async/d;->a(JLjava/lang/Object;Lcom/google/net/async/c;)Lcom/google/net/async/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/net/async/ag;->b:Lcom/google/net/async/b;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_d

    .line 92
    monitor-exit p0

    return-void
.end method

.method public final a(Lcom/google/net/async/b;)V
    .registers 5
    .parameter

    .prologue
    .line 134
    monitor-enter p0

    .line 135
    :try_start_1
    iget-object v0, p0, Lcom/google/net/async/ag;->b:Lcom/google/net/async/b;

    if-eq p1, v0, :cond_1d

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown alarm expired: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1a

    .line 134
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 139
    :cond_1d
    const/4 v0, 0x0

    :try_start_1e
    iput-object v0, p0, Lcom/google/net/async/ag;->b:Lcom/google/net/async/b;

    .line 134
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1a

    .line 141
    invoke-virtual {p1}, Lcom/google/net/async/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/net/async/ah;

    invoke-interface {v0, p0}, Lcom/google/net/async/ah;->a(Lcom/google/net/async/ag;)V

    .line 142
    return-void
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/net/async/ag;->b:Lcom/google/net/async/b;

    if-nez v0, :cond_9

    .line 68
    const-string v0, "ResettableAlarm[No alarm]"
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_25

    .line 70
    :goto_7
    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResettableAlarm["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/net/async/ag;->b:Lcom/google/net/async/b;

    invoke-virtual {v1}, Lcom/google/net/async/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_25

    move-result-object v0

    goto :goto_7

    .line 67
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method
