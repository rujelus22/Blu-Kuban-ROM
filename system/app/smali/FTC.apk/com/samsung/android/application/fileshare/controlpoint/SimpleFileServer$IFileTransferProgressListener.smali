.class interface abstract Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;
.super Ljava/lang/Object;
.source "SimpleFileServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "IFileTransferProgressListener"
.end annotation


# virtual methods
.method public abstract onFinished(Ljava/lang/String;J)V
.end method

.method public abstract onProgress(Ljava/lang/String;J)V
.end method

.method public abstract onStarted(Ljava/lang/String;)V
.end method

.method public abstract onTerminated(Ljava/lang/String;)V
.end method
