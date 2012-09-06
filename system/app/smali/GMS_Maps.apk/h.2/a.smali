.class public Lh/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I

.field private static b:Z

.field private static c:I

.field private static final d:[J

.field private static volatile e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x15

    const/4 v0, 0x0

    .line 89
    sput-boolean v0, Lh/a;->b:Z

    .line 92
    sput v0, Lh/a;->c:I

    .line 105
    invoke-static {v1}, Lh/a;->a(I)[J

    move-result-object v0

    sput-object v0, Lh/a;->d:[J

    .line 110
    sget-object v0, Lh/a;->d:[J

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Lh/a;->a(J)I

    move-result v0

    sput v0, Lh/a;->a:I

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lh/a;->e:Ljava/lang/String;

    return-void
.end method

.method static a(J)I
    .registers 6
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 127
    const/4 v0, 0x0

    .line 129
    cmp-long v1, p0, v2

    if-gez v1, :cond_a

    .line 131
    const/16 v0, 0x40

    .line 139
    :cond_9
    return v0

    .line 134
    :cond_a
    :goto_a
    cmp-long v1, p0, v2

    if-eqz v1, :cond_9

    .line 135
    const/4 v1, 0x1

    shr-long/2addr p0, v1

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public static a(Ljava/lang/String;)J
    .registers 7
    .parameter

    .prologue
    .line 732
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 734
    :try_start_5
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_e} :catch_22

    .line 739
    :goto_e
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 735
    :catch_22
    move-exception v1

    goto :goto_e
.end method

.method private static a(Ln/am;)J
    .registers 9
    .parameter

    .prologue
    const v5, 0x1fffffff

    .line 678
    invoke-virtual {p0}, Ln/am;->j()Ln/av;

    move-result-object v2

    .line 679
    invoke-virtual {v2}, Ln/av;->b()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 680
    invoke-virtual {p0}, Ln/am;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    int-to-long v0, v0

    const/16 v2, 0x3a

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Ln/am;->c()I

    move-result v2

    and-int/2addr v2, v5

    int-to-long v2, v2

    const/16 v4, 0x1d

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0}, Ln/am;->d()I

    move-result v2

    and-int/2addr v2, v5

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 688
    :goto_28
    return-wide v0

    .line 684
    :cond_29
    invoke-virtual {p0}, Ln/am;->b()I

    move-result v3

    .line 685
    if-nez v3, :cond_4d

    const-wide/16 v0, 0x0

    .line 686
    :goto_31
    invoke-virtual {p0}, Ln/am;->c()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0}, Ln/am;->d()I

    move-result v6

    int-to-long v6, v6

    shl-long/2addr v6, v3

    add-long v3, v4, v6

    add-long/2addr v0, v3

    .line 688
    const-wide/high16 v3, -0x8000

    invoke-virtual {v2}, Ln/av;->hashCode()I

    move-result v2

    int-to-long v5, v2

    sget v2, Lh/a;->a:I

    shl-long/2addr v5, v2

    or-long v2, v3, v5

    or-long/2addr v0, v2

    goto :goto_28

    .line 685
    :cond_4d
    sget-object v0, Lh/a;->d:[J

    add-int/lit8 v1, v3, -0x1

    aget-wide v0, v0, v1

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_31
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 753
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 754
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 755
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 756
    const/16 v1, 0x8

    new-array v1, v1, [F

    aput v9, v1, v2

    aput v9, v1, v8

    aput v9, v1, v10

    const/4 v3, 0x3

    int-to-float v4, v7

    aput v4, v1, v3

    int-to-float v3, v6

    aput v3, v1, v5

    const/4 v3, 0x5

    aput v9, v1, v3

    const/4 v3, 0x6

    int-to-float v4, v6

    aput v4, v1, v3

    const/4 v3, 0x7

    int-to-float v4, v7

    aput v4, v1, v3

    .line 757
    const/16 v3, 0x8

    new-array v3, v3, [F

    aput v9, v3, v2

    int-to-float v4, v7

    aput v4, v3, v8

    aput v9, v3, v10

    const/4 v4, 0x3

    aput v9, v3, v4

    int-to-float v4, v6

    aput v4, v3, v5

    const/4 v4, 0x5

    int-to-float v8, v7

    aput v8, v3, v4

    const/4 v4, 0x6

    int-to-float v8, v6

    aput v8, v3, v4

    const/4 v4, 0x7

    aput v9, v3, v4

    move v4, v2

    .line 758
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 760
    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v2, 0x14

    new-array v2, v2, [F

    fill-array-data v2, :array_76

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 766
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 767
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 769
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 770
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 771
    invoke-virtual {v3, p0, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 772
    return-object v1

    .line 760
    :array_76
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/dg;Ln/am;)Landroid/util/Pair;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 648
    invoke-virtual {p1}, Ln/am;->j()Ln/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Ln/av;->a(Lcom/google/android/maps/driveabout/vector/dg;)Ln/av;

    move-result-object v0

    .line 649
    invoke-virtual {p1, v0}, Ln/am;->a(Ln/av;)Ln/am;

    move-result-object v0

    .line 650
    invoke-static {v0}, Lh/a;->a(Ln/am;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 651
    invoke-static {v0}, Lh/a;->b(Ln/am;)Ljava/lang/String;

    move-result-object v0

    .line 652
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBufType;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 460
    .line 462
    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_61
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_11} :catch_40

    .line 464
    :try_start_11
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v0, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 465
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_71
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_79
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_19} :catch_77

    .line 474
    if-eqz v2, :cond_1e

    .line 476
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_69

    .line 477
    :cond_1e
    :goto_1e
    return-object v0

    .line 467
    :catch_1f
    move-exception v0

    move-object v0, v1

    .line 468
    :goto_21
    :try_start_21
    const-string v2, "MapsNavigation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readProtoFromFile failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lh/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_73

    .line 474
    if-eqz v0, :cond_3e

    .line 476
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_6b

    :cond_3e
    :goto_3e
    move-object v0, v1

    .line 477
    goto :goto_1e

    .line 470
    :catch_40
    move-exception v0

    move-object v2, v1

    .line 471
    :goto_42
    :try_start_42
    const-string v0, "MapsNavigation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readProtoFromFile failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lh/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_42 .. :try_end_5a} :catchall_71

    .line 474
    if-eqz v2, :cond_5f

    .line 476
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_6d

    :cond_5f
    :goto_5f
    move-object v0, v1

    .line 477
    goto :goto_1e

    .line 474
    :catchall_61
    move-exception v0

    move-object v2, v1

    :goto_63
    if-eqz v2, :cond_68

    .line 476
    :try_start_65
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_6f

    .line 477
    :cond_68
    :goto_68
    throw v0

    :catch_69
    move-exception v1

    goto :goto_1e

    :catch_6b
    move-exception v0

    goto :goto_3e

    :catch_6d
    move-exception v0

    goto :goto_5f

    :catch_6f
    move-exception v1

    goto :goto_68

    .line 474
    :catchall_71
    move-exception v0

    goto :goto_63

    :catchall_73
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_63

    .line 470
    :catch_77
    move-exception v0

    goto :goto_42

    .line 467
    :catch_79
    move-exception v0

    move-object v0, v2

    goto :goto_21
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .registers 6
    .parameter

    .prologue
    .line 567
    invoke-static {}, Lh/a;->b()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 568
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 569
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 572
    :goto_26
    return-object v0

    :cond_27
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    goto :goto_26
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 279
    const/4 v0, 0x1

    sput-boolean v0, Lh/a;->b:Z

    .line 280
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 435
    new-instance v0, Lh/b;

    invoke-direct {v0, p1}, Lh/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 441
    if-nez v1, :cond_c

    .line 447
    :cond_b
    return-void

    .line 444
    :cond_c
    array-length v2, v1

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_b

    aget-object v3, v1, v0

    .line 445
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 186
    sget-boolean v0, Lh/a;->b:Z

    if-eqz v0, :cond_d

    .line 191
    :goto_4
    new-instance v0, LA/k;

    invoke-direct {v0, p0, p1}, LA/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 192
    return-void

    .line 189
    :cond_d
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    invoke-static {}, Lac/h;->b()Lac/p;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_14

    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    sget v1, Lh/a;->c:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lh/a;->c:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_15

    .line 242
    :cond_14
    :goto_14
    return-void

    .line 231
    :cond_15
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 232
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 234
    :try_start_21
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "DA:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 235
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 236
    const-string v3, "DA"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_41} :catch_4c

    .line 241
    :goto_41
    const/16 v2, 0x8

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, p2, v3}, Lac/p;->a(I[BZZ)V

    goto :goto_14

    .line 238
    :catch_4c
    move-exception v2

    goto :goto_41
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 173
    sget-boolean v0, Lh/a;->b:Z

    if-eqz v0, :cond_d

    .line 179
    :goto_4
    new-instance v0, LA/l;

    invoke-direct {v0, p1}, LA/l;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 180
    return-void

    .line 176
    :cond_d
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 493
    const/4 v3, 0x0

    .line 495
    :try_start_2
    new-instance v2, Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_14

    .line 496
    :try_start_c
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 497
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_41

    .line 498
    const/4 v0, 0x1

    .line 511
    :cond_13
    :goto_13
    return v0

    .line 499
    :catch_14
    move-exception v1

    move-object v2, v3

    .line 500
    :goto_16
    const-string v3, "MapsNavigation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeProtoToFile failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lh/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    if-eqz v2, :cond_13

    .line 503
    :try_start_34
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_3f

    .line 509
    :goto_37
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_13

    .line 504
    :catch_3f
    move-exception v1

    goto :goto_37

    .line 499
    :catch_41
    move-exception v1

    goto :goto_16
.end method

.method public static a(Ljava/io/File;Landroid/content/Context;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 405
    invoke-static {p1}, Lh/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 406
    if-nez v0, :cond_9

    .line 430
    :cond_8
    :goto_8
    return v2

    .line 410
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 416
    :try_start_17
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 419
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    move v0, v1

    :goto_2a
    if-ge v3, v5, :cond_4e

    aget-object v6, v4, v3

    .line 420
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_42

    .line 421
    invoke-static {v6, p1}, Lh/a;->a(Ljava/io/File;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_40

    if-eqz v0, :cond_40

    move v0, v1

    .line 419
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_40
    move v0, v2

    .line 421
    goto :goto_3d

    .line 423
    :cond_42
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_4c

    if-eqz v0, :cond_4c

    move v0, v1

    goto :goto_3d

    :cond_4c
    move v0, v2

    goto :goto_3d

    .line 426
    :cond_4e
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_51
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_51} :catch_5a

    move-result v3

    if-eqz v3, :cond_58

    if-eqz v0, :cond_58

    :goto_56
    move v2, v1

    .line 430
    goto :goto_8

    :cond_58
    move v1, v2

    .line 426
    goto :goto_56

    .line 427
    :catch_5a
    move-exception v0

    move v1, v2

    .line 428
    goto :goto_56
.end method

.method static a(I)[J
    .registers 9
    .parameter

    .prologue
    const-wide/16 v6, 0x1

    .line 157
    add-int/lit8 v0, p0, 0x1

    new-array v3, v0, [J

    .line 158
    const-wide/16 v1, 0x0

    .line 160
    const/4 v0, 0x0

    :goto_9
    array-length v4, v3

    if-ge v0, v4, :cond_18

    .line 162
    mul-int/lit8 v4, v0, 0x2

    shl-long v4, v6, v4

    add-long/2addr v1, v4

    .line 163
    sub-long v4, v1, v6

    aput-wide v4, v3, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 166
    :cond_18
    return-object v3
.end method

.method public static b(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .parameter

    .prologue
    .line 577
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lh/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "testdata"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Ln/am;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 703
    invoke-virtual {p0}, Ln/am;->j()Ln/av;

    move-result-object v0

    .line 704
    invoke-virtual {v0}, Ln/av;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0}, Ln/av;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static b(J)Ln/am;
    .registers 7
    .parameter

    .prologue
    const v4, 0x1fffffff

    .line 714
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_b

    .line 715
    const/4 v0, 0x0

    .line 722
    :goto_a
    return-object v0

    .line 719
    :cond_b
    const/16 v0, 0x3a

    shr-long v0, p0, v0

    long-to-int v0, v0

    and-int/lit8 v1, v0, 0x1f

    .line 720
    const/16 v0, 0x1d

    shr-long v2, p0, v0

    long-to-int v0, v2

    and-int v2, v0, v4

    .line 721
    long-to-int v0, p0

    and-int v3, v0, v4

    .line 722
    new-instance v0, Ln/am;

    invoke-direct {v0, v1, v2, v3}, Ln/am;-><init>(III)V

    goto :goto_a
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 198
    sget-boolean v0, Lh/a;->b:Z

    if-eqz v0, :cond_d

    .line 203
    :goto_4
    new-instance v0, LA/k;

    invoke-direct {v0, p0, p1}, LA/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 204
    return-void

    .line 201
    :cond_d
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static b()Z
    .registers 2

    .prologue
    .line 392
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .parameter

    .prologue
    .line 581
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lh/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "debug"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 521
    sget-object v0, Lh/a;->f:Ljava/lang/String;

    if-nez v0, :cond_33

    .line 525
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->k()Ljava/lang/String;

    move-result-object v0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "6110102"

    const-string v2, "6110102"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lh/a;->f:Ljava/lang/String;

    .line 529
    :cond_33
    sget-object v0, Lh/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 211
    invoke-static {p0, p1}, Lh/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_9
    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .parameter

    .prologue
    .line 585
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lh/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    .prologue
    .line 537
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    .line 538
    if-nez v0, :cond_9

    .line 539
    const-string v0, "Not initialized"

    .line 541
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {v0}, Lac/h;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 256
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 257
    return-void
.end method

.method public static e()Ljava/lang/String;
    .registers 3

    .prologue
    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Server: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    invoke-static {}, Lh/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nBuild Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    const-string v1, "RELEASE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 558
    const-string v1, "\nDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/common/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nBuild User: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/common/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 616
    sget-object v0, Lh/a;->e:Ljava/lang/String;

    .line 617
    if-eqz v0, :cond_5

    .line 644
    :goto_4
    return-object v0

    .line 620
    :cond_5
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v1, "deskdroid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 622
    const/4 v0, 0x0

    goto :goto_4

    .line 637
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "logging_id2"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    if-nez v0, :cond_27

    .line 641
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "logging_id2"

    invoke-static {v0, v1}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    :cond_27
    sput-object v0, Lh/a;->e:Ljava/lang/String;

    goto :goto_4
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 272
    return-void
.end method

.method public static f()J
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 592
    invoke-static {}, Lh/a;->b()Z

    move-result v2

    if-nez v2, :cond_9

    .line 606
    :goto_8
    return-wide v0

    .line 601
    :cond_9
    :try_start_9
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_1e} :catch_22

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v3

    goto :goto_8

    .line 603
    :catch_22
    move-exception v2

    goto :goto_8
.end method

.method public static f(Landroid/content/Context;)Z
    .registers 2
    .parameter

    .prologue
    .line 746
    invoke-static {}, Lcom/google/googlenav/capabilities/a;->a()Lcom/google/googlenav/capabilities/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/capabilities/a;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static g()V
    .registers 2

    .prologue
    .line 779
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_38

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_38

    .line 780
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 784
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 785
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 790
    :cond_38
    return-void
.end method
