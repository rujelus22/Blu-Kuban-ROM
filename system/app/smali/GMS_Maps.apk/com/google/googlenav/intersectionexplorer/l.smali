.class Lcom/google/googlenav/intersectionexplorer/l;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Ln/Q;

.field final synthetic b:Lcom/google/googlenav/intersectionexplorer/k;


# direct methods
.method constructor <init>(Lcom/google/googlenav/intersectionexplorer/k;Ln/Q;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/googlenav/intersectionexplorer/l;->b:Lcom/google/googlenav/intersectionexplorer/k;

    iput-object p2, p0, Lcom/google/googlenav/intersectionexplorer/l;->a:Ln/Q;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/l;->b:Lcom/google/googlenav/intersectionexplorer/k;

    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/l;->a:Ln/Q;

    invoke-static {v0, v1}, Lcom/google/googlenav/intersectionexplorer/k;->a(Lcom/google/googlenav/intersectionexplorer/k;Ln/Q;)V

    .line 232
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/l;->b:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/k;->a(Lcom/google/googlenav/intersectionexplorer/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 233
    :try_start_e
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/l;->b:Lcom/google/googlenav/intersectionexplorer/k;

    iget-object v2, p0, Lcom/google/googlenav/intersectionexplorer/l;->b:Lcom/google/googlenav/intersectionexplorer/k;

    iget-object v3, p0, Lcom/google/googlenav/intersectionexplorer/l;->b:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-static {v3}, Lcom/google/googlenav/intersectionexplorer/k;->b(Lcom/google/googlenav/intersectionexplorer/k;)Ljava/util/TreeSet;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/intersectionexplorer/l;->a:Ln/Q;

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/intersectionexplorer/k;->a(Ljava/util/Set;Ln/Q;)Lcom/google/googlenav/intersectionexplorer/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/intersectionexplorer/k;->a(Lcom/google/googlenav/intersectionexplorer/c;)Ljava/lang/String;

    .line 234
    monitor-exit v1

    .line 235
    return-void

    .line 234
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_23

    throw v0
.end method
