.class Lw/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/aI;


# instance fields
.field final synthetic a:Lw/e;


# direct methods
.method constructor <init>(Lw/e;)V
    .registers 2
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lw/f;->a:Lw/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr/aH;)V
    .registers 5
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lw/f;->a:Lw/e;

    invoke-static {v0}, Lw/e;->a(Lw/e;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 329
    :try_start_7
    iget-object v0, p0, Lw/f;->a:Lw/e;

    invoke-static {v0}, Lw/e;->a(Lw/e;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lw/f;->a:Lw/e;

    invoke-static {v2}, Lw/e;->b(Lw/e;)Lj/e;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 330
    monitor-exit v1

    .line 331
    return-void

    .line 330
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public a(Lr/aH;Ln/am;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 336
    invoke-interface {p1, p2, v3}, Lr/aH;->a(Ln/am;Z)Ln/al;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_1c

    .line 338
    iget-object v1, p0, Lw/f;->a:Lw/e;

    invoke-interface {v0}, Ln/al;->d()Ln/am;

    move-result-object v2

    invoke-static {v1, v2, v3, v0}, Lw/e;->a(Lw/e;Ln/am;ILn/al;)Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v1

    .line 342
    const-wide/16 v2, 0x0

    .line 343
    iget-object v4, p0, Lw/f;->a:Lw/e;

    invoke-interface {v0}, Ln/al;->d()Ln/am;

    move-result-object v0

    invoke-static {v4, v0, v1, v2, v3}, Lw/e;->a(Lw/e;Ln/am;Lcom/google/android/maps/driveabout/vector/aV;J)V

    .line 345
    :cond_1c
    return-void
.end method
