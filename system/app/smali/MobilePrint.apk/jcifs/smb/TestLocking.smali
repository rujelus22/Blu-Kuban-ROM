.class public Ljcifs/smb/TestLocking;
.super Ljava/lang/Object;
.source "TestLocking.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field delay:J

.field ltime:J

.field numComplete:I

.field numIter:I

.field numThreads:I

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Ljcifs/smb/TestLocking;->numThreads:I

    .line 10
    iput v0, p0, Ljcifs/smb/TestLocking;->numIter:I

    .line 11
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Ljcifs/smb/TestLocking;->delay:J

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/TestLocking;->url:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/TestLocking;->numComplete:I

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/TestLocking;->ltime:J

    .line 6
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 15
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    array-length v10, p0

    const/4 v11, 0x1

    if-ge v10, v11, :cond_f

    .line 61
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "usage: TestLocking [-t <numThreads>] [-i <numIter>] [-d <delay>] url"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    .line 65
    :cond_f
    new-instance v7, Ljcifs/smb/TestLocking;

    invoke-direct {v7}, Ljcifs/smb/TestLocking;-><init>()V

    .line 66
    .local v7, t:Ljcifs/smb/TestLocking;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v7, Ljcifs/smb/TestLocking;->ltime:J

    .line 68
    const/4 v0, 0x0

    .local v0, ai:I
    :goto_1b
    array-length v10, p0

    if-lt v0, v10, :cond_38

    .line 83
    iget v10, v7, Ljcifs/smb/TestLocking;->numThreads:I

    new-array v8, v10, [Ljava/lang/Thread;

    .line 86
    .local v8, threads:[Ljava/lang/Thread;
    const/4 v9, 0x0

    .local v9, ti:I
    :goto_23
    iget v10, v7, Ljcifs/smb/TestLocking;->numThreads:I

    if-lt v9, v10, :cond_7e

    .line 92
    :goto_27
    iget v10, v7, Ljcifs/smb/TestLocking;->numComplete:I

    iget v11, v7, Ljcifs/smb/TestLocking;->numThreads:I

    if-lt v10, v11, :cond_98

    .line 117
    const/4 v9, 0x0

    :goto_2e
    iget v10, v7, Ljcifs/smb/TestLocking;->numThreads:I

    if-lt v9, v10, :cond_dc

    .line 122
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10}, Ljava/io/PrintStream;->println()V

    .line 123
    return-void

    .line 69
    .end local v8           #threads:[Ljava/lang/Thread;
    .end local v9           #ti:I
    :cond_38
    aget-object v10, p0, v0

    const-string v11, "-t"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    aget-object v10, p0, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Ljcifs/smb/TestLocking;->numThreads:I

    .line 68
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 72
    :cond_4f
    aget-object v10, p0, v0

    const-string v11, "-i"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_64

    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 74
    aget-object v10, p0, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Ljcifs/smb/TestLocking;->numIter:I

    goto :goto_4c

    .line 75
    :cond_64
    aget-object v10, p0, v0

    const-string v11, "-d"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_79

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 77
    aget-object v10, p0, v0

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v7, Ljcifs/smb/TestLocking;->delay:J

    goto :goto_4c

    .line 79
    :cond_79
    aget-object v10, p0, v0

    iput-object v10, v7, Ljcifs/smb/TestLocking;->url:Ljava/lang/String;

    goto :goto_4c

    .line 87
    .restart local v8       #threads:[Ljava/lang/Thread;
    .restart local v9       #ti:I
    :cond_7e
    new-instance v10, Ljava/lang/Thread;

    invoke-direct {v10, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v10, v8, v9

    .line 88
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v11, v8, v9

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 89
    aget-object v10, v8, v9

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 86
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    .line 96
    :cond_98
    const-wide/16 v3, 0x2

    .line 98
    .local v3, delay:J
    monitor-enter v7

    .line 99
    :try_start_9b
    iget-wide v10, v7, Ljcifs/smb/TestLocking;->ltime:J

    iget-wide v12, v7, Ljcifs/smb/TestLocking;->delay:J

    add-long v5, v10, v12

    .line 100
    .local v5, expire:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 102
    .local v1, ctime:J
    cmp-long v10, v5, v1

    if-lez v10, :cond_ab

    .line 103
    sub-long v3, v5, v1

    .line 98
    :cond_ab
    monitor-exit v7
    :try_end_ac
    .catchall {:try_start_9b .. :try_end_ac} :catchall_d9

    .line 106
    const-wide/16 v10, 0x2

    cmp-long v10, v3, v10

    if-lez v10, :cond_c6

    .line 107
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "delay="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    :cond_c6
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 109
    const-wide/16 v10, 0x2

    cmp-long v10, v3, v10

    if-gtz v10, :cond_98

    .line 111
    monitor-enter v7

    .line 112
    :try_start_d0
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit v7

    goto/16 :goto_27

    :catchall_d6
    move-exception v10

    monitor-exit v7
    :try_end_d8
    .catchall {:try_start_d0 .. :try_end_d8} :catchall_d6

    throw v10

    .line 98
    .end local v1           #ctime:J
    .end local v5           #expire:J
    :catchall_d9
    move-exception v10

    :try_start_da
    monitor-exit v7
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    throw v10

    .line 118
    .end local v3           #delay:J
    :cond_dc
    aget-object v10, v8, v9

    invoke-virtual {v10}, Ljava/lang/Thread;->join()V

    .line 119
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v11, v8, v9

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 117
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2e
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 19
    :try_start_0
    new-instance v3, Ljcifs/smb/SmbFile;

    iget-object v9, p0, Ljcifs/smb/TestLocking;->url:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 20
    .local v3, f:Ljcifs/smb/SmbFile;
    new-instance v1, Ljcifs/smb/SmbFile;

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 21
    .local v1, d:Ljcifs/smb/SmbFile;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 23
    .local v0, buf:[B
    const/4 v4, 0x0

    .local v4, ii:I
    :goto_15
    iget v9, p0, Ljcifs/smb/TestLocking;->numIter:I
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_41

    if-lt v4, v9, :cond_20

    .line 54
    iget v9, p0, Ljcifs/smb/TestLocking;->numComplete:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Ljcifs/smb/TestLocking;->numComplete:I

    .line 56
    .end local v0           #buf:[B
    .end local v1           #d:Ljcifs/smb/SmbFile;
    .end local v3           #f:Ljcifs/smb/SmbFile;
    .end local v4           #ii:I
    :goto_1f
    return-void

    .line 25
    .restart local v0       #buf:[B
    .restart local v1       #d:Ljcifs/smb/SmbFile;
    .restart local v3       #f:Ljcifs/smb/SmbFile;
    .restart local v4       #ii:I
    :cond_20
    :try_start_20
    monitor-enter p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_21} :catch_41

    .line 26
    :try_start_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Ljcifs/smb/TestLocking;->ltime:J

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 25
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_3e

    .line 31
    :try_start_2b
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    .line 32
    .local v7, r:D
    const-wide v9, 0x3fd54fdf3b645a1dL

    cmpg-double v9, v7, v9

    if-gez v9, :cond_4c

    .line 33
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->exists()Z
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_64
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3b} :catch_59
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3b} :catch_41

    .line 23
    .end local v7           #r:D
    :cond_3b
    :goto_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 25
    :catchall_3e
    move-exception v9

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    throw v9
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_41} :catch_41

    .line 51
    .end local v0           #buf:[B
    .end local v1           #d:Ljcifs/smb/SmbFile;
    .end local v3           #f:Ljcifs/smb/SmbFile;
    .end local v4           #ii:I
    :catch_41
    move-exception v2

    .line 52
    .local v2, e:Ljava/lang/Exception;
    :try_start_42
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_64

    .line 54
    iget v9, p0, Ljcifs/smb/TestLocking;->numComplete:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Ljcifs/smb/TestLocking;->numComplete:I

    goto :goto_1f

    .line 35
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #buf:[B
    .restart local v1       #d:Ljcifs/smb/SmbFile;
    .restart local v3       #f:Ljcifs/smb/SmbFile;
    .restart local v4       #ii:I
    .restart local v7       #r:D
    :cond_4c
    const-wide v9, 0x3fe55810624dd2f2L

    cmpg-double v9, v7, v9

    if-gez v9, :cond_6c

    .line 36
    :try_start_55
    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_64
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_41

    goto :goto_3b

    .line 45
    .end local v7           #r:D
    :catch_59
    move-exception v6

    .line 46
    .local v6, ioe:Ljava/io/IOException;
    :try_start_5a
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_5a .. :try_end_63} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_63} :catch_41

    goto :goto_3b

    .line 53
    .end local v0           #buf:[B
    .end local v1           #d:Ljcifs/smb/SmbFile;
    .end local v3           #f:Ljcifs/smb/SmbFile;
    .end local v4           #ii:I
    .end local v6           #ioe:Ljava/io/IOException;
    :catchall_64
    move-exception v9

    .line 54
    iget v10, p0, Ljcifs/smb/TestLocking;->numComplete:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Ljcifs/smb/TestLocking;->numComplete:I

    .line 55
    throw v9

    .line 38
    .restart local v0       #buf:[B
    .restart local v1       #d:Ljcifs/smb/SmbFile;
    .restart local v3       #f:Ljcifs/smb/SmbFile;
    .restart local v4       #ii:I
    .restart local v7       #r:D
    :cond_6c
    const-wide/high16 v9, 0x3ff0

    cmpg-double v9, v7, v9

    if-gez v9, :cond_3b

    .line 39
    :try_start_72
    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 40
    .local v5, in:Ljava/io/InputStream;
    :cond_76
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-gtz v9, :cond_76

    .line 43
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7f
    .catchall {:try_start_72 .. :try_end_7f} :catchall_64
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7f} :catch_59
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7f} :catch_41

    goto :goto_3b
.end method
