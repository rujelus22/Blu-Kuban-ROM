.class public LV/d;
.super Lcom/google/googlenav/common/io/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/io/j;
.implements Lcom/google/googlenav/common/io/n;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/googlenav/common/io/b;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LV/d;->b:Ljava/util/Set;

    .line 54
    iput-object p1, p0, LV/d;->a:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic a(LV/d;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, LV/d;->b:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Ljava/io/FileOutputStream;)Z
    .registers 2
    .parameter

    .prologue
    .line 39
    invoke-static {p0}, LV/d;->b(Ljava/io/FileOutputStream;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/io/FileOutputStream;)Z
    .registers 2
    .parameter

    .prologue
    .line 255
    if-eqz p0, :cond_5

    .line 256
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_7

    .line 262
    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    .line 258
    :catch_7
    move-exception v0

    .line 260
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DATA_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 69
    const-string v0, "DATA_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 70
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public a([BLjava/lang/String;)I
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 142
    if-nez p1, :cond_6

    .line 143
    const/4 v0, 0x0

    :try_start_4
    new-array p1, v0, [B

    .line 145
    :cond_6
    iget-object v0, p0, LV/d;->a:Landroid/content/Context;

    invoke-static {p2}, LV/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 148
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 150
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x1000
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_1c} :catch_21
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1c} :catch_2c

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x1000

    return v0

    .line 151
    :catch_21
    move-exception v0

    .line 152
    new-instance v1, Lcom/google/googlenav/common/io/k;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/google/googlenav/common/io/k;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 154
    :catch_2c
    move-exception v0

    .line 155
    new-instance v1, Lcom/google/googlenav/common/io/k;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/google/googlenav/common/io/k;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/common/io/m;
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-static {p1}, LV/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    iget-object v4, p0, LV/d;->b:Ljava/util/Set;

    monitor-enter v4

    .line 318
    :try_start_8
    iget-object v1, p0, LV/d;->b:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 319
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_31

    .line 335
    :goto_11
    return-object v0

    .line 323
    :cond_12
    :try_start_12
    iget-object v1, p0, LV/d;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_31
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_29
    .catch Ljava/nio/channels/NonWritableChannelException; {:try_start_12 .. :try_end_18} :catch_39
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_12 .. :try_end_18} :catch_34

    move-result-object v2

    .line 324
    :try_start_19
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v5

    .line 325
    new-instance v1, LV/e;

    invoke-direct {v1, p0, v2, v5, v3}, LV/e;-><init>(LV/d;Ljava/io/FileOutputStream;Ljava/nio/channels/FileLock;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_31
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_26} :catch_3e
    .catch Ljava/nio/channels/NonWritableChannelException; {:try_start_19 .. :try_end_26} :catch_3c
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_19 .. :try_end_26} :catch_37

    :try_start_26
    monitor-exit v4

    move-object v0, v1

    goto :goto_11

    .line 326
    :catch_29
    move-exception v1

    move-object v1, v0

    :goto_2b
    move-object v2, v1

    .line 333
    :goto_2c
    invoke-static {v2}, LV/d;->b(Ljava/io/FileOutputStream;)Z

    .line 334
    monitor-exit v4

    goto :goto_11

    :catchall_31
    move-exception v0

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_31

    throw v0

    .line 330
    :catch_34
    move-exception v1

    move-object v2, v0

    goto :goto_2c

    :catch_37
    move-exception v1

    goto :goto_2c

    .line 328
    :catch_39
    move-exception v1

    move-object v2, v0

    goto :goto_2c

    :catch_3c
    move-exception v1

    goto :goto_2c

    .line 326
    :catch_3e
    move-exception v1

    move-object v1, v2

    goto :goto_2b
.end method

.method public b([BLjava/lang/String;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 175
    :try_start_0
    invoke-virtual {p0, p1, p2}, LV/d;->a([BLjava/lang/String;)I
    :try_end_3
    .catch Lcom/google/googlenav/common/io/k; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 177
    :goto_4
    return v0

    .line 176
    :catch_5
    move-exception v0

    .line 177
    invoke-virtual {v0}, Lcom/google/googlenav/common/io/k;->a()I

    move-result v0

    goto :goto_4
.end method

.method public b(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, LV/d;->a:Landroid/content/Context;

    invoke-static {p1}, LV/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, LV/d;->a:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 127
    :cond_4
    return-void

    .line 113
    :cond_5
    iget-object v0, p0, LV/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_4

    .line 118
    const/4 v0, 0x0

    :goto_e
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 119
    aget-object v2, v1, v0

    if-nez v2, :cond_18

    .line 118
    :cond_15
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 121
    :cond_18
    aget-object v2, v1, v0

    invoke-static {p1}, LV/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 122
    iget-object v2, p0, LV/d;->a:Landroid/content/Context;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_15
.end method

.method public d(Ljava/lang/String;)[B
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 202
    .line 204
    :try_start_1
    invoke-static {p1}, LV/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v2, p0, LV/d;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_33
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_a} :catch_21
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_2a

    move-result-object v2

    .line 206
    :try_start_b
    iget-object v3, p0, LV/d;->a:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    .line 208
    new-array v0, v3, [B

    .line 209
    invoke-static {p1, v2, v3, v0}, LV/f;->a(Ljava/lang/String;Ljava/io/InputStream;I[B)V
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_43
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_1b} :catch_47
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1b} :catch_45

    .line 218
    if-eqz v2, :cond_20

    .line 220
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_3b

    .line 223
    :cond_20
    :goto_20
    return-object v0

    .line 211
    :catch_21
    move-exception v0

    move-object v0, v1

    .line 218
    :goto_23
    if-eqz v0, :cond_28

    .line 220
    :try_start_25
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_3d

    :cond_28
    :goto_28
    move-object v0, v1

    .line 223
    goto :goto_20

    .line 214
    :catch_2a
    move-exception v0

    move-object v2, v1

    .line 218
    :goto_2c
    if-eqz v2, :cond_31

    .line 220
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_3f

    :cond_31
    :goto_31
    move-object v0, v1

    .line 223
    goto :goto_20

    .line 218
    :catchall_33
    move-exception v0

    move-object v2, v1

    :goto_35
    if-eqz v2, :cond_3a

    .line 220
    :try_start_37
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_41

    .line 223
    :cond_3a
    :goto_3a
    throw v0

    .line 221
    :catch_3b
    move-exception v1

    goto :goto_20

    :catch_3d
    move-exception v0

    goto :goto_28

    :catch_3f
    move-exception v0

    goto :goto_31

    :catch_41
    move-exception v1

    goto :goto_3a

    .line 218
    :catchall_43
    move-exception v0

    goto :goto_35

    .line 214
    :catch_45
    move-exception v0

    goto :goto_2c

    .line 211
    :catch_47
    move-exception v0

    move-object v0, v2

    goto :goto_23
.end method

.method public e(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, LV/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v4

    .line 235
    array-length v0, v4

    new-array v5, v0, [Ljava/lang/String;

    move v0, v1

    move v2, v1

    .line 237
    :goto_c
    array-length v3, v4

    if-ge v0, v3, :cond_25

    .line 238
    aget-object v3, v4, v0

    invoke-static {v3}, LV/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 239
    if-eqz v6, :cond_22

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 240
    add-int/lit8 v3, v2, 0x1

    aput-object v6, v5, v2

    move v2, v3

    .line 237
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 243
    :cond_25
    new-array v0, v2, [Ljava/lang/String;

    .line 244
    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    return-object v0
.end method
