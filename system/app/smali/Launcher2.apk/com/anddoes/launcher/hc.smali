.class final Lcom/anddoes/launcher/hc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/hb;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/hb;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/hc;->a:Lcom/anddoes/launcher/hb;

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 790
    iget-object v1, p0, Lcom/anddoes/launcher/hc;->a:Lcom/anddoes/launcher/hb;

    monitor-enter v1

    .line 791
    :try_start_3
    iget-object v0, p0, Lcom/anddoes/launcher/hc;->a:Lcom/anddoes/launcher/hb;

    invoke-static {v0}, Lcom/anddoes/launcher/hb;->a(Lcom/anddoes/launcher/hb;)V

    .line 795
    iget-object v0, p0, Lcom/anddoes/launcher/hc;->a:Lcom/anddoes/launcher/hb;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 790
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method
