.class public Lcom/google/android/maps/driveabout/vector/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/df;


# instance fields
.field private final a:Ln/av;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ln/av;

    invoke-direct {v0}, Ln/av;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ck;->a:Ln/av;

    return-void
.end method


# virtual methods
.method public a()Ln/av;
    .registers 4

    .prologue
    .line 55
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ck;->a:Ln/av;

    monitor-enter v1

    .line 56
    :try_start_3
    new-instance v0, Ln/av;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ck;->a:Ln/av;

    invoke-direct {v0, v2}, Ln/av;-><init>(Ln/av;)V

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public a(Ln/ao;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 65
    if-nez p1, :cond_4

    .line 77
    :goto_3
    return v0

    .line 69
    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ck;->a:Ln/av;

    monitor-enter v1

    .line 70
    :try_start_7
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ck;->a:Ln/av;

    invoke-interface {p1}, Ln/ao;->a()Ln/aq;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln/av;->a(Ln/aq;)Ln/ao;

    move-result-object v2

    .line 72
    invoke-static {v2, p1}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 73
    monitor-exit v1

    goto :goto_3

    .line 78
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v0

    .line 76
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ck;->a:Ln/av;

    invoke-virtual {v0, p1}, Ln/av;->a(Ln/ao;)V

    .line 77
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    goto :goto_3
.end method

.method public a(Ln/av;)Z
    .registers 4
    .parameter

    .prologue
    .line 41
    if-nez p1, :cond_7

    .line 42
    new-instance p1, Ln/av;

    invoke-direct {p1}, Ln/av;-><init>()V

    .line 44
    :cond_7
    invoke-virtual {p1}, Ln/av;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/aq;

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/ck;->a(Ln/av;Ln/aq;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 46
    const/4 v0, 0x0

    .line 49
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x1

    goto :goto_22
.end method

.method public a(Ln/av;Ln/aq;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-static {p1, p2}, Ln/av;->a(Ln/av;Ln/aq;)Ln/ao;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ck;->a:Ln/av;

    invoke-static {v1, p2}, Ln/av;->a(Ln/av;Ln/aq;)Ln/ao;

    move-result-object v1

    .line 31
    if-nez v1, :cond_18

    .line 32
    if-eqz v0, :cond_14

    invoke-interface {v0, v1}, Ln/ao;->a(Ln/ao;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    .line 34
    :goto_15
    return v0

    .line 32
    :cond_16
    const/4 v0, 0x0

    goto :goto_15

    .line 34
    :cond_18
    invoke-interface {v1, v0}, Ln/ao;->a(Ln/ao;)Z

    move-result v0

    goto :goto_15
.end method

.method public b()J
    .registers 5

    .prologue
    .line 93
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ck;->a:Ln/av;

    monitor-enter v1

    .line 94
    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ck;->a:Ln/av;

    invoke-virtual {v0}, Ln/av;->hashCode()I

    move-result v0

    int-to-long v2, v0

    monitor-exit v1

    return-wide v2

    .line 95
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method
