.class public Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;
.super Ljava/lang/Object;
.source "PreferenceStore.java"


# instance fields
.field private final persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

.field private preferences:Ljava/util/Hashtable;

.field private preferencesChanged:Z


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;)V
    .registers 3
    .parameter "persistentStore"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferencesChanged:Z

    .line 51
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    .line 52
    return-void
.end method

.method private declared-synchronized ensurePreferencesLoaded()V
    .registers 5

    .prologue
    .line 170
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    if-nez v1, :cond_18

    .line 171
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    const-string v2, "Preferences"

    invoke-interface {v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readBlock(Ljava/lang/String;)[B

    move-result-object v0

    .line 172
    .local v0, bytes:[B
    if-eqz v0, :cond_1a

    .line 173
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->unpackPreferences([B)Ljava/util/Hashtable;

    move-result-object v1

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    .line 182
    :goto_15
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferencesChanged:Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_2d

    .line 184
    .end local v0           #bytes:[B
    :cond_18
    monitor-exit p0

    return-void

    .line 178
    .restart local v0       #bytes:[B
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    const/16 v2, 0x7d0

    new-array v2, v2, [B

    const-string v3, "Preferences"

    invoke-interface {v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlock([BLjava/lang/String;)I

    .line 180
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_2d

    goto :goto_15

    .line 170
    .end local v0           #bytes:[B
    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static packPreferences(Ljava/util/Hashtable;)[B
    .registers 7
    .parameter "prefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 100
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 101
    .local v2, dos:Ljava/io/DataOutput;
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-interface {v2, v5}, Ljava/io/DataOutput;->writeShort(I)V

    .line 102
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 103
    .local v3, keys:Ljava/util/Enumeration;
    :goto_15
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 104
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 106
    .local v4, preference:Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v1, v5

    check-cast v1, [B

    .line 107
    .local v1, data:[B
    if-nez v1, :cond_2f

    const/4 v5, 0x0

    new-array v1, v5, [B

    .line 108
    :cond_2f
    invoke-interface {v2, v4}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 109
    array-length v5, v1

    invoke-interface {v2, v5}, Ljava/io/DataOutput;->writeShort(I)V

    .line 110
    invoke-interface {v2, v1}, Ljava/io/DataOutput;->write([B)V

    goto :goto_15

    .line 113
    .end local v1           #data:[B
    .end local v4           #preference:Ljava/lang/String;
    :cond_3a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method private static packPreferencesBlock(Ljava/util/Hashtable;)[B
    .registers 6
    .parameter "prefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7d0

    const/4 v3, 0x0

    .line 152
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->packPreferences(Ljava/util/Hashtable;)[B

    move-result-object v0

    .line 154
    .local v0, packed:[B
    array-length v2, v0

    if-le v2, v4, :cond_b

    .line 160
    .end local v0           #packed:[B
    :goto_a
    return-object v0

    .line 158
    .restart local v0       #packed:[B
    :cond_b
    new-array v1, v4, [B

    .line 159
    .local v1, packedBlock:[B
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 160
    goto :goto_a
.end method

.method public static unpackPreferences([B)Ljava/util/Hashtable;
    .registers 10
    .parameter "bytes"

    .prologue
    .line 125
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 127
    .local v1, dis:Ljava/io/DataInput;
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 130
    .local v6, prefs:Ljava/util/Hashtable;
    :try_start_f
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v7

    .line 131
    .local v7, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_14
    if-ge v3, v7, :cond_2f

    .line 132
    invoke-interface {v1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, preference:Ljava/lang/String;
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 134
    .local v0, dataSize:I
    new-array v4, v0, [B

    .line 135
    .local v4, prefData:[B
    invoke-interface {v1, v4}, Ljava/io/DataInput;->readFully([B)V

    .line 136
    invoke-virtual {v6, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_26} :catch_29

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 139
    .end local v0           #dataSize:I
    .end local v3           #i:I
    .end local v4           #prefData:[B
    .end local v5           #preference:Ljava/lang/String;
    .end local v7           #size:I
    :catch_29
    move-exception v2

    .line 140
    .local v2, e:Ljava/io/IOException;
    const-string v8, "FLASH"

    invoke-static {v8, v2}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .end local v2           #e:Ljava/io/IOException;
    :cond_2f
    return-object v6
.end method


# virtual methods
.method public declared-synchronized readPreference(Ljava/lang/String;)[B
    .registers 3
    .parameter "preference"

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->ensurePreferencesLoaded()V

    .line 87
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 86
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized savePreferences()V
    .registers 5

    .prologue
    .line 200
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferencesChanged:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-nez v2, :cond_7

    .line 211
    :goto_5
    monitor-exit p0

    return-void

    .line 205
    :cond_7
    :try_start_7
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->packPreferencesBlock(Ljava/util/Hashtable;)[B

    move-result-object v0

    .line 206
    .local v0, block:[B
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    const-string v3, "Preferences"

    invoke-interface {v2, v0, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlock([BLjava/lang/String;)I
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_14} :catch_1b

    .line 210
    .end local v0           #block:[B
    :goto_14
    const/4 v2, 0x0

    :try_start_15
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferencesChanged:Z
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_18

    goto :goto_5

    .line 200
    :catchall_18
    move-exception v2

    monitor-exit p0

    throw v2

    .line 207
    :catch_1b
    move-exception v1

    .line 208
    .local v1, e:Ljava/io/IOException;
    :try_start_1c
    const-string v2, "FLASH"

    invoke-static {v2, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_18

    goto :goto_14
.end method

.method public declared-synchronized setPreference(Ljava/lang/String;[B)Z
    .registers 5
    .parameter "preference"
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    .line 69
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->ensurePreferencesLoaded()V

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferencesChanged:Z

    .line 71
    if-nez p2, :cond_16

    .line 72
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_1c

    move-result-object v1

    if-eqz v1, :cond_14

    .line 75
    :goto_12
    monitor-exit p0

    return v0

    .line 72
    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    .line 74
    :cond_16
    :try_start_16
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/PreferenceStore;->preferences:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_12

    .line 69
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
