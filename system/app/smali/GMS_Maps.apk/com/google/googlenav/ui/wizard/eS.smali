.class Lcom/google/googlenav/ui/wizard/eS;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/eZ;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eR;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eR;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eS;->a:Lcom/google/googlenav/ui/wizard/eR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eS;->a:Lcom/google/googlenav/ui/wizard/eR;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eR;->a(Lcom/google/googlenav/ui/wizard/eR;)Lcom/google/googlenav/ui/wizard/eT;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eS;->a:Lcom/google/googlenav/ui/wizard/eR;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eR;->a(Lcom/google/googlenav/ui/wizard/eR;)Lcom/google/googlenav/ui/wizard/eT;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eS;->a:Lcom/google/googlenav/ui/wizard/eR;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eR;->a(Lcom/google/googlenav/ui/wizard/eR;)Lcom/google/googlenav/ui/wizard/eT;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eT;->c:Lcom/google/googlenav/ui/wizard/eU;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eS;->a:Lcom/google/googlenav/ui/wizard/eR;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eR;->a(Lcom/google/googlenav/ui/wizard/eR;)Lcom/google/googlenav/ui/wizard/eT;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/eT;->c:Lcom/google/googlenav/ui/wizard/eU;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/wizard/eU;->a(Ljava/util/List;)V

    :cond_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_2b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eS;->a:Lcom/google/googlenav/ui/wizard/eR;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eR;->a()V

    return-void

    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method
