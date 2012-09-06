.class public Lcom/google/googlenav/common/io/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/googlenav/common/io/i;->a:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public static a([B)Ljava/io/DataInput;
    .registers 2
    .parameter

    .prologue
    .line 434
    new-instance v0, LW/a;

    invoke-direct {v0, p0}, LW/a;-><init>([B)V

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/io/g;Ljava/lang/String;Ljava/util/Vector;II)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 174
    invoke-interface {p0}, Lcom/google/googlenav/common/io/g;->f()I

    move-result v1

    .line 175
    if-nez v1, :cond_20

    .line 176
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Network not available."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :catch_10
    move-exception v1

    move-object v2, v3

    .line 191
    :goto_12
    if-ge v0, p3, :cond_44

    .line 193
    int-to-long v4, p4

    :try_start_15
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_3c
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_60

    .line 217
    :goto_18
    invoke-static {v3}, Lcom/google/googlenav/common/io/i;->a(Ljava/io/OutputStream;)V

    .line 218
    invoke-static {v2}, Lcom/google/googlenav/common/io/i;->a(Lcom/google/googlenav/common/io/GoogleHttpConnection;)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    .line 186
    :cond_20
    const/4 v1, 0x0

    .line 187
    :try_start_21
    invoke-interface {p0, p1, v1}, Lcom/google/googlenav/common/io/g;->a(Ljava/lang/String;Z)Lcom/google/googlenav/common/io/GoogleHttpConnection;
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_62
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_10

    move-result-object v2

    .line 188
    :try_start_25
    invoke-static {v2, p2}, Lcom/google/googlenav/common/io/i;->a(Lcom/google/googlenav/common/io/GoogleHttpConnection;Ljava/util/Vector;)V

    .line 189
    invoke-interface {v2}, Lcom/google/googlenav/common/io/GoogleHttpConnection;->c()I
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_3c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2b} :catch_65

    move-result v0

    .line 203
    const/16 v1, 0x12d

    if-eq v0, v1, :cond_45

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_45

    .line 207
    :try_start_34
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected response."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3c

    .line 217
    :catchall_3c
    move-exception v0

    :goto_3d
    invoke-static {v3}, Lcom/google/googlenav/common/io/i;->a(Ljava/io/OutputStream;)V

    .line 218
    invoke-static {v2}, Lcom/google/googlenav/common/io/i;->a(Lcom/google/googlenav/common/io/GoogleHttpConnection;)V

    throw v0

    .line 199
    :cond_44
    :try_start_44
    throw v1

    .line 210
    :cond_45
    const-string v0, "Location"

    invoke-interface {v2, v0}, Lcom/google/googlenav/common/io/GoogleHttpConnection;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    if-nez v0, :cond_55

    .line 212
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid redirect."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_55
    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_58
    .catchall {:try_start_44 .. :try_end_58} :catchall_3c

    move-result-object v0

    .line 217
    invoke-static {v3}, Lcom/google/googlenav/common/io/i;->a(Ljava/io/OutputStream;)V

    .line 218
    invoke-static {v2}, Lcom/google/googlenav/common/io/i;->a(Lcom/google/googlenav/common/io/GoogleHttpConnection;)V

    return-object v0

    .line 194
    :catch_60
    move-exception v1

    goto :goto_18

    .line 217
    :catchall_62
    move-exception v0

    move-object v2, v3

    goto :goto_3d

    .line 190
    :catch_65
    move-exception v1

    goto :goto_12
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 332
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 333
    new-array v5, v4, [B

    move v0, v2

    move v3, v2

    .line 341
    :goto_9
    if-ge v0, v4, :cond_64

    .line 342
    :try_start_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 343
    sparse-switch v6, :sswitch_data_6a

    .line 358
    add-int/lit8 v1, v3, 0x1

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 341
    :goto_17
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    goto :goto_9

    .line 345
    :sswitch_1b
    add-int/lit8 v1, v3, 0x1

    const/16 v6, 0x20

    aput-byte v6, v5, v3
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_21} :catch_22

    goto :goto_17

    .line 362
    :catch_22
    move-exception v0

    .line 363
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 349
    :sswitch_2d
    :try_start_2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v6, v0, 0x3

    if-ge v1, v6, :cond_4e

    .line 350
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_4e
    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v6, v0, 0x1

    add-int/lit8 v7, v0, 0x3

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v3
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_61} :catch_22

    .line 354
    add-int/lit8 v0, v0, 0x2

    .line 355
    goto :goto_17

    .line 366
    :cond_64
    const/4 v0, 0x1

    invoke-static {v5, v2, v3, v0}, Lcom/google/googlenav/common/io/o;->a([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 343
    :sswitch_data_6a
    .sparse-switch
        0x25 -> :sswitch_2d
        0x2b -> :sswitch_1b
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x3a

    const/16 v4, 0x2f

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 382
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 427
    :cond_c
    :goto_c
    return-object p1

    .line 390
    :cond_d
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 391
    const/4 v1, 0x1

    if-le v0, v1, :cond_17

    const/4 v1, 0x7

    if-lt v0, v1, :cond_c

    .line 395
    :cond_17
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 396
    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v0, v2, :cond_39

    :goto_2c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_39
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2c

    .line 401
    :cond_3e
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 402
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 403
    if-ne v0, v2, :cond_4e

    if-eq v1, v2, :cond_5a

    .line 405
    :cond_4e
    if-eq v0, v2, :cond_80

    if-eq v1, v2, :cond_80

    .line 406
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 412
    :cond_56
    :goto_56
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 415
    :cond_5a
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 416
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 417
    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v0, v2, :cond_84

    :goto_73
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    .line 407
    :cond_80
    if-ne v0, v2, :cond_56

    move v0, v1

    .line 410
    goto :goto_56

    .line 418
    :cond_84
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_73

    .line 421
    :cond_89
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 423
    add-int/lit8 v0, v0, 0x2

    if-le v1, v0, :cond_aa

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_c

    .line 427
    :cond_aa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_c
.end method

.method public static a(Lcom/google/googlenav/common/io/GoogleHttpConnection;)V
    .registers 2
    .parameter

    .prologue
    .line 249
    if-eqz p0, :cond_5

    .line 250
    :try_start_2
    invoke-interface {p0}, Lcom/google/googlenav/common/io/GoogleHttpConnection;->f()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 256
    :cond_5
    :goto_5
    return-void

    .line 252
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private static a(Lcom/google/googlenav/common/io/GoogleHttpConnection;Ljava/util/Vector;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 230
    if-eqz p1, :cond_1e

    .line 231
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    move v1, v2

    .line 232
    :goto_8
    if-ge v1, v3, :cond_1e

    .line 233
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 235
    aget-object v4, v0, v2

    .line 236
    const/4 v5, 0x1

    aget-object v0, v0, v5

    .line 237
    invoke-interface {p0, v4, v0}, Lcom/google/googlenav/common/io/GoogleHttpConnection;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 240
    :cond_1e
    return-void
.end method

.method public static a(Ljava/io/DataInput;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 137
    if-gez p1, :cond_8

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 141
    :cond_8
    if-lez p1, :cond_1f

    .line 142
    const/16 v0, 0x800

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    .line 144
    :goto_12
    if-lez p1, :cond_1f

    .line 145
    array-length v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 146
    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Ljava/io/DataInput;->readFully([BII)V

    .line 147
    sub-int/2addr p1, v1

    .line 148
    goto :goto_12

    .line 150
    :cond_1f
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 119
    .line 120
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 122
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 123
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 125
    :cond_10
    return-void
.end method

.method public static a(Ljava/io/OutputStream;)V
    .registers 2
    .parameter

    .prologue
    .line 281
    if-eqz p0, :cond_5

    .line 282
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 288
    :cond_5
    :goto_5
    return-void

    .line 284
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 2
    .parameter

    .prologue
    .line 106
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/i;->a(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;I)[B
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 83
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_18

    .line 85
    :try_start_5
    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/i;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_13

    .line 87
    :try_start_8
    invoke-static {v0}, Lcom/google/googlenav/common/io/i;->a(Ljava/io/OutputStream;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_18

    move-result-object v0

    .line 91
    invoke-static {p0}, Lcom/google/googlenav/common/io/i;->b(Ljava/io/InputStream;)V

    return-object v0

    .line 87
    :catchall_13
    move-exception v1

    :try_start_14
    invoke-static {v0}, Lcom/google/googlenav/common/io/i;->a(Ljava/io/OutputStream;)V

    throw v1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_18

    .line 91
    :catchall_18
    move-exception v0

    invoke-static {p0}, Lcom/google/googlenav/common/io/i;->b(Ljava/io/InputStream;)V

    throw v0
.end method

.method public static a([BIII)[B
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 447
    add-int/lit8 v1, p2, 0x1

    new-array v1, v1, [B

    .line 448
    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v4, p2, 0x1

    invoke-direct {v3, v1, v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/Config;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    .line 453
    new-array v3, p3, [B

    move v1, p3

    .line 460
    :goto_1a
    if-lez v1, :cond_26

    :try_start_1c
    invoke-virtual {v2, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    .line 461
    sub-int/2addr v1, v4

    .line 462
    add-int/2addr v0, v4

    goto :goto_1a

    .line 464
    :cond_26
    if-eqz v1, :cond_56

    .line 465
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] bytes, but only read ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_51
    .catchall {:try_start_1c .. :try_end_51} :catchall_51

    .line 469
    :catchall_51
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_56
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 471
    return-object v3
.end method

.method public static b(Ljava/io/InputStream;)V
    .registers 2
    .parameter

    .prologue
    .line 265
    if-eqz p0, :cond_5

    .line 266
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 272
    :cond_5
    :goto_5
    return-void

    .line 268
    :catch_6
    move-exception v0

    goto :goto_5
.end method
