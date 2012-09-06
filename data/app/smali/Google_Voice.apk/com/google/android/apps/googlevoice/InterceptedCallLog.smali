.class public Lcom/google/android/apps/googlevoice/InterceptedCallLog;
.super Ljava/lang/Object;
.source "InterceptedCallLog.java"


# instance fields
.field private calls:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/apps/googlevoice/CallRecord;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->calls:Ljava/util/Vector;

    .line 35
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->context:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/apps/googlevoice/CallRecord;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, calls:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/google/android/apps/googlevoice/CallRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->calls:Ljava/util/Vector;

    .line 40
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->context:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public static declared-synchronized createFromFile(Landroid/content/Context;)Lcom/google/android/apps/googlevoice/InterceptedCallLog;
    .registers 12
    .parameter "context"

    .prologue
    .line 155
    const-class v7, Lcom/google/android/apps/googlevoice/InterceptedCallLog;

    monitor-enter v7

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/google/android/apps/googlevoice/R$string;->call_log_file:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, filename:Ljava/lang/String;
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_27

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading calllog from: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_78

    .line 160
    :cond_27
    :try_start_27
    invoke-virtual {p0, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 161
    .local v2, file:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 162
    .local v5, stream:Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 163
    .local v0, calls:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/google/android/apps/googlevoice/CallRecord;>;"
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    .line 164
    new-instance v4, Lcom/google/android/apps/googlevoice/InterceptedCallLog;

    invoke-direct {v4, v0, p0}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;-><init>(Ljava/util/Vector;Landroid/content/Context;)V

    .line 166
    .local v4, log:Lcom/google/android/apps/googlevoice/InterceptedCallLog;
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_59

    .line 167
    const-string v6, "Read in log with %d entries."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_27 .. :try_end_59} :catchall_78
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_59} :catch_5b
    .catch Ljava/io/StreamCorruptedException; {:try_start_27 .. :try_end_59} :catch_7b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_59} :catch_82
    .catch Ljava/lang/ClassNotFoundException; {:try_start_27 .. :try_end_59} :catch_89
    .catch Ljava/lang/ClassCastException; {:try_start_27 .. :try_end_59} :catch_90

    .line 183
    .end local v0           #calls:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/google/android/apps/googlevoice/CallRecord;>;"
    .end local v2           #file:Ljava/io/FileInputStream;
    .end local v4           #log:Lcom/google/android/apps/googlevoice/InterceptedCallLog;
    .end local v5           #stream:Ljava/io/ObjectInputStream;
    :cond_59
    :goto_59
    monitor-exit v7

    return-object v4

    .line 170
    :catch_5b
    move-exception v1

    .line 171
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_5c
    sget-boolean v6, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v6, :cond_72

    .line 172
    const-string v6, "Was not able to open %s to read the call log: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 183
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_72
    :goto_72
    new-instance v4, Lcom/google/android/apps/googlevoice/InterceptedCallLog;

    invoke-direct {v4, p0}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;-><init>(Landroid/content/Context;)V
    :try_end_77
    .catchall {:try_start_5c .. :try_end_77} :catchall_78

    goto :goto_59

    .line 155
    .end local v3           #filename:Ljava/lang/String;
    :catchall_78
    move-exception v6

    monitor-exit v7

    throw v6

    .line 174
    .restart local v3       #filename:Ljava/lang/String;
    :catch_7b
    move-exception v1

    .line 175
    .local v1, e:Ljava/io/StreamCorruptedException;
    :try_start_7c
    const-string v6, "Error reading call log, returning an empty one."

    invoke-static {v6, v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_72

    .line 176
    .end local v1           #e:Ljava/io/StreamCorruptedException;
    :catch_82
    move-exception v1

    .line 177
    .local v1, e:Ljava/io/IOException;
    const-string v6, "Error reading call log, returning an empty one."

    invoke-static {v6, v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_72

    .line 178
    .end local v1           #e:Ljava/io/IOException;
    :catch_89
    move-exception v1

    .line 179
    .local v1, e:Ljava/lang/ClassNotFoundException;
    const-string v6, "Error reading call log, returning an empty one."

    invoke-static {v6, v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_72

    .line 180
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_90
    move-exception v1

    .line 181
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v6, "Error reading call log, returning an empty one."

    invoke-static {v6, v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_96
    .catchall {:try_start_7c .. :try_end_96} :catchall_78

    goto :goto_72
.end method


# virtual methods
.method public findMatchingCallRecord(JLjava/lang/String;)Lcom/google/android/apps/googlevoice/CallRecord;
    .registers 9
    .parameter "timestamp"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v1, v2

    .line 89
    :cond_8
    :goto_8
    return-object v1

    .line 78
    :cond_9
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->calls:Ljava/util/Vector;

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->calls:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 80
    .local v0, iterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/apps/googlevoice/CallRecord;>;"
    :cond_15
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/CallRecord;

    .line 81
    .local v1, recordToTest:Lcom/google/android/apps/googlevoice/CallRecord;
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/apps/googlevoice/CallRecord;->matchesCall(JLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 84
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_3f

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No match found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/CallRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 87
    :cond_3f
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-nez v3, :cond_15

    move-object v1, v2

    .line 89
    goto :goto_8
.end method

.method public getEarliestTimestamp()J
    .registers 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, -0x1

    .line 53
    :goto_8
    return-wide v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->calls:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/CallRecord;

    iget-wide v0, v0, Lcom/google/android/apps/googlevoice/CallRecord;->timestamp:J

    goto :goto_8
.end method

.method public getIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/apps/googlevoice/CallRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->calls:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLatestTimestamp()J
    .registers 3

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, -0x1

    .line 58
    :goto_8
    return-wide v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->calls:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/CallRecord;

    iget-wide v0, v0, Lcom/google/android/apps/googlevoice/CallRecord;->timestamp:J

    goto :goto_8
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->calls:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isLatest(Lcom/google/android/apps/googlevoice/CallRecord;)Z
    .registers 4
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 63
    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->calls:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public logInterceptedCall(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/googlevoice/CallRecord;
    .registers 6
    .parameter "originalNumber"
    .parameter "newNumber"

    .prologue
    .line 111
    new-instance v0, Lcom/google/android/apps/googlevoice/CallRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/apps/googlevoice/CallRecord;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 112
    .local v0, record:Lcom/google/android/apps/googlevoice/CallRecord;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->calls:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->writeToFile()V

    .line 114
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_2f

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logged intercepted call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/CallRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 117
    :cond_2f
    return-object v0
.end method

.method public remove(Lcom/google/android/apps/googlevoice/CallRecord;)Z
    .registers 5
    .parameter "record"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->calls:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 98
    .local v0, present:Z
    if-nez v0, :cond_24

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to remove a non-existing record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/CallRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    .line 103
    .end local v0           #present:Z
    :goto_23
    return v0

    .line 102
    .restart local v0       #present:Z
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->writeToFile()V

    goto :goto_23
.end method

.method public size()I
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->calls:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized writeToFile()V
    .registers 9

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/apps/googlevoice/R$string;->call_log_file:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, filename:Ljava/lang/String;
    sget-boolean v4, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v4, :cond_2b

    .line 131
    const-string v4, "Writing calllog (size: %d) to: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_55

    .line 134
    :cond_2b
    :try_start_2b
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 135
    .local v1, file:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 137
    .local v3, stream:Ljava/io/ObjectOutputStream;
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/InterceptedCallLog;->calls:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 138
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_55
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_3f} :catch_41
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3f} :catch_58

    .line 146
    .end local v1           #file:Ljava/io/FileOutputStream;
    .end local v3           #stream:Ljava/io/ObjectOutputStream;
    :goto_3f
    monitor-exit p0

    return-void

    .line 139
    :catch_41
    move-exception v0

    .line 140
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_42
    const-string v4, "Was not able to open %s to save the call log: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_42 .. :try_end_54} :catchall_55

    goto :goto_3f

    .line 129
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v2           #filename:Ljava/lang/String;
    :catchall_55
    move-exception v4

    monitor-exit p0

    throw v4

    .line 142
    .restart local v2       #filename:Ljava/lang/String;
    :catch_58
    move-exception v0

    .line 143
    .local v0, e:Ljava/io/IOException;
    :try_start_59
    const-string v4, "Was not able to write the calllog to: %s. Error: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_59 .. :try_end_6b} :catchall_55

    goto :goto_3f
.end method
