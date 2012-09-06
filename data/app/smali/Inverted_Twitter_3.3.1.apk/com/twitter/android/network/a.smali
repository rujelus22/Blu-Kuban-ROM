.class public final Lcom/twitter/android/network/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:[B

.field public static final f:[B

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field private static final j:Ljava/security/SecureRandom;

.field private static final k:La;


# instance fields
.field public final i:Lcom/twitter/android/network/j;

.field private final l:I

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x7

    const/16 v3, 0x16

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/twitter/android/network/a;->j:Ljava/security/SecureRandom;

    new-instance v0, La;

    const-string v1, "-._~"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/twitter/android/network/a;->k:La;

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_58

    sput-object v0, Lcom/twitter/android/network/a;->a:[B

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_66

    sput-object v0, Lcom/twitter/android/network/a;->b:[B

    sget-object v0, Lcom/twitter/android/network/a;->a:[B

    invoke-static {v3, v0}, Lcom/twitter/android/network/a;->a(B[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/network/a;->c:Ljava/lang/String;

    sget-object v0, Lcom/twitter/android/network/a;->b:[B

    invoke-static {v3, v0}, Lcom/twitter/android/network/a;->a(B[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/network/a;->d:Ljava/lang/String;

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_80

    sput-object v0, Lcom/twitter/android/network/a;->e:[B

    new-array v0, v3, [B

    fill-array-data v0, :array_9a

    sput-object v0, Lcom/twitter/android/network/a;->f:[B

    sget-object v0, Lcom/twitter/android/network/a;->f:[B

    invoke-static {v4, v0}, Lcom/twitter/android/network/a;->a(B[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/network/a;->g:Ljava/lang/String;

    sget-object v0, Lcom/twitter/android/network/a;->e:[B

    invoke-static {v4, v0}, Lcom/twitter/android/network/a;->a(B[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/network/a;->h:Ljava/lang/String;

    return-void

    nop

    :array_58
    .array-data 0x1
        0xe3t
        0xa8t
        0xc0t
        0xa1t
        0xc3t
        0xa7t
        0xd4t
        0xbct
        0xa8t
        0x9et
        0xe0t
        0xc1t
        0xe2t
        0xa0t
        0x9ct
        0xc1t
        0x9et
        0xb0t
        0xe1t
        0x9ft
    .end array-data

    :array_66
    .array-data 0x1
        0xd4t
        0xb3t
        0xa3t
        0xe1t
        0xddt
        0xd1t
        0xd0t
        0xb4t
        0xb4t
        0xa3t
        0xb2t
        0xd0t
        0xe0t
        0xc3t
        0xaat
        0xddt
        0xc8t
        0xaft
        0xdft
        0xe5t
        0xa3t
        0xa9t
        0xaft
        0xc3t
        0xa2t
        0xbft
        0xd1t
        0xcft
        0x9ft
        0xbet
        0xbet
        0xcbt
        0xc3t
        0xact
        0xbdt
        0xa0t
        0xc6t
        0xc0t
        0xa2t
        0xdft
        0xa5t
        0x9dt
        0xa3t
    .end array-data

    :array_80
    .array-data 0x1
        0x92t
        0xa3t
        0x99t
        0x94t
        0xa4t
        0xd6t
        0xbet
        0xc6t
        0x8et
        0xb3t
        0xb6t
        0x99t
        0x9ct
        0x9dt
        0xd7t
        0xbct
        0xb7t
        0xa1t
        0xadt
        0xa1t
        0xa1t
        0xa5t
        0xcet
        0x92t
        0x94t
        0xadt
        0xd1t
        0xadt
        0x96t
        0xb1t
        0x98t
        0xaft
        0xa4t
        0xa3t
        0xc3t
        0xd4t
        0x98t
        0x8ft
        0xbet
        0xb1t
        0x98t
    .end array-data

    nop

    :array_9a
    .array-data 0x1
        0x9at
        0xcet
        0xb6t
        0x94t
        0x95t
        0x95t
        0x9at
        0xbdt
        0x98t
        0xc6t
        0xb9t
        0xc0t
        0xb5t
        0xb8t
        0xc6t
        0x9et
        0xb9t
        0xbct
        0xa6t
        0xc4t
        0xcft
        0xa0t
    .end array-data
.end method

.method public constructor <init>(Lcom/twitter/android/network/j;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lcom/twitter/android/network/a;->c:Ljava/lang/String;

    sget-object v5, Lcom/twitter/android/network/a;->d:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/j;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/twitter/android/network/j;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/network/a;->i:Lcom/twitter/android/network/j;

    iput p2, p0, Lcom/twitter/android/network/a;->l:I

    iput-object p3, p0, Lcom/twitter/android/network/a;->m:Ljava/lang/String;

    iput-object p4, p0, Lcom/twitter/android/network/a;->n:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/android/network/a;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/network/j;Ljava/lang/String;)V
    .registers 9

    const/4 v2, 0x2

    sget-object v4, Lcom/twitter/android/network/a;->c:Ljava/lang/String;

    sget-object v5, Lcom/twitter/android/network/a;->d:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/j;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/network/j;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/network/a;-><init>(Lcom/twitter/android/network/j;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(B[B)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_15

    aget-byte v3, p1, v0

    sub-int v3, p0, v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/twitter/android/network/a;->k:La;

    invoke-virtual {v0, p0}, La;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p2, :cond_4

    :try_start_2
    const-string p2, ""

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTF8"

    invoke-static {p1, v1}, Lcom/twitter/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF8"

    invoke-static {p2, v1}, Lcom/twitter/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA1"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const-string v1, "UTF8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lf;->a([B)[B

    move-result-object v0

    const-string v2, "UTF8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "UTF8"

    invoke-static {v1, v0}, Lcom/twitter/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_57
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_57} :catch_59
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_57} :catch_5d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_57} :catch_61

    move-result-object v0

    :goto_58
    return-object v0

    :catch_59
    move-exception v0

    const-string v0, ""

    goto :goto_58

    :catch_5d
    move-exception v0

    const-string v0, ""

    goto :goto_58

    :catch_61
    move-exception v0

    const-string v0, ""

    goto :goto_58
.end method

.method private static a(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/twitter/android/network/j;JLjava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .registers 15

    if-eqz p1, :cond_6c

    iget-object v2, p1, Lcom/twitter/android/network/j;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/twitter/android/network/j;->a:Ljava/lang/String;

    move-object v6, v0

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/network/a;->j:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p4

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/network/a;->a(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p5, v6}, Lcom/twitter/android/network/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_70

    const-string v1, "OAuth realm=\"%s\", oauth_version=\"%s\", oauth_nonce=\"%s\", oauth_timestamp=\"%s\", oauth_signature=\"%s\", oauth_consumer_key=\"%s\", oauth_signature_method=\"%s\""

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "http://api.twitter.com/"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, "1.0"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const/4 v0, 0x5

    aput-object p4, v2, v0

    const/4 v0, 0x6

    const-string v3, "HMAC-SHA1"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_6b
    return-object v0

    :cond_6c
    const/4 v2, 0x0

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_7

    :cond_70
    const-string v1, "OAuth realm=\"%s\", oauth_version=\"%s\", oauth_token=\"%s\", oauth_nonce=\"%s\", oauth_timestamp=\"%s\", oauth_signature=\"%s\", oauth_consumer_key=\"%s\", oauth_signature_method=\"%s\""

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "http://api.twitter.com/"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "1.0"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v2, 0x3

    aput-object v3, v5, v2

    const/4 v2, 0x4

    aput-object v4, v5, v2

    const/4 v2, 0x5

    aput-object v0, v5, v2

    const/4 v0, 0x6

    aput-object p4, v5, v0

    const/4 v0, 0x7

    const-string v2, "HMAC-SHA1"

    aput-object v2, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6b
.end method

.method private static a(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .registers 13

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_12

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    if-eqz p5, :cond_38

    invoke-interface {p5}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_38

    const-string v3, "application/x-www-form-urlencoded"

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    :try_start_26
    invoke-static {p5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_38} :catch_fc

    :cond_38
    :goto_38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/twitter/android/network/a;->a(Ljava/lang/String;Z)Ljava/util/TreeMap;

    move-result-object v1

    const-string v2, "oauth_consumer_key"

    invoke-virtual {v1, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "oauth_nonce"

    invoke-virtual {v1, v2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "oauth_signature_method"

    const-string v3, "HMAC-SHA1"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "oauth_timestamp"

    invoke-virtual {v1, v2, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "oauth_version"

    const-string v3, "1.0"

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_65

    const-string v2, "oauth_token"

    invoke-virtual {v1, v2, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/twitter/android/network/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v4

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :goto_b6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/android/network/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/network/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "%3D"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/android/network/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/network/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    if-ge v0, v4, :cond_f5

    const-string v1, "%26"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f5
    move v2, v0

    goto :goto_b6

    :cond_f7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_fc
    move-exception v1

    goto/16 :goto_38
.end method

.method public static a(Ljava/lang/String;Z)Ljava/util/TreeMap;
    .registers 10

    const/4 v1, 0x0

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    if-eqz p0, :cond_4b

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_10
    if-ge v0, v4, :cond_4b

    aget-object v5, v3, v0

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_35

    aget-object v6, v5, v1

    const-string v7, "UTF8"

    invoke-static {v6, v7}, Lcom/twitter/android/util/x;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v5, v5, v7

    const-string v7, "UTF8"

    invoke-static {v5, v7}, Lcom/twitter/android/util/x;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    :goto_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_35
    aget-object v6, v5, v1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_32

    aget-object v5, v5, v1

    const-string v6, "UTF8"

    invoke-static {v5, v6}, Lcom/twitter/android/util/x;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_4b
    return-object v2
.end method


# virtual methods
.method public final a(Lorg/apache/http/client/methods/HttpRequestBase;JLorg/apache/http/HttpEntity;)V
    .registers 13

    iget v0, p0, Lcom/twitter/android/network/a;->l:I

    iget-object v1, p0, Lcom/twitter/android/network/a;->i:Lcom/twitter/android/network/j;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    iget-object v4, p0, Lcom/twitter/android/network/a;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/android/network/a;->o:Ljava/lang/String;

    move-object v0, p1

    move-wide v2, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/twitter/android/network/a;->a(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/twitter/android/network/j;JLjava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void

    :cond_18
    const/4 v2, 0x2

    if-ne v0, v2, :cond_17

    iget-object v7, p0, Lcom/twitter/android/network/a;->m:Ljava/lang/String;

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/twitter/android/network/a;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/android/network/a;->o:Ljava/lang/String;

    move-wide v2, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/twitter/android/network/a;->a(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/twitter/android/network/j;JLjava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Auth-Service-Provider"

    invoke-virtual {p1, v1, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-Verify-Credentials-Authorization"

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method
