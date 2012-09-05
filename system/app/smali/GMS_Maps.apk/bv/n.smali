.class final Lbv/n;
.super Ljava/lang/Object;

# interfaces
.implements LZ/e;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lbv/m;


# direct methods
.method constructor <init>(Lbv/m;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lbv/n;->b:Lbv/m;

    iput-object p2, p0, Lbv/n;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ/d;Ljava/lang/Object;)V
    .registers 5

    iget-object v1, p0, Lbv/n;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lbv/n;->a:Ljava/lang/Object;

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
