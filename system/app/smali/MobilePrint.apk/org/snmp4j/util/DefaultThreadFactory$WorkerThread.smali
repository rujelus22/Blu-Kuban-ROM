.class public Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;
.super Ljava/lang/Object;
.source "DefaultThreadFactory.java"

# interfaces
.implements Lorg/snmp4j/util/WorkerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/util/DefaultThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WorkerThread"
.end annotation


# instance fields
.field private started:Z

.field private task:Lorg/snmp4j/util/WorkerTask;

.field private final this$0:Lorg/snmp4j/util/DefaultThreadFactory;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lorg/snmp4j/util/DefaultThreadFactory;Ljava/lang/String;Lorg/snmp4j/util/WorkerTask;)V
    .registers 5
    .parameter
    .parameter "name"
    .parameter "task"

    .prologue
    .line 75
    iput-object p1, p0, Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;->this$0:Lorg/snmp4j/util/DefaultThreadFactory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;->started:Z

    .line 76
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p3, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;->thread:Ljava/lang/Thread;

    .line 77
    iput-object p3, p0, Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;->task:Lorg/snmp4j/util/WorkerTask;

    .line 78
    return-void
.end method

.method static access$000(Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;->thread:Ljava/lang/Thread;

    return-object v0
.end method


# virtual methods
.method public interrupt()V
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;->task:Lorg/snmp4j/util/WorkerTask;

    invoke-interface {v0}, Lorg/snmp4j/util/WorkerTask;->interrupt()V

    .line 101
    iget-object v0, p0, Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 102
    return-void
.end method

.method public join()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;->task:Lorg/snmp4j/util/WorkerTask;

    invoke-interface {v0}, Lorg/snmp4j/util/WorkerTask;->join()V

    .line 86
    iget-object v0, p0, Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;->thread:Ljava/lang/Thread;

    iget-object v1, p0, Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;->this$0:Lorg/snmp4j/util/DefaultThreadFactory;

    invoke-static {v1}, Lorg/snmp4j/util/DefaultThreadFactory;->access$100(Lorg/snmp4j/util/DefaultThreadFactory;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    .line 87
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;->started:Z

    if-nez v0, :cond_d

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;->started:Z

    .line 92
    iget-object v0, p0, Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 97
    :goto_c
    return-void

    .line 95
    :cond_d
    iget-object v0, p0, Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_c
.end method

.method public terminate()V
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;->task:Lorg/snmp4j/util/WorkerTask;

    invoke-interface {v0}, Lorg/snmp4j/util/WorkerTask;->terminate()V

    .line 82
    return-void
.end method
