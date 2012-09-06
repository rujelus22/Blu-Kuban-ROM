.class public Lcom/google/android/maps/driveabout/vector/VectorMapActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private b:Lcom/google/android/maps/driveabout/vector/dU;

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dD;->a:[Lcom/google/android/maps/driveabout/vector/dg;

    const-string v1, "DriveAbout"

    const v2, 0x7f070003

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/dD;->a(Landroid/content/Context;[Lcom/google/android/maps/driveabout/vector/dg;Ljava/lang/String;ILaT/o;)V

    .line 51
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/dU;->a(Landroid/os/Bundle;)Lcom/google/android/maps/driveabout/vector/dU;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->b:Lcom/google/android/maps/driveabout/vector/dU;

    .line 52
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 79
    monitor-enter p0

    .line 80
    :try_start_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cg;

    .line 81
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cg;->d()V

    goto :goto_a

    .line 84
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v0

    .line 83
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_1a

    .line 85
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_2c

    .line 86
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d()V

    .line 88
    :cond_2c
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_9

    .line 121
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->j()V

    .line 123
    :cond_9
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 94
    monitor-enter p0

    .line 95
    :try_start_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cg;

    .line 96
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cg;->b_()V

    goto :goto_a

    .line 98
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1a

    .line 99
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_27

    .line 100
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b_()V

    .line 102
    :cond_27
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 108
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_c

    .line 109
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b()V

    .line 111
    :cond_c
    monitor-enter p0

    .line 112
    :try_start_d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cg;

    .line 113
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cg;->b()V

    goto :goto_13

    .line 115
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_23

    throw v0

    :cond_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 116
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_16

    .line 68
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c_()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/google/android/maps/driveabout/vector/dU;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/vector/dU;-><init>(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 71
    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dU;->b(Landroid/os/Bundle;)V

    .line 73
    :cond_16
    return-void
.end method
