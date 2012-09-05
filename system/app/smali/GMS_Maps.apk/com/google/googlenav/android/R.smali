.class Lcom/google/googlenav/android/R;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/googlenav/android/Q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/Q;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/android/R;->b:Lcom/google/googlenav/android/Q;

    iput-object p2, p0, Lcom/google/googlenav/android/R;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/android/R;->b:Lcom/google/googlenav/android/Q;

    invoke-static {v0}, Lcom/google/googlenav/android/Q;->a(Lcom/google/googlenav/android/Q;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->a()V

    iget-object v1, p0, Lcom/google/googlenav/android/R;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/google/googlenav/android/R;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v0
.end method
