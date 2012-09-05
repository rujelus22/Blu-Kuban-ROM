.class public Lak/k;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lak/k;->a:[C

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

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/io/DataInput;
    .registers 2

    new-instance v0, Lan/a;

    invoke-direct {v0, p0}, Lan/a;-><init>([B)V

    return-object v0
.end method

.method public static a(Lak/i;Ljava/lang/String;Ljava/util/Vector;II)Ljava/lang/String;
    .registers 11

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-interface {p0}, Lak/i;->f()I

    move-result v1

    if-nez v1, :cond_20

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Network not available."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_10
    move-exception v1

    move-object v2, v3

    :goto_12
    if-ge v0, p3, :cond_44

    int-to-long v4, p4

    :try_start_15
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_3c
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_60

    :goto_18
    invoke-static {v3}, Lak/k;->a(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lak/k;->a(Lak/f;)V

    add-int/lit8 v0, v0, 0x1

    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-interface {p0, p1, v1}, Lak/i;->a(Ljava/lang/String;Z)Lak/f;
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_62
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_10

    move-result-object v2

    :try_start_25
    invoke-static {v2, p2}, Lak/k;->a(Lak/f;Ljava/util/Vector;)V

    invoke-interface {v2}, Lak/f;->c()I
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_3c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2b} :catch_65

    move-result v0

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_45

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_45

    :try_start_34
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected response."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    :goto_3d
    invoke-static {v3}, Lak/k;->a(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lak/k;->a(Lak/f;)V

    throw v0

    :cond_44
    :try_start_44
    throw v1

    :cond_45
    const-string v0, "Location"

    invoke-interface {v2, v0}, Lak/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_55

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid redirect."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    invoke-static {p1, v0}, Lak/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_58
    .catchall {:try_start_44 .. :try_end_58} :catchall_3c

    move-result-object v0

    invoke-static {v3}, Lak/k;->a(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lak/k;->a(Lak/f;)V

    return-object v0

    :catch_60
    move-exception v1

    goto :goto_18

    :catchall_62
    move-exception v0

    move-object v2, v3

    goto :goto_3d

    :catch_65
    move-exception v1

    goto :goto_12
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Lak/r;->a(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_76

    aget-byte v4, v1, v0

    const/16 v5, 0x41

    if-gt v5, v4, :cond_17

    const/16 v5, 0x5a

    if-le v4, v5, :cond_4b

    :cond_17
    const/16 v5, 0x61

    if-gt v5, v4, :cond_1f

    const/16 v5, 0x7a

    if-le v4, v5, :cond_4b

    :cond_1f
    const/16 v5, 0x30

    if-gt v5, v4, :cond_27

    const/16 v5, 0x39

    if-le v4, v5, :cond_4b

    :cond_27
    const/16 v5, 0x2d

    if-eq v4, v5, :cond_4b

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_4b

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_4b

    const/16 v5, 0x21

    if-eq v4, v5, :cond_4b

    const/16 v5, 0x7e

    if-eq v4, v5, :cond_4b

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_4b

    const/16 v5, 0x27

    if-eq v4, v5, :cond_4b

    const/16 v5, 0x28

    if-eq v4, v5, :cond_4b

    const/16 v5, 0x29

    if-ne v4, v5, :cond_52

    :cond_4b
    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_52
    const/16 v5, 0x20

    if-ne v4, v5, :cond_5c

    const/16 v4, 0x2b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4f

    :cond_5c
    const/16 v5, 0x25

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Lak/k;->a:[C

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Lak/k;->a:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4f

    :cond_76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v5, 0x3a

    const/16 v4, 0x2f

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-static {p0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-object p1

    :cond_d
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_17

    const/4 v1, 0x7

    if-lt v0, v1, :cond_c

    :cond_17
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

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

    :cond_3e
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v0, v2, :cond_4e

    if-eq v1, v2, :cond_5a

    :cond_4e
    if-eq v0, v2, :cond_80

    if-eq v1, v2, :cond_80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_56
    :goto_56
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_5a
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

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

    :cond_80
    if-ne v0, v2, :cond_56

    move v0, v1

    goto :goto_56

    :cond_84
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_73

    :cond_89
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    if-le v1, v0, :cond_aa

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

.method public static a(Lak/f;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Lak/f;->f()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private static a(Lak/f;Ljava/util/Vector;)V
    .registers 8

    const/4 v2, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    move v1, v2

    :goto_8
    if-ge v1, v3, :cond_1e

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    aget-object v4, v0, v2

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-interface {p0, v4, v0}, Lak/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_1e
    return-void
.end method

.method public static a(Ljava/io/DataInput;I)V
    .registers 5

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    if-lez p1, :cond_1f

    const/16 v0, 0x800

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    :goto_12
    if-lez p1, :cond_1f

    array-length v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Ljava/io/DataInput;->readFully([BII)V

    sub-int/2addr p1, v1

    goto :goto_12

    :cond_1f
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    const/16 v0, 0x200

    new-array v0, v0, [B

    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    :cond_10
    return-void
.end method

.method public static a(Ljava/io/OutputStream;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 2

    const/16 v0, 0x20

    invoke-static {p0, v0}, Lak/k;->a(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;I)[B
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_18

    :try_start_5
    invoke-static {p0, v0}, Lak/k;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_13

    :try_start_8
    invoke-static {v0}, Lak/k;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_18

    move-result-object v0

    invoke-static {p0}, Lak/k;->b(Ljava/io/InputStream;)V

    return-object v0

    :catchall_13
    move-exception v1

    :try_start_14
    invoke-static {v0}, Lak/k;->a(Ljava/io/OutputStream;)V

    throw v1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v0

    invoke-static {p0}, Lak/k;->b(Ljava/io/InputStream;)V

    throw v0
.end method

.method public static a([BIII)[B
    .registers 10

    const/4 v0, 0x0

    add-int/lit8 v1, p2, 0x1

    new-array v1, v1, [B

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v4, p2, 0x1

    invoke-direct {v3, v1, v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v2, v3}, Laf/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    new-array v3, p3, [B

    move v1, p3

    :goto_1a
    if-lez v1, :cond_26

    :try_start_1c
    invoke-virtual {v2, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    sub-int/2addr v1, v4

    add-int/2addr v0, v4

    goto :goto_1a

    :cond_26
    if-eqz v1, :cond_56

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

    :catchall_51
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_56
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object v3
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    new-array v5, v4, [B

    move v0, v2

    move v3, v2

    :goto_9
    if-ge v0, v4, :cond_64

    :try_start_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_6a

    add-int/lit8 v1, v3, 0x1

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    :goto_17
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    goto :goto_9

    :sswitch_1b
    add-int/lit8 v1, v3, 0x1

    const/16 v6, 0x20

    aput-byte v6, v5, v3
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_21} :catch_22

    goto :goto_17

    :catch_22
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_2d
    :try_start_2d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v6, v0, 0x3

    if-ge v1, v6, :cond_4e

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

    add-int/lit8 v0, v0, 0x2

    goto :goto_17

    :cond_64
    const/4 v0, 0x1

    invoke-static {v5, v2, v3, v0}, Lak/r;->a([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_6a
    .sparse-switch
        0x25 -> :sswitch_2d
        0x2b -> :sswitch_1b
    .end sparse-switch
.end method

.method public static b(Ljava/io/InputStream;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method
