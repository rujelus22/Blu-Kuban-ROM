.class public abstract Ljcifs/util/transport/Transport;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static id:I

.field static log:Ljcifs/util/LogStream;


# instance fields
.field name:Ljava/lang/String;

.field protected response_map:Ljava/util/HashMap;

.field state:I

.field te:Ljcifs/util/transport/TransportException;

.field thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Ljcifs/util/transport/Transport;->id:I

    .line 20
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Ljcifs/util/transport/Transport;->id:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Ljcifs/util/transport/Transport;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    return-void
.end method

.method private loop()V
    .registers 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 94
    :goto_2
    iget-object v7, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    if-ne v7, v10, :cond_73

    .line 96
    :try_start_a
    invoke-virtual {p0}, Ljcifs/util/transport/Transport;->peekKey()Ljcifs/util/transport/Request;

    move-result-object v3

    .line 97
    .local v3, key:Ljcifs/util/transport/Request;
    if-nez v3, :cond_44

    .line 98
    new-instance v7, Ljava/io/IOException;

    const-string v10, "end of stream"

    invoke-direct {v7, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_18

    .line 111
    .end local v3           #key:Ljcifs/util/transport/Request;
    :catch_18
    move-exception v0

    .line 112
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, msg:Ljava/lang/String;
    if-eqz v4, :cond_6f

    const-string v7, "Read timed out"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6f

    move v6, v8

    .line 116
    .local v6, timeout:Z
    :goto_28
    if-nez v6, :cond_71

    move v1, v8

    .line 118
    .local v1, hard:Z
    :goto_2b
    if-nez v6, :cond_39

    sget-object v7, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v7, Ljcifs/util/LogStream;->level:I

    const/4 v10, 0x3

    if-lt v7, v10, :cond_39

    .line 119
    sget-object v7, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v7}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 122
    :cond_39
    :try_start_39
    invoke-virtual {p0, v1}, Ljcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_2

    .line 123
    :catch_3d
    move-exception v2

    .line 124
    .local v2, ioe:Ljava/io/IOException;
    sget-object v7, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v7}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_2

    .line 99
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #hard:Z
    .end local v2           #ioe:Ljava/io/IOException;
    .end local v4           #msg:Ljava/lang/String;
    .end local v6           #timeout:Z
    .restart local v3       #key:Ljcifs/util/transport/Request;
    :cond_44
    :try_start_44
    monitor-enter p0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_45} :catch_18

    .line 100
    :try_start_45
    iget-object v7, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljcifs/util/transport/Response;

    .line 101
    .local v5, response:Ljcifs/util/transport/Response;
    if-nez v5, :cond_65

    .line 102
    sget-object v7, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v7, Ljcifs/util/LogStream;->level:I

    const/4 v10, 0x4

    if-lt v7, v10, :cond_5d

    .line 103
    sget-object v7, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    const-string v10, "Invalid key, skipping message"

    invoke-virtual {v7, v10}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 104
    :cond_5d
    invoke-virtual {p0}, Ljcifs/util/transport/Transport;->doSkip()V

    .line 110
    :goto_60
    monitor-exit p0

    goto :goto_2

    .end local v5           #response:Ljcifs/util/transport/Response;
    :catchall_62
    move-exception v7

    monitor-exit p0
    :try_end_64
    .catchall {:try_start_45 .. :try_end_64} :catchall_62

    :try_start_64
    throw v7
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_65} :catch_18

    .line 106
    .restart local v5       #response:Ljcifs/util/transport/Response;
    :cond_65
    :try_start_65
    invoke-virtual {p0, v5}, Ljcifs/util/transport/Transport;->doRecv(Ljcifs/util/transport/Response;)V

    .line 107
    const/4 v7, 0x1

    iput-boolean v7, v5, Ljcifs/util/transport/Response;->isReceived:Z

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_62

    goto :goto_60

    .end local v3           #key:Ljcifs/util/transport/Request;
    .end local v5           #response:Ljcifs/util/transport/Response;
    .restart local v0       #ex:Ljava/lang/Exception;
    .restart local v4       #msg:Ljava/lang/String;
    :cond_6f
    move v6, v9

    .line 113
    goto :goto_28

    .restart local v6       #timeout:Z
    :cond_71
    move v1, v9

    .line 116
    goto :goto_2b

    .line 128
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v4           #msg:Ljava/lang/String;
    .end local v6           #timeout:Z
    :cond_73
    return-void
.end method

