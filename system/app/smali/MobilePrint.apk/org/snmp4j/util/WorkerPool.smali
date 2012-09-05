.class public interface abstract Lorg/snmp4j/util/WorkerPool;
.super Ljava/lang/Object;
.source "WorkerPool.java"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract execute(Lorg/snmp4j/util/WorkerTask;)V
.end method

.method public abstract isIdle()Z
.end method

.method public abstract stop()V
.end method

.method public abstract tryToExecute(Lorg/snmp4j/util/WorkerTask;)Z
.end method
