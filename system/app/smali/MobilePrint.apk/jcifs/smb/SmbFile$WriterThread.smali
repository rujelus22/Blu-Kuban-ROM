.class Ljcifs/smb/SmbFile$WriterThread;
.super Ljava/lang/Thread;
.source "SmbFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/smb/SmbFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WriterThread"
.end annotation


# instance fields
.field b:[B

.field dest:Ljcifs/smb/SmbFile;

.field e:Ljcifs/smb/SmbException;

.field n:I

.field off:J

.field ready:Z

.field req:Ljcifs/smb/SmbComWrite;

.field reqx:Ljcifs/smb/SmbComWriteAndX;

.field resp:Ljcifs/smb/ServerMessageBlock;

.field final synthetic this$0:Ljcifs/smb/SmbFile;

.field useNTSmbs:Z


# direct methods
.method constructor <init>(Ljcifs/smb/SmbFile;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    .line 2116
    iput-object p1, p0, Ljcifs/smb/SmbFile$WriterThread;->this$0:Ljcifs/smb/SmbFile;

    .line 2106
    const-string v0, "JCIFS-WriterThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2099
    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    .line 2107
    iget-object v0, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result v0

    iput-boolean v0, p0, Ljcifs/smb/SmbFile$WriterThread;->useNTSmbs:Z

    .line 2108
    iget-boolean v0, p0, Ljcifs/smb/SmbFile$WriterThread;->useNTSmbs:Z

    if-eqz v0, :cond_2e

    .line 2109
    new-instance v0, Ljcifs/smb/SmbComWriteAndX;

    invoke-direct {v0}, Ljcifs/smb/SmbComWriteAndX;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->reqx:Ljcifs/smb/SmbComWriteAndX;

    .line 2110
    new-instance v0, Ljcifs/smb/SmbComWriteAndXResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComWriteAndXResponse;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->resp:Ljcifs/smb/ServerMessageBlock;

    .line 2115
    :goto_2a
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/SmbFile$WriterThread;->ready:Z

    return-void

    .line 2112
    :cond_2e
    new-instance v0, Ljcifs/smb/SmbComWrite;

    invoke-direct {v0}, Ljcifs/smb/SmbComWrite;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->req:Ljcifs/smb/SmbComWrite;

    .line 2113
    new-instance v0, Ljcifs/smb/SmbComWriteResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComWriteResponse;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->resp:Ljcifs/smb/ServerMessageBlock;

    goto :goto_2a
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 2128
    monitor-enter p0

    .line 2131
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2132
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/SmbFile$WriterThread;->ready:Z

    .line 2133
    :goto_7
    iget-boolean v0, p0, Ljcifs/smb/SmbFile$WriterThread;->ready:Z

    if-nez v0, :cond_12

    .line 2136
    iget v0, p0, Ljcifs/smb/SmbFile$WriterThread;->n:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1e
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_d} :catch_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_41

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    .line 2137
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_1e

    .line 2154
    :goto_11
    return-void

    .line 2134
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1e
    .catch Ljcifs/smb/SmbException; {:try_start_12 .. :try_end_15} :catch_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_41

    goto :goto_7

    .line 2147
    :catch_16
    move-exception v8

    .line 2148
    .local v8, e:Ljcifs/smb/SmbException;
    :try_start_17
    iput-object v8, p0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    .line 2152
    .end local v8           #e:Ljcifs/smb/SmbException;
    :goto_19
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2128
    monitor-exit p0

    goto :goto_11

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_1e

    throw v0

    .line 2139
    :cond_21
    :try_start_21
    iget-boolean v0, p0, Ljcifs/smb/SmbFile$WriterThread;->useNTSmbs:Z

    if-eqz v0, :cond_4c

    .line 2140
    iget-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->reqx:Ljcifs/smb/SmbComWriteAndX;

    iget-object v1, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    iget v1, v1, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v2, p0, Ljcifs/smb/SmbFile$WriterThread;->off:J

    iget v4, p0, Ljcifs/smb/SmbFile$WriterThread;->n:I

    iget-object v5, p0, Ljcifs/smb/SmbFile$WriterThread;->b:[B

    const/4 v6, 0x0

    iget v7, p0, Ljcifs/smb/SmbFile$WriterThread;->n:I

    invoke-virtual/range {v0 .. v7}, Ljcifs/smb/SmbComWriteAndX;->setParam(IJI[BII)V

    .line 2141
    iget-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    iget-object v1, p0, Ljcifs/smb/SmbFile$WriterThread;->reqx:Ljcifs/smb/SmbComWriteAndX;

    iget-object v2, p0, Ljcifs/smb/SmbFile$WriterThread;->resp:Ljcifs/smb/ServerMessageBlock;

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_40
    .catchall {:try_start_21 .. :try_end_40} :catchall_1e
    .catch Ljcifs/smb/SmbException; {:try_start_21 .. :try_end_40} :catch_16
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_40} :catch_41

    goto :goto_1

    .line 2149
    :catch_41
    move-exception v9

    .line 2150
    .local v9, x:Ljava/lang/Exception;
    :try_start_42
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "WriterThread"

    invoke-direct {v0, v1, v9}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_1e

    goto :goto_19

    .line 2143
    .end local v9           #x:Ljava/lang/Exception;
    :cond_4c
    :try_start_4c
    iget-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->req:Ljcifs/smb/SmbComWrite;

    iget-object v1, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    iget v1, v1, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v2, p0, Ljcifs/smb/SmbFile$WriterThread;->off:J

    iget v4, p0, Ljcifs/smb/SmbFile$WriterThread;->n:I

    iget-object v5, p0, Ljcifs/smb/SmbFile$WriterThread;->b:[B

    const/4 v6, 0x0

    iget v7, p0, Ljcifs/smb/SmbFile$WriterThread;->n:I

    invoke-virtual/range {v0 .. v7}, Ljcifs/smb/SmbComWrite;->setParam(IJI[BII)V

    .line 2144
    iget-object v0, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    iget-object v1, p0, Ljcifs/smb/SmbFile$WriterThread;->req:Ljcifs/smb/SmbComWrite;

    iget-object v2, p0, Ljcifs/smb/SmbFile$WriterThread;->resp:Ljcifs/smb/ServerMessageBlock;

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_67
    .catchall {:try_start_4c .. :try_end_67} :catchall_1e
    .catch Ljcifs/smb/SmbException; {:try_start_4c .. :try_end_67} :catch_16
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_67} :catch_41

    goto :goto_1
.end method

.method declared-synchronized write([BILjcifs/smb/SmbFile;J)V
    .registers 7
    .parameter "b"
    .parameter "n"
    .parameter "dest"
    .parameter "off"

    .prologue
    .line 2119
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Ljcifs/smb/SmbFile$WriterThread;->b:[B

    .line 2120
    iput p2, p0, Ljcifs/smb/SmbFile$WriterThread;->n:I

    .line 2121
    iput-object p3, p0, Ljcifs/smb/SmbFile$WriterThread;->dest:Ljcifs/smb/SmbFile;

    .line 2122
    iput-wide p4, p0, Ljcifs/smb/SmbFile$WriterThread;->off:J

    .line 2123
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/SmbFile$WriterThread;->ready:Z

    .line 2124
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 2125
    monitor-exit p0

    return-void

    .line 2119
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
