.class public Lcom/dropbox/android/util/ab;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    const-class v0, Lcom/dropbox/android/util/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/util/ab;->a:Ljava/lang/String;

    .line 212
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/sdcard/external_sd"

    aput-object v1, v0, v3

    const-string v1, "/disk"

    aput-object v1, v0, v4

    const-string v1, "/sdcard"

    aput-object v1, v0, v5

    const-string v1, "/sdcard/sd"

    aput-object v1, v0, v6

    const-string v1, "/emmc"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "/media"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/android/util/ab;->b:[Ljava/lang/String;

    .line 255
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/mnt/external_sd"

    aput-object v1, v0, v3

    const-string v1, "/mnt/sdcard-ext"

    aput-object v1, v0, v4

    const-string v1, "/mnt/emmc"

    aput-object v1, v0, v5

    const-string v1, "/sdcard/external_sd"

    aput-object v1, v0, v6

    const-string v1, "/sdcard/sd"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "/mnt/media"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/mnt/extSdCard"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/android/util/ab;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/util/Set;)J
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 100
    new-instance v0, Lcom/dropbox/android/util/ac;

    invoke-direct {v0}, Lcom/dropbox/android/util/ac;-><init>()V

    .line 102
    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 103
    invoke-virtual {v0}, Lcom/dropbox/android/util/ac;->a()J

    move-result-wide v0

    .line 106
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/util/Z;

    .line 107
    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->f()Lcom/dropbox/android/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/ap;->a()Ljava/io/File;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    sub-long v0, v1, v4

    :goto_31
    move-wide v1, v0

    .line 111
    goto :goto_11

    .line 113
    :cond_33
    return-wide v1

    :cond_34
    move-wide v0, v1

    goto :goto_31
.end method

.method public static a()Ljava/io/File;
    .registers 4

    .prologue
    .line 161
    const-string v0, "file"

    const-wide/32 v1, 0x5265c00

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/dropbox/android/util/ab;->a(Ljava/lang/String;JZ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .parameter

    .prologue
    .line 313
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "anl"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static declared-synchronized a(Ljava/lang/String;JZ)Ljava/io/File;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 118
    const-class v3, Lcom/dropbox/android/util/ab;

    monitor-enter v3

    :try_start_4
    invoke-static {}, Lcom/dropbox/android/util/ab;->k()Ljava/io/File;

    move-result-object v4

    .line 119
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    .line 120
    invoke-static {v4}, Lcom/dropbox/android/util/ab;->b(Ljava/io/File;)Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_6a

    move-result v1

    if-nez v1, :cond_16

    .line 155
    :cond_14
    :goto_14
    monitor-exit v3

    return-object v0

    .line 125
    :cond_16
    const/4 v1, 0x0

    move v2, v1

    :goto_18
    const/16 v1, 0xfa0

    if-gt v2, v1, :cond_14

    .line 126
    :try_start_1c
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_3b
    .catchall {:try_start_1c .. :try_end_3b} :catchall_6a

    move-result v5

    if-nez v5, :cond_50

    .line 129
    if-eqz p3, :cond_48

    .line 130
    :try_start_40
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-eqz v5, :cond_66

    move-object v0, v1

    .line 131
    goto :goto_14

    .line 136
    :cond_48
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_6a
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4b} :catch_6d

    move-result v5

    if-eqz v5, :cond_66

    move-object v0, v1

    .line 137
    goto :goto_14

    .line 147
    :cond_50
    :try_start_50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 148
    const-wide/16 v7, -0x1

    cmp-long v7, p1, v7

    if-lez v7, :cond_66

    cmp-long v5, v5, p1

    if-lez v5, :cond_66

    .line 150
    invoke-static {v1}, Lcom/dropbox/android/util/ab;->a(Ljava/io/File;)V
    :try_end_66
    .catchall {:try_start_50 .. :try_end_66} :catchall_6a

    .line 125
    :cond_66
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_18

    .line 118
    :catchall_6a
    move-exception v0

    monitor-exit v3

    throw v0

    .line 142
    :catch_6d
    move-exception v1

    goto :goto_14
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Ljava/util/HashSet;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/dropbox/android/util/Z;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v0}, Lcom/dropbox/android/util/ab;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/HashSet;Lcom/dropbox/android/util/Z;)V

    .line 29
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;Ljava/util/HashSet;Lcom/dropbox/android/util/Z;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 32
    if-eqz p2, :cond_9

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 33
    :cond_9
    invoke-virtual {p3}, Lcom/dropbox/android/util/Z;->g()Ljava/lang/String;

    move-result-object v2

    .line 34
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 37
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    .line 38
    if-eqz v4, :cond_3b

    .line 39
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 40
    array-length v6, v5

    const/4 v0, 0x0

    :goto_24
    if-ge v0, v6, :cond_3b

    aget-object v7, v5, v0

    .line 41
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 42
    invoke-static {v7}, Lcom/dropbox/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 43
    new-instance v8, Lcom/dropbox/android/util/Z;

    invoke-direct {v8, p3, v7}, Lcom/dropbox/android/util/Z;-><init>(Lcom/dropbox/android/util/Z;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v8}, Lcom/dropbox/android/util/ab;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/HashSet;Lcom/dropbox/android/util/Z;)V

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 52
    :cond_3b
    if-eqz v4, :cond_73

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_41
    if-eqz v4, :cond_48

    if-eqz v0, :cond_72

    array-length v0, v0

    if-nez v0, :cond_72

    .line 54
    :cond_48
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 55
    if-nez v0, :cond_6a

    .line 56
    sget-object v0, Lcom/dropbox/android/util/ab;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_6a
    if-eqz p0, :cond_72

    .line 60
    new-instance v0, Lcom/dropbox/android/util/at;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/dropbox/android/util/at;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 65
    :cond_72
    return-void

    :cond_73
    move-object v0, v1

    .line 52
    goto :goto_41
