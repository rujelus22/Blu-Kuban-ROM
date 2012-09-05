.class public Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;
.super Ljava/lang/Object;
.source "SimpleFileServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;,
        Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;
    }
.end annotation


# instance fields
.field private mFileEventHandler:Landroid/os/Handler;

.field private mFileEventHandlerMutex:Ljava/lang/Object;

.field private mFileList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mInputStreamList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mListMutex:Ljava/lang/Object;

.field private mRand:Ljava/util/Random;

.field private mSessionFileIDList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mRand:Ljava/util/Random;

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mFileList:Ljava/util/HashMap;

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mSessionFileIDList:Ljava/util/HashMap;

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mInputStreamList:Ljava/util/HashMap;

    .line 254
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mListMutex:Ljava/lang/Object;

    .line 255
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mFileEventHandlerMutex:Ljava/lang/Object;

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mFileEventHandler:Landroid/os/Handler;

    .line 18
    return-void
.end method


# virtual methods
.method public addFile(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 8
    .parameter "sessionID"
    .parameter "file"

    .prologue
    .line 29
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 30
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12

    .line 31
    :cond_10
    const/4 v0, 0x0

    .line 44
    :goto_11
    return-object v0

    .line 33
    :cond_12
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mListMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 34
    :try_start_15
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mRand:Ljava/util/Random;

    const v4, 0x7fffffff

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, id:Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mFileList:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mSessionFileIDList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 37
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mSessionFileIDList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 38
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :goto_3a
    monitor-exit v3

    goto :goto_11

    .line 33
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_3c
    move-exception v2

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_15 .. :try_end_3e} :catchall_3c

    throw v2

    .line 40
    .restart local v0       #id:Ljava/lang/String;
    :cond_3f
    :try_start_3f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mSessionFileIDList:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_3c

    goto :goto_3a
.end method

.method buildResponse(Lcom/samsung/http/HTTPRequest;Ljava/lang/String;Ljava/io/File;)Lcom/samsung/http/HTTPResponse;
    .registers 10
    .parameter "httpReq"
    .parameter "sessionID"
    .parameter "file"

    .prologue
    .line 122
    new-instance v3, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$1;-><init>(Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;)V

    .line 146
    .local v3, listener:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;
    :try_start_5
    new-instance v1, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;

    invoke-direct {v1, p0, p2, p3, v3}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;-><init>(Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;Ljava/lang/String;Ljava/io/File;Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;)V

    .line 147
    .local v1, fis:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;
    new-instance v2, Lcom/samsung/http/HTTPResponse;

    invoke-direct {v2}, Lcom/samsung/http/HTTPResponse;-><init>()V

    .line 148
    .local v2, httpRes:Lcom/samsung/http/HTTPResponse;
    const-string v4, "application/octet-stream"

    invoke-virtual {v2, v4}, Lcom/samsung/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 149
    const/16 v4, 0xc8

    invoke-virtual {v2, v4}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    .line 150
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/samsung/http/HTTPResponse;->setContentLength(J)V

    .line 151
    invoke-virtual {v2, v1}, Lcom/samsung/http/HTTPResponse;->setContentInputStream(Ljava/io/InputStream;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_23} :catch_24

    .line 155
    .end local v1           #fis:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;
    .end local v2           #httpRes:Lcom/samsung/http/HTTPResponse;
    :goto_23
    return-object v2

    .line 153
    :catch_24
    move-exception v0

    .line 154
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 155
    const/4 v2, 0x0

    goto :goto_23
.end method

.method public clearFiles(Ljava/lang/String;)V
    .registers 7
    .parameter "sessionID"

    .prologue
    .line 49
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mListMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 50
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mSessionFileIDList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 51
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mSessionFileIDList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 52
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mSessionFileIDList:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_24

    .line 49
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_22
    monitor-exit v3

    .line 58
    return-void

    .line 53
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    .local v0, fileID:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mFileList:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 49
    .end local v0           #fileID:Ljava/lang/String;
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_30
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v2
.end method

