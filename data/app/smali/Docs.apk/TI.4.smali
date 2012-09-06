.class LTI;
.super Ldd;
.source "DocsSyncAdapter.java"


# instance fields
.field final synthetic a:LTH;

.field final synthetic a:Landroid/accounts/Account;

.field final synthetic a:Landroid/content/SyncResult;

.field final synthetic a:Landroid/os/Bundle;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic a:Ljava/util/concurrent/locks/Condition;


# direct methods
.method constructor <init>(LTH;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, LTI;->a:LTH;

    iput-object p3, p0, LTI;->a:Landroid/accounts/Account;

    iput-object p4, p0, LTI;->a:Landroid/os/Bundle;

    iput-object p5, p0, LTI;->a:Ljava/lang/String;

    iput-object p6, p0, LTI;->a:Landroid/content/SyncResult;

    iput-object p7, p0, LTI;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p8, p0, LTI;->a:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0, p2}, Ldd;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 116
    iget-object v0, p0, LTI;->a:LTH;

    invoke-static {v0}, LTH;->a(LTH;)Lans;

    move-result-object v0

    iget-object v1, p0, LTI;->a:LTH;

    invoke-static {v1}, LTH;->a(LTH;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 117
    invoke-static {}, LTH;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 119
    :try_start_17
    iget-object v0, p0, LTI;->a:LTH;

    iget-object v0, v0, LTH;->a:LZC;

    iget-object v1, p0, LTI;->a:LTH;

    invoke-static {v1}, LTH;->a(LTH;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "DocsSyncAdapter"

    new-instance v3, LTJ;

    invoke-direct {v3, p0}, LTJ;-><init>(LTI;)V

    invoke-interface {v0, v1, v2, v3}, LZC;->a(Landroid/content/Context;Ljava/lang/String;LcI;)V
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_3d

    .line 126
    iget-object v0, p0, LTI;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 127
    iget-object v0, p0, LTI;->a:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 128
    invoke-static {}, LTH;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 130
    return-void

    .line 126
    :catchall_3d
    move-exception v0

    iget-object v1, p0, LTI;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 127
    iget-object v1, p0, LTI;->a:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 128
    invoke-static {}, LTH;->a()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocsSyncAdapter-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LTI;->a:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