.method public static readn(Ljava/io/InputStream;[BII)I
    .registers 8
    .parameter "in"
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, -0x5

    .line 28
    .local v1, n:I
    :goto_2
    if-ge v0, p3, :cond_e

    .line 29
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 30
    if-gtz v1, :cond_f

    .line 36
    :cond_e
    return v0

    .line 33
    :cond_f
    add-int/2addr v0, v1

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized connect(J)V
    .registers 11
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/util/transport/TransportException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 147
    monitor-enter p0

    :try_start_4
    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    packed-switch v2, :pswitch_data_15e

    .line 156
    :pswitch_9
    new-instance v1, Ljcifs/util/transport/TransportException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, te:Ljcifs/util/transport/TransportException;
    const/4 v2, 0x0

    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 158
    throw v1
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_34
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_27} :catch_27

    .line 185
    .end local v1           #te:Ljcifs/util/transport/TransportException;
    :catch_27
    move-exception v0

    .line 186
    .local v0, ie:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    :try_start_29
    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 187
    const/4 v2, 0x0

    iput-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 188
    new-instance v2, Ljcifs/util/transport/TransportException;

    invoke-direct {v2, v0}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_34

    .line 192
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_34
    move-exception v2

    :try_start_35
    iget v3, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz v3, :cond_67

    iget v3, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v3, v6, :cond_67

    iget v3, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v3, v7, :cond_67

    .line 193
    sget-object v3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v5, :cond_61

    .line 194
    sget-object v3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 195
    :cond_61
    const/4 v3, 0x0

    iput v3, p0, Ljcifs/util/transport/Transport;->state:I

    .line 196
    const/4 v3, 0x0

    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    :cond_67
    throw v2
    :try_end_68
    .catchall {:try_start_35 .. :try_end_68} :catchall_68

    .line 147
    :catchall_68
    move-exception v2

    monitor-exit p0

    throw v2

    .line 192
    :pswitch_6b
    :try_start_6b
    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz v2, :cond_9d

    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v2, v6, :cond_9d

    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v2, v7, :cond_9d

    .line 193
    sget-object v2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v5, :cond_97

    .line 194
    sget-object v2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 195
    :cond_97
    const/4 v2, 0x0

    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 196
    const/4 v2, 0x0

    iput-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;
    :try_end_9d
    .catchall {:try_start_6b .. :try_end_9d} :catchall_68

    .line 199
    :cond_9d
    :goto_9d
    monitor-exit p0

    return-void

    .line 153
    :pswitch_9f
    const/4 v2, 0x0

    :try_start_a0
    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 154
    new-instance v2, Ljcifs/util/transport/TransportException;

    const-string v3, "Connection in error"

    iget-object v4, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    invoke-direct {v2, v3, v4}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 161
    :pswitch_ac
    const/4 v2, 0x1

    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 162
    const/4 v2, 0x0

    iput-object v2, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    .line 163
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 164
    iget-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 166
    iget-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    monitor-enter v3
    :try_end_c4
    .catchall {:try_start_a0 .. :try_end_c4} :catchall_34
    .catch Ljava/lang/InterruptedException; {:try_start_a0 .. :try_end_c4} :catch_27

    .line 167
    :try_start_c4
    iget-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 168
    iget-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-virtual {v2, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 170
    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    packed-switch v2, :pswitch_data_16c

    .line 184
    monitor-exit v3
    :try_end_d4
    .catchall {:try_start_c4 .. :try_end_d4} :catchall_115

    .line 192
    :try_start_d4
    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz v2, :cond_9d

    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v2, v6, :cond_9d

    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v2, v7, :cond_9d

    .line 193
    sget-object v2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v5, :cond_100

    .line 194
    sget-object v2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 195
    :cond_100
    const/4 v2, 0x0

    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 196
    const/4 v2, 0x0

    iput-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;
    :try_end_106
    .catchall {:try_start_d4 .. :try_end_106} :catchall_68

    goto :goto_9d

    .line 172
    :pswitch_107
    const/4 v2, 0x0

    :try_start_108
    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 173
    const/4 v2, 0x0

    iput-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 174
    new-instance v2, Ljcifs/util/transport/TransportException;

    const-string v4, "Connection timeout"

    invoke-direct {v2, v4}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    :catchall_115
    move-exception v2

    monitor-exit v3
    :try_end_117
    .catchall {:try_start_108 .. :try_end_117} :catchall_115

    :try_start_117
    throw v2
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_34
    .catch Ljava/lang/InterruptedException; {:try_start_117 .. :try_end_118} :catch_27

    .line 176
    :pswitch_118
    :try_start_118
    iget-object v2, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    if-eqz v2, :cond_125

    .line 177
    const/4 v2, 0x4

    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 178
    const/4 v2, 0x0

    iput-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 179
    iget-object v2, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    throw v2

    .line 181
    :cond_125
    const/4 v2, 0x3

    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 182
    monitor-exit v3
    :try_end_129
    .catchall {:try_start_118 .. :try_end_129} :catchall_115

    .line 192
    :try_start_129
    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz v2, :cond_9d

    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v2, v6, :cond_9d

    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v2, v7, :cond_9d

    .line 193
    sget-object v2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v5, :cond_155

    .line 194
    sget-object v2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 195
    :cond_155
    const/4 v2, 0x0

    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 196
    const/4 v2, 0x0

    iput-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;
    :try_end_15b
    .catchall {:try_start_129 .. :try_end_15b} :catchall_68

    goto/16 :goto_9d

    .line 147
    nop

    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_9
        :pswitch_9
        :pswitch_6b
        :pswitch_9f
    .end packed-switch

    .line 170
    :pswitch_data_16c
    .packed-switch 0x1
        :pswitch_107
        :pswitch_118
    .end packed-switch
.end method

.method public declared-synchronized disconnect(Z)V
    .registers 5
    .parameter "hard"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljcifs/util/transport/Transport;->state:I

    packed-switch v0, :pswitch_data_48

    .line 216
    :pswitch_6
    sget-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_27

    .line 217
    sget-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 218
    :cond_27
    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/util/transport/Transport;->state:I
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_44

    .line 222
    :cond_2d
    :goto_2d
    :pswitch_2d
    monitor-exit p0

    return-void

    .line 205
    :pswitch_2f
    const/4 p1, 0x1

    .line 207
    :pswitch_30
    :try_start_30
    iget-object v0, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_3a

    if-eqz p1, :cond_2d

    .line 210
    :cond_3a
    invoke-virtual {p0, p1}, Ljcifs/util/transport/Transport;->doDisconnect(Z)V

    .line 212
    :pswitch_3d
    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/util/transport/Transport;->state:I
    :try_end_43
    .catchall {:try_start_30 .. :try_end_43} :catchall_44

    goto :goto_2d

    .line 201
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_6
        :pswitch_2f
        :pswitch_30
        :pswitch_3d
    .end packed-switch
.end method

.method protected abstract doConnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doDisconnect(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract doRecv(Ljcifs/util/transport/Response;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract doSend(Ljcifs/util/transport/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract doSkip()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract makeKey(Ljcifs/util/transport/Request;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract peekKey()Ljcifs/util/transport/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 224
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 225
    .local v2, run_thread:Ljava/lang/Thread;
    const/4 v1, 0x0

    .line 232
    .local v1, ex0:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {p0}, Ljcifs/util/transport/Transport;->doConnect()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_5e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_34

    .line 237
    monitor-enter v2

    .line 238
    :try_start_a
    iget-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    if-eq v2, v3, :cond_1d

    .line 242
    if-eqz v1, :cond_1b

    .line 243
    sget-object v3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v5, :cond_1b

    .line 244
    sget-object v3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 246
    :cond_1b
    monitor-exit v2

    .line 259
    :goto_1c
    return-void

    .line 248
    :cond_1d
    if-eqz v1, :cond_26

    .line 249
    new-instance v3, Ljcifs/util/transport/TransportException;

    invoke-direct {v3, v1}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    .line 251
    :cond_26
    const/4 v3, 0x2

    iput v3, p0, Ljcifs/util/transport/Transport;->state:I

    .line 252
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 253
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_31

    .line 258
    invoke-direct {p0}, Ljcifs/util/transport/Transport;->loop()V

    goto :goto_1c

    .line 253
    :catchall_31
    move-exception v3

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v3

    .line 233
    :catch_34
    move-exception v0

    .line 234
    .local v0, ex:Ljava/lang/Exception;
    move-object v1, v0

    .line 237
    monitor-enter v2

    .line 238
    :try_start_37
    iget-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    if-eq v2, v3, :cond_4d

    .line 242
    if-eqz v1, :cond_48

    .line 243
    sget-object v3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v5, :cond_48

    .line 244
    sget-object v3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 246
    :cond_48
    monitor-exit v2

    goto :goto_1c

    .line 253
    :catchall_4a
    move-exception v3

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_37 .. :try_end_4c} :catchall_4a

    throw v3

    .line 248
    :cond_4d
    if-eqz v1, :cond_56

    .line 249
    :try_start_4f
    new-instance v3, Ljcifs/util/transport/TransportException;

    invoke-direct {v3, v1}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    .line 251
    :cond_56
    const/4 v3, 0x2

    iput v3, p0, Ljcifs/util/transport/Transport;->state:I

    .line 252
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 253
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_4f .. :try_end_5d} :catchall_4a

    goto :goto_1c

    .line 237
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_5e
    move-exception v3

    monitor-enter v2

    .line 238
    :try_start_60
    iget-object v4, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    if-eq v2, v4, :cond_76

    .line 242
    if-eqz v1, :cond_71

    .line 243
    sget-object v3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v5, :cond_71

    .line 244
    sget-object v3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 246
    :cond_71
    monitor-exit v2

    goto :goto_1c

    .line 253
    :catchall_73
    move-exception v3

    monitor-exit v2
    :try_end_75
    .catchall {:try_start_60 .. :try_end_75} :catchall_73

    throw v3

    .line 248
    :cond_76
    if-eqz v1, :cond_7f

    .line 249
    :try_start_78
    new-instance v4, Ljcifs/util/transport/TransportException;

    invoke-direct {v4, v1}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    iput-object v4, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    .line 251
    :cond_7f
    const/4 v4, 0x2

    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    .line 252
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 253
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_78 .. :try_end_86} :catchall_73

    throw v3
.end method

.method public declared-synchronized sendrecv(Ljcifs/util/transport/Request;Ljcifs/util/transport/Response;J)V
    .registers 12
    .parameter "request"
    .parameter "response"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Ljcifs/util/transport/Transport;->makeKey(Ljcifs/util/transport/Request;)V

    .line 64
    const/4 v3, 0x0

    iput-boolean v3, p2, Ljcifs/util/transport/Response;->isReceived:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_63

    .line 66
    :try_start_7
    iget-object v3, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p0, p1}, Ljcifs/util/transport/Transport;->doSend(Ljcifs/util/transport/Request;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p3

    iput-wide v3, p2, Ljcifs/util/transport/Response;->expiration:J

    .line 69
    :cond_16
    iget-boolean v3, p2, Ljcifs/util/transport/Response;->isReceived:Z

    if-nez v3, :cond_66

    .line 70
    invoke-virtual {p0, p3, p4}, Ljava/lang/Object;->wait(J)V

    .line 71
    iget-wide v3, p2, Ljcifs/util/transport/Response;->expiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long p3, v3, v5

    .line 72
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-gtz v3, :cond_16

    .line 73
    new-instance v3, Ljcifs/util/transport/TransportException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timedout waiting for response to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4a
    .catchall {:try_start_7 .. :try_end_4a} :catchall_5c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_4a} :catch_4a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_4a} :catch_74

    .line 78
    :catch_4a
    move-exception v1

    .line 79
    .local v1, ioe:Ljava/io/IOException;
    :try_start_4b
    sget-object v3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_57

    .line 80
    sget-object v3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_5c

    .line 82
    :cond_57
    const/4 v3, 0x1

    :try_start_58
    invoke-virtual {p0, v3}, Ljcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_6d

    .line 86
    :goto_5b
    :try_start_5b
    throw v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    .line 90
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_5c
    move-exception v3

    :try_start_5d
    iget-object v4, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v3
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_63

    .line 63
    :catchall_63
    move-exception v3

    monitor-exit p0

    throw v3

    .line 90
    :cond_66
    :try_start_66
    iget-object v3, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catchall {:try_start_66 .. :try_end_6b} :catchall_63

    .line 92
    monitor-exit p0

    return-void

    .line 83
    .restart local v1       #ioe:Ljava/io/IOException;
    :catch_6d
    move-exception v2

    .line 84
    .local v2, ioe2:Ljava/io/IOException;
    :try_start_6e
    sget-object v3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_5b

    .line 87
    .end local v1           #ioe:Ljava/io/IOException;
    .end local v2           #ioe2:Ljava/io/IOException;
    :catch_74
    move-exception v0

    .line 88
    .local v0, ie:Ljava/lang/InterruptedException;
    new-instance v3, Ljcifs/util/transport/TransportException;

    invoke-direct {v3, v0}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_7b
    .catchall {:try_start_6e .. :try_end_7b} :catchall_5c
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    return-object v0
.end method