.method public handleFileRequest(Lcom/samsung/http/HTTPRequest;)V
    .registers 10
    .parameter "httpReq"

    .prologue
    const/16 v7, 0x194

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 68
    if-eqz p1, :cond_1b

    .line 69
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 70
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnBadRequest()Z

    .line 94
    :cond_1b
    :goto_1b
    return-void

    .line 73
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->parseURL(Lcom/samsung/http/HTTPRequest;)[Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, ids:[Ljava/lang/String;
    if-eqz v1, :cond_3e

    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3e

    .line 75
    aget-object v3, v1, v5

    if-eqz v3, :cond_3e

    aget-object v3, v1, v6

    if-eqz v3, :cond_3e

    .line 76
    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3e

    aget-object v3, v1, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_41

    .line 77
    :cond_3e
    invoke-virtual {p1, v7}, Lcom/samsung/http/HTTPRequest;->returnResponse(I)Z

    .line 81
    :cond_41
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mFileList:Ljava/util/HashMap;

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 82
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_53

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-nez v3, :cond_57

    .line 84
    :cond_53
    invoke-virtual {p1, v7}, Lcom/samsung/http/HTTPRequest;->returnResponse(I)Z

    goto :goto_1b

    .line 86
    :cond_57
    aget-object v3, v1, v6

    invoke-virtual {p0, p1, v3, v0}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->buildResponse(Lcom/samsung/http/HTTPRequest;Ljava/lang/String;Ljava/io/File;)Lcom/samsung/http/HTTPResponse;

    move-result-object v2

    .line 87
    .local v2, resp:Lcom/samsung/http/HTTPResponse;
    if-nez v2, :cond_65

    .line 88
    const/16 v3, 0x1f4

    invoke-virtual {p1, v3}, Lcom/samsung/http/HTTPRequest;->returnResponse(I)Z

    goto :goto_1b

    .line 90
    :cond_65
    invoke-virtual {p1, v2}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    goto :goto_1b
.end method

.method notifyEvent(ILjava/lang/Object;)V
    .registers 5
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 104
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->notifyEvent(ILjava/lang/Object;J)V

    .line 105
    return-void
.end method

.method notifyEvent(ILjava/lang/Object;J)V
    .registers 10
    .parameter "what"
    .parameter "obj"
    .parameter "bytes"

    .prologue
    .line 108
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mFileEventHandlerMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 109
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mFileEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_27

    .line 110
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mFileEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 111
    .local v0, msg:Landroid/os/Message;
    const-wide/32 v3, 0x7fffffff

    cmp-long v1, p3, v3

    if-lez v1, :cond_1f

    .line 112
    new-instance v1, Ljava/lang/Error;

    const-string v3, "Max Size Violation. Please Contact to chansuk.yang"

    invoke-direct {v1, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    .end local v0           #msg:Landroid/os/Message;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1

    .line 113
    .restart local v0       #msg:Landroid/os/Message;
    :cond_1f
    long-to-int v1, p3

    :try_start_20
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 114
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mFileEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    .end local v0           #msg:Landroid/os/Message;
    :cond_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_1c

    .line 117
    return-void
.end method

.method parseURL(Lcom/samsung/http/HTTPRequest;)[Ljava/lang/String;
    .registers 7
    .parameter "httpReq"

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getParameterList()Lcom/samsung/http/ParameterList;

    move-result-object v1

    .line 98
    .local v1, paramList:Lcom/samsung/http/ParameterList;
    const-string v3, "file_id"

    invoke-virtual {v1, v3}, Lcom/samsung/http/ParameterList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, id:Ljava/lang/String;
    const-string v3, "session_id"

    invoke-virtual {v1, v3}, Lcom/samsung/http/ParameterList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, session:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    return-object v3
.end method

.method public setFileEventHandler(Landroid/os/Handler;)V
    .registers 4
    .parameter "handler"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mFileEventHandlerMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;->mFileEventHandler:Landroid/os/Handler;

    .line 61
    monitor-exit v1

    .line 64
    return-void

    .line 61
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
