.class public Lcom/google/android/maps/driveabout/vector/VectorMapActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private b:Lcom/google/android/maps/driveabout/vector/de;

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cS;->d:[Lcom/google/android/maps/driveabout/vector/cU;

    const-string v1, "DriveAbout"

    const v2, 0x7f060003

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cS;->a(Landroid/content/Context;[Lcom/google/android/maps/driveabout/vector/cU;Ljava/lang/String;ILaf/n;)V

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/de;->a(Landroid/os/Bundle;)Lcom/google/android/maps/driveabout/vector/de;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->b:Lcom/google/android/maps/driveabout/vector/de;

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    monitor-enter p0

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

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bN;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/bN;->d()V

    goto :goto_a

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d()V

    :cond_2c
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->k()V

    :cond_9
    return-void
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    monitor-enter p0

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

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bN;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/bN;->c()V

    goto :goto_a

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

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c()V

    :cond_27
    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b()V

    :cond_c
    monitor-enter p0

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

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bN;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/bN;->b()V

    goto :goto_13

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

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/VectorMapActivity;->a:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->m()Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/vector/de;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/vector/de;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/de;->b(Landroid/os/Bundle;)V

    :cond_16
    return-void
.end method