.end method

.method public static a(Ljava/io/File;)V
    .registers 5
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 71
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 72
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v2, :cond_1c

    aget-object v3, v1, v0

    .line 73
    invoke-static {v3}, Lcom/dropbox/android/util/ab;->a(Ljava/io/File;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 76
    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 78
    :cond_1f
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 332
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 333
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 335
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 337
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 338
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 339
    return-void
.end method

.method public static b()Ljava/io/File;
    .registers 4

    .prologue
    .line 165
    const-string v0, "upload"

    const-wide v1, 0x9a7ec800L

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/dropbox/android/util/ab;->a(Ljava/lang/String;JZ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized b(Ljava/io/File;)Z
    .registers 3
    .parameter

    .prologue
    .line 173
    const-class v1, Lcom/dropbox/android/util/ab;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    .line 174
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result v0

    .line 176
    :goto_d
    monitor-exit v1

    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_d

    .line 173
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Ljava/io/File;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 359
    .line 362
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_53
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_31
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_6} :catch_42

    .line 363
    :try_start_6
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 364
    new-instance v3, Ljava/security/DigestInputStream;

    invoke-direct {v3, v2, v1}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 365
    const/16 v4, 0x1000

    new-array v4, v4, [B

    .line 366
    :cond_15
    invoke-virtual {v3, v4}, Ljava/security/DigestInputStream;->read([B)I
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_60
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_18} :catch_64
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_18} :catch_62

    move-result v5

    const/4 v6, -0x1

    if-gt v5, v6, :cond_15

    .line 376
    if-eqz v2, :cond_21

    .line 377
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_5c

    .line 382
    :cond_21
    :goto_21
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 383
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_30
    :goto_30
    return-object v0

    .line 368
    :catch_31
    move-exception v1

    move-object v2, v0

    .line 369
    :goto_33
    :try_start_33
    sget-object v3, Lcom/dropbox/android/util/ab;->a:Ljava/lang/String;

    const-string v4, "md5"

    invoke-static {v3, v4, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_60

    .line 376
    if-eqz v2, :cond_30

    .line 377
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_30

    .line 379
    :catch_40
    move-exception v1

    goto :goto_30

    .line 371
    :catch_42
    move-exception v1

    move-object v2, v0

    .line 372
    :goto_44
    :try_start_44
    sget-object v3, Lcom/dropbox/android/util/ab;->a:Ljava/lang/String;

    const-string v4, "md5"

    invoke-static {v3, v4, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_60

    .line 376
    if-eqz v2, :cond_30

    .line 377
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_30

    .line 379
    :catch_51
    move-exception v1

    goto :goto_30

    .line 375
    :catchall_53
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 376
    :goto_56
    if-eqz v2, :cond_5b

    .line 377
    :try_start_58
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5e

    .line 379
    :cond_5b
    :goto_5b
    throw v0

    :catch_5c
    move-exception v0

    goto :goto_21

    :catch_5e
    move-exception v1

    goto :goto_5b

    .line 375
    :catchall_60
    move-exception v0

    goto :goto_56

    .line 371
    :catch_62
    move-exception v1

    goto :goto_44

    .line 368
    :catch_64
    move-exception v1

    goto :goto_33
.end method

.method public static c()Z
    .registers 2

    .prologue
    .line 181
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 184
    if-nez v0, :cond_19

    .line 188
    invoke-static {}, Lcom/dropbox/android/util/ab;->g()Ljava/io/File;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_19

    invoke-static {v1}, Lcom/dropbox/android/util/ab;->d(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 190
    const/4 v0, 0x1

    .line 194
    :cond_19
    return v0
.end method

.method public static d()Z
    .registers 1

    .prologue
    .line 198
    invoke-static {}, Lcom/dropbox/android/util/ab;->h()Ljava/io/File;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/dropbox/android/util/ab;->d(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static d(Ljava/io/File;)Z
    .registers 3
    .parameter

    .prologue
    .line 343
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 344
    new-instance v0, Ljava/io/File;

    const-string v1, "funkyfun8675309.foo"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 346
    :try_start_d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 347
    :cond_19
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1c} :catch_1e

    .line 348
    const/4 v0, 0x1

    .line 353
    :goto_1d
    return v0

    .line 350
    :catch_1e
    move-exception v0

    .line 353
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static e()V
    .registers 3

    .prologue
    .line 203
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/dropbox/android/util/ab;->o()Ljava/io/File;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 206
    :try_start_11
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/android/util/ab;->b(Ljava/io/File;)Z

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1b} :catch_1c

    .line 210
    :cond_1b
    :goto_1b
    return-void

    .line 208
    :catch_1c
    move-exception v0

    goto :goto_1b
.end method

.method public static f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 234
    invoke-static {}, Lcom/dropbox/android/util/ab;->m()Ljava/util/ArrayList;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 236
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 238
    :goto_11
    return-object v0

    :cond_12
    const-string v0, "/sdcard"

    goto :goto_11
.end method

.method public static g()Ljava/io/File;
    .registers 2

    .prologue
    .line 248
    invoke-static {}, Lcom/dropbox/android/util/aW;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 249
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/media"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    :goto_d
    return-object v0

    :cond_e
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_d
.end method

.method public static h()Ljava/io/File;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-static {}, Lcom/dropbox/android/util/ab;->g()Ljava/io/File;

    move-result-object v0

    .line 273
    if-nez v0, :cond_24

    move-object v0, v1

    .line 282
    :goto_8
    sget-object v4, Lcom/dropbox/android/util/ab;->c:[Ljava/lang/String;

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v5, :cond_23

    aget-object v6, v4, v3

    .line 283
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 284
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2f

    move-object v1, v2

    .line 291
    :cond_23
    return-object v1

    .line 277
    :cond_24
    :try_start_24
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_29

    move-result-object v0

    goto :goto_8

    .line 278
    :catch_29
    move-exception v2

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 282
    :cond_2f
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_d
.end method

.method public static i()Ljava/io/File;
    .registers 3

    .prologue
    .line 296
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/dropbox/android/util/ab;->g()Ljava/io/File;

    move-result-object v1

    const-string v2, "dropbox"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static j()Ljava/io/File;
    .registers 4

    .prologue
    .line 308
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/dropbox/android/util/ab;->n()Ljava/io/File;

    move-result-object v2

    const-string v3, "files"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "scratch"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static k()Ljava/io/File;
    .registers 3

    .prologue
    .line 324
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/dropbox/android/util/ab;->o()Ljava/io/File;

    move-result-object v1

    const-string v2, "tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static l()Ljava/io/File;
    .registers 3

    .prologue
    .line 328
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/dropbox/android/util/ab;->o()Ljava/io/File;

    move-result-object v1

    const-string v2, "thumbs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static m()Ljava/util/ArrayList;
    .registers 6

    .prologue
    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    sget-object v2, Lcom/dropbox/android/util/ab;->b:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v3, :cond_1e

    aget-object v4, v2, v0

    .line 225
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-static {v5}, Lcom/dropbox/android/util/ab;->d(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 227
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 230
    :cond_1e
    return-object v1
.end method

.method private static n()Ljava/io/File;
    .registers 3

    .prologue
    .line 300
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dropbox/android/util/ab;->g()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.dropbox.android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static o()Ljava/io/File;
    .registers 3

    .prologue
    .line 320
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/dropbox/android/util/ab;->n()Ljava/io/File;

    move-result-object v1

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
