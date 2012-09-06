.class Lam/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah/p;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lam/j;


# direct methods
.method constructor <init>(Lam/j;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lam/l;->b:Lam/j;

    iput-object p2, p0, Lam/l;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public P_()V
    .registers 3

    .prologue
    .line 231
    iget-object v1, p0, Lam/l;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_3
    iget-object v0, p0, Lam/l;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 233
    monitor-exit v1

    .line 234
    return-void

    .line 233
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
