.class Lcom/google/googlenav/ui/G;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;)V
    .registers 2
    .parameter

    .prologue
    .line 4719
    iput-object p1, p0, Lcom/google/googlenav/ui/G;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 4722
    iget-object v1, p0, Lcom/google/googlenav/ui/G;->a:Lcom/google/googlenav/ui/v;

    monitor-enter v1

    .line 4726
    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/ui/G;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v0}, Lcom/google/googlenav/ui/v;->j(Lcom/google/googlenav/ui/v;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 4727
    iget-object v0, p0, Lcom/google/googlenav/ui/G;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v0}, Lcom/google/googlenav/ui/v;->k(Lcom/google/googlenav/ui/v;)LY/d;

    move-result-object v0

    invoke-virtual {v0}, LY/d;->g()V

    .line 4729
    :cond_14
    monitor-exit v1

    .line 4730
    return-void

    .line 4729
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method
