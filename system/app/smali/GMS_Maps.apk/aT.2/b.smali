.class public LaT/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:J

.field private static volatile c:Ljava/lang/String;

.field private static final e:[C


# instance fields
.field private a:[B

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    const-wide v0, 0x4c32d9f7ce10f5adL

    sput-wide v0, LaT/b;->b:J

    .line 40
    const/4 v0, 0x0

    sput-object v0, LaT/b;->c:Ljava/lang/String;

    .line 353
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, LaT/b;->e:[C

    return-void
.end method

.method constructor <init>(J)V
    .registers 3
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, LaT/b;->d:J

    .line 50
    return-void
.end method

.method private static a(C)I
    .registers 3
    .parameter

    .prologue
    .line 355
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 356
    add-int/lit8 v0, p0, -0x30

    .line 360
    :goto_a
    return v0

    .line 357
    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    .line 358
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 359
    :cond_18
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    .line 360
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 362
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "char is not a hex char"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)LaT/b;
    .registers 3
    .parameter

    .prologue
    .line 56
    sget-object v0, LaT/b;->c:Ljava/lang/String;

    .line 57
    if-eqz v0, :cond_9

    .line 58
    invoke-static {v0}, LaT/b;->a(Ljava/lang/String;)LaT/b;

    move-result-object v0

    .line 82
    :goto_8
    return-object v0

    .line 60
    :cond_9
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v1, "deskdroid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 62
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, LaT/b;->a(Ljava/lang/String;)LaT/b;

    move-result-object v0

    goto :goto_8

    .line 76
    :cond_1b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "logging_id2"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    if-nez v0, :cond_31

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "logging_id2"

    invoke-static {v0, v1}, Lcom/google/android/gsf/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_31
    sput-object v0, LaT/b;->c:Ljava/lang/String;

    .line 82
    invoke-static {v0}, LaT/b;->a(Ljava/lang/String;)LaT/b;

    move-result-object v0

    goto :goto_8
.end method

.method static a(Ljava/lang/String;)LaT/b;
    .registers 4
    .parameter

    .prologue
    .line 91
    if-nez p0, :cond_a

    .line 92
    new-instance v0, LaT/b;

    sget-wide v1, LaT/b;->b:J

    invoke-direct {v0, v1, v2}, LaT/b;-><init>(J)V

    .line 95
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, LaT/b;

    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, LaT/b;-><init>(J)V

    goto :goto_9
.end method

.method private a()Ljavax/crypto/spec/SecretKeySpec;
    .registers 6

    .prologue
    .line 237
    iget-object v0, p0, LaT/b;->a:[B

    if-nez v0, :cond_36

    .line 238
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    .line 239
    const-string v0, "K_PREF"

    invoke-interface {v1, v0}, Lcom/google/googlenav/common/io/j;->a_(Ljava/lang/String;)[B

    move-result-object v0

    .line 240
    if-nez v0, :cond_34

    .line 241
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->d()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 242
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 243
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 244
    const-string v2, "K_PREF"

    invoke-interface {v1, v2, v0}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 245
    invoke-interface {v1}, Lcom/google/googlenav/common/io/j;->a()V

    .line 247
    :cond_34
    iput-object v0, p0, LaT/b;->a:[B

    .line 250
    :cond_36
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, LaT/b;->a:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/lang/CharSequence;)[B
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 332
    if-nez p0, :cond_5

    .line 333
    const/4 v0, 0x0

    .line 350
    :goto_4
    return-object v0

    .line 335
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    .line 336
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_17

    move-object v0, v2

    .line 337
    goto :goto_4

    .line 339
    :cond_17
    aput-byte v0, v2, v0

    .line 340
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    .line 341
    :goto_1f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_4b

    .line 342
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 343
    rem-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_3d

    .line 344
    shr-int/lit8 v4, v1, 0x1

    invoke-static {v3}, LaT/b;->a(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 348
    :goto_38
    add-int/lit8 v1, v1, 0x1

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 346
    :cond_3d
    shr-int/lit8 v4, v1, 0x1

    aget-byte v5, v2, v4

    invoke-static {v3}, LaT/b;->a(C)I

    move-result v3

    int-to-byte v3, v3

    add-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    goto :goto_38

    :cond_4b
    move-object v0, v2

    .line 350
    goto :goto_4
.end method

.method private b()Ljavax/crypto/spec/SecretKeySpec;
    .registers 12

    .prologue
    const/16 v10, 0x20

    const/16 v9, 0x18

    const/16 v8, 0x10

    const/16 v7, 0x8

    const-wide/16 v5, 0xff

    .line 261
    new-array v0, v10, [B

    const/4 v1, 0x0

    iget-wide v2, p0, LaT/b;->d:J

    const/4 v4, 0x0

    ushr-long/2addr v2, v4

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, LaT/b;->d:J

    ushr-long/2addr v2, v7

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, LaT/b;->d:J

    ushr-long/2addr v2, v8

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, LaT/b;->d:J

    ushr-long/2addr v2, v9

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, LaT/b;->d:J

    ushr-long/2addr v2, v10

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, LaT/b;->d:J

    const/16 v4, 0x28

    ushr-long/2addr v2, v4

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, LaT/b;->d:J

    const/16 v4, 0x30

    ushr-long/2addr v2, v4

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    iget-wide v2, p0, LaT/b;->d:J

    const/16 v4, 0x38

    ushr-long/2addr v2, v4

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    aput-byte v1, v0, v7

    const/16 v1, 0x9

    iget-wide v2, p0, LaT/b;->d:J

    const/16 v4, 0x30

    ushr-long/2addr v2, v4

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    iget-wide v2, p0, LaT/b;->d:J

    const/16 v4, 0x28

    ushr-long/2addr v2, v4

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    iget-wide v2, p0, LaT/b;->d:J

    ushr-long/2addr v2, v10

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    iget-wide v2, p0, LaT/b;->d:J

    ushr-long/2addr v2, v9

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    iget-wide v2, p0, LaT/b;->d:J

    ushr-long/2addr v2, v8

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    iget-wide v2, p0, LaT/b;->d:J

    ushr-long/2addr v2, v7

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    iget-wide v1, p0, LaT/b;->d:J

    const/16 v3, 0x38

    ushr-long/2addr v1, v3

    and-long/2addr v1, v5

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    const/16 v1, 0x11

    iget-wide v2, p0, LaT/b;->d:J

    const/16 v4, 0x30

    ushr-long/2addr v2, v4

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    iget-wide v2, p0, LaT/b;->d:J

    const/16 v4, 0x28

    ushr-long/2addr v2, v4

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    iget-wide v2, p0, LaT/b;->d:J

    ushr-long/2addr v2, v10

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    iget-wide v2, p0, LaT/b;->d:J

    ushr-long/2addr v2, v9

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    iget-wide v2, p0, LaT/b;->d:J

    ushr-long/2addr v2, v8

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    iget-wide v2, p0, LaT/b;->d:J

    ushr-long/2addr v2, v7

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    iget-wide v2, p0, LaT/b;->d:J

    const/4 v4, 0x0

    ushr-long/2addr v2, v4

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-wide v1, p0, LaT/b;->d:J

    const/4 v3, 0x0

    ushr-long/2addr v1, v3

    and-long/2addr v1, v5

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v9

    const/16 v1, 0x19

    iget-wide v2, p0, LaT/b;->d:J

    ushr-long/2addr v2, v7

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    iget-wide v2, p0, LaT/b;->d:J

    ushr-long/2addr v2, v8

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    iget-wide v2, p0, LaT/b;->d:J

    ushr-long/2addr v2, v9

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    iget-wide v2, p0, LaT/b;->d:J

    ushr-long/2addr v2, v10

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    iget-wide v2, p0, LaT/b;->d:J

    const/16 v4, 0x28

    ushr-long/2addr v2, v4

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    iget-wide v2, p0, LaT/b;->d:J

    const/16 v4, 0x38

    ushr-long/2addr v2, v4

    and-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 294
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private static d([B)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 305
    if-nez p0, :cond_4

    .line 306
    const/4 v0, 0x0

    .line 316
    :goto_3
    return-object v0

    .line 308
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 310
    const/4 v0, 0x0

    :goto_d
    array-length v2, p0

    if-ge v0, v2, :cond_2b

    .line 311
    aget-byte v2, p0, v0

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 312
    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    .line 313
    sget-object v4, LaT/b;->e:[C

    aget-char v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    sget-object v2, LaT/b;->e:[C

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 316
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public a([B)[B
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 112
    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_7

    .line 122
    :cond_6
    :goto_6
    return-object v0

    .line 117
    :cond_7
    :try_start_7
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 118
    const/4 v2, 0x1

    invoke-direct {p0}, LaT/b;->a()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 119
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_18
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_18} :catch_1a

    move-result-object v0

    goto :goto_6

    .line 120
    :catch_1a
    move-exception v1

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encrypt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public b(Ljava/lang/String;)[B
    .registers 3
    .parameter

    .prologue
    .line 132
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 133
    :cond_8
    const/4 v0, 0x0

    .line 135
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, LaT/b;->a([B)[B

    move-result-object v0

    goto :goto_9
.end method

.method public b([B)[B
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 168
    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_7

    .line 186
    :cond_6
    :goto_6
    return-object v0

    .line 173
    :cond_7
    :try_start_7
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 174
    const/4 v2, 0x2

    invoke-direct {p0}, LaT/b;->a()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 175
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_18
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_18} :catch_1a

    move-result-object v0

    goto :goto_6

    .line 176
    :catch_1a
    move-exception v1

    .line 181
    :try_start_1b
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 182
    const/4 v2, 0x2

    invoke-direct {p0}, LaT/b;->b()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 183
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_2c
    .catch Ljava/security/GeneralSecurityException; {:try_start_1b .. :try_end_2c} :catch_2e

    move-result-object v0

    goto :goto_6

    .line 184
    :catch_2e
    move-exception v1

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decrypt migration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 157
    invoke-virtual {p0, p1}, LaT/b;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, LaT/b;->d([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([B)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 229
    invoke-virtual {p0, p1}, LaT/b;->b([B)[B

    move-result-object v1

    .line 230
    if-nez v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_7
.end method

.method public d(Ljava/lang/String;)[B
    .registers 3
    .parameter

    .prologue
    .line 201
    :try_start_0
    invoke-static {p1}, LaT/b;->a(Ljava/lang/CharSequence;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, LaT/b;->b([B)[B
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 204
    :goto_8
    return-object v0

    .line 202
    :catch_9
    move-exception v0

    .line 204
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 217
    invoke-virtual {p0, p1}, LaT/b;->d(Ljava/lang/String;)[B

    move-result-object v1

    .line 218
    if-nez v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_7
.end method
