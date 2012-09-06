.class public Lcom/google/googlenav/android/aa;
.super Landroid/net/UrlQuerySanitizer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/net/UrlQuerySanitizer;-><init>()V

    .line 27
    return-void
.end method

.method private static a(B)C
    .registers 2
    .parameter

    .prologue
    .line 95
    and-int/lit16 v0, p0, 0xff

    int-to-char v0, v0

    return v0
.end method

.method private static a(C)I
    .registers 2
    .parameter

    .prologue
    .line 107
    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 108
    add-int/lit8 v0, p0, -0x30

    .line 114
    :goto_a
    return v0

    .line 109
    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    .line 110
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 111
    :cond_18
    const/16 v0, 0x61

    if-lt p0, v0, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    .line 112
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 114
    :cond_25
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 45
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lcom/google/googlenav/android/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 65
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 66
    array-length v2, v1

    .line 69
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 71
    const/4 v0, 0x0

    :goto_d
    if-ge v0, v2, :cond_59

    .line 72
    aget-byte v4, v1, v0

    invoke-static {v4}, Lcom/google/googlenav/android/aa;->a(B)C

    move-result v4

    .line 73
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_21

    .line 74
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 71
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 76
    :cond_21
    const/16 v5, 0x25

    if-ne v4, v5, :cond_4e

    add-int/lit8 v5, v0, 0x2

    if-ge v5, v2, :cond_4e

    .line 77
    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v1, v5

    invoke-static {v5}, Lcom/google/googlenav/android/aa;->a(B)C

    move-result v5

    invoke-static {v5}, Lcom/google/googlenav/android/aa;->a(C)I

    move-result v5

    .line 78
    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    invoke-static {v6}, Lcom/google/googlenav/android/aa;->a(B)C

    move-result v6

    invoke-static {v6}, Lcom/google/googlenav/android/aa;->a(C)I

    move-result v6

    .line 79
    if-ltz v5, :cond_4e

    if-ltz v6, :cond_4e

    .line 80
    mul-int/lit8 v4, v5, 0x10

    add-int/2addr v4, v6

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 81
    add-int/lit8 v0, v0, 0x2

    .line 82
    goto :goto_1e

    .line 85
    :cond_4e
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_51
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_51} :catch_52

    goto :goto_1e

    .line 88
    :catch_52
    move-exception v0

    .line 89
    const-string v1, "Unsupported encoding utf-8"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :goto_58
    return-object p0

    .line 87
    :cond_59
    :try_start_59
    const-string v0, "utf-8"

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_59 .. :try_end_5e} :catch_52

    move-result-object p0

    goto :goto_58
.end method


# virtual methods
.method public unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 38
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Lcom/google/googlenav/android/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
