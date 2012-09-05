.class public Lcom/samsung/swift/util/ProcessRunner;
.super Ljava/lang/Object;
.source "ProcessRunner.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private args:[Ljava/lang/String;

.field private process:Ljava/lang/Process;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    const-class v0, Lcom/samsung/swift/util/ProcessRunner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/util/ProcessRunner;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized getProcess()Ljava/lang/Process;
    .registers 2

    .prologue
    .line 162
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/swift/util/ProcessRunner;->process:Ljava/lang/Process;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setProcess(Ljava/lang/Process;)V
    .registers 3
    .parameter "process"

    .prologue
    .line 166
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/samsung/swift/util/ProcessRunner;->process:Ljava/lang/Process;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 167
    monitor-exit p0

    return-void

    .line 166
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public execute()Lcom/samsung/swift/util/ProcessRunner;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    sget-object v0, Lcom/samsung/swift/util/ProcessRunner;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/swift/util/ProcessRunner;->args:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/swift/util/ProcessRunner;->setProcess(Ljava/lang/Process;)V

    .line 106
    sget-object v0, Lcom/samsung/swift/util/ProcessRunner;->LOGTAG:Ljava/lang/String;

    const-string v1, "Process is running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-object p0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/samsung/swift/util/ProcessRunner;->getProcess()Ljava/lang/Process;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public logStream(Ljava/io/InputStream;)V
    .registers 8
    .parameter "i"

    .prologue
    .line 113
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .local v2, str:Ljava/lang/StringBuffer;
    move-object v3, v2

    .line 115
    .end local v2           #str:Ljava/lang/StringBuffer;
    .local v3, str:Ljava/lang/StringBuffer;
    :cond_6
    :goto_6
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, c:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_28

    .line 117
    const/16 v4, 0xd

    if-eq v0, v4, :cond_6

    .line 119
    const/16 v4, 0xa

    if-ne v0, v4, :cond_45

    .line 121
    sget-object v4, Lcom/samsung/swift/util/ProcessRunner;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_23} :catch_39

    .line 125
    .end local v3           #str:Ljava/lang/StringBuffer;
    .restart local v2       #str:Ljava/lang/StringBuffer;
    :goto_23
    :try_start_23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_43

    move-object v3, v2

    .end local v2           #str:Ljava/lang/StringBuffer;
    .restart local v3       #str:Ljava/lang/StringBuffer;
    goto :goto_6

    .line 127
    :cond_28
    :try_start_28
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_37

    .line 129
    sget-object v4, Lcom/samsung/swift/util/ProcessRunner;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_37} :catch_39

    :cond_37
    move-object v2, v3

    .line 134
    .end local v0           #c:I
    .end local v3           #str:Ljava/lang/StringBuffer;
    .restart local v2       #str:Ljava/lang/StringBuffer;
    :goto_38
    return-void

    .line 131
    .end local v2           #str:Ljava/lang/StringBuffer;
    .restart local v3       #str:Ljava/lang/StringBuffer;
    :catch_39
    move-exception v1

    move-object v2, v3

    .line 132
    .end local v3           #str:Ljava/lang/StringBuffer;
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #str:Ljava/lang/StringBuffer;
    :goto_3b
    sget-object v4, Lcom/samsung/swift/util/ProcessRunner;->LOGTAG:Ljava/lang/String;

    const-string v5, "readStream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    .line 131
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #c:I
    :catch_43
    move-exception v1

    goto :goto_3b

    .end local v2           #str:Ljava/lang/StringBuffer;
    .restart local v3       #str:Ljava/lang/StringBuffer;
    :cond_45
    move-object v2, v3

    .end local v3           #str:Ljava/lang/StringBuffer;
    .restart local v2       #str:Ljava/lang/StringBuffer;
    goto :goto_23
.end method

.method public setCommandLine([Ljava/lang/String;)Lcom/samsung/swift/util/ProcessRunner;
    .registers 2
    .parameter "args"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/samsung/swift/util/ProcessRunner;->args:[Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 171
    iget-object v2, p0, Lcom/samsung/swift/util/ProcessRunner;->args:[Ljava/lang/String;

    if-nez v2, :cond_7

    .line 173
    const-string v2, "(null)"

    .line 184
    :goto_6
    return-object v2

    .line 175
    :cond_7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 176
    .local v1, str:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    iget-object v2, p0, Lcom/samsung/swift/util/ProcessRunner;->args:[Ljava/lang/String;

    array-length v2, v2

    if-eq v0, v2, :cond_27

    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1d

    .line 180
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 182
    :cond_1d
    iget-object v2, p0, Lcom/samsung/swift/util/ProcessRunner;->args:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 184
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6
.end method

.method public waitFinish()I
    .registers 6

    .prologue
    .line 141
    :goto_0
    :try_start_0
    sget-object v2, Lcom/samsung/swift/util/ProcessRunner;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v2, Lcom/samsung/swift/util/ProcessRunner;->LOGTAG:Ljava/lang/String;

    const-string v3, "STDOUT:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v2, p0, Lcom/samsung/swift/util/ProcessRunner;->process:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/swift/util/ProcessRunner;->logStream(Ljava/io/InputStream;)V

    .line 144
    sget-object v2, Lcom/samsung/swift/util/ProcessRunner;->LOGTAG:Ljava/lang/String;

    const-string v3, "STDERR:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, p0, Lcom/samsung/swift/util/ProcessRunner;->process:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/swift/util/ProcessRunner;->logStream(Ljava/io/InputStream;)V

    .line 146
    iget-object v2, p0, Lcom/samsung/swift/util/ProcessRunner;->process:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v1

    .line 147
    .local v1, rc:I
    sget-object v2, Lcom/samsung/swift/util/ProcessRunner;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/swift/util/ProcessRunner;->setProcess(Ljava/lang/Process;)V
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_64} :catch_65

    .line 149
    return v1

    .line 150
    .end local v1           #rc:I
    :catch_65
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v2, Lcom/samsung/swift/util/ProcessRunner;->LOGTAG:Ljava/lang/String;

    const-string v3, "Interrupted - ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
