.class Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$1;
.super Ljava/lang/Object;
.source "SimpleFileServer.java"

# interfaces
.implements Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->buildResponse(Lcom/samsung/http/HTTPRequest;Ljava/lang/String;Ljava/io/File;)Lcom/samsung/http/HTTPResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;


# direct methods
.method constructor <init>(Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$1;->this$0:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;

    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Ljava/lang/String;J)V
    .registers 6
    .parameter "sessionID"
    .parameter "readBytes"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$1;->this$0:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->notifyEvent(ILjava/lang/Object;J)V

    .line 134
    return-void
.end method

.method public onProgress(Ljava/lang/String;J)V
    .registers 6
    .parameter "sessionID"
    .parameter "readBytes"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$1;->this$0:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->notifyEvent(ILjava/lang/Object;J)V

    .line 130
    return-void
.end method

.method public onStarted(Ljava/lang/String;)V
    .registers 4
    .parameter "sessionID"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$1;->this$0:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->notifyEvent(ILjava/lang/Object;)V

    .line 138
    return-void
.end method

.method public onTerminated(Ljava/lang/String;)V
    .registers 4
    .parameter "sessionID"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$1;->this$0:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->notifyEvent(ILjava/lang/Object;)V

    .line 126
    return-void
.end method
