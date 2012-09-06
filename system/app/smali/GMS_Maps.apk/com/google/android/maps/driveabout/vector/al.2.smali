.class Lcom/google/android/maps/driveabout/vector/aL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/google/android/maps/driveabout/vector/k;

.field final synthetic b:Lcom/google/android/maps/driveabout/vector/aK;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/aK;Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aL;->b:Lcom/google/android/maps/driveabout/vector/aK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/aL;->a:Lcom/google/android/maps/driveabout/vector/k;

    .line 546
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->b:Lcom/google/android/maps/driveabout/vector/aK;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aK;->a(Lcom/google/android/maps/driveabout/vector/aK;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 553
    :try_start_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->b:Lcom/google/android/maps/driveabout/vector/aK;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aK;->a(Lcom/google/android/maps/driveabout/vector/aK;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 554
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_2c

    .line 557
    :try_start_12
    sget-object v1, Lx/q;->c:Lx/q;

    invoke-static {v0, v1}, Lx/o;->a(Ljava/util/List;Lx/q;)Lx/v;
    :try_end_17
    .catch Lx/k; {:try_start_12 .. :try_end_17} :catch_2f

    move-result-object v0

    .line 575
    :goto_18
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aL;->b:Lcom/google/android/maps/driveabout/vector/aK;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/aK;->a(Lcom/google/android/maps/driveabout/vector/aK;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 576
    :try_start_1f
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aL;->b:Lcom/google/android/maps/driveabout/vector/aK;

    invoke-static {v2, v0}, Lcom/google/android/maps/driveabout/vector/aK;->a(Lcom/google/android/maps/driveabout/vector/aK;Lx/v;)Lx/v;

    .line 577
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_69

    .line 578
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->b:Lcom/google/android/maps/driveabout/vector/aK;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/aK;->a(Lcom/google/android/maps/driveabout/vector/aK;Z)Z

    .line 579
    return-void

    .line 554
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0

    .line 558
    :catch_2f
    move-exception v0

    .line 561
    :try_start_30
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aL;->b:Lcom/google/android/maps/driveabout/vector/aK;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aK;->b(Lcom/google/android/maps/driveabout/vector/aK;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 562
    const/4 v0, 0x0

    .line 563
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    .line 564
    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_40

    .line 566
    :cond_53
    const/16 v0, 0x7d0

    if-ge v1, v0, :cond_5e

    .line 567
    sget-object v0, Lx/q;->d:Lx/q;

    invoke-static {v2, v0}, Lx/o;->a(Ljava/util/List;Lx/q;)Lx/v;

    move-result-object v0

    goto :goto_18

    .line 569
    :cond_5e
    invoke-static {}, Lx/v;->a()Lx/v;
    :try_end_61
    .catch Lx/k; {:try_start_30 .. :try_end_61} :catch_63

    move-result-object v0

    goto :goto_18

    .line 571
    :catch_63
    move-exception v0

    .line 572
    invoke-static {}, Lx/v;->a()Lx/v;

    move-result-object v0

    goto :goto_18

    .line 577
    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v0
.end method
