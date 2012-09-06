.class final Llz;
.super Ljava/lang/Object;
.source "ThreadSafeDateFormat.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final a:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llz;->a:Ljava/lang/Object;

    .line 23
    iget-object v1, p0, Llz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_d
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llz;->a:Ljava/text/SimpleDateFormat;

    .line 25
    monitor-exit v1

    .line 26
    return-void

    .line 25
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public final a(Ljava/util/Date;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 29
    iget-object v1, p0, Llz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 30
    :try_start_3
    iget-object v0, p0, Llz;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .parameter

    .prologue
    .line 41
    iget-object v1, p0, Llz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_3
    iget-object v0, p0, Llz;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public a(Ljava/util/TimeZone;)V
    .registers 4
    .parameter

    .prologue
    .line 35
    iget-object v1, p0, Llz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_3
    iget-object v0, p0, Llz;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 37
    monitor-exit v1

    .line 38
    return-void

    .line 37
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    .line 48
    iget-object v1, p0, Llz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_3
    instance-of v0, p1, Llz;

    if-eqz v0, :cond_16

    check-cast p1, Llz;

    iget-object v0, p1, Llz;->a:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Llz;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_14
    monitor-exit v1

    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_14

    .line 51
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 56
    iget-object v1, p0, Llz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_3
    iget-object v0, p0, Llz;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->hashCode()I

    move-result v0

    monitor-exit v1

    return v0

    .line 58
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 63
    iget-object v1, p0, Llz;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_3
    iget-object v0, p0, Llz;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method
