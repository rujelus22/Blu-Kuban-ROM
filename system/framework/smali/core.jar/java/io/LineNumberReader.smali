.class public Ljava/io/LineNumberReader;
.super Ljava/io/BufferedReader;
.source "LineNumberReader.java"


# instance fields
.field private lastWasCR:Z

.field private lineNumber:I

.field private markedLastWasCR:Z

.field private markedLineNumber:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 4
    .parameter "in"
    .parameter "size"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    .line 60
    return-void
.end method


# virtual methods
.method public getLineNumber()I
    .registers 3

    .prologue
    .line 68
    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_3
    iget v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    monitor-exit v1

    return v0

    .line 70
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public mark(I)V
    .registers 4
    .parameter "readlimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_3
    invoke-super {p0, p1}, Ljava/io/BufferedReader;->mark(I)V

    .line 93
    iget v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    iput v0, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    .line 94
    iget-boolean v0, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    iput-boolean v0, p0, Ljava/io/LineNumberReader;->markedLastWasCR:Z

    .line 95
    monitor-exit v1

    .line 96
    return-void

    .line 95
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v2, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 117
    :try_start_3
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 118
    .local v0, ch:I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_13

    iget-boolean v1, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    if-eqz v1, :cond_13

    .line 119
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 121
    :cond_13
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    .line 122
    packed-switch v0, :pswitch_data_2a

    .line 130
    :goto_19
    :pswitch_19
    monitor-exit v2

    return v0

    .line 124
    :pswitch_1b
    const/16 v0, 0xa

    .line 125
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    .line 128
    :pswitch_20
    iget v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    goto :goto_19

    .line 131
    .end local v0           #ch:I
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1

    .line 122
    :pswitch_data_2a
    .packed-switch 0xa
        :pswitch_20
        :pswitch_19
        :pswitch_19
        :pswitch_1b
    .end packed-switch
.end method

.method public read([CII)I
    .registers 9
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 158
    iget-object v4, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 159
    :try_start_4
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v2

    .line 160
    .local v2, read:I
    if-ne v2, v3, :cond_d

    .line 161
    monitor-exit v4

    move v2, v3

    .line 177
    .end local v2           #read:I
    :goto_c
    return v2

    .line 163
    .restart local v2       #read:I
    :cond_d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v2, :cond_3d

    .line 164
    add-int v3, p2, v1

    aget-char v0, p1, v3

    .line 165
    .local v0, ch:C
    const/16 v3, 0xd

    if-ne v0, v3, :cond_24

    .line 166
    iget v3, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 167
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    .line 163
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 168
    :cond_24
    const/16 v3, 0xa

    if-ne v0, v3, :cond_39

    .line 169
    iget-boolean v3, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    if-nez v3, :cond_32

    .line 170
    iget v3, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 172
    :cond_32
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    goto :goto_21

    .line 178
    .end local v0           #ch:C
    .end local v1           #i:I
    .end local v2           #read:I
    :catchall_36
    move-exception v3

    monitor-exit v4
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_36

    throw v3

    .line 174
    .restart local v0       #ch:C
    .restart local v1       #i:I
    .restart local v2       #read:I
    :cond_39
    const/4 v3, 0x0

    :try_start_3a
    iput-boolean v3, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    goto :goto_21

    .line 177
    .end local v0           #ch:C
    :cond_3d
    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_36

    goto :goto_c
.end method

.method public readLine()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v2, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 195
    :try_start_3
    iget-boolean v1, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    if-eqz v1, :cond_d

    .line 196
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->chompNewline()V

    .line 197
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    .line 199
    :cond_d
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 201
    iget v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 203
    :cond_19
    monitor-exit v2

    return-object v0

    .line 204
    .end local v0           #result:Ljava/lang/String;
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_3
    invoke-super {p0}, Ljava/io/BufferedReader;->reset()V

    .line 223
    iget v0, p0, Ljava/io/LineNumberReader;->markedLineNumber:I

    iput v0, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 224
    iget-boolean v0, p0, Ljava/io/LineNumberReader;->markedLastWasCR:Z

    iput-boolean v0, p0, Ljava/io/LineNumberReader;->lastWasCR:Z

    .line 225
    monitor-exit v1

    .line 226
    return-void

    .line 225
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public setLineNumber(I)V
    .registers 4
    .parameter "lineNumber"

    .prologue
    .line 239
    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_3
    iput p1, p0, Ljava/io/LineNumberReader;->lineNumber:I

    .line 241
    monitor-exit v1

    .line 242
    return-void

    .line 241
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public skip(J)J
    .registers 8
    .parameter "charCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_1f

    .line 263
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charCount < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :cond_1f
    iget-object v2, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 266
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    int-to-long v3, v0

    cmp-long v1, v3, p1

    if-gez v1, :cond_35

    .line 267
    :try_start_28
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->read()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_32

    .line 268
    int-to-long p1, v0

    monitor-exit v2

    .line 271
    .end local p1
    :goto_31
    return-wide p1

    .line 266
    .restart local p1
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 271
    :cond_35
    monitor-exit v2

    goto :goto_31

    .line 272
    .end local p1
    :catchall_37
    move-exception v1

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_37

    throw v1
.end method
