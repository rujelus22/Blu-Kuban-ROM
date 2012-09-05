.class public final Lcom/a/a/a/a/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/a/a/a/a/a/c;


# instance fields
.field private b:Ljava/util/concurrent/BlockingQueue;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;

.field private d:Ljava/io/File;

.field private volatile e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Lcom/a/a/a/a/a/a;

.field private g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/a/a/a/a/c;

    invoke-direct {v0}, Lcom/a/a/a/a/a/c;-><init>()V

    sput-object v0, Lcom/a/a/a/a/a/c;->a:Lcom/a/a/a/a/a/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a/a/c;->g:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/a/a/a/a/a/c;
    .registers 1

    sget-object v0, Lcom/a/a/a/a/a/c;->a:Lcom/a/a/a/a/a/c;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    .registers 11

    const/16 v5, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_d

    :cond_b
    move-object v1, v3

    :goto_c
    return-object v1

    :cond_d
    iget-object v4, p0, Lcom/a/a/a/a/a/c;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v2, v0}, Lcom/a/a/a/a/a/c;->a(ILjava/lang/StringBuilder;)V

    const-string v1, ".cache_img"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_2a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_49

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    :try_start_36
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_120
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_3b} :catch_140
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_108

    :try_start_3b
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_139
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_3e} :catch_e0
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_13e

    move-result v0

    if-eqz v0, :cond_6a

    :try_start_41
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_63

    :goto_44
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    move-object v1, v3

    goto :goto_c

    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v0}, Lcom/a/a/a/a/a/c;->a(ILjava/lang/StringBuilder;)V

    const-string v1, ".cache_img"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2a

    :catch_63
    move-exception v0

    const-string v1, "saveBitmap"

    invoke-static {v1, v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    :cond_6a
    const/16 v0, 0x2e

    :try_start_6c
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    const-string v2, "JPG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    :cond_86
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v7, v0, v2, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_8d
    iget-object v0, p0, Lcom/a/a/a/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f1

    sget-boolean v0, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v0, :cond_bd

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "saveFile() : filename : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "saveFile() : url : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;)I

    :cond_bd
    iget-object v0, p0, Lcom/a/a/a/a/a/c;->f:Lcom/a/a/a/a/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    add-long v3, v2, v4

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/a/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;J[B)V
    :try_end_d0
    .catchall {:try_start_6c .. :try_end_d0} :catchall_139
    .catch Ljava/io/FileNotFoundException; {:try_start_6c .. :try_end_d0} :catch_e0
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_d0} :catch_13e

    :try_start_d0
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_132

    :goto_d3
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_c

    :cond_d8
    :try_start_d8
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v7, v0, v2, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_df
    .catchall {:try_start_d8 .. :try_end_df} :catchall_139
    .catch Ljava/io/FileNotFoundException; {:try_start_d8 .. :try_end_df} :catch_e0
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_df} :catch_13e

    goto :goto_8d

    :catch_e0
    move-exception v0

    move-object v3, v6

    :goto_e2
    :try_start_e2
    const-string v2, "saveBitmap"

    invoke-static {v2, v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e7
    .catchall {:try_start_e2 .. :try_end_e7} :catchall_13b

    if-eqz v3, :cond_ec

    :try_start_e9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_101

    :cond_ec
    :goto_ec
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_c

    :cond_f1
    :try_start_f1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_fa

    :goto_f4
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    move-object v1, v3

    goto/16 :goto_c

    :catch_fa
    move-exception v0

    const-string v1, "saveBitmap"

    invoke-static {v1, v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f4

    :catch_101
    move-exception v0

    const-string v2, "saveBitmap"

    invoke-static {v2, v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ec

    :catch_108
    move-exception v0

    move-object v6, v3

    :goto_10a
    :try_start_10a
    const-string v2, "saveBitmap"

    invoke-static {v2, v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10f
    .catchall {:try_start_10a .. :try_end_10f} :catchall_139

    if-eqz v6, :cond_114

    :try_start_111
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_119

    :cond_114
    :goto_114
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_c

    :catch_119
    move-exception v0

    const-string v2, "saveBitmap"

    invoke-static {v2, v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_114

    :catchall_120
    move-exception v0

    move-object v6, v3

    :goto_122
    if-eqz v6, :cond_127

    :try_start_124
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_127} :catch_12b

    :cond_127
    :goto_127
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    throw v0

    :catch_12b
    move-exception v1

    const-string v2, "saveBitmap"

    invoke-static {v2, v1}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_127

    :catch_132
    move-exception v0

    const-string v2, "saveBitmap"

    invoke-static {v2, v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d3

    :catchall_139
    move-exception v0

    goto :goto_122

    :catchall_13b
    move-exception v0

    move-object v6, v3

    goto :goto_122

    :catch_13e
    move-exception v0

    goto :goto_10a

    :catch_140
    move-exception v0

    goto :goto_e2
.end method

.method private static a(ILjava/lang/StringBuilder;)V
    .registers 4

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    :goto_b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_f
    const-string v1, "0000000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_15
    const-string v1, "000000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_1b
    const-string v1, "00000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_21
    const-string v1, "0000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_27
    const-string v1, "000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_2d
    const-string v1, "00"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_33
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_f
        :pswitch_15
        :pswitch_1b
        :pswitch_21
        :pswitch_27
        :pswitch_2d
        :pswitch_33
    .end packed-switch
.end method

.method static synthetic a(Lcom/a/a/a/a/a/c;)V
    .registers 10

    const/16 v8, 0x2e

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->d:Ljava/io/File;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->f:Lcom/a/a/a/a/a/a;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_13

    :cond_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/a/a/a/a/a/c;->f:Lcom/a/a/a/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/a/a/a;->a()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_23
    if-ge v1, v3, :cond_12

    aget-object v0, v2, v1

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_56

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_56

    const-string v5, ".cache_img"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    :try_start_3f
    iget-object v4, p0, Lcom/a/a/a/a/a/c;->f:Lcom/a/a/a/a/a/a;

    invoke-virtual {v4, v0}, Lcom/a/a/a/a/a/a;->a(Ljava/lang/String;)Lcom/a/a/a/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-wide v4, v0, Lcom/a/a/a/a/a/b;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_5a

    iget-object v0, v0, Lcom/a/a/a/a/a/b;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/a/a/a/a/a/c;->c(Ljava/lang/String;)V

    :cond_56
    :goto_56
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23

    :cond_5a
    iget-object v4, p0, Lcom/a/a/a/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v0, Lcom/a/a/a/a/a/b;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/a/a/a/a/a/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_63} :catch_64

    goto :goto_56

    :catch_64
    move-exception v0

    const-string v4, "refreshExpiredFiles"

    invoke-static {v4, v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56
.end method

.method static synthetic a(Lcom/a/a/a/a/a/c;Lcom/a/a/a/a/a/f;)V
    .registers 5

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_2b

    invoke-static {p1}, Lcom/a/a/a/a/a/f;->b(Lcom/a/a/a/a/a/f;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/a/a/a/a/a/f;->c(Lcom/a/a/a/a/a/f;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/a/a/c;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/a/a/a/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/a/a/a/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/a/a/a/a/a/f;->b(Lcom/a/a/a/a/a/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/a/a/a/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/a/a/a/a/a/f;->b(Lcom/a/a/a/a/a/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    invoke-direct {p0, v0}, Lcom/a/a/a/a/a/c;->c(Ljava/lang/String;)V

    goto :goto_2b
.end method

.method static synthetic b(Lcom/a/a/a/a/a/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic c(Lcom/a/a/a/a/a/c;)Ljava/util/concurrent/BlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->b:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->f:Lcom/a/a/a/a/a/a;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/a/a/a/a/a/c;->f:Lcom/a/a/a/a/a/a;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/a/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cache File Delete:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;)I

    goto :goto_6
.end method

.method static synthetic d(Lcom/a/a/a/a/a/c;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->d:Ljava/io/File;

    return-object v0
.end method

.method static synthetic e(Lcom/a/a/a/a/a/c;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic f(Lcom/a/a/a/a/a/c;)Lcom/a/a/a/a/a/a;
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->f:Lcom/a/a/a/a/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .registers 5

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_47

    iget-object v1, p0, Lcom/a/a/a/a/a/c;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/a/a/a/a/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_46

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/a/a/a/a/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_17

    iput-object p1, p0, Lcom/a/a/a/a/a/c;->d:Ljava/io/File;

    :cond_17
    sget-boolean v0, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v0, :cond_20

    const-string v0, "BitmapFileCacheIdleProcessor intialize............."

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;)I

    :cond_20
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/a/a/a/c;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/a/a/a/a/a/a;

    iget-object v2, p0, Lcom/a/a/a/a/a/c;->d:Ljava/io/File;

    invoke-direct {v0, v2}, Lcom/a/a/a/a/a/a;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/a/a/a/a/a/c;->f:Lcom/a/a/a/a/a/a;

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/a/a/a/a/a/d;

    invoke-direct {v2, p0}, Lcom/a/a/a/a/a/d;-><init>(Lcom/a/a/a/a/a/c;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_48

    :cond_47
    return-void

    :catchall_48
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->d:Ljava/io/File;

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/a/a/a/a/a/c;->a(Ljava/io/File;)V

    :cond_d
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1c

    :cond_13
    move v0, v1

    :goto_14
    return v0

    :cond_15
    const-string v0, "BitmapFileCacheProcessor is not initialized yet."

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;)I

    move v0, v1

    goto :goto_14

    :cond_1c
    iget-object v0, p0, Lcom/a/a/a/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_14

    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lcom/a/a/a/a/a/c;->f:Lcom/a/a/a/a/a/a;

    invoke-virtual {v2, v0}, Lcom/a/a/a/a/a/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3a} :catch_3c

    move v0, v1

    goto :goto_14

    :catch_3c
    move-exception v0

    const-string v2, "cache checkFile"

    invoke-static {v2, v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_14

    :cond_44
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLandroid/os/Handler;)Z
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/a/a/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/a/a/a/a/a/c;->d:Ljava/io/File;

    if-eqz v1, :cond_35

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/a/a/a/a/a/c;->a(Ljava/io/File;)V

    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/a/a/a/a/a/c;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/a/a/a/a/a/f;

    invoke-direct {v2, p1, p2}, Lcom/a/a/a/a/a/f;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_17} :catch_3f
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_17} :catch_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_17} :catch_53

    move-result v1

    :goto_18
    if-eqz v1, :cond_5d

    iget-object v2, p0, Lcom/a/a/a/a/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/a/a/a/a/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/a/a/a/a/a/e;

    invoke-direct {v2, p0, p5, p3, p4}, Lcom/a/a/a/a/a/e;-><init>(Lcom/a/a/a/a/a/c;Landroid/os/Handler;J)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_33
    :goto_33
    move v0, v1

    :cond_34
    :goto_34
    return v0

    :cond_35
    sget-boolean v1, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v1, :cond_34

    const-string v1, "BitmapFileCacheProcessor is not initialized yet."

    invoke-static {v1}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;)I

    goto :goto_34

    :catch_3f
    move-exception v1

    sget-boolean v2, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v2, :cond_5b

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    move v1, v0

    goto :goto_18

    :catch_49
    move-exception v1

    sget-boolean v2, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v2, :cond_5b

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    move v1, v0

    goto :goto_18

    :catch_53
    move-exception v1

    sget-boolean v2, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v2, :cond_5b

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_5b
    move v1, v0

    goto :goto_18

    :cond_5d
    sget-boolean v0, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v0, :cond_33

    const-string v0, "Increase BitmapFileCacheProcessor queue size........"

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;)I

    goto :goto_33
.end method

.method public final b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->d:Ljava/io/File;

    if-eqz v0, :cond_f

    invoke-virtual {p0, v1}, Lcom/a/a/a/a/a/c;->a(Ljava/io/File;)V

    :cond_c
    if-nez p1, :cond_15

    :goto_e
    return-object v1

    :cond_f
    const-string v0, "BitmapFileCacheProcessor is not initialized yet."

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;)I

    goto :goto_e

    :cond_15
    iget-object v0, p0, Lcom/a/a/a/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/a/a/a/a/a/c;->f:Lcom/a/a/a/a/a/a;

    invoke-virtual {v2, v0}, Lcom/a/a/a/a/a/a;->c(Ljava/lang/String;)[B
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_33

    move-result-object v0

    :goto_2b
    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :catch_33
    move-exception v0

    const-string v2, "cache load"

    invoke-static {v2, v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_2b

    :cond_3b
    :try_start_3b
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_48
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3b .. :try_end_48} :catch_50

    move-result-object v0

    :goto_49
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v1, v2

    goto :goto_e

    :catch_50
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v0, v1

    goto :goto_49
.end method

.method public final b()V
    .registers 3

    iget-object v1, p0, Lcom/a/a/a/a/a/c;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v0, :cond_c

    const-string v0, "BitmapFileCacheIdleProcessor shutdown............."

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->a(Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/a/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->b:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/a/a/c;->b:Ljava/util/concurrent/BlockingQueue;

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/a/a/a/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/a/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/a/a/c;->f:Lcom/a/a/a/a/a/a;

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
