.class public Ljcifs/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static DEFAULT_OEM_ENCODING:Ljava/lang/String;

.field private static log:Ljcifs/util/LogStream;

.field private static prp:Ljava/util/Properties;

.field public static socketCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, -0x1

    .line 48
    const/4 v6, 0x0

    sput v6, Ljcifs/Config;->socketCount:I

    .line 54
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    sput-object v6, Ljcifs/Config;->prp:Ljava/util/Properties;

    .line 56
    const-string v6, "Cp850"

    sput-object v6, Ljcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, in:Ljava/io/FileInputStream;
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v6

    sput-object v6, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    .line 66
    :try_start_16
    const-string v6, "jcifs.properties"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, filename:Ljava/lang/String;
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2b

    .line 68
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v1           #in:Ljava/io/FileInputStream;
    .local v2, in:Ljava/io/FileInputStream;
    move-object v1, v2

    .line 70
    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    :cond_2b
    invoke-static {v1}, Ljcifs/Config;->load(Ljava/io/InputStream;)V

    .line 71
    if-eqz v1, :cond_33

    .line 72
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_33} :catch_56

    .line 78
    .end local v0           #filename:Ljava/lang/String;
    :cond_33
    :goto_33
    const-string v6, "jcifs.util.loglevel"

    invoke-static {v6, v8}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v4

    .local v4, level:I
    if-eq v4, v8, :cond_3e

    .line 79
    invoke-static {v4}, Ljcifs/util/LogStream;->setLevel(I)V

    .line 83
    :cond_3e
    :try_start_3e
    const-string v6, ""

    sget-object v7, Ljcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_45
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3e .. :try_end_45} :catch_63

    .line 92
    :goto_45
    sget-object v6, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    sget v6, Ljcifs/util/LogStream;->level:I

    const/4 v7, 0x4

    if-lt v6, v7, :cond_55

    .line 94
    :try_start_4c
    sget-object v6, Ljcifs/Config;->prp:Ljava/util/Properties;

    sget-object v7, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    const-string v8, "JCIFS PROPERTIES"

    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_55} :catch_90

    .line 98
    :cond_55
    :goto_55
    return-void

    .line 73
    .end local v4           #level:I
    :catch_56
    move-exception v3

    .line 74
    .local v3, ioe:Ljava/io/IOException;
    sget-object v6, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    sget v6, Ljcifs/util/LogStream;->level:I

    if-lez v6, :cond_33

    .line 75
    sget-object v6, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {v3, v6}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_33

    .line 84
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v4       #level:I
    :catch_63
    move-exception v5

    .line 85
    .local v5, uee:Ljava/io/UnsupportedEncodingException;
    sget-object v6, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    sget v6, Ljcifs/util/LogStream;->level:I

    const/4 v7, 0x2

    if-lt v6, v7, :cond_8b

    .line 86
    sget-object v6, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING: The default OEM encoding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not appear to be supported by this JRE. The default encoding will be US-ASCII."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 89
    :cond_8b
    const-string v6, "US-ASCII"

    sput-object v6, Ljcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    goto :goto_45

    .line 95
    .end local v5           #uee:Ljava/io/UnsupportedEncodingException;
    :catch_90
    move-exception v6

    goto :goto_55
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .parameter "key"

    .prologue
    .line 195
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .parameter "key"
    .parameter "def"

    .prologue
    .line 313
    invoke-static {p0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, b:Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 315
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 317
    :cond_10
    return p1
.end method

.method public static getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 5
    .parameter "key"
    .parameter "def"

    .prologue
    .line 278
    sget-object v2, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, addr:Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 281
    :try_start_8
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object p1

    .line 289
    :cond_c
    :goto_c
    return-object p1

    .line 282
    :catch_d
    move-exception v1

    .line 283
    .local v1, uhe:Ljava/net/UnknownHostException;
    sget-object v2, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lez v2, :cond_c

    .line 284
    sget-object v2, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {v2, v0}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 285
    sget-object v2, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/net/UnknownHostException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_c
.end method

.method public static getInetAddressArray(Ljava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    .registers 11
    .parameter "key"
    .parameter "delim"
    .parameter "def"

    .prologue
    .line 327
    invoke-static {p0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, p:Ljava/lang/String;
    if-eqz v4, :cond_32

    .line 329
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v4, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .local v5, tok:Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    .line 331
    .local v3, len:I
    new-array v1, v3, [Ljava/net/InetAddress;

    .line 332
    .local v1, arr:[Ljava/net/InetAddress;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    if-ge v2, v3, :cond_33

    .line 333
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, addr:Ljava/lang/String;
    :try_start_18
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    aput-object v7, v1, v2
    :try_end_1e
    .catch Ljava/net/UnknownHostException; {:try_start_18 .. :try_end_1e} :catch_21

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 336
    :catch_21
    move-exception v6

    .line 337
    .local v6, uhe:Ljava/net/UnknownHostException;
    sget-object v7, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    sget v7, Ljcifs/util/LogStream;->level:I

    if-lez v7, :cond_32

    .line 338
    sget-object v7, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {v7, v0}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 339
    sget-object v7, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {v6, v7}, Ljava/net/UnknownHostException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 346
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #arr:[Ljava/net/InetAddress;
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v5           #tok:Ljava/util/StringTokenizer;
    .end local v6           #uhe:Ljava/net/UnknownHostException;
    .end local p2
    :cond_32
    :goto_32
    return-object p2

    .restart local v1       #arr:[Ljava/net/InetAddress;
    .restart local v2       #i:I
    .restart local v3       #len:I
    .restart local v5       #tok:Ljava/util/StringTokenizer;
    .restart local p2
    :cond_33
    move-object p2, v1

    .line 344
    goto :goto_32
.end method

.method public static getInt(Ljava/lang/String;)I
    .registers 5
    .parameter "key"

    .prologue
    .line 239
    sget-object v3, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v3, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, s:Ljava/lang/String;
    const/4 v1, -0x1

    .line 241
    .local v1, result:I
    if-eqz v2, :cond_d

    .line 243
    :try_start_9
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_e

    move-result v1

    .line 249
    :cond_d
    :goto_d
    return v1

    .line 244
    :catch_e
    move-exception v0

    .line 245
    .local v0, nfe:Ljava/lang/NumberFormatException;
    sget-object v3, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lez v3, :cond_d

    .line 246
    sget-object v3, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v3}, Ljava/lang/NumberFormatException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_d
.end method

.method public static getInt(Ljava/lang/String;I)I
    .registers 5
    .parameter "key"
    .parameter "def"

    .prologue
    .line 222
    sget-object v2, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_c

    .line 225
    :try_start_8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result p1

    .line 231
    :cond_c
    :goto_c
    return p1

    .line 226
    :catch_d
    move-exception v0

    .line 227
    .local v0, nfe:Ljava/lang/NumberFormatException;
    sget-object v2, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lez v2, :cond_c

    .line 228
    sget-object v2, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v2}, Ljava/lang/NumberFormatException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_c
.end method

.method public static getLocalHost()Ljava/net/InetAddress;
    .registers 5

    .prologue
    .line 292
    sget-object v2, Ljcifs/Config;->prp:Ljava/util/Properties;

    const-string v3, "jcifs.smb.client.laddr"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, addr:Ljava/lang/String;
    if-eqz v0, :cond_33

    .line 296
    :try_start_a
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v2

    .line 305
    :goto_e
    return-object v2

    .line 297
    :catch_f
    move-exception v1

    .line 298
    .local v1, uhe:Ljava/net/UnknownHostException;
    sget-object v2, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lez v2, :cond_33

    .line 299
    sget-object v2, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring jcifs.smb.client.laddr address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 300
    sget-object v2, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/net/UnknownHostException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 305
    .end local v1           #uhe:Ljava/net/UnknownHostException;
    :cond_33
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public static getLong(Ljava/lang/String;J)J
    .registers 6
    .parameter "key"
    .parameter "def"

    .prologue
    .line 259
    sget-object v2, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_c

    .line 262
    :try_start_8
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-wide p1

    .line 268
    :cond_c
    :goto_c
    return-wide p1

    .line 263
    :catch_d
    move-exception v0

    .line 264
    .local v0, nfe:Ljava/lang/NumberFormatException;
    sget-object v2, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lez v2, :cond_c

    .line 265
    sget-object v2, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v2}, Ljava/lang/NumberFormatException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_c
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "key"

    .prologue
    .line 212
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"
    .parameter "def"

    .prologue
    .line 204
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static list(Ljava/io/PrintStream;)V
    .registers 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->list(Ljava/io/PrintStream;)V

    .line 180
    return-void
.end method

.method public static load(Ljava/io/InputStream;)V
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    if-eqz p0, :cond_7

    .line 160
    sget-object v1, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 163
    :cond_7
    :try_start_7
    sget-object v1, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_10} :catch_11

    .line 168
    :cond_10
    :goto_10
    return-void

    .line 164
    :catch_11
    move-exception v0

    .line 165
    .local v0, se:Ljava/lang/SecurityException;
    sget-object v1, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_10

    .line 166
    sget-object v1, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    const-string v2, "SecurityException: jcifs will ignore System properties"

    invoke-virtual {v1, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public static registerSmbURLHandler()V
    .registers 5

    .prologue
    .line 118
    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, ver:Ljava/lang/String;
    const-string v2, "1.1."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "1.2."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 120
    :cond_16
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jcifs-0.7.0b4+ requires Java 1.3 or above. You are running "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_2f
    const-string v2, "java.protocol.handler.pkgs"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, pkgs:Ljava/lang/String;
    if-nez v0, :cond_3f

    .line 124
    const-string v2, "java.protocol.handler.pkgs"

    const-string v3, "jcifs"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    :cond_3e
    :goto_3e
    return-void

    .line 125
    :cond_3f
    const-string v2, "jcifs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3e

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|jcifs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v2, "java.protocol.handler.pkgs"

    invoke-static {v2, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3e
.end method

.method public static setProperties(Ljava/util/Properties;)V
    .registers 4
    .parameter "prp"

    .prologue
    .line 144
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1, p0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    sput-object v1, Ljcifs/Config;->prp:Ljava/util/Properties;

    .line 146
    :try_start_7
    sget-object v1, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_10} :catch_11

    .line 151
    :cond_10
    :goto_10
    return-void

    .line 147
    :catch_11
    move-exception v0

    .line 148
    .local v0, se:Ljava/lang/SecurityException;
    sget-object v1, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_10

    .line 149
    sget-object v1, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    const-string v2, "SecurityException: jcifs will ignore System properties"

    invoke-virtual {v1, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 187
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 3
    .parameter "out"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 172
    return-void
.end method
