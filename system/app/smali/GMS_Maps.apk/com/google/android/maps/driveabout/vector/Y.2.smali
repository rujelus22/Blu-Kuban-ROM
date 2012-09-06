.class Lcom/google/android/maps/driveabout/vector/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz/b;


# instance fields
.field private a:Lz/B;

.field private final b:Lz/h;

.field private final c:Lz/g;

.field private d:Z

.field private e:Z

.field private final f:I

.field private g:Lz/c;

.field private h:Lu/h;

.field private i:F

.field private volatile j:Z


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 307
    return-void
.end method

.method public a(Lz/c;)V
    .registers 4
    .parameter

    .prologue
    .line 298
    monitor-enter p0

    .line 299
    :try_start_1
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/y;->g:Lz/c;

    .line 300
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->g:Lz/c;

    sget-object v1, Lz/j;->a:Lz/H;

    invoke-interface {v0, p0, v1}, Lz/c;->a(Lz/b;Lz/G;)V

    .line 301
    monitor-exit p0

    .line 302
    return-void

    .line 301
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public declared-synchronized b(Lz/c;)V
    .registers 7
    .parameter

    .prologue
    .line 311
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/y;->d:Z

    if-eqz v0, :cond_f

    .line 312
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->b:Lz/h;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/y;->a:Lz/B;

    invoke-virtual {v0, v1}, Lz/h;->a(Lz/B;)V

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/y;->d:Z

    .line 316
    :cond_f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->h:Lu/h;

    if-eqz v0, :cond_2b

    .line 317
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->h:Lu/h;

    invoke-virtual {v0}, Lu/h;->hasEnded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/y;->j:Z

    .line 318
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/y;->j:Z

    if-nez v0, :cond_2b

    .line 319
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->h:Lu/h;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lu/h;->a(J)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/y;->i:F

    .line 323
    :cond_2b
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/y;->e:Z

    if-eqz v0, :cond_47

    .line 324
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->c:Lz/g;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/y;->f:I

    invoke-interface {v0, v1}, Lz/g;->a(I)V

    .line 329
    :goto_36
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->h:Lu/h;

    invoke-virtual {v0}, Lu/h;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_45

    .line 330
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->g:Lz/c;

    sget-object v1, Lz/j;->a:Lz/H;

    invoke-interface {v0, p0, v1}, Lz/c;->a(Lz/b;Lz/G;)V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_55

    .line 332
    :cond_45
    monitor-exit p0

    return-void

    .line 326
    :cond_47
    :try_start_47
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/y;->c:Lz/g;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/y;->i:F

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/y;->i:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/y;->i:F

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/y;->i:F

    invoke-interface {v0, v1, v2, v3, v4}, Lz/g;->a(FFFF)V
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_55

    goto :goto_36

    .line 311
    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0
.end method
