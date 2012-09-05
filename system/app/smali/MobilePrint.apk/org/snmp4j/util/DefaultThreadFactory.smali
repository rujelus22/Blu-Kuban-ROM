.class public Lorg/snmp4j/util/DefaultThreadFactory;
.super Ljava/lang/Object;
.source "DefaultThreadFactory.java"

# interfaces
.implements Lorg/snmp4j/util/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;
    }
.end annotation


# instance fields
.field private joinTimeout:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->getThreadJoinTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/snmp4j/util/DefaultThreadFactory;->joinTimeout:J

    .line 42
    return-void
.end method

.method static access$100(Lorg/snmp4j/util/DefaultThreadFactory;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 36
    iget-wide v0, p0, Lorg/snmp4j/util/DefaultThreadFactory;->joinTimeout:J

    return-wide v0
.end method


# virtual methods
.method public createWorkerThread(Ljava/lang/String;Lorg/snmp4j/util/WorkerTask;Z)Lorg/snmp4j/util/WorkerTask;
    .registers 6
    .parameter "name"
    .parameter "task"
    .parameter "daemon"

    .prologue
    .line 54
    new-instance v0, Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;

    invoke-direct {v0, p0, p1, p2}, Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;-><init>(Lorg/snmp4j/util/DefaultThreadFactory;Ljava/lang/String;Lorg/snmp4j/util/WorkerTask;)V

    .line 55
    .local v0, wt:Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;
    invoke-static {v0}, Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;->access$000(Lorg/snmp4j/util/DefaultThreadFactory$WorkerThread;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 56
    return-object v0
.end method

.method public setThreadJoinTimeout(J)V
    .registers 3
    .parameter "millis"

    .prologue
    .line 66
    iput-wide p1, p0, Lorg/snmp4j/util/DefaultThreadFactory;->joinTimeout:J

    .line 67
    return-void
.end method
