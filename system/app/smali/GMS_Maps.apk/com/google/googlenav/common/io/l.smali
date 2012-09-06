.class public Lcom/google/googlenav/common/io/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/io/j;

.field private b:Ljava/util/Hashtable;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/j;)V
    .registers 3
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/common/io/l;->b:Ljava/util/Hashtable;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/common/io/l;->c:Z

    .line 54
    iput-object p1, p0, Lcom/google/googlenav/common/io/l;->a:Lcom/google/googlenav/common/io/j;

    .line 55
    return-void
.end method

.method public static a([B)Ljava/util/Hashtable;
    .registers 9
    .parameter

    .prologue
    .line 128
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 130
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    const-string v0, "Preferences {"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :try_start_19
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v4

    .line 141
    const-string v0, "numPrefs: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const/4 v0, 0x0

    :goto_26
    if-ge v0, v4, :cond_61

    .line 144
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-interface {v1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v6

    .line 150
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    new-array v6, v6, [B

    .line 153
    invoke-interface {v1, v6}, Ljava/io/DataInput;->readFully([B)V

    .line 154
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v2, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_5d} :catch_60

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 159
    :catch_60
    move-exception v0

    .line 167
    :cond_61
    return-object v2
.end method

.method public static a(Ljava/util/Hashtable;)[B
    .registers 6
    .parameter

    .prologue
    .line 102
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 103
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 104
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-interface {v3, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 105
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 106
    :goto_15
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 107
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 110
    if-nez v1, :cond_2c

    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 111
    :cond_2c
    invoke-interface {v3, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 112
    array-length v0, v1

    invoke-interface {v3, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 113
    invoke-interface {v3, v1}, Ljava/io/DataOutput;->write([B)V

    goto :goto_15

    .line 116
    :cond_37
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized b()V
    .registers 4

    .prologue
    .line 194
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/common/io/l;->b:Ljava/util/Hashtable;

    if-nez v0, :cond_18

    .line 195
    iget-object v0, p0, Lcom/google/googlenav/common/io/l;->a:Lcom/google/googlenav/common/io/j;

    const-string v1, "Preferences"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v0

    .line 196
    if-eqz v0, :cond_1a

    .line 197
    invoke-static {v0}, Lcom/google/googlenav/common/io/l;->a([B)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/common/io/l;->b:Ljava/util/Hashtable;

    .line 206
    :goto_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/common/io/l;->c:Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_2d

    .line 208
    :cond_18
    monitor-exit p0

    return-void

    .line 202
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/google/googlenav/common/io/l;->a:Lcom/google/googlenav/common/io/j;

    const/16 v1, 0x7d0

    new-array v1, v1, [B

    const-string v2, "Preferences"

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I

    .line 204
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/io/l;->b:Ljava/util/Hashtable;
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_2d

    goto :goto_15

    .line 194
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(Ljava/util/Hashtable;)[B
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x7d0

    const/4 v3, 0x0

    .line 176
    invoke-static {p0}, Lcom/google/googlenav/common/io/l;->a(Ljava/util/Hashtable;)[B

    move-result-object v0

    .line 178
    array-length v1, v0

    if-le v1, v2, :cond_b

    .line 184
    :goto_a
    return-object v0

    .line 182
    :cond_b
    new-array v1, v2, [B

    .line 183
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 184
    goto :goto_a
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 4

    .prologue
    .line 227
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/googlenav/common/io/l;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-nez v0, :cond_7

    .line 238
    :goto_5
    monitor-exit p0

    return-void

    .line 232
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/googlenav/common/io/l;->b:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/google/googlenav/common/io/l;->b(Ljava/util/Hashtable;)[B

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/google/googlenav/common/io/l;->a:Lcom/google/googlenav/common/io/j;

    const-string v2, "Preferences"

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_14} :catch_1b

    .line 237
    :goto_14
    const/4 v0, 0x0

    :try_start_15
    iput-boolean v0, p0, Lcom/google/googlenav/common/io/l;->c:Z
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_18

    goto :goto_5

    .line 227
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    .line 234
    :catch_1b
    move-exception v0

    .line 235
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_18

    goto :goto_14
.end method

.method public declared-synchronized a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 211
    monitor-enter p0

    if-eqz p1, :cond_6

    .line 212
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/google/googlenav/common/io/l;->c:Z

    .line 218
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/common/io/l;->b:Ljava/util/Hashtable;

    .line 219
    invoke-direct {p0}, Lcom/google/googlenav/common/io/l;->b()V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    .line 220
    monitor-exit p0

    return-void

    .line 211
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;[B)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 72
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/google/googlenav/common/io/l;->b()V

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/googlenav/common/io/l;->c:Z

    .line 74
    if-nez p2, :cond_16

    .line 75
    iget-object v1, p0, Lcom/google/googlenav/common/io/l;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_1c

    move-result-object v1

    if-eqz v1, :cond_14

    .line 78
    :goto_12
    monitor-exit p0

    return v0

    .line 75
    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    .line 77
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/google/googlenav/common/io/l;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_12

    .line 72
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)[B
    .registers 3
    .parameter

    .prologue
    .line 89
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/googlenav/common/io/l;->b()V

    .line 90
    iget-object v0, p0, Lcom/google/googlenav/common/io/l;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    .line 89
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
