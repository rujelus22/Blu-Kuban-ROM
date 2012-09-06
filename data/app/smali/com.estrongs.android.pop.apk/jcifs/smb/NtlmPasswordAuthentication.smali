.class public final Ljcifs/smb/NtlmPasswordAuthentication;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/security/Principal;


# static fields
.field public static final ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication; = null

.field static final BLANK:Ljava/lang/String; = ""

.field static final DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

.field static DEFAULT_DOMAIN:Ljava/lang/String;

.field static DEFAULT_PASSWORD:Ljava/lang/String;

.field static DEFAULT_USERNAME:Ljava/lang/String;

.field static final GUEST:Ljcifs/smb/NtlmPasswordAuthentication;

.field private static final LM_COMPATIBILITY:I

.field static final NULL:Ljcifs/smb/NtlmPasswordAuthentication;

.field private static final RANDOM:Ljava/util/Random;

.field private static final S8:[B

.field private static log:Ljcifs/util/e;


# instance fields
.field ansiHash:[B

.field challenge:[B

.field clientChallenge:[B

.field domain:Ljava/lang/String;

.field hashesExternal:Z

.field password:Ljava/lang/String;

.field unicodeHash:[B

.field username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "jcifs.smb.lmCompatibility"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->RANDOM:Ljava/util/Random;

    invoke-static {}, Ljcifs/util/e;->a()Ljcifs/util/e;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/e;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_50

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->S8:[B

    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const-string v1, "?"

    const-string v2, "GUEST"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->GUEST:Ljcifs/smb/NtlmPasswordAuthentication;

    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

    return-void

    nop

    :array_50
    .array-data 0x1
        0x4bt
        0x47t
        0x53t
        0x21t
        0x40t
        0x23t
        0x24t
        0x25t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    if-eqz p1, :cond_44

    :try_start_13
    invoke-static {p1}, Ljcifs/smb/NtlmPasswordAuthentication;->unescape(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_16} :catch_60

    move-result-object p1

    :goto_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v1

    move v2, v1

    :goto_1d
    if-ge v2, v3, :cond_3e

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_32

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    add-int/lit8 v0, v2, 0x1

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_32
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_2f

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    :cond_3e
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    :cond_44
    invoke-static {}, Ljcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    if-nez v0, :cond_4f

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    :cond_4f
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    if-nez v0, :cond_57

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_USERNAME:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    :cond_57
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    if-nez v0, :cond_5f

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    :cond_5f
    return-void

    :catch_60
    move-exception v0

    goto :goto_17
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_39

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_1d
    :goto_1d
    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    iput-object p2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iput-object p3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {}, Ljcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    if-nez p1, :cond_2c

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    :cond_2c
    if-nez p2, :cond_32

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_USERNAME:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    :cond_32
    if-nez p3, :cond_38

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    :cond_38
    return-void

    :cond_39
    const/16 v0, 0x5c

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1d

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1d
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B[B[B)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    if-eqz p4, :cond_13

    if-nez p5, :cond_1b

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "External credentials cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    iput-object p2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iput-object p3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    iput-object p4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    iput-object p5, p0, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    return-void
.end method

.method private static E([B[B[B)V
    .registers 10

    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v1, 0x0

    new-array v2, v5, [B

    new-array v3, v6, [B

    move v0, v1

    :goto_9
    array-length v4, p0

    div-int/lit8 v4, v4, 0x7

    if-ge v0, v4, :cond_23

    mul-int/lit8 v4, v0, 0x7

    invoke-static {p0, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljcifs/util/a;

    invoke-direct {v4, v2}, Ljcifs/util/a;-><init>([B)V

    invoke-virtual {v4, p1, v3}, Ljcifs/util/a;->b([B[B)V

    mul-int/lit8 v4, v0, 0x8

    invoke-static {v3, v1, p2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_23
    return-void
.end method

.method static computeResponse([B[B[BII)[B
    .registers 9

    const/4 v3, 0x0

    new-instance v0, Ljcifs/util/c;

    invoke-direct {v0, p0}, Ljcifs/util/c;-><init>([B)V

    invoke-virtual {v0, p1}, Ljcifs/util/c;->update([B)V

    invoke-virtual {v0, p2, p3, p4}, Ljcifs/util/c;->update([BII)V

    invoke-virtual {v0}, Ljcifs/util/c;->digest()[B

    move-result-object v0

    array-length v1, v0

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v2, p2

    invoke-static {p2, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .registers 9

    const/16 v0, 0x10

    :try_start_2
    new-array v0, v0, [B

    const/16 v0, 0x18

    new-array v0, v0, [B

    new-instance v1, Ljcifs/util/f;

    invoke-direct {v1}, Ljcifs/util/f;-><init>()V

    const-string v2, "UTF-16LE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljcifs/util/f;->update([B)V

    new-instance v2, Ljcifs/util/c;

    invoke-virtual {v1}, Ljcifs/util/f;->digest()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljcifs/util/c;-><init>([B)V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-16LE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljcifs/util/c;->update([B)V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-16LE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljcifs/util/c;->update([B)V

    new-instance v1, Ljcifs/util/c;

    invoke-virtual {v2}, Ljcifs/util/c;->digest()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljcifs/util/c;-><init>([B)V

    invoke-virtual {v1, p3}, Ljcifs/util/c;->update([B)V

    invoke-virtual {v1, p4}, Ljcifs/util/c;->update([B)V

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v0, v2, v3}, Ljcifs/util/c;->digest([BII)I

    const/4 v1, 0x0

    const/16 v2, 0x10

    const/16 v3, 0x8

    invoke-static {p4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_56} :catch_57

    :goto_56
    return-object v0

    :catch_57
    move-exception v0

    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    if-lez v1, :cond_63

    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_63
    const/4 v0, 0x0

    goto :goto_56
.end method

.method public static getLMv2Response([B[B[B)[B
    .registers 5

    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p0, p1, p2, v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->computeResponse([B[B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getNTLM2Response([B[B[B)[B
    .registers 9

    const/16 v0, 0x8

    const/4 v5, 0x0

    new-array v0, v0, [B

    :try_start_5
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, p2, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1f
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_1f} :catch_30

    const/16 v1, 0x15

    new-array v1, v1, [B

    const/16 v2, 0x10

    invoke-static {p0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x18

    new-array v2, v2, [B

    invoke-static {v1, v0, v2}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    return-object v2

    :catch_30
    move-exception v0

    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    if-lez v1, :cond_3c

    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljava/security/GeneralSecurityException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_3c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MD5"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getNTLMResponse(Ljava/lang/String;[B)[B
    .registers 7

    const/4 v0, 0x0

    const/16 v1, 0x15

    new-array v2, v1, [B

    const/16 v1, 0x18

    new-array v3, v1, [B

    :try_start_9
    const-string v1, "UTF-16LE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_e} :catch_21

    move-result-object v0

    :cond_f
    :goto_f
    new-instance v1, Ljcifs/util/f;

    invoke-direct {v1}, Ljcifs/util/f;-><init>()V

    invoke-virtual {v1, v0}, Ljcifs/util/f;->update([B)V

    const/4 v0, 0x0

    const/16 v4, 0x10

    :try_start_1a
    invoke-virtual {v1, v2, v0, v4}, Ljcifs/util/f;->digest([BII)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_2e

    :cond_1d
    :goto_1d
    invoke-static {v2, p1, v3}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    return-object v3

    :catch_21
    move-exception v1

    sget-object v4, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/e;

    sget v4, Ljcifs/util/e;->a:I

    if-lez v4, :cond_f

    sget-object v4, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/e;

    invoke-virtual {v1, v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_f

    :catch_2e
    move-exception v0

    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    if-lez v1, :cond_1d

    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_1d
.end method

.method public static getNTLMv2Response([B[B[BJ[B)[B
    .registers 11

    const/16 v4, 0x8

    const/4 v1, 0x0

    if-eqz p5, :cond_34

    array-length v0, p5

    :goto_6
    add-int/lit8 v2, v0, 0x1c

    add-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    const/16 v3, 0x101

    invoke-static {v3, v2, v1}, Ljcifs/util/b;->b(I[BI)I

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Ljcifs/util/b;->b(I[BI)I

    invoke-static {p3, p4, v2, v4}, Ljcifs/util/b;->b(J[BI)I

    const/16 v3, 0x10

    invoke-static {p2, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v3, 0x18

    invoke-static {v1, v2, v3}, Ljcifs/util/b;->b(I[BI)I

    if-eqz p5, :cond_29

    const/16 v3, 0x1c

    invoke-static {p5, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_29
    add-int/lit8 v0, v0, 0x1c

    invoke-static {v1, v2, v0}, Ljcifs/util/b;->b(I[BI)I

    array-length v0, v2

    invoke-static {p0, p1, v2, v1, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->computeResponse([B[B[BII)[B

    move-result-object v0

    return-object v0

    :cond_34
    move v0, v1

    goto :goto_6
.end method

.method public static getPreNTLMResponse(Ljava/lang/String;[B)[B
    .registers 9

    const/4 v6, 0x0

    const/16 v0, 0xe

    new-array v2, v0, [B

    const/16 v1, 0x15

    new-array v3, v1, [B

    const/16 v1, 0x18

    new-array v4, v1, [B

    :try_start_d
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljcifs/smb/t;->am:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_16} :catch_26

    move-result-object v5

    array-length v1, v5

    if-le v1, v0, :cond_2f

    :goto_1a
    invoke-static {v5, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->S8:[B

    invoke-static {v2, v0, v3}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    invoke-static {v3, p1, v4}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    return-object v4

    :catch_26
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Try setting jcifs.encoding=US-ASCII"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2f
    move v0, v1

    goto :goto_1a
.end method

.method static initDefaults()V
    .registers 2

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const-string v0, "jcifs.smb.client.domain"

    const-string v1, "?"

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.username"

    const-string v1, "GUEST"

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_USERNAME:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.password"

    const-string v1, ""

    invoke-static {v0, v1}, Ljcifs/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    goto :goto_4
.end method

.method public static nTOWFv1(Ljava/lang/String;)[B
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Password parameter is required"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :try_start_a
    new-instance v0, Ljcifs/util/f;

    invoke-direct {v0}, Ljcifs/util/f;-><init>()V

    const-string v1, "UTF-16LE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/f;->update([B)V

    invoke-virtual {v0}, Ljcifs/util/f;->digest()[B
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_1b} :catch_1d

    move-result-object v0

    return-object v0

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static nTOWFv2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6

    :try_start_0
    new-instance v0, Ljcifs/util/f;

    invoke-direct {v0}, Ljcifs/util/f;-><init>()V

    const-string v1, "UTF-16LE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/f;->update([B)V

    new-instance v1, Ljcifs/util/c;

    invoke-virtual {v0}, Ljcifs/util/f;->digest()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljcifs/util/c;-><init>([B)V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-16LE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljcifs/util/c;->update([B)V

    const-string v0, "UTF-16LE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljcifs/util/c;->update([B)V

    invoke-virtual {v1}, Ljcifs/util/c;->digest()[B
    :try_end_30
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_30} :catch_32

    move-result-object v0

    return-object v0

    :catch_32
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v6, v1, [B

    if-nez p0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    new-array v8, v7, [C

    move v0, v2

    move v3, v2

    move v5, v2

    :goto_11
    if-ge v5, v7, :cond_52

    packed-switch v0, :pswitch_data_58

    move v4, v5

    :goto_17
    add-int/lit8 v5, v4, 0x1

    goto :goto_11

    :pswitch_1a
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v4, 0x25

    if-ne v9, v4, :cond_25

    move v0, v1

    move v4, v5

    goto :goto_17

    :cond_25
    add-int/lit8 v4, v3, 0x1

    aput-char v9, v8, v3

    move v3, v4

    move v4, v5

    goto :goto_17

    :pswitch_2c
    add-int/lit8 v0, v5, 0x2

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v6, v2

    add-int/lit8 v0, v3, 0x1

    new-instance v4, Ljava/lang/String;

    const-string v9, "ASCII"

    invoke-direct {v4, v6, v2, v1, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v8, v3

    add-int/lit8 v3, v5, 0x1

    move v4, v3

    move v3, v0

    move v0, v2

    goto :goto_17

    :cond_52
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_7

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_2c
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Ljcifs/smb/NtlmPasswordAuthentication;

    if-eqz v2, :cond_59

    check-cast p1, Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v2, p1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p1, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-boolean v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v2, :cond_4b

    iget-boolean v2, p1, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v2, :cond_4b

    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    iget-object v3, p1, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    iget-object v3, p1, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_49

    :cond_48
    :goto_48
    return v0

    :cond_49
    move v0, v1

    goto :goto_48

    :cond_4b
    iget-boolean v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-nez v2, :cond_59

    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iget-object v3, p1, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    :cond_59
    move v0, v1

    goto :goto_48
.end method

.method public getAnsiHash([B)[B
    .registers 6

    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    :goto_6
    return-object v0

    :cond_7
    sget v0, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    packed-switch v0, :pswitch_data_40

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getPreNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_6

    :pswitch_13
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getPreNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_6

    :pswitch_1a
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_6

    :pswitch_21
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    if-nez v0, :cond_32

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->RANDOM:Ljava/util/Random;

    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    :cond_32
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iget-object v3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    invoke-static {v0, v1, v2, p1, v3}, Ljcifs/smb/NtlmPasswordAuthentication;->getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object v0

    goto :goto_6

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_13
        :pswitch_13
        :pswitch_1a
        :pswitch_21
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_31

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x1

    :goto_13
    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_30
    return-object v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_13

    :cond_33
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    goto :goto_30
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSigningKey([B)[B
    .registers 7

    const/4 v4, 0x0

    sget v0, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    packed-switch v0, :pswitch_data_24

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :pswitch_8
    const/16 v0, 0x28

    new-array v0, v0, [B

    invoke-virtual {p0, p1, v0, v4}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V

    invoke-virtual {p0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0x18

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :pswitch_1b
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "NTLMv2 requires extended security (jcifs.smb.client.useExtendedSecurity must be true if jcifs.smb.lmCompatibility >= 3)"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public getUnicodeHash([B)[B
    .registers 3

    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    :goto_6
    return-object v0

    :cond_7
    sget v0, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    packed-switch v0, :pswitch_data_1e

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_6

    :pswitch_13
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    goto :goto_6

    :pswitch_1a
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_6

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method getUserSessionKey([B[BI)V
    .registers 7

    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    new-instance v0, Ljcifs/util/f;

    invoke-direct {v0}, Ljcifs/util/f;-><init>()V

    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/f;->update([B)V

    sget v1, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    packed-switch v1, :pswitch_data_9a

    invoke-virtual {v0}, Ljcifs/util/f;->digest()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/f;->update([B)V

    const/16 v1, 0x10

    invoke-virtual {v0, p2, p3, v1}, Ljcifs/util/f;->digest([BII)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_26} :catch_27

    goto :goto_4

    :catch_27
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_30
    :try_start_30
    invoke-virtual {v0}, Ljcifs/util/f;->digest()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/f;->update([B)V

    const/16 v1, 0x10

    invoke-virtual {v0, p2, p3, v1}, Ljcifs/util/f;->digest([BII)I

    goto :goto_4

    :pswitch_3d
    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    if-nez v1, :cond_4e

    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->RANDOM:Ljava/util/Random;

    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextBytes([B)V

    :cond_4e
    new-instance v1, Ljcifs/util/c;

    invoke-virtual {v0}, Ljcifs/util/f;->digest()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljcifs/util/c;-><init>([B)V

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-16LE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljcifs/util/c;->update([B)V

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-16LE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljcifs/util/c;->update([B)V

    invoke-virtual {v1}, Ljcifs/util/c;->digest()[B

    move-result-object v0

    new-instance v1, Ljcifs/util/c;

    invoke-direct {v1, v0}, Ljcifs/util/c;-><init>([B)V

    invoke-virtual {v1, p1}, Ljcifs/util/c;->update([B)V

    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    invoke-virtual {v1, v2}, Ljcifs/util/c;->update([B)V

    new-instance v2, Ljcifs/util/c;

    invoke-direct {v2, v0}, Ljcifs/util/c;-><init>([B)V

    invoke-virtual {v1}, Ljcifs/util/c;->digest()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljcifs/util/c;->update([B)V

    const/16 v0, 0x10

    invoke-virtual {v2, p2, p3, v0}, Ljcifs/util/c;->digest([BII)I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_97} :catch_27

    goto/16 :goto_4

    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
    .end packed-switch
.end method

.method public getUserSessionKey([B)[B
    .registers 5

    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_5

    :catch_f
    move-exception v1

    sget-object v2, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lez v2, :cond_5

    sget-object v2, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/e;

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_5
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Ljcifs/smb/NtlmPasswordAuthentication;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljcifs/smb/NtlmPasswordAuthentication;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
