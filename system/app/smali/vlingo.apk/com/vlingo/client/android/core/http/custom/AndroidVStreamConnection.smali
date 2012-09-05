.class public Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;
.super Ljava/lang/Object;
.source "AndroidVStreamConnection.java"

# interfaces
.implements Ljavax/microedition/io/HttpConnection;
.implements Lcom/vlingo/client/core/http/custom/VStreamConnection;


# static fields
.field private static final CONNECT_TIMEOUT_NORMAL:I = 0x4e20

.field private static final CONNECT_TIMEOUT_SLOW_NETWORK:I = 0x9c40

.field private static final ETAG:Ljava/lang/String; = "VoiceTalk"

.field private static final READ_TIMEOUT_NORMAL:I = 0x7530

.field private static final READ_TIMEOUT_SLOW_NETWORK:I = 0xc350


# instance fields
.field private m_Connection:Ljava/net/HttpURLConnection;

.field private m_DataInputStream:Ljava/io/DataInputStream;

.field private m_DataOutputStream:Ljava/io/DataOutputStream;

.field private m_InputStatus:Ljava/lang/Boolean;

.field private m_InputStream:Ljava/io/InputStream;

.field private m_OutputStatus:Ljava/lang/Boolean;

.field private m_OutputStream:Ljava/io/OutputStream;

