.class public Ljcifs/util/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:[C

.field private static final b:Ljava/lang/String;

.field private static final c:I

.field private static final d:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/util/d;->b:Ljava/lang/String;

    sget-object v0, Ljcifs/util/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Ljcifs/util/d;->c:I

    const/16 v0, 0x30

    new-array v0, v0, [C

    fill-array-data v0, :array_24

    sput-object v0, Ljcifs/util/d;->d:[C

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_58

    sput-object v0, Ljcifs/util/d;->a:[C

    return-void

    nop

    :array_24
    .array-data 0x2
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
    .end array-data

    :array_58
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

.method public static a(II)Ljava/lang/String;
    .registers 4

    new-array v0, p1, [C

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Ljcifs/util/d;->a(I[CII)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    new-array v3, p2, [C

    rem-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_23

    div-int/lit8 v0, p2, 0x2

    :goto_9
    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_1d

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Ljcifs/util/d;->a:[C

    aget-byte v6, p0, v2

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v1

    array-length v1, v3

    if-ne v4, v1, :cond_28

    :cond_1d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_23
    div-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_28
    add-int/lit8 v1, v4, 0x1

    sget-object v5, Ljcifs/util/d;->a:[C

    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method public static a(I[CII)V
    .registers 8

    move v0, p0

    :goto_1
    if-lez p3, :cond_19

    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    array-length v2, p1

    if-ge v1, v2, :cond_12

    sget-object v2, Ljcifs/util/d;->a:[C

    and-int/lit8 v3, v0, 0xf

    aget-char v2, v2, v3

    aput-char v2, p1, v1

    :cond_12
    if-eqz v0, :cond_16

    ushr-int/lit8 v0, v0, 0x4

    :cond_16
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public static a(Ljava/io/PrintStream;[BII)V
    .registers 16

    const/16 v11, 0x7c

    const/16 v10, 0x10

    const/16 v9, 0x20

    const/4 v1, 0x0

    if-nez p3, :cond_a

    :goto_9
    return-void

    :cond_a
    rem-int/lit8 v3, p3, 0x10

    if-nez v3, :cond_5f

    div-int/lit8 v0, p3, 0x10

    :goto_10
    sget v2, Ljcifs/util/d;->c:I

    add-int/lit8 v2, v2, 0x4a

    mul-int/2addr v0, v2

    new-array v4, v0, [C

    new-array v5, v10, [C

    move v0, v1

    move v2, v1

    :cond_1b
    const/4 v6, 0x5

    invoke-static {v2, v4, v0, v6}, Ljcifs/util/d;->a(I[CII)V

    add-int/lit8 v6, v0, 0x5

    add-int/lit8 v0, v6, 0x1

    const/16 v7, 0x3a

    aput-char v7, v4, v6

    :cond_27
    if-ne v2, p3, :cond_64

    rsub-int/lit8 v6, v3, 0x10

    sget-object v7, Ljcifs/util/d;->d:[C

    mul-int/lit8 v8, v6, 0x3

    invoke-static {v7, v1, v4, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v7, v6, 0x3

    add-int/2addr v0, v7

    sget-object v7, Ljcifs/util/d;->d:[C

    invoke-static {v7, v1, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3a
    add-int/lit8 v6, v0, 0x1

    aput-char v9, v4, v0

    add-int/lit8 v0, v6, 0x1

    aput-char v9, v4, v6

    add-int/lit8 v6, v0, 0x1

    aput-char v11, v4, v0

    invoke-static {v5, v1, v4, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v6, 0x10

    add-int/lit8 v6, v0, 0x1

    aput-char v11, v4, v0

    sget-object v0, Ljcifs/util/d;->b:Ljava/lang/String;

    sget v7, Ljcifs/util/d;->c:I

    invoke-virtual {v0, v1, v7, v4, v6}, Ljava/lang/String;->getChars(II[CI)V

    sget v0, Ljcifs/util/d;->c:I

    add-int/2addr v0, v6

    if-lt v2, p3, :cond_1b

    invoke-virtual {p0, v4}, Ljava/io/PrintStream;->println([C)V

    goto :goto_9

    :cond_5f
    div-int/lit8 v0, p3, 0x10

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_64
    add-int/lit8 v6, v0, 0x1

    aput-char v9, v4, v0

    add-int v0, p2, v2

    aget-byte v0, p1, v0

    and-int/lit16 v7, v0, 0xff

    const/4 v0, 0x2

    invoke-static {v7, v4, v6, v0}, Ljcifs/util/d;->a(I[CII)V

    add-int/lit8 v0, v6, 0x2

    if-ltz v7, :cond_7d

    int-to-char v6, v7

    invoke-static {v6}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v6

    if-eqz v6, :cond_8a

    :cond_7d
    rem-int/lit8 v6, v2, 0x10

    const/16 v7, 0x2e

    aput-char v7, v5, v6

    :goto_83
    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v6, v2, 0x10

    if-nez v6, :cond_27

    goto :goto_3a

    :cond_8a
    rem-int/lit8 v6, v2, 0x10

    int-to-char v7, v7

    aput-char v7, v5, v6

    goto :goto_83
.end method
