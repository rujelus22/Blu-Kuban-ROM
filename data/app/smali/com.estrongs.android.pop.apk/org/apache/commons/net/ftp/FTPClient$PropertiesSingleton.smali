.class Lorg/apache/commons/net/ftp/FTPClient$PropertiesSingleton;
.super Ljava/lang/Object;


# static fields
.field static final PROPERTIES:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lorg/apache/commons/net/ftp/FTPClient;

    const-string v1, "/systemType.properties"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_16

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :try_start_10
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_20
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_19

    :try_start_13
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_25

    :cond_16
    :goto_16
    sput-object v0, Lorg/apache/commons/net/ftp/FTPClient$PropertiesSingleton;->PROPERTIES:Ljava/util/Properties;

    return-void

    :catch_19
    move-exception v2

    :try_start_1a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_16

    :catch_1e
    move-exception v1

    goto :goto_16

    :catchall_20
    move-exception v0

    :try_start_21
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_27

    :goto_24
    throw v0

    :catch_25
    move-exception v1

    goto :goto_16

    :catch_27
    move-exception v1

    goto :goto_24
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
