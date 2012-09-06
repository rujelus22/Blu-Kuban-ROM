.class Lcom/google/googlenav/intersectionexplorer/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/intersectionexplorer/c;

.field final synthetic b:D

.field final synthetic c:Lcom/google/googlenav/intersectionexplorer/d;


# direct methods
.method constructor <init>(Lcom/google/googlenav/intersectionexplorer/d;Lcom/google/googlenav/intersectionexplorer/c;D)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/google/googlenav/intersectionexplorer/e;->c:Lcom/google/googlenav/intersectionexplorer/d;

    iput-object p2, p0, Lcom/google/googlenav/intersectionexplorer/e;->a:Lcom/google/googlenav/intersectionexplorer/c;

    iput-wide p3, p0, Lcom/google/googlenav/intersectionexplorer/e;->b:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 365
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/e;->c:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Lcom/google/googlenav/intersectionexplorer/d;)Lcom/google/googlenav/intersectionexplorer/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/e;->a:Lcom/google/googlenav/intersectionexplorer/c;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/intersectionexplorer/k;->a(Lcom/google/googlenav/intersectionexplorer/c;)Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/e;->c:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-static {v1}, Lcom/google/googlenav/intersectionexplorer/d;->b(Lcom/google/googlenav/intersectionexplorer/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 367
    :try_start_14
    iget-object v2, p0, Lcom/google/googlenav/intersectionexplorer/e;->c:Lcom/google/googlenav/intersectionexplorer/d;

    iput-object v0, v2, Lcom/google/googlenav/intersectionexplorer/d;->c:Ljava/lang/String;

    .line 368
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_27

    .line 370
    iget-wide v0, p0, Lcom/google/googlenav/intersectionexplorer/e;->b:D

    const-wide/high16 v2, -0x4010

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2a

    .line 372
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/e;->c:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/intersectionexplorer/d;->a(Z)V

    .line 379
    :goto_26
    return-void

    .line 368
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0

    .line 374
    :cond_2a
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/e;->c:Lcom/google/googlenav/intersectionexplorer/d;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/d;->b(Lcom/google/googlenav/intersectionexplorer/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 375
    :try_start_31
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/e;->c:Lcom/google/googlenav/intersectionexplorer/d;

    const/16 v2, 0x1fc

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/google/googlenav/intersectionexplorer/e;->b:D

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlenav/intersectionexplorer/e;->c:Lcom/google/googlenav/intersectionexplorer/d;

    iget-object v5, v5, Lcom/google/googlenav/intersectionexplorer/d;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/intersectionexplorer/d;->a(Ljava/lang/String;)V

    .line 377
    monitor-exit v1

    goto :goto_26

    :catchall_56
    move-exception v0

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_31 .. :try_end_58} :catchall_56

    throw v0
.end method
