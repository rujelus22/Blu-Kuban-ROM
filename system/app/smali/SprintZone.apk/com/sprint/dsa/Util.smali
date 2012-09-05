.class public Lcom/sprint/dsa/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final DEBUG:Z

.field private static DEFAULT_EXPIRATION:J

.field public static EMULATOR:Z

.field public static FACTORY_DEFAULT:Z

.field public static FWVER:Ljava/lang/String;

.field private static final HEX_CHAR_TABLE:[B

.field public static MAKE:Ljava/lang/String;

.field public static MANUAL_RUN_DATA_TEST:Z

.field public static MODEL:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field public static TEST_URL:Ljava/lang/String;

.field public static final USE_DEBUG_SERVERS:Z

.field public static USE_LOCAL_SZA:Z

.field public static nai:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 28
    const-string v0, "SprintZone"

    sput-object v0, Lcom/sprint/dsa/Util;->TAG:Ljava/lang/String;

    .line 29
    const-wide v0, 0x9a7ec800L

    sput-wide v0, Lcom/sprint/dsa/Util;->DEFAULT_EXPIRATION:J

    .line 33
    sput-boolean v3, Lcom/sprint/dsa/Util;->EMULATOR:Z

    .line 34
    sput-boolean v3, Lcom/sprint/dsa/Util;->FACTORY_DEFAULT:Z

    .line 36
    sput-boolean v3, Lcom/sprint/dsa/Util;->USE_LOCAL_SZA:Z

    .line 37
    sput-boolean v3, Lcom/sprint/dsa/Util;->MANUAL_RUN_DATA_TEST:Z

    .line 39
    sput-object v2, Lcom/sprint/dsa/Util;->MODEL:Ljava/lang/String;

    .line 40
    sput-object v2, Lcom/sprint/dsa/Util;->MAKE:Ljava/lang/String;

    .line 41
    sput-object v2, Lcom/sprint/dsa/Util;->FWVER:Ljava/lang/String;

    .line 42
    sput-object v2, Lcom/sprint/dsa/Util;->nai:Ljava/lang/String;

    .line 43
    sput-object v2, Lcom/sprint/dsa/Util;->TEST_URL:Ljava/lang/String;

    .line 291
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/sprint/dsa/Util;->HEX_CHAR_TABLE:[B

    .line 27
    return-void

    .line 291
    nop

    :array_2a
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 82
    .local v0, now:Ljava/util/Date;
    invoke-static {v0}, Lcom/sprint/dsa/Util;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .registers 3
    .parameter "d"

    .prologue
    .line 76
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 7
    .parameter "value"

    .prologue
    .line 144
    const/4 v3, 0x0

    .line 145
    .local v3, pkgName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 148
    .local v0, clsName:Ljava/lang/String;
    const-string v4, "com.sprint.dsa"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 149
    const-string v3, "com.sprint.dsa"

    .line 150
    move-object v0, p0

    .line 170
    :cond_d
    :goto_d
    if-eqz v3, :cond_4d

    if-eqz v0, :cond_4d

    .line 171
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_16
    return-object v1

    .line 152
    :cond_17
    const-string v4, "com.google.android.gsf"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 153
    const-string v3, "com.google.android.gsf"

    .line 154
    move-object v0, p0

    goto :goto_d

    .line 157
    :cond_23
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, parts:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_d

    .line 159
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 160
    const/4 v4, 0x1

    aget-object v0, v2, v4

    .line 162
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 174
    .end local v2           #parts:[Ljava/lang/String;
    :cond_4d
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public static getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .registers 7
    .parameter "context"
    .parameter "pkgName"

    .prologue
    const/4 v3, 0x0

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 200
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_6
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 201
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_c} :catch_d

    .line 204
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :goto_c
    return v3

    .line 202
    :catch_d
    move-exception v0

    .line 204
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_c
.end method

.method public static getSystemUpdateIntent()Landroid/content/Intent;
    .registers 6

    .prologue
    .line 133
    const-string v2, "com.google.android.gsf"

    .line 134
    .local v2, pkgName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".update.SystemUpdateActivity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, clsName:Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v1, compName:Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v3, update:Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 140
    return-object v3
.end method

.method public static hexMeidToDec(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "input"

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 243
    const/4 v3, 0x0

    .line 244
    .local v3, firstPart:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 245
    .local v5, secondPart:Ljava/lang/StringBuffer;
    const/16 v2, 0x8

    .line 246
    .local v2, HEX_MEID_1ST_LEN:I
    const/16 v0, 0xa

    .line 247
    .local v0, DEC_MEID_1ST_LEN:I
    const/16 v1, 0x8

    .line 251
    .local v1, DEC_MEID_2ND_LEN:I
    new-instance v3, Ljava/lang/StringBuffer;

    .end local v3           #firstPart:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 252
    .restart local v3       #firstPart:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5           #secondPart:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 255
    .restart local v5       #secondPart:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v9, v6, v7}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v9, v6, v7}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    :goto_45
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_74

    .line 262
    :goto_4d
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lt v6, v10, :cond_7a

    .line 266
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .local v4, i:I
    :goto_57
    const/4 v6, 0x6

    if-lt v4, v6, :cond_80

    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 260
    .end local v4           #i:I
    :cond_74
    const-string v6, "0"

    invoke-virtual {v3, v9, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_45

    .line 263
    :cond_7a
    const-string v6, "0"

    invoke-virtual {v5, v9, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4d

    .line 267
    .restart local v4       #i:I
    :cond_80
    const-string v6, "0"

    invoke-virtual {v5, v9, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    add-int/lit8 v4, v4, 0x1

    goto :goto_57
.end method

.method public static join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "delim"
    .parameter "values"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sprint/dsa/Util;->join(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "delim"
    .parameter "values"
    .parameter "nullValue"

    .prologue
    .line 107
    if-nez p1, :cond_5

    const-string v3, ""

    .line 122
    :goto_4
    return-object v3

    .line 109
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 112
    .local v2, value:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    array-length v3, p1

    if-lt v0, v3, :cond_16

    .line 122
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 113
    :cond_16
    aget-object v2, p1, v0

    .line 114
    if-nez v2, :cond_1b

    move-object v2, p2

    .line 116
    :cond_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_26

    .line 118
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "s"

    .prologue
    .line 86
    const/4 v2, 0x0

    .line 87
    .local v2, m:Ljava/security/MessageDigest;
    if-nez p0, :cond_6

    const-string v1, ""

    .line 98
    :goto_5
    return-object v1

    .line 89
    :cond_6
    :try_start_6
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 91
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_27} :catch_29
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_27} :catch_2d

    move-result-object v1

    .line 92
    .local v1, hash:Ljava/lang/String;
    goto :goto_5

    .line 93
    .end local v1           #hash:Ljava/lang/String;
    :catch_29
    move-exception v0

    .line 95
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v1, ""

    goto :goto_5

    .line 96
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_2d
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_5
.end method

.method public static parseExpirationDate(Ljava/lang/String;)J
    .registers 10
    .parameter "exp"

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/sprint/dsa/Util;->DEFAULT_EXPIRATION:J

    add-long v0, v5, v7

    .line 55
    .local v0, expiration:J
    if-eqz p0, :cond_2a

    const-string v5, "0"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 58
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 59
    .local v3, formatter:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/text/ParsePosition;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/text/ParsePosition;-><init>(I)V

    .line 60
    .local v4, pos:Ljava/text/ParsePosition;
    const/4 v2, 0x0

    .line 62
    .local v2, expirationDate:Ljava/util/Date;
    :try_start_20
    invoke-virtual {v3, p0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 63
    if-eqz v2, :cond_2a

    .line 64
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_29} :catch_2b

    move-result-wide v0

    .line 72
    .end local v2           #expirationDate:Ljava/util/Date;
    .end local v3           #formatter:Ljava/text/SimpleDateFormat;
    .end local v4           #pos:Ljava/text/ParsePosition;
    :cond_2a
    :goto_2a
    return-wide v0

    .line 67
    .restart local v2       #expirationDate:Ljava/util/Date;
    .restart local v3       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v4       #pos:Ljava/text/ParsePosition;
    :catch_2b
    move-exception v5

    goto :goto_2a
.end method

.method public static setFactoryDefault(Landroid/content/Context;)V
    .registers 9
    .parameter "cx"

    .prologue
    .line 274
    new-instance v4, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v4, p0}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    .line 276
    .local v4, sp:Lcom/sprint/internal/SystemProperties;
    const/16 v5, 0x1e

    :try_start_7
    invoke-virtual {v4, v5}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, MEID:Ljava/lang/String;
    invoke-static {v0}, Lcom/sprint/dsa/Util;->hexMeidToDec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, decMEID:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "000000"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sprint/internal/SystemProperties;->setString(ILjava/lang/String;)V

    .line 281
    const/16 v5, 0x23

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "000000"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sprint/internal/SystemProperties;->setString(ILjava/lang/String;)V

    .line 282
    const/4 v5, 0x2

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/sprint/internal/SystemProperties;->setString(ILjava/lang/String;)V

    .line 283
    const/16 v5, 0x2b

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/sprint/internal/SystemProperties;->setString(ILjava/lang/String;)V

    .line 284
    new-instance v3, Lcom/sprint/internal/Platform;

    invoke-direct {v3, p0}, Lcom/sprint/internal/Platform;-><init>(Landroid/content/Context;)V

    .line 285
    .local v3, pf:Lcom/sprint/internal/Platform;
    invoke-virtual {v3}, Lcom/sprint/internal/Platform;->reboot()V
    :try_end_55
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_7 .. :try_end_55} :catch_56

    .line 289
    .end local v0           #MEID:Ljava/lang/String;
    .end local v1           #decMEID:Ljava/lang/String;
    .end local v3           #pf:Lcom/sprint/internal/Platform;
    :goto_55
    return-void

    .line 286
    :catch_56
    move-exception v2

    .line 287
    .local v2, e:Lcom/sprint/internal/SystemPropertiesException;
    sget-object v5, Lcom/sprint/dsa/Util;->TAG:Ljava/lang/String;

    const-string v6, "System Prop error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method

.method public static showMessageDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .registers 7
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 187
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 189
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 190
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 192
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 193
    return-object v1
.end method

.method public static stringEquals(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4
    .parameter "s1"
    .parameter "s2"
    .parameter "ignoreCase"

    .prologue
    .line 213
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 214
    const/4 v0, 0x1

    .line 223
    :goto_5
    return v0

    .line 216
    :cond_6
    if-eqz p0, :cond_a

    if-nez p1, :cond_c

    .line 217
    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    .line 220
    :cond_c
    if-eqz p2, :cond_13

    .line 221
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5

    .line 223
    :cond_13
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static stripQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 229
    if-nez p0, :cond_3

    .line 238
    :cond_2
    :goto_2
    return-object p0

    .line 231
    :cond_3
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 232
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 234
    :cond_10
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method public static toHexString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "raw"

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 312
    .local v0, result:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sprint/dsa/Util;->toHexString([B)Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    .line 316
    :goto_9
    return-object v0

    .line 313
    :catch_a
    move-exception v1

    goto :goto_9
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 10
    .parameter "raw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 298
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    new-array v1, v5, [B

    .line 299
    .local v1, hex:[B
    const/4 v2, 0x0

    .line 301
    .local v2, index:I
    array-length v6, p0

    const/4 v5, 0x0

    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    :goto_9
    if-lt v5, v6, :cond_13

    .line 306
    new-instance v5, Ljava/lang/String;

    const-string v6, "ASCII"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v5

    .line 301
    :cond_13
    aget-byte v0, p0, v5

    .line 302
    .local v0, b:B
    and-int/lit16 v4, v0, 0xff

    .line 303
    .local v4, v:I
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    sget-object v7, Lcom/sprint/dsa/Util;->HEX_CHAR_TABLE:[B

    ushr-int/lit8 v8, v4, 0x4

    aget-byte v7, v7, v8

    aput-byte v7, v1, v3

    .line 304
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    sget-object v7, Lcom/sprint/dsa/Util;->HEX_CHAR_TABLE:[B

    and-int/lit8 v8, v4, 0xf

    aget-byte v7, v7, v8

    aput-byte v7, v1, v2

    .line 301
    add-int/lit8 v5, v5, 0x1

    goto :goto_9
.end method
