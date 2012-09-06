.class public final Lcom/google/android/youtube/core/transfer/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/d;->a([B)V

    .line 42
    return-void
.end method

.method private a([B)V
    .registers 12
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 223
    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 224
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 225
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 226
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    move v2, v1

    .line 227
    :goto_15
    if-ge v2, v4, :cond_108

    .line 228
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 230
    packed-switch v0, :pswitch_data_10c

    .line 302
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t read extra of type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_37} :catch_37

    .line 306
    :catch_37
    move-exception v0

    .line 308
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 232
    :pswitch_3e
    :try_start_3e
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :goto_47
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    .line 236
    :pswitch_4b
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 237
    new-array v7, v6, [Ljava/lang/String;

    move v0, v1

    .line 238
    :goto_52
    if-ge v0, v6, :cond_5d

    .line 239
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 241
    :cond_5d
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 245
    :pswitch_63
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 249
    :pswitch_71
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 250
    new-array v7, v6, [J

    move v0, v1

    .line 251
    :goto_78
    if-ge v0, v6, :cond_83

    .line 252
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    aput-wide v8, v7, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 254
    :cond_83
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 258
    :pswitch_89
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 262
    :pswitch_97
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 263
    new-array v7, v6, [I

    move v0, v1

    .line 264
    :goto_9e
    if-ge v0, v6, :cond_a9

    .line 265
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    aput v8, v7, v0

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_9e

    .line 267
    :cond_a9
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 271
    :pswitch_af
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 275
    :pswitch_bd
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 276
    new-array v7, v6, [Z

    move v0, v1

    .line 277
    :goto_c4
    if-ge v0, v6, :cond_cf

    .line 278
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v8

    aput-boolean v8, v7, v0

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_c4

    .line 280
    :cond_cf
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_47

    .line 284
    :pswitch_d6
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_47

    .line 288
    :pswitch_e5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 290
    new-array v7, v6, [B

    move v0, v1

    .line 291
    :goto_ec
    if-ge v0, v6, :cond_101

    .line 292
    sub-int v8, v6, v0

    invoke-virtual {v3, v7, v0, v8}, Ljava/io/DataInputStream;->read([BII)I

    move-result v8

    .line 293
    const/4 v9, -0x1

    if-ne v8, v9, :cond_ff

    .line 294
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_ff
    add-int/2addr v0, v8

    .line 297
    goto :goto_ec

    .line 298
    :cond_101
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_47

    .line 305
    :cond_108
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_10b} :catch_37

    .line 309
    return-void

    .line 230
    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_4b
        :pswitch_63
        :pswitch_71
        :pswitch_89
        :pswitch_97
        :pswitch_af
        :pswitch_bd
        :pswitch_d6
        :pswitch_e5
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public final a(Ljava/lang/String;[B)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a()[B
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 154
    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 155
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1e
    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_115

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 160
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4c

    .line 161
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 162
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_44} :catch_45

    goto :goto_1e

    .line 215
    :catch_45
    move-exception v0

    .line 217
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 163
    :cond_4c
    :try_start_4c
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_66

    .line 164
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 165
    check-cast v0, [Ljava/lang/String;

    .line 166
    array-length v1, v0

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v2

    .line 167
    :goto_5b
    array-length v6, v0

    if-ge v1, v6, :cond_1e

    .line 168
    aget-object v6, v0, v1

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 170
    :cond_66
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_78

    .line 171
    const/4 v1, 0x3

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 172
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_1e

    .line 173
    :cond_78
    instance-of v1, v0, [J

    if-eqz v1, :cond_92

    .line 174
    const/4 v1, 0x4

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 175
    check-cast v0, [J

    .line 176
    array-length v1, v0

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v2

    .line 177
    :goto_87
    array-length v6, v0

    if-ge v1, v6, :cond_1e

    .line 178
    aget-wide v6, v0, v1

    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    .line 180
    :cond_92
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_a5

    .line 181
    const/4 v1, 0x5

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 182
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_1e

    .line 183
    :cond_a5
    instance-of v1, v0, [I

    if-eqz v1, :cond_bf

    .line 184
    const/4 v1, 0x6

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 185
    check-cast v0, [I

    .line 186
    array-length v1, v0

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v2

    .line 187
    :goto_b4
    array-length v6, v0

    if-ge v1, v6, :cond_1e

    .line 188
    aget v6, v0, v1

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_b4

    .line 190
    :cond_bf
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_d2

    .line 191
    const/4 v1, 0x7

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 192
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto/16 :goto_1e

    .line 193
    :cond_d2
    instance-of v1, v0, [Z

    if-eqz v1, :cond_ed

    .line 194
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 195
    check-cast v0, [Z

    .line 196
    array-length v1, v0

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v2

    .line 197
    :goto_e2
    array-length v6, v0

    if-ge v1, v6, :cond_1e

    .line 198
    aget-boolean v6, v0, v1

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_e2

    .line 200
    :cond_ed
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_101

    .line 201
    const/16 v1, 0x9

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 202
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto/16 :goto_1e

    .line 203
    :cond_101
    instance-of v1, v0, [B

    if-eqz v1, :cond_1e

    .line 204
    const/16 v1, 0xa

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 205
    check-cast v0, [B

    .line 206
    array-length v1, v0

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 207
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto/16 :goto_1e

    .line 210
    :cond_115
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 211
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 212
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 213
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_122} :catch_45

    .line 214
    return-object v0
.end method

.method public final b(Ljava/lang/String;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public final b(Ljava/lang/String;J)J
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_14
    return-wide p2
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public final b(Ljava/lang/String;Z)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public final c(Ljava/lang/String;)[B
    .registers 3
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
