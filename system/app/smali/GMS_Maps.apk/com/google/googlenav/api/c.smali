.class public final Lcom/google/googlenav/api/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 45
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 46
    if-nez v1, :cond_9

    .line 70
    :cond_8
    :goto_8
    return-object v0

    .line 49
    :cond_9
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_12

    .line 50
    const-string v0, "SYSTEM"

    goto :goto_8

    .line 52
    :cond_12
    const/16 v1, 0x40

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_8

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_8

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_8

    .line 57
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 58
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 59
    if-eqz v2, :cond_8

    .line 62
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 63
    if-eqz v1, :cond_8

    .line 66
    invoke-static {v1}, Lcom/google/googlenav/api/c;->a([B)Ljava/lang/String;
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_44} :catch_48
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_44} :catch_46

    move-result-object v0

    goto :goto_8

    .line 69
    :catch_46
    move-exception v1

    goto :goto_8

    .line 67
    :catch_48
    move-exception v1

    goto :goto_8
.end method

.method private static a([B)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 76
    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_30

    .line 77
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 78
    array-length v3, p0

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v3, :cond_2a

    aget-byte v4, p0, v0

    .line 79
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v1, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    shr-int/lit8 v4, v4, 0x0

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v1, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 82
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    nop

    :array_30
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
