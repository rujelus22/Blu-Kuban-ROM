.class public interface abstract Lcom/samsung/swift/service/webserver/WebServer;
.super Ljava/lang/Object;
.source "WebServer.java"


# virtual methods
.method public abstract isRunning()Z
.end method

.method public abstract join()V
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/exception/InstallationCorruptException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