.field private m_URL:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/http/URL;)V
    .registers 7
    .parameter "v_url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/vlingo/client/core/http/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/vlingo/client/core/http/URL;->host:Ljava/lang/String;

    iget v3, p1, Lcom/vlingo/client/core/http/URL;->port:I

    iget-object v4, p1, Lcom/vlingo/client/core/http/URL;->path:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;-><init>(Ljava/net/URL;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;-><init>(Ljava/net/URL;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_InputStatus:Ljava/lang/Boolean;

    .line 50
    iput-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_OutputStatus:Ljava/lang/Boolean;

    .line 52
    iput-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    .line 53
    iput-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_URL:Ljava/net/URL;

    .line 54
    iput-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_InputStream:Ljava/io/InputStream;

    .line 55
    iput-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_OutputStream:Ljava/io/OutputStream;

    .line 56
    iput-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_DataInputStream:Ljava/io/DataInputStream;

    .line 57
    iput-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_DataOutputStream:Ljava/io/DataOutputStream;

    .line 72
    :try_start_14
    iput-object p1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_URL:Ljava/net/URL;

    .line 73
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_URL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    .line 74
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 75
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 76
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isChineseBuild()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 81
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    const v2, 0xc350

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 82
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    const v2, 0x9c40

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 104
    :goto_42
    return-void

    .line 88
    :cond_43
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 89
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
    :try_end_51
    .catch Ljava/net/MalformedURLException; {:try_start_14 .. :try_end_51} :catch_52
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_51} :catch_9e

    goto :goto_42

    .line 91
    :catch_52
    move-exception v0

    .line 93
    .local v0, e:Ljava/net/MalformedURLException;
    const-string v1, "VoiceTalk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "11Bad URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- m_Connection.getReadTimeout() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v1, "VoiceTalk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -- m_Connection.getConnectTimeout() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 97
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_9e
    move-exception v0

    .line 99
    .local v0, e:Ljava/io/IOException;
    const-string v1, "VoiceTalk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "12Failed to open Connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--m_Connection.getReadTimeout()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v1, "VoiceTalk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -- m_Connection.getConnectTimeout() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_DataInputStream:Ljava/io/DataInputStream;

    if-eqz v1, :cond_c

    .line 145
    :try_start_5
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_DataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_59

    .line 154
    :goto_a
    iput-object v3, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_DataInputStream:Ljava/io/DataInputStream;

    .line 156
    :cond_c
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_InputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_17

    .line 159
    :try_start_10
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_InputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_62

    .line 168
    :goto_15
    iput-object v3, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_InputStream:Ljava/io/InputStream;

    .line 170
    :cond_17
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_DataOutputStream:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_22

    .line 174
    :try_start_1b
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_DataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_6b

    .line 181
    :goto_20
    iput-object v3, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_DataOutputStream:Ljava/io/DataOutputStream;

    .line 183
    :cond_22
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_OutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_2d

    .line 187
    :try_start_26
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_OutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_74

    .line 195
    :goto_2b
    iput-object v3, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_OutputStream:Ljava/io/OutputStream;

    .line 197
    :cond_2d
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_38

    .line 201
    :try_start_31
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_7d

    .line 209
    :goto_36
    iput-object v3, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    .line 211
    :cond_38
    iget-object v2, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_URL:Ljava/net/URL;

    monitor-enter v2

    .line 213
    const/4 v1, 0x1

    :try_start_3c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_InputStatus:Ljava/lang/Boolean;

    .line 214
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_URL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 215
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_86

    .line 216
    iget-object v2, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_URL:Ljava/net/URL;

    monitor-enter v2

    .line 218
    const/4 v1, 0x1

    :try_start_4c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_OutputStatus:Ljava/lang/Boolean;

    .line 219
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_URL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 220
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_89

    .line 221
    return-void

    .line 147
    :catch_59
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VoiceTalk"

    const-string v2, "0Input Stream close() error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 161
    .end local v0           #e:Ljava/lang/Exception;
    :catch_62
    move-exception v0

    .line 163
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "VoiceTalk"

    const-string v2, "1Input Stream close() error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 175
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6b
    move-exception v0

    .line 177
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "VoiceTalk"

    const-string v2, "2Output stream close() error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 188
    .end local v0           #e:Ljava/lang/Exception;
    :catch_74
    move-exception v0

    .line 190
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "VoiceTalk"

    const-string v2, "3Output stream close() error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 203
    .end local v0           #e:Ljava/lang/Exception;
    :catch_7d
    move-exception v0

    .line 205
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "VoiceTalk"

    const-string v2, "4Connection disconnect() error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 215
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_86
    move-exception v1

    :try_start_87
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v1

    .line 220
    :catchall_89
    move-exception v1

    :try_start_8a
    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v1
.end method

.method public getConnectionDetails()Lcom/vlingo/client/core/net/ConnectionResult;
    .registers 3

    .prologue
    .line 231
    new-instance v0, Lcom/vlingo/client/core/net/ConnectionResult;

    invoke-direct {v0}, Lcom/vlingo/client/core/net/ConnectionResult;-><init>()V

    .line 232
    .local v0, r:Lcom/vlingo/client/core/net/ConnectionResult;
    const/4 v1, 0x0

    iput v1, v0, Lcom/vlingo/client/core/net/ConnectionResult;->connectionType:I

    .line 233
    iput-object p0, v0, Lcom/vlingo/client/core/net/ConnectionResult;->connection:Ljavax/microedition/io/Connection;

    .line 234
    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_URL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_URL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/DataInputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_a

    .line 249
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 251
    :cond_a
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    monitor-enter v1

    .line 253
    :try_start_d
    iget-object v0, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_DataInputStream:Ljava/io/DataInputStream;

    if-nez v0, :cond_2a

    .line 257
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->openInputStream()Ljava/io/InputStream;

    .line 258
    iget-object v0, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_InputStream:Ljava/io/InputStream;

    if-nez v0, :cond_21

    .line 261
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 265
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_1e

    throw v0

    .line 263
    :cond_21
    :try_start_21
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_InputStream:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_DataInputStream:Ljava/io/DataInputStream;

    .line 265
    :cond_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_1e

    .line 266
    iget-object v0, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_DataInputStream:Ljava/io/DataInputStream;

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/DataOutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_a

    .line 328
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 330
    :cond_a
    iget-object v2, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_URL:Ljava/net/URL;

    monitor-enter v2

    .line 332
    :try_start_d
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_DataOutputStream:Ljava/io/DataOutputStream;

    if-nez v1, :cond_4c

    .line 336
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_OutputStatus:Ljava/lang/Boolean;

    if-nez v1, :cond_1e

    .line 340
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 369
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw v1

    .line 342
    :cond_1e
    :goto_1e
    :try_start_1e
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_OutputStatus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_1b

    if-eqz v1, :cond_39

    .line 352
    :try_start_2a
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_URL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_1b
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2f} :catch_30

    goto :goto_1e

    .line 354
    :catch_30
    move-exception v0

    .line 356
    .local v0, e1:Ljava/lang/InterruptedException;
    :try_start_31
    const-string v1, "VoiceTalk"

    const-string v3, "6wait() error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 361
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_39
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_OutputStream:Ljava/io/OutputStream;

    if-nez v1, :cond_43

    .line 365
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 367
    :cond_43
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_OutputStream:Ljava/io/OutputStream;

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_DataOutputStream:Ljava/io/DataOutputStream;

    .line 369
    :cond_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_31 .. :try_end_4d} :catchall_1b

    .line 370
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_DataOutputStream:Ljava/io/DataOutputStream;

    return-object v1
