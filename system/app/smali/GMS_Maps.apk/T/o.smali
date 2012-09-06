.class Lt/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac/q;


# instance fields
.field private final a:Lac/h;

.field private final b:Ljava/lang/Runnable;

.field private final c:Z


# direct methods
.method public constructor <init>(Lac/h;Ljava/lang/Runnable;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lt/o;->a:Lac/h;

    .line 246
    iput-object p2, p0, Lt/o;->b:Ljava/lang/Runnable;

    .line 247
    invoke-virtual {p1}, Lac/h;->f()Z

    move-result v0

    iput-boolean v0, p0, Lt/o;->c:Z

    .line 248
    iget-boolean v0, p0, Lt/o;->c:Z

    if-eqz v0, :cond_14

    .line 249
    invoke-virtual {p1}, Lac/h;->h()V

    .line 251
    :cond_14
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 288
    return-void
.end method

.method public a(IZLjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 266
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2a

    if-eqz p2, :cond_2a

    .line 268
    :goto_6
    if-nez v0, :cond_29

    invoke-static {}, Lt/m;->g()Lcom/google/android/maps/driveabout/vector/ei;

    move-result-object v0

    if-nez v0, :cond_29

    .line 269
    iget-object v0, p0, Lt/o;->a:Lac/h;

    invoke-virtual {v0, p0}, Lac/h;->b(Lac/q;)V

    .line 270
    iget-object v0, p0, Lt/o;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_1c

    .line 271
    iget-object v0, p0, Lt/o;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 273
    :cond_1c
    const-class v1, Lt/m;

    monitor-enter v1

    .line 274
    const/4 v0, 0x1

    :try_start_20
    invoke-static {v0}, Lt/m;->a(Z)Z

    .line 275
    const-class v0, Lt/m;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 276
    monitor-exit v1

    .line 278
    :cond_29
    return-void

    .line 266
    :cond_2a
    const/4 v0, 0x0

    goto :goto_6

    .line 276
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public a(Lac/g;)V
    .registers 3
    .parameter

    .prologue
    .line 256
    instance-of v0, p1, Lt/p;

    if-eqz v0, :cond_12

    .line 257
    iget-object v0, p0, Lt/o;->a:Lac/h;

    invoke-virtual {v0, p0}, Lac/h;->b(Lac/q;)V

    .line 258
    iget-boolean v0, p0, Lt/o;->c:Z

    if-eqz v0, :cond_12

    .line 259
    iget-object v0, p0, Lt/o;->a:Lac/h;

    invoke-virtual {v0}, Lac/h;->g()V

    .line 262
    :cond_12
    return-void
.end method

.method public b(Lac/g;)V
    .registers 2
    .parameter

    .prologue
    .line 283
    return-void
.end method
