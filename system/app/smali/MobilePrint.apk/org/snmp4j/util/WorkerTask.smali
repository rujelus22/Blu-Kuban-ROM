.class public interface abstract Lorg/snmp4j/util/WorkerTask;
.super Ljava/lang/Object;
.source "WorkerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public abstract interrupt()V
.end method

.method public abstract join()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract terminate()V
.end method
