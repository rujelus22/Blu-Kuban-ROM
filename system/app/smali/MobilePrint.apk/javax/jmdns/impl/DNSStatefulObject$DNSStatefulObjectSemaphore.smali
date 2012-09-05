.class public final Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;
.super Ljava/lang/Object;
.source "DNSStatefulObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSStatefulObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DNSStatefulObjectSemaphore"
.end annotation


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private final _name:Ljava/lang/String;

.field private final _semaphores:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Thread;",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;->logger:Ljava/util/logging/Logger;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;->_name:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;->_semaphores:Ljava/util/concurrent/ConcurrentMap;

    .line 47
    return-void
.end method


# virtual methods
.method public signalEvent()V
    .registers 5

    .prologue
    .line 75
    iget-object v2, p0, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;->_semaphores:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 76
    .local v1, semaphores:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/concurrent/Semaphore;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_11

    .line 80
    return-void

    .line 76
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Semaphore;

    .line 77
    .local v0, semaphore:Ljava/util/concurrent/Semaphore;
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 78
    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x3e8

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 85
    .local v0, aLog:Ljava/lang/StringBuilder;
    const-string v2, "Semaphore: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v2, p0, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;->_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v2, p0, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;->_semaphores:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v2

    if-nez v2, :cond_23

    .line 88
    const-string v2, " no semaphores."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 90
    :cond_23
    const-string v2, " semaphores:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v2, p0, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;->_semaphores:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 92
    .local v1, thread:Ljava/lang/Thread;
    const-string v3, "\tThread: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    iget-object v3, p0, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;->_semaphores:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_32
.end method

.method public waitForEvent(J)V
    .registers 9
    .parameter "timeout"

    .prologue
    const/4 v4, 0x1

    .line 56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 57
    .local v2, thread:Ljava/lang/Thread;
    iget-object v3, p0, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;->_semaphores:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Semaphore;

    .line 58
    .local v1, semaphore:Ljava/util/concurrent/Semaphore;
    if-nez v1, :cond_1c

    .line 59
    new-instance v1, Ljava/util/concurrent/Semaphore;

    .end local v1           #semaphore:Ljava/util/concurrent/Semaphore;
    invoke-direct {v1, v4, v4}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    .line 60
    .restart local v1       #semaphore:Ljava/util/concurrent/Semaphore;
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 61
    iget-object v3, p0, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;->_semaphores:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_1c
    iget-object v3, p0, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;->_semaphores:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #semaphore:Ljava/util/concurrent/Semaphore;
    check-cast v1, Ljava/util/concurrent/Semaphore;

    .line 65
    .restart local v1       #semaphore:Ljava/util/concurrent/Semaphore;
    :try_start_24
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_29} :catch_2a

    .line 69
    :goto_29
    return-void

    .line 66
    :catch_2a
    move-exception v0

    .line 67
    .local v0, exception:Ljava/lang/InterruptedException;
    sget-object v3, Ljavax/jmdns/impl/DNSStatefulObject$DNSStatefulObjectSemaphore;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v5, "Exception "

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29
.end method
