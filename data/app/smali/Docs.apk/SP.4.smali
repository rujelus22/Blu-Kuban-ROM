.class public abstract LSP;
.super Ljava/lang/Object;
.source "AbstractPreparedSyncMore.java"

# interfaces
.implements LTf;


# instance fields
.field private a:Lcg;

.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, LSP;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic a(LSP;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, LSP;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, LSP;->a:Lcg;

    if-eqz v0, :cond_9

    .line 58
    iget-object v0, p0, LSP;->a:Lcg;

    invoke-virtual {v0}, Lcg;->a()V

    .line 60
    :cond_9
    return-void
.end method

.method public final a(LTg;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    iget-object v0, p0, LSP;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_29

    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t run in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LSP;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_29
    invoke-virtual {p0}, LSP;->c()Z

    move-result v0

    if-nez v0, :cond_5d

    move v0, v1

    :goto_30
    const-string v3, "Already finished"

    invoke-static {v0, v3}, LafQ;->b(ZLjava/lang/Object;)V

    .line 30
    if-ltz p2, :cond_5f

    :goto_37
    invoke-static {v1}, LafQ;->a(Z)V

    .line 32
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v0, LSQ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2, p1}, LSQ;-><init>(LSP;Ljava/lang/String;ILTg;)V

    iput-object v0, p0, LSP;->a:Lcg;

    .line 45
    iget-object v0, p0, LSP;->a:Lcg;

    invoke-virtual {v0}, Lcg;->start()V

    .line 46
    return-void

    :cond_5d
    move v0, v2

    .line 29
    goto :goto_30

    :cond_5f
    move v1, v2

    .line 30
    goto :goto_37
.end method

.method public final a()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 50
    iget-object v1, p0, LSP;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected abstract a(I)Z
.end method