.end method

.method public getResponseCode()I
    .registers 3

    .prologue
    .line 419
    const/4 v0, -0x1

    .line 422
    .local v0, responseCode:I
    :try_start_1
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    move-result v0

    .line 434
    :goto_7
    return v0

    .line 428
    :catch_8
    move-exception v1

    goto :goto_7

    .line 424
    :catch_a
    move-exception v1

    goto :goto_7
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->getInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic openDataInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->openDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    return-object v0
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->getOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_a

    .line 286
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 288
    :cond_a
    iget-object v2, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_URL:Ljava/net/URL;

    monitor-enter v2

    .line 289
    :try_start_d
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_InputStream:Ljava/io/InputStream;

    if-nez v1, :cond_39

    .line 292
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_InputStatus:Ljava/lang/Boolean;

    if-nez v1, :cond_1e

    .line 295
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 313
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw v1

    .line 297
    :cond_1e
    :goto_1e
    :try_start_1e
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_InputStatus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_1b

    if-eqz v1, :cond_39

    .line 303
    :try_start_2a
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_URL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_1b
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2f} :catch_30

    goto :goto_1e

    .line 305
    :catch_30
    move-exception v0

    .line 307
    .local v0, e1:Ljava/lang/InterruptedException;
    :try_start_31
    const-string v1, "VoiceTalk"

    const-string v3, "5Error in URL.wait()"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 313
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_1b

    .line 314
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_InputStream:Ljava/io/InputStream;

    return-object v1
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 6
    .parameter "method"

    .prologue
    .line 442
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_5

    .line 458
    :goto_4
    return-void

    .line 446
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    const-string v2, "Connection"

    const-string v3, "CLOSE"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_13} :catch_14

    goto :goto_4

    .line 449
    :catch_14
    move-exception v0

    .line 451
    .local v0, e:Ljava/net/ProtocolException;
    const-string v1, "VoiceTalk"

    const-string v2, "7ProtocolException()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_5

    .line 464
    :goto_4
    return-void

    .line 463
    :cond_5
    iget-object v0, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public startRequest(Lcom/vlingo/client/core/http/custom/HttpRequest;)V
    .registers 9
    .parameter "request"

    .prologue
    .line 472
    iget-object v5, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    if-nez v5, :cond_5

    .line 505
    :goto_4
    return-void

    .line 475
    :cond_5
    if-eqz p1, :cond_2e

    .line 476
    invoke-virtual {p1}, Lcom/vlingo/client/core/http/custom/HttpRequest;->sendHeaders()Ljava/util/Hashtable;

    move-result-object v1

    .line 477
    .local v1, headers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 478
    .local v2, iter:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_f
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 480
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 481
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 482
    .local v4, value:Ljava/lang/String;
    iget-object v5, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 484
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_27
    iget-object v5, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 487
    .end local v1           #headers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #iter:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2e
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_OutputStatus:Ljava/lang/Boolean;

    .line 489
    :try_start_35
    iget-object v5, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_41

    .line 490
    iget-object v5, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_OutputStream:Ljava/io/OutputStream;
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_41} :catch_55

    .line 500
    :cond_41
    :goto_41
    iget-object v6, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_URL:Ljava/net/URL;

    monitor-enter v6

    .line 502
    const/4 v5, 0x1

    :try_start_45
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_OutputStatus:Ljava/lang/Boolean;

    .line 503
    iget-object v5, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_URL:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 504
    monitor-exit v6

    goto :goto_4

    :catchall_52
    move-exception v5

    monitor-exit v6
    :try_end_54
    .catchall {:try_start_45 .. :try_end_54} :catchall_52

    throw v5

    .line 493
    :catch_55
    move-exception v0

    .line 494
    .local v0, e:Ljava/io/IOException;
    const-string v5, "VoiceTalk"

    const-string v6, "8IOException()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method public startResponse(Lcom/vlingo/client/core/http/custom/HttpResponse;)V
    .registers 10
    .parameter "response"

    .prologue
    .line 512
    if-eqz p1, :cond_6b

    invoke-virtual {p0}, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 513
    invoke-virtual {p1}, Lcom/vlingo/client/core/http/custom/HttpResponse;->readHeaders()Ljava/util/Hashtable;

    move-result-object v4

    .line 514
    .local v4, headers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 520
    .local v3, fields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_d
    iget-object v6, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_33

    move-result-object v3

    .line 538
    :cond_13
    if-eqz v3, :cond_6b

    const-string v6, "set-cookie"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .local v1, cookies:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_6b

    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, cookieStr:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 545
    .local v5, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_66

    .line 546
    if-nez v0, :cond_48

    .line 547
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cookieStr:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #cookieStr:Ljava/lang/String;
    goto :goto_24

    .line 521
    .end local v0           #cookieStr:Ljava/lang/String;
    .end local v1           #cookies:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_33
    move-exception v2

    .line 526
    .local v2, e:Ljava/lang/Exception;
    instance-of v6, v2, Ljava/net/SocketTimeoutException;

    if-eqz v6, :cond_13

    .line 527
    const-string v6, "VoiceTalk"

    const-string v7, "9SocketTimeoutException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v6, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 533
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    .line 587
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #fields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4           #headers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_47
    return-void

    .line 549
    .restart local v0       #cookieStr:Ljava/lang/String;
    .restart local v1       #cookies:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #fields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v4       #headers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 555
    :cond_66
    const-string v6, "Set-Cookie"

    invoke-virtual {v4, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .end local v0           #cookieStr:Ljava/lang/String;
    .end local v1           #cookies:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #fields:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4           #headers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6b
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_InputStatus:Ljava/lang/Boolean;

    .line 560
    :try_start_72
    iget-object v6, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_88

    .line 561
    iget-object v6, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_9c

    .line 566
    iget-object v6, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_InputStream:Ljava/io/InputStream;
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_88} :catch_a5

    .line 582
    :cond_88
    :goto_88
    iget-object v7, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_URL:Ljava/net/URL;

    monitor-enter v7

    .line 584
    const/4 v6, 0x1

    :try_start_8c
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_InputStatus:Ljava/lang/Boolean;

    .line 585
    iget-object v6, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_URL:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 586
    monitor-exit v7

    goto :goto_47

    :catchall_99
    move-exception v6

    monitor-exit v7
    :try_end_9b
    .catchall {:try_start_8c .. :try_end_9b} :catchall_99

    throw v6

    .line 572
    :cond_9c
    :try_start_9c
    iget-object v6, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_Connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;->m_InputStream:Ljava/io/InputStream;
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a4} :catch_a5

    goto :goto_88

    .line 575
    :catch_a5
    move-exception v2

    .line 576
    .local v2, e:Ljava/io/IOException;
    const-string v6, "VoiceTalk"

    const-string v7, "10IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88
.end method
