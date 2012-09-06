.class public Ljcifs/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field private static c:Ljava/util/Properties;

.field private static d:Ljcifs/util/e;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, -0x1

    const/4 v0, 0x0

    sput v0, Ljcifs/a;->a:I

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Ljcifs/a;->c:Ljava/util/Properties;

    const-string v0, "Cp850"

    sput-object v0, Ljcifs/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {}, Ljcifs/util/e;->a()Ljcifs/util/e;

    move-result-object v1

    sput-object v1, Ljcifs/a;->d:Ljcifs/util/e;

    :try_start_16
    const-string v1, "jcifs.properties"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2a

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :cond_2a
    invoke-static {v0}, Ljcifs/a;->a(Ljava/io/InputStream;)V

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_32} :catch_55

    :cond_32
    :goto_32
    const-string v0, "jcifs.util.loglevel"

    invoke-static {v0, v4}, Ljcifs/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_3d

    invoke-static {v0}, Ljcifs/util/e;->a(I)V

    :cond_3d
    :try_start_3d
    const-string v0, ""

    sget-object v1, Ljcifs/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_44
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3d .. :try_end_44} :catch_62

    :goto_44
    sget-object v0, Ljcifs/a;->d:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_54

    :try_start_4b
    sget-object v0, Ljcifs/a;->c:Ljava/util/Properties;

    sget-object v1, Ljcifs/a;->d:Ljcifs/util/e;

    const-string v2, "JCIFS PROPERTIES"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_54} :catch_8f

    :cond_54
    :goto_54
    return-void

    :catch_55
    move-exception v0

    sget-object v1, Ljcifs/a;->d:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    if-lez v1, :cond_32

    sget-object v1, Ljcifs/a;->d:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_32

    :catch_62
    move-exception v0

    sget-object v0, Ljcifs/a;->d:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_8a

    sget-object v0, Ljcifs/a;->d:Ljcifs/util/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING: The default OEM encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljcifs/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not appear to be supported by this JRE. The default encoding will be US-ASCII."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    :cond_8a
    const-string v0, "US-ASCII"

    sput-object v0, Ljcifs/a;->b:Ljava/lang/String;

    goto :goto_44

    :catch_8f
    move-exception v0

    goto :goto_54
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .registers 4

    sget-object v0, Ljcifs/a;->c:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result p1

    :cond_c
    :goto_c
    return p1

    :catch_d
    move-exception v0

    sget-object v1, Ljcifs/a;->d:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    if-lez v1, :cond_c

    sget-object v1, Ljcifs/a;->d:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljava/lang/NumberFormatException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_c
.end method

.method public static a(Ljava/lang/String;J)J
    .registers 5

    sget-object v0, Ljcifs/a;->c:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    :try_start_8
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-wide p1

    :cond_c
    :goto_c
    return-wide p1

    :catch_d
    move-exception v0

    sget-object v1, Ljcifs/a;->d:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    if-lez v1, :cond_c

    sget-object v1, Ljcifs/a;->d:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljava/lang/NumberFormatException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_c
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Ljcifs/a;->c:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Ljcifs/a;->c:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 5

    sget-object v0, Ljcifs/a;->c:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    :try_start_8
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_b
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object p1

    :cond_c
    :goto_c
    return-object p1

    :catch_d
    move-exception v1

    sget-object v2, Ljcifs/a;->d:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lez v2, :cond_c

    sget-object v2, Ljcifs/a;->d:Ljcifs/util/e;

    invoke-virtual {v2, v0}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    sget-object v0, Ljcifs/a;->d:Ljcifs/util/e;

    invoke-virtual {v1, v0}, Ljava/net/UnknownHostException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_c
.end method

.method public static a()V
    .registers 4

    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "1.2."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_16
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jcifs-0.7.0b4+ requires Java 1.3 or above. You are running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2f
    const-string v0, "java.protocol.handler.pkgs"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3f

    const-string v0, "java.protocol.handler.pkgs"

    const-string v1, "jcifs"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    const-string v1, "jcifs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|jcifs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.protocol.handler.pkgs"

    invoke-static {v1, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3e
.end method

.method public static a(Ljava/io/InputStream;)V
    .registers 3

    if-eqz p0, :cond_7

    sget-object v0, Ljcifs/a;->c:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    :cond_7
    :try_start_7
    sget-object v0, Ljcifs/a;->c:Ljava/util/Properties;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_10} :catch_11

    :cond_10
    :goto_10
    return-void

    :catch_11
    move-exception v0

    sget-object v0, Ljcifs/a;->d:Ljcifs/util/e;

    sget v0, Ljcifs/util/e;->a:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_10

    sget-object v0, Ljcifs/a;->d:Ljcifs/util/e;

    const-string v1, "SecurityException: jcifs will ignore System properties"

    invoke-virtual {v0, v1}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public static a(Ljava/lang/String;Z)Z
    .registers 4

    invoke-static {p0}, Ljcifs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    :cond_10
    return p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    .registers 9

    invoke-static {p0}, Ljcifs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v0, v3, [Ljava/net/InetAddress;

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v3, :cond_33

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    :try_start_18
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    aput-object v5, v0, v1
    :try_end_1e
    .catch Ljava/net/UnknownHostException; {:try_start_18 .. :try_end_1e} :catch_21

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :catch_21
    move-exception v0

    sget-object v1, Ljcifs/a;->d:Ljcifs/util/e;

    sget v1, Ljcifs/util/e;->a:I

    if-lez v1, :cond_32

    sget-object v1, Ljcifs/a;->d:Ljcifs/util/e;

    invoke-virtual {v1, v4}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    sget-object v1, Ljcifs/a;->d:Ljcifs/util/e;

    invoke-virtual {v0, v1}, Ljava/net/UnknownHostException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_32
    :goto_32
    return-object p2

    :cond_33
    move-object p2, v0

    goto :goto_32
.end method

.method public static b()Ljava/net/InetAddress;
    .registers 5

    sget-object v0, Ljcifs/a;->c:Ljava/util/Properties;

    const-string v1, "jcifs.smb.client.laddr"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    :try_start_a
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v1

    sget-object v2, Ljcifs/a;->d:Ljcifs/util/e;

    sget v2, Ljcifs/util/e;->a:I

    if-lez v2, :cond_33

    sget-object v2, Ljcifs/a;->d:Ljcifs/util/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring jcifs.smb.client.laddr address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljcifs/util/e;->println(Ljava/lang/String;)V

    sget-object v0, Ljcifs/a;->d:Ljcifs/util/e;

    invoke-virtual {v1, v0}, Ljava/net/UnknownHostException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_33
    const/4 v0, 0x0

    goto :goto_e
.end method
