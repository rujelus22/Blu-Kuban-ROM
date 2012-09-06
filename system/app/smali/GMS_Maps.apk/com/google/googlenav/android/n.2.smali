.class Lcom/google/googlenav/android/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/googlenav/android/M;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/M;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1753
    iput-object p1, p0, Lcom/google/googlenav/android/N;->b:Lcom/google/googlenav/android/M;

    iput-object p2, p0, Lcom/google/googlenav/android/N;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/google/googlenav/android/N;->b:Lcom/google/googlenav/android/M;

    invoke-static {v0}, Lcom/google/googlenav/android/M;->a(Lcom/google/googlenav/android/M;)Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->a()V

    .line 1757
    iget-object v1, p0, Lcom/google/googlenav/android/N;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1758
    :try_start_c
    iget-object v0, p0, Lcom/google/googlenav/android/N;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1759
    monitor-exit v1

    .line 1760
    return-void

    .line 1759
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v0
.end method
