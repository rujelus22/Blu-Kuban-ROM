.class Lcom/google/android/maps/driveabout/app/Y;
.super Lcom/google/android/maps/driveabout/app/R;
.source "SourceFile"


# instance fields
.field e:Ljava/lang/Runnable;

.field private final f:Lcom/google/android/maps/driveabout/app/ad;

.field private final g:Ljava/util/ArrayList;

.field private final h:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ad;ZZZ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/R;-><init>(Landroid/content/Context;)V

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/Y;->g:Ljava/util/ArrayList;

    .line 592
    new-instance v0, Lcom/google/android/maps/driveabout/app/Z;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/Z;-><init>(Lcom/google/android/maps/driveabout/app/Y;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/Y;->e:Ljava/lang/Runnable;

    .line 602
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/Y;->f:Lcom/google/android/maps/driveabout/app/ad;

    .line 604
    if-eqz p3, :cond_70

    .line 605
    if-eqz p5, :cond_26

    .line 606
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Y;->g:Ljava/util/ArrayList;

    const v1, 0x7f0d00c5

    const v2, 0x7f02013e

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/W;->a(II)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_26
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Y;->g:Ljava/util/ArrayList;

    const v1, 0x7f0d00c4

    const v2, 0x7f020140

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/W;->a(II)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Y;->g:Ljava/util/ArrayList;

    const v1, 0x7f0d00c6

    const v2, 0x7f02013c

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/W;->a(II)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Y;->g:Ljava/util/ArrayList;

    const v1, 0x7f0d00c7

    const v2, 0x7f02013f

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/W;->a(II)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_53
    :goto_53
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/Y;->g:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 621
    invoke-static {}, Lcom/google/android/maps/driveabout/app/W;->a()Lcom/google/android/maps/driveabout/app/W;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/Y;->a(Ljava/util/ArrayList;)V

    .line 625
    iput-boolean p4, p0, Lcom/google/android/maps/driveabout/app/Y;->h:Z

    .line 629
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Y;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/Y;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 630
    return-void

    .line 616
    :cond_70
    if-eqz p4, :cond_53

    .line 617
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Y;->g:Ljava/util/ArrayList;

    const v1, 0x7f04002f

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/W;->d(I)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53
.end method

.method private b()V
    .registers 2

    .prologue
    .line 685
    new-instance v0, Lcom/google/android/maps/driveabout/app/aa;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aa;-><init>(Lcom/google/android/maps/driveabout/app/Y;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aa;->start()V

    .line 713
    return-void
.end method


# virtual methods
.method public a(Lm/b;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 639
    if-eqz p1, :cond_b

    .line 640
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/Y;->b:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/Y;->e:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 644
    :cond_b
    monitor-enter p0

    .line 645
    :try_start_c
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/Y;->d:Lm/b;

    if-eqz v2, :cond_35

    if-eqz p1, :cond_35

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/Y;->d:Lm/b;

    invoke-virtual {v2, p1}, Lm/b;->distanceTo(Landroid/location/Location;)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x407f400000000000L

    cmpl-double v2, v2, v4

    if-lez v2, :cond_35

    move v2, v1

    .line 649
    :goto_23
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/Y;->d:Lm/b;

    if-eqz v3, :cond_29

    if-eqz v2, :cond_2a

    :cond_29
    move v0, v1

    .line 650
    :cond_2a
    if-eqz v0, :cond_2e

    .line 651
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/Y;->d:Lm/b;

    .line 653
    :cond_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_37

    .line 655
    if-eqz v0, :cond_34

    .line 656
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/Y;->b()V

    .line 658
    :cond_34
    return-void

    :cond_35
    move v2, v0

    .line 645
    goto :goto_23

    .line 653
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method

.method a(Ln/s;Lo/P;Ljava/util/ArrayList;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0d00cc

    const v2, 0x7f0d00cb

    .line 772
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Y;->g:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 773
    if-nez p2, :cond_17

    if-eqz p3, :cond_22

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 774
    :cond_17
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/Y;->h:Z

    if-eqz v0, :cond_47

    .line 775
    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/W;->b(I)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    :cond_22
    :goto_22
    if-eqz p2, :cond_2c

    .line 781
    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/google/android/maps/driveabout/app/W;->a(Lo/P;I)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_2c
    if-eqz p3, :cond_4f

    .line 784
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/P;

    .line 785
    const/4 v3, 0x5

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/app/W;->a(Lo/P;I)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 777
    :cond_47
    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/W;->a(I)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 789
    :cond_4f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Y;->f:Lcom/google/android/maps/driveabout/app/ad;

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v2}, Lcom/google/android/maps/driveabout/app/ad;->a(Ln/s;I)Ljava/util/List;

    move-result-object v0

    .line 790
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_68

    .line 791
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/app/Y;->h:Z

    if-eqz v2, :cond_81

    .line 792
    invoke-static {v4}, Lcom/google/android/maps/driveabout/app/W;->b(I)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    :cond_68
    :goto_68
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/P;

    .line 798
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/app/W;->a(Lo/P;I)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 794
    :cond_81
    invoke-static {v4}, Lcom/google/android/maps/driveabout/app/W;->a(I)Lcom/google/android/maps/driveabout/app/W;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_68

    .line 800
    :cond_89
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/Y;->b(Ljava/util/ArrayList;)V

    .line 801
    return-void
.end method

.method public c_(I)V
    .registers 3
    .parameter

    .prologue
    .line 665
    .line 667
    monitor-enter p0

    .line 668
    :try_start_1
    iput p1, p0, Lcom/google/android/maps/driveabout/app/Y;->c:I

    .line 672
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Y;->d:Lm/b;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 673
    :goto_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_11

    .line 675
    if-eqz v0, :cond_e

    .line 676
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/Y;->b()V

    .line 678
    :cond_e
    return-void

    .line 672
    :cond_f
    const/4 v0, 0x0

    goto :goto_8

    .line 673
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method
