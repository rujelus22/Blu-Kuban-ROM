.class public Lcom/google/googlenav/android/ae;
.super Landroid/net/UrlQuerySanitizer;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/net/UrlQuerySanitizer;-><init>()V

    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/google/googlenav/android/ae;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/UrlQuerySanitizer;-><init>(Ljava/lang/String;)V

    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/google/googlenav/android/ae;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(B)C
    .registers 2

    and-int/lit16 v0, p0, 0xff

    int-to-char v0, v0

    return v0
.end method

.method private static a(C)I
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    :cond_18
    const/16 v0, 0x61

    if-lt p0, v0, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    :cond_25
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lcom/google/googlenav/android/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_68

    aget-byte v4, v1, v0

    invoke-static {v4}, Lcom/google/googlenav/android/ae;->a(B)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_1f

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1f
    const/16 v5, 0x25

    if-ne v4, v5, :cond_4c

    add-int/lit8 v5, v0, 0x2

    if-ge v5, v2, :cond_4c

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v1, v5

    invoke-static {v5}, Lcom/google/googlenav/android/ae;->a(B)C

    move-result v5

    invoke-static {v5}, Lcom/google/googlenav/android/ae;->a(C)I

    move-result v5

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    invoke-static {v6}, Lcom/google/googlenav/android/ae;->a(B)C

    move-result v6

    invoke-static {v6}, Lcom/google/googlenav/android/ae;->a(C)I

    move-result v6

    if-ltz v5, :cond_4c

    if-ltz v6, :cond_4c

    mul-int/lit8 v4, v5, 0x10

    add-int/2addr v4, v6

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_1c

    :cond_4c
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_4f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_4f} :catch_50

    goto :goto_1c

    :catch_50
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_67
    return-object p0

    :cond_68
    :try_start_68
    invoke-virtual {v3, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_68 .. :try_end_6b} :catch_50

    move-result-object p0

    goto :goto_67
.end method


# virtual methods
.method public unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "utf-8"

    invoke-static {p1, v0}, Lcom/google/googlenav/android/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
