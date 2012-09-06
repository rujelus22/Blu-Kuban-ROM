.class public Lcom/intangibleobject/securesettings/library/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/intangibleobject/securesettings/library/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intangibleobject/securesettings/library/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_19

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    :goto_18
    return-object v0

    :catch_19
    move-exception v0

    sget-object v1, Lcom/intangibleobject/securesettings/library/a/a;->a:Ljava/lang/String;

    const-string v2, "Unable to get package signature!"

    invoke-static {v1, v2}, Lcom/intangibleobject/securesettings/library/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/intangibleobject/securesettings/library/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/intangibleobject/securesettings/library/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/intangibleobject/securesettings/library/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2d46b7c8e23773324ae7615ccecebf1ee10c5181"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/intangibleobject/securesettings/library/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v0, ""

    :goto_9
    return-object v0

    :cond_a
    const-string v0, ""

    :try_start_c
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    const-string v4, "iso-8859-1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v4, v5, v1}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v2

    :goto_2a
    array-length v1, v6

    if-lt v5, v1, :cond_32

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_32
    aget-byte v1, v6, v5

    ushr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    move v3, v1

    move v1, v2

    :goto_3a
    if-ltz v3, :cond_52

    const/16 v4, 0x9

    if-gt v3, v4, :cond_52

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_46
    aget-byte v3, v6, v5

    and-int/lit8 v4, v3, 0xf

    add-int/lit8 v3, v1, 0x1

    if-lez v1, :cond_71

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2a

    :cond_52
    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_5a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_5a} :catch_5b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_5a} :catch_66

    goto :goto_46

    :catch_5b
    move-exception v1

    sget-object v2, Lcom/intangibleobject/securesettings/library/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/intangibleobject/securesettings/library/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_66
    move-exception v1

    sget-object v2, Lcom/intangibleobject/securesettings/library/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/intangibleobject/securesettings/library/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_71
    move v1, v3

    move v3, v4

    goto :goto_3a
.end method
