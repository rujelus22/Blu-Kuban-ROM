.class public Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;
.super Ljava/lang/Object;
.source "CircularLogImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/util/logging/CircularLog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;
    }
.end annotation


# static fields
.field public static final TIMESTAMP_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss.SSS"

.field public static final TIMESTAMP_SEPARATOR:Ljava/lang/String; = ": "


# instance fields
.field private clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

.field private entries:[Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;

.field private isFull:Z

.field private readFromIndex:I

.field private writeAtIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/time/ClockUtils;)V
    .registers 3
    .parameter "clockUtils"

    .prologue
    .line 35
    const/16 v0, 0xc8

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;-><init>(Lcom/google/android/apps/common/time/ClockUtils;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/common/time/ClockUtils;I)V
    .registers 4
    .parameter "clockUtils"
    .parameter "maxEntries"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeAtIndex:I

    .line 26
    iput v0, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->readFromIndex:I

    .line 27
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->isFull:Z

    .line 30
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    .line 31
    new-array v0, p2, [Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->entries:[Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;

    .line 32
    return-void
.end method

.method private declared-synchronized nextIndex(I)I
    .registers 4
    .parameter "index"

    .prologue
    .line 39
    monitor-enter p0

    add-int/lit8 v0, p1, 0x1

    :try_start_3
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->entries:[Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;

    array-length v1, v1

    rem-int/2addr v0, v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writeEntryTo(Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V
    .registers 7
    .parameter "entry"
    .parameter "pw"
    .parameter "dateFormat"

    .prologue
    .line 81
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p1, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;->timestampMillis:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    iget-object v0, p1, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;->message:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method public declared-synchronized addEntry(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    invoke-interface {v0}, Lcom/google/android/apps/common/time/ClockUtils;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->addEntryInternal(JLjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized addEntryInternal(JLjava/lang/String;)V
    .registers 7
    .parameter "timestamp"
    .parameter "message"

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->entries:[Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;

    iget v1, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeAtIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_26

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->entries:[Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;

    iget v1, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeAtIndex:I

    new-instance v2, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;-><init>(JLjava/lang/String;)V

    aput-object v2, v0, v1

    .line 48
    :goto_14
    iget v0, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeAtIndex:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->nextIndex(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeAtIndex:I

    .line 49
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->isFull:Z

    if-eqz v0, :cond_33

    .line 50
    iget v0, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeAtIndex:I

    iput v0, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->readFromIndex:I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_30

    .line 54
    :goto_24
    monitor-exit p0

    return-void

    .line 46
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->entries:[Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;

    iget v1, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeAtIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;->set(JLjava/lang/String;)Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_30

    goto :goto_14

    .line 43
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    .line 52
    :cond_33
    :try_start_33
    iget v0, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeAtIndex:I

    iget v1, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->readFromIndex:I

    if-ne v0, v1, :cond_3d

    const/4 v0, 0x1

    :goto_3a
    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->isFull:Z
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_30

    goto :goto_24

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method public declared-synchronized clear()V
    .registers 7

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    iget-boolean v5, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->isFull:Z

    if-eqz v5, :cond_13

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->entries:[Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_9
    if-ge v3, v4, :cond_25

    aget-object v1, v0, v3

    .line 65
    .local v1, entry:Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;->reset()Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 68
    .end local v0           #arr$:[Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;
    .end local v1           #entry:Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_13
    iget v2, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->readFromIndex:I

    .local v2, i:I
    :goto_15
    iget v5, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeAtIndex:I

    if-eq v2, v5, :cond_25

    .line 69
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->entries:[Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;->reset()Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;

    .line 68
    invoke-direct {p0, v2}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->nextIndex(I)I

    move-result v2

    goto :goto_15

    .line 72
    .end local v2           #i:I
    :cond_25
    const/4 v5, 0x0

    iput v5, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeAtIndex:I

    iput v5, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->readFromIndex:I

    .line 73
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->isFull:Z
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 74
    monitor-exit p0

    return-void

    .line 63
    :catchall_2f
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getContents()Ljava/lang/String;
    .registers 5

    .prologue
    .line 106
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 107
    .local v2, sw:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 108
    .local v1, pw:Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeTo(Ljava/io/PrintWriter;)V

    .line 109
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V

    .line 110
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 111
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v3

    .line 113
    .end local v1           #pw:Ljava/io/PrintWriter;
    .end local v2           #sw:Ljava/io/StringWriter;
    :goto_17
    return-object v3

    .line 112
    :catch_18
    move-exception v0

    .line 113
    .local v0, e:Ljava/io/IOException;
    const-string v3, ""

    goto :goto_17
.end method

.method public getRecentContents(I)Ljava/lang/String;
    .registers 6
    .parameter "numEntries"

    .prologue
    .line 122
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 123
    .local v2, sw:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 124
    .local v1, pw:Ljava/io/PrintWriter;
    invoke-virtual {p0, v1, p1}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeMostRecentTo(Ljava/io/PrintWriter;I)V

    .line 125
    invoke-virtual {v2}, Ljava/io/StringWriter;->close()V

    .line 126
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 127
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v3

    .line 129
    .end local v1           #pw:Ljava/io/PrintWriter;
    .end local v2           #sw:Ljava/io/StringWriter;
    :goto_17
    return-object v3

    .line 128
    :catch_18
    move-exception v0

    .line 129
    .local v0, e:Ljava/io/IOException;
    const-string v3, ""

    goto :goto_17
.end method

.method public declared-synchronized isFull()Z
    .registers 2

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->isFull:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeMostRecentTo(Ljava/io/PrintWriter;I)V
    .registers 7
    .parameter "pw"
    .parameter "numEntries"

    .prologue
    .line 134
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    iget v3, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeAtIndex:I

    sub-int v2, v3, p2

    .line 136
    .local v2, startIndex:I
    if-gez v2, :cond_12

    .line 137
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->entries:[Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;

    array-length v3, v3

    add-int/2addr v2, v3

    .line 139
    :cond_12
    move v1, v2

    .local v1, i:I
    :goto_13
    iget v3, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeAtIndex:I

    if-eq v1, v3, :cond_23

    .line 140
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->entries:[Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;

    aget-object v3, v3, v1

    invoke-direct {p0, v3, p1, v0}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeEntryTo(Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 139
    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->nextIndex(I)I
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_25

    move-result v1

    goto :goto_13

    .line 142
    :cond_23
    monitor-exit p0

    return-void

    .line 134
    .end local v0           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v1           #i:I
    .end local v2           #startIndex:I
    :catchall_25
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized writeTo(Ljava/io/PrintWriter;)V
    .registers 6
    .parameter "pw"

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    iget-boolean v2, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->isFull:Z

    if-eqz v2, :cond_2b

    .line 91
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->entries:[Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;

    iget v3, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->readFromIndex:I

    aget-object v2, v2, v3

    invoke-direct {p0, v2, p1, v0}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeEntryTo(Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 92
    iget v2, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->readFromIndex:I

    invoke-direct {p0, v2}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->nextIndex(I)I

    move-result v1

    .local v1, i:I
    :goto_1b
    iget v2, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeAtIndex:I

    if-eq v1, v2, :cond_3d

    .line 94
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->entries:[Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;

    aget-object v2, v2, v1

    invoke-direct {p0, v2, p1, v0}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeEntryTo(Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 93
    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->nextIndex(I)I

    move-result v1

    goto :goto_1b

    .line 97
    .end local v1           #i:I
    :cond_2b
    iget v1, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->readFromIndex:I

    .restart local v1       #i:I
    :goto_2d
    iget v2, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeAtIndex:I

    if-eq v1, v2, :cond_3d

    .line 98
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->entries:[Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;

    aget-object v2, v2, v1

    invoke-direct {p0, v2, p1, v0}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->writeEntryTo(Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl$Entry;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 97
    invoke-direct {p0, v1}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;->nextIndex(I)I
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3f

    move-result v1

    goto :goto_2d

    .line 101
    :cond_3d
    monitor-exit p0

    return-void

    .line 88
    .end local v0           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v1           #i:I
    :catchall_3f
    move-exception v2

    monitor-exit p0

    throw v2
.end method
