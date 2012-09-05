.class Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;
.super Ljava/io/FileInputStream;
.source "SimpleFileServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventNotifyFileInputStream"
.end annotation


# instance fields
.field mFileSize:J

.field mListener:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;

.field mSessionID:Ljava/lang/String;

.field mUpdateSize:J

.field mUpdateThreadhold:J

.field final synthetic this$0:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;Ljava/lang/String;Ljava/io/File;Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;)V
    .registers 9
    .parameter
    .parameter "sessionID"
    .parameter "file"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 169
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->this$0:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer;

    .line 170
    invoke-direct {p0, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 161
    iput-wide v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mFileSize:J

    .line 162
    iput-wide v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mUpdateThreadhold:J

    .line 163
    iput-wide v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mUpdateSize:J

    .line 165
    iput-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mSessionID:Ljava/lang/String;

    .line 166
    iput-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mListener:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;

    .line 171
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mFileSize:J

    .line 172
    iget-wide v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mFileSize:J

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mUpdateThreadhold:J

    .line 173
    iput-object p2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mSessionID:Ljava/lang/String;

    .line 174
    iput-object p4, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mListener:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;

    .line 176
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mListener:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;

    if-eqz v0, :cond_2e

    .line 177
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mListener:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;

    iget-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mSessionID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;->onStarted(Ljava/lang/String;)V

    .line 178
    :cond_2e
    return-void
.end method


# virtual methods
.method addReadBytes(I)V
    .registers 6
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mListener:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;

    if-nez v0, :cond_5

    .line 236
    :cond_4
    :goto_4
    return-void

    .line 226
    :cond_5
    if-eqz p1, :cond_a

    const/4 v0, -0x1

    if-ne p1, v0, :cond_17

    .line 227
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mListener:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;

    iget-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mSessionID:Ljava/lang/String;

    iget-wide v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mUpdateSize:J

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;->onFinished(Ljava/lang/String;J)V

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->close()V

    goto :goto_4

    .line 230
    :cond_17
    iget-wide v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mUpdateSize:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mUpdateSize:J

    .line 231
    iget-wide v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mUpdateSize:J

    iget-wide v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mUpdateThreadhold:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 232
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mListener:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;

    iget-object v1, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mSessionID:Ljava/lang/String;

    iget-wide v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mUpdateSize:J

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;->onProgress(Ljava/lang/String;J)V

    .line 233
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mUpdateSize:J

    goto :goto_4
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 184
    .local v0, ct:I
    :try_start_1
    invoke-super {p0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .line 185
    invoke-virtual {p0, v0}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->addReadBytes(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_9

    .line 191
    return v0

    .line 186
    :catch_9
    move-exception v1

    .line 187
    .local v1, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mListener:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;

    if-eqz v2, :cond_15

    .line 188
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mListener:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;

    iget-object v3, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mSessionID:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;->onTerminated(Ljava/lang/String;)V

    .line 189
    :cond_15
    throw v1
.end method

.method public read([B)I
    .registers 6
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, ct:I
    :try_start_1
    invoke-super {p0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 199
    invoke-virtual {p0, v0}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->addReadBytes(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_9

    .line 205
    return v0

    .line 200
    :catch_9
    move-exception v1

    .line 201
    .local v1, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mListener:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;

    if-eqz v2, :cond_15

    .line 202
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mListener:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;

    iget-object v3, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mSessionID:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;->onTerminated(Ljava/lang/String;)V

    .line 203
    :cond_15
    throw v1
.end method

.method public read([BII)I
    .registers 8
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 212
    .local v0, ct:I
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 213
    invoke-virtual {p0, v0}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->addReadBytes(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_9

    .line 219
    return v0

    .line 214
    :catch_9
    move-exception v1

    .line 215
    .local v1, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mListener:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;

    if-eqz v2, :cond_15

    .line 216
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mListener:Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;

    iget-object v3, p0, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$EventNotifyFileInputStream;->mSessionID:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/application/fileshare/controlpoint/SimpleFileServer$IFileTransferProgressListener;->onTerminated(Ljava/lang/String;)V

    .line 217
    :cond_15
    throw v1
.end method
