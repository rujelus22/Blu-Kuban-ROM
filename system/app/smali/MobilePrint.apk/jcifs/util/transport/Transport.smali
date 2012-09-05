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

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/util/transport/Transport;->state:I

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transport"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 17
    return-void
.end method

.method private loop()V
    .registers 12

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 94
    :goto_2
    iget-object v7, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    if-eq v7, v10, :cond_b

    .line 128
    return-void

    .line 96
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljcifs/util/transport/Transport;->peekKey()Ljcifs/util/transport/Request;

    move-result-object v3

    .line 97
    .local v3, key:Ljcifs/util/transport/Request;
    if-nez v3, :cond_43

    .line 98
    new-instance v7, Ljava/io/IOException;

    const-string v10, "end of stream"

    invoke-direct {v7, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_19

    .line 111
    .end local v3           #key:Ljcifs/util/transport/Request;
    :catch_19
    move-exception v0

    .line 112
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, msg:Ljava/lang/String;
    if-eqz v4, :cond_6c

    const-string v7, "Read timed out"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    move v6, v9

    .line 116
    .local v6, timeout:Z
    :goto_29
    if-eqz v6, :cond_6e

    move v1, v8

    .line 118
    .local v1, hard:Z
    :goto_2c
    if-nez v6, :cond_38

    sget v7, Ljcifs/util/LogStream;->level:I

    const/4 v10, 0x3

    if-lt v7, v10, :cond_38

    .line 119
    sget-object v7, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v7}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 122
    :cond_38
    :try_start_38
    invoke-virtual {p0, v1}, Ljcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_2

    .line 123
    :catch_3c
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
    :cond_43
    :try_start_43
    monitor-enter p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_44} :catch_19

    .line 100
    :try_start_44
    iget-object v7, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljcifs/util/transport/Response;

    .line 101
    .local v5, response:Ljcifs/util/transport/Response;
    if-nez v5, :cond_62

    .line 102
    sget v7, Ljcifs/util/LogStream;->level:I

    const/4 v10, 0x4

    if-lt v7, v10, :cond_5a

    .line 103
    sget-object v7, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    const-string v10, "Invalid key, skipping message"

    invoke-virtual {v7, v10}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 104
    :cond_5a
    invoke-virtual {p0}, Ljcifs/util/transport/Transport;->doSkip()V

    .line 99
    :goto_5d
    monitor-exit p0

    goto :goto_2

    .end local v5           #response:Ljcifs/util/transport/Response;
    :catchall_5f
    move-exception v7

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_44 .. :try_end_61} :catchall_5f

    :try_start_61
    throw v7
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_62} :catch_19

    .line 106
    .restart local v5       #response:Ljcifs/util/transport/Response;
    :cond_62
    :try_start_62
    invoke-virtual {p0, v5}, Ljcifs/util/transport/Transport;->doRecv(Ljcifs/util/transport/Response;)V

    .line 107
    const/4 v7, 0x1

    iput-boolean v7, v5, Ljcifs/util/transport/Response;->isReceived:Z

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_5f

    goto :goto_5d

    .end local v3           #key:Ljcifs/util/transport/Request;
    .end local v5           #response:Ljcifs/util/transport/Response;
    .restart local v0       #ex:Ljava/lang/Exception;
    .restart local v4       #msg:Ljava/lang/String;
    :cond_6c
    move v6, v8

    .line 113
    goto :goto_29

    .restart local v6       #timeout:Z
    :cond_6e
    move v1, v9

    .line 116
    goto :goto_2c
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
    if-lt v0, p3, :cond_5

    .line 36
    :cond_4
    return v0

    .line 29
    :cond_5
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 30
    if-lez v1, :cond_4

    .line 33
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

    packed-switch v2, :pswitch_data_114

    .line 156
    :pswitch_9
    new-instance v1, Ljcifs/util/transport/TransportException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_30
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_23} :catch_23

    .line 185
    .end local v1           #te:Ljcifs/util/transport/TransportException;
    :catch_23
    move-exception v0

    .line 186
    .local v0, ie:Ljava/lang/InterruptedException;
    const/4 v2, 0x0

    :try_start_25
    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 187
    const/4 v2, 0x0

    iput-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 188
    new-instance v2, Ljcifs/util/transport/TransportException;

    invoke-direct {v2, v0}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_30

    .line 189
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_30
    move-exception v2

    .line 192
    :try_start_31
    iget v3, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz v3, :cond_5d

    iget v3, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v3, v6, :cond_5d

    iget v3, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v3, v7, :cond_5d

    .line 193
    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v5, :cond_57

    .line 194
    sget-object v3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid state: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 195
    :cond_57
    const/4 v3, 0x0

    iput v3, p0, Ljcifs/util/transport/Transport;->state:I

    .line 196
    const/4 v3, 0x0

    iput-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 198
    :cond_5d
    throw v2
    :try_end_5e
    .catchall {:try_start_31 .. :try_end_5e} :catchall_5e

    .line 147
    :catchall_5e
    move-exception v2

    monitor-exit p0

    throw v2

    .line 181
    :cond_61
    const/4 v2, 0x3

    :try_start_62
    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 182
    monitor-exit v3
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_103

    .line 192
    :pswitch_65
    :try_start_65
    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz v2, :cond_91

    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v2, v6, :cond_91

    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v2, v7, :cond_91

    .line 193
    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v5, :cond_8b

    .line 194
    sget-object v2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 195
    :cond_8b
    const/4 v2, 0x0

    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 196
    const/4 v2, 0x0

    iput-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;
    :try_end_91
    .catchall {:try_start_65 .. :try_end_91} :catchall_5e

    .line 199
    :cond_91
    :goto_91
    monitor-exit p0

    return-void

    .line 153
    :pswitch_93
    const/4 v2, 0x0

    :try_start_94
    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 154
    new-instance v2, Ljcifs/util/transport/TransportException;

    const-string v3, "Connection in error"

    iget-object v4, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    invoke-direct {v2, v3, v4}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 161
    :pswitch_a0
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
    :try_end_b8
    .catchall {:try_start_94 .. :try_end_b8} :catchall_30
    .catch Ljava/lang/InterruptedException; {:try_start_94 .. :try_end_b8} :catch_23

    .line 167
    :try_start_b8
    iget-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 168
    iget-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    invoke-virtual {v2, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 170
    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    packed-switch v2, :pswitch_data_122

    .line 166
    monitor-exit v3
    :try_end_c8
    .catchall {:try_start_b8 .. :try_end_c8} :catchall_103

    .line 192
    :try_start_c8
    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    if-eqz v2, :cond_91

    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v2, v6, :cond_91

    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    if-eq v2, v7, :cond_91

    .line 193
    sget v2, Ljcifs/util/LogStream;->level:I

    if-lt v2, v5, :cond_ee

    .line 194
    sget-object v2, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 195
    :cond_ee
    const/4 v2, 0x0

    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 196
    const/4 v2, 0x0

    iput-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;
    :try_end_f4
    .catchall {:try_start_c8 .. :try_end_f4} :catchall_5e

    goto :goto_91

    .line 172
    :pswitch_f5
    const/4 v2, 0x0

    :try_start_f6
    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 173
    const/4 v2, 0x0

    iput-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 174
    new-instance v2, Ljcifs/util/transport/TransportException;

    const-string v4, "Connection timeout"

    invoke-direct {v2, v4}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :catchall_103
    move-exception v2

    monitor-exit v3
    :try_end_105
    .catchall {:try_start_f6 .. :try_end_105} :catchall_103

    :try_start_105
    throw v2
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_30
    .catch Ljava/lang/InterruptedException; {:try_start_105 .. :try_end_106} :catch_23

    .line 176
    :pswitch_106
    :try_start_106
    iget-object v2, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    if-eqz v2, :cond_61

    .line 177
    const/4 v2, 0x4

    iput v2, p0, Ljcifs/util/transport/Transport;->state:I

    .line 178
    const/4 v2, 0x0

    iput-object v2, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 179
    iget-object v2, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    throw v2
    :try_end_113
    .catchall {:try_start_106 .. :try_end_113} :catchall_103

    .line 147
    nop

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_9
        :pswitch_9
        :pswitch_65
        :pswitch_93
    .end packed-switch

    .line 170
    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_f5
        :pswitch_106
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

    packed-switch v0, :pswitch_data_42

    .line 216
    :pswitch_6
    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_21

    .line 217
    sget-object v0, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Ljcifs/util/transport/Transport;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 218
    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/util/transport/Transport;->state:I
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_3e

    .line 222
    :cond_27
    :goto_27
    :pswitch_27
    monitor-exit p0

    return-void

    .line 205
    :pswitch_29
    const/4 p1, 0x1

    .line 207
    :pswitch_2a
    :try_start_2a
    iget-object v0, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_34

    if-eqz p1, :cond_27

    .line 210
    :cond_34
    invoke-virtual {p0, p1}, Ljcifs/util/transport/Transport;->doDisconnect(Z)V

    .line 212
    :pswitch_37
    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/util/transport/Transport;->state:I
    :try_end_3d
    .catchall {:try_start_2a .. :try_end_3d} :catchall_3e

    goto :goto_27

    .line 201
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_27
        :pswitch_6
        :pswitch_29
        :pswitch_2a
        :pswitch_37
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
    .catchall {:try_start_6 .. :try_end_9} :catchall_41
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_19

    .line 237
    monitor-enter v2

    .line 238
    :try_start_a
    iget-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    if-eq v2, v3, :cond_66

    .line 242
    if-eqz v1, :cond_17

    .line 243
    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v5, :cond_17

    .line 244
    sget-object v3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    throw v1

    .line 246
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_7a

    .line 259
    :goto_18
    return-void

    .line 233
    :catch_19
    move-exception v0

    .line 234
    .local v0, ex:Ljava/lang/Exception;
    move-object v1, v0

    .line 237
    monitor-enter v2

    .line 238
    :try_start_1c
    iget-object v3, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    if-eq v2, v3, :cond_30

    .line 242
    if-eqz v1, :cond_2b

    .line 243
    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v5, :cond_2b

    .line 244
    sget-object v3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 246
    :cond_2b
    monitor-exit v2

    goto :goto_18

    .line 237
    :catchall_2d
    move-exception v3

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_2d

    throw v3

    .line 248
    :cond_30
    if-eqz v1, :cond_39

    .line 249
    :try_start_32
    new-instance v3, Ljcifs/util/transport/TransportException;

    invoke-direct {v3, v1}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    .line 251
    :cond_39
    const/4 v3, 0x2

    iput v3, p0, Ljcifs/util/transport/Transport;->state:I

    .line 252
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 237
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_2d

    goto :goto_18

    .line 236
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_41
    move-exception v3

    .line 237
    monitor-enter v2

    .line 238
    :try_start_43
    iget-object v4, p0, Ljcifs/util/transport/Transport;->thread:Ljava/lang/Thread;

    if-eq v2, v4, :cond_55

    .line 242
    if-eqz v1, :cond_50

    .line 243
    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v5, :cond_50

    .line 244
    sget-object v3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    throw v1

    .line 246
    :cond_50
    monitor-exit v2

    goto :goto_18

    .line 237
    :catchall_52
    move-exception v3

    monitor-exit v2
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_52

    throw v3

    .line 248
    :cond_55
    if-eqz v1, :cond_5e

    .line 249
    :try_start_57
    new-instance v4, Ljcifs/util/transport/TransportException;

    invoke-direct {v4, v1}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    iput-object v4, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    .line 251
    :cond_5e
    const/4 v4, 0x2

    iput v4, p0, Ljcifs/util/transport/Transport;->state:I

    .line 252
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 237
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_57 .. :try_end_65} :catchall_52

    .line 254
    throw v3

    .line 248
    :cond_66
    if-eqz v1, :cond_6f

    .line 249
    :try_start_68
    new-instance v3, Ljcifs/util/transport/TransportException;

    invoke-direct {v3, v1}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, p0, Ljcifs/util/transport/Transport;->te:Ljcifs/util/transport/TransportException;

    .line 251
    :cond_6f
    const/4 v3, 0x2

    iput v3, p0, Ljcifs/util/transport/Transport;->state:I

    .line 252
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 237
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_68 .. :try_end_76} :catchall_7a

    .line 258
    invoke-direct {p0}, Ljcifs/util/transport/Transport;->loop()V

    goto :goto_18

    .line 237
    :catchall_7a
    move-exception v3

    :try_start_7b
    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

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
    .catchall {:try_start_1 .. :try_end_7} :catchall_68

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
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_61
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_18} :catch_51
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_18} :catch_72

    if-eqz v3, :cond_21

    .line 90
    :try_start_1a
    iget-object v3, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_68

    .line 92
    monitor-exit p0

    return-void

    .line 70
    :cond_21
    :try_start_21
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

    iget-object v5, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v5, " timedout waiting for response to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 75
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-direct {v3, v4}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_51
    .catchall {:try_start_21 .. :try_end_51} :catchall_61
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_51} :catch_51
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_51} :catch_72

    .line 78
    :catch_51
    move-exception v1

    .line 79
    .local v1, ioe:Ljava/io/IOException;
    :try_start_52
    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v4, 0x2

    if-le v3, v4, :cond_5c

    .line 80
    sget-object v3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_61

    .line 82
    :cond_5c
    const/4 v3, 0x1

    :try_start_5d
    invoke-virtual {p0, v3}, Ljcifs/util/transport/Transport;->disconnect(Z)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_6b

    .line 86
    :goto_60
    :try_start_60
    throw v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    .line 89
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_61
    move-exception v3

    .line 90
    :try_start_62
    iget-object v4, p0, Ljcifs/util/transport/Transport;->response_map:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    throw v3
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_68

    .line 63
    :catchall_68
    move-exception v3

    monitor-exit p0

    throw v3

    .line 83
    .restart local v1       #ioe:Ljava/io/IOException;
    :catch_6b
    move-exception v2

    .line 84
    .local v2, ioe2:Ljava/io/IOException;
    :try_start_6c
    sget-object v3, Ljcifs/util/transport/Transport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_60

    .line 87
    .end local v1           #ioe:Ljava/io/IOException;
    .end local v2           #ioe2:Ljava/io/IOException;
    :catch_72
    move-exception v0

    .line 88
    .local v0, ie:Ljava/lang/InterruptedException;
    new-instance v3, Ljcifs/util/transport/TransportException;

    invoke-direct {v3, v0}, Ljcifs/util/transport/TransportException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_79
    .catchall {:try_start_6c .. :try_end_79} :catchall_61
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Ljcifs/util/transport/Transport;->name:Ljava/lang/String;

    return-object v0
.end method
