.class LaD/l;
.super Ljava/lang/Object;

# interfaces
.implements Lay/q;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:LaD/j;


# direct methods
.method constructor <init>(LaD/j;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, LaD/l;->b:LaD/j;

    iput-object p2, p0, LaD/l;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aa_()V
    .registers 3

    iget-object v1, p0, LaD/l;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, LaD/l;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
