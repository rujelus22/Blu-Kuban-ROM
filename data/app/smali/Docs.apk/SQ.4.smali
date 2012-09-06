.class LSQ;
.super Lcg;
.source "AbstractPreparedSyncMore.java"


# instance fields
.field final synthetic a:I

.field final synthetic a:LSP;

.field final synthetic a:LTg;


# direct methods
.method constructor <init>(LSP;Ljava/lang/String;ILTg;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, LSQ;->a:LSP;

    iput p3, p0, LSQ;->a:I

    iput-object p4, p0, LSQ;->a:LTg;

    invoke-direct {p0, p2}, Lcg;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected c()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 36
    const/4 v1, 0x0

    .line 38
    :try_start_2
    iget-object v0, p0, LSQ;->a:LSP;

    iget v2, p0, LSQ;->a:I

    invoke-virtual {v0, v2}, LSP;->a(I)Z
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_19

    move-result v0

    .line 40
    iget-object v1, p0, LSQ;->a:LSP;

    invoke-static {v1}, LSP;->a(LSP;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 41
    iget-object v1, p0, LSQ;->a:LTg;

    invoke-interface {v1, v0}, LTg;->a(Z)V

    .line 43
    return-void

    .line 40
    :catchall_19
    move-exception v0

    iget-object v2, p0, LSQ;->a:LSP;

    invoke-static {v2}, LSP;->a(LSP;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 41
    iget-object v2, p0, LSQ;->a:LTg;

    invoke-interface {v2, v1}, LTg;->a(Z)V

    throw v0
.end method
