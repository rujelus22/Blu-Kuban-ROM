.class public Lcom/estrongs/android/pop/fs/FtpFileSystem;
.super Ljava/lang/Object;


# static fields
.field public static a:[Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/ftp/FTPClient;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/ftp/FTPClient;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/fs/FtpFileSystem;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/fs/FtpFileSystem;->d:Ljava/util/HashMap;

    sput-boolean v3, Lcom/estrongs/android/pop/fs/FtpFileSystem;->e:Z

    sput v2, Lcom/estrongs/android/pop/fs/FtpFileSystem;->f:I

    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UTF-8"

    aput-object v1, v0, v2

    const-string v1, "GBK"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "ISO-8859-1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Windows-1252"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EUC-KR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EUC-JP"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Shift_JIS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ISO-2022-JP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "BIG5"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Windows-1251"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ISO-8859-2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ISO-8859-3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ISO-8859-4"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ISO-8859-5"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ISO-8859-6"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ISO-8859-7"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ISO-8859-8"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ISO-8859-9"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ISO-8859-10"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ISO-8859-11"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ISO-8859-13"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ISO-8859-14"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ISO-8859-15"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ISO-8859-16"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "ASCII"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "UTF-16LE"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "UTF-16BE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;J)Ljava/io/InputStream;
    .registers 9

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    :try_start_a
    invoke-static {v3, v1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_fe
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_a .. :try_end_d} :catch_9a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_cf

    move-result-object v1

    if-nez v1, :cond_3c

    if-nez v0, :cond_3b

    if-eqz v1, :cond_1a

    :try_start_14
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_1a
    const/4 v1, 0x1

    invoke-static {v3, v1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_36

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_36
    new-instance v2, Lcom/estrongs/android/pop/a/c;

    invoke-direct {v2, v1}, Lcom/estrongs/android/pop/a/c;-><init>(Ljava/io/InputStream;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3b} :catch_153

    :cond_3b
    :goto_3b
    return-object v0

    :cond_3c
    :try_start_3c
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->setRestartOffset(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setKeepAlive(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setRemoteVerificationEnabled(Z)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setFileTransferMode(I)Z

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4f
    .catchall {:try_start_3c .. :try_end_4f} :catchall_138
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3c .. :try_end_4f} :catch_147
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_4f} :catch_145

    move-result-object v0

    if-nez v0, :cond_61

    :try_start_52
    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_61
    new-instance v2, Lcom/estrongs/android/pop/a/c;

    invoke-direct {v2, v0}, Lcom/estrongs/android/pop/a/c;-><init>(Ljava/io/InputStream;)V
    :try_end_66
    .catchall {:try_start_52 .. :try_end_66} :catchall_13d
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_52 .. :try_end_66} :catch_14d
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_66} :catch_145

    if-nez v2, :cond_156

    if-eqz v1, :cond_70

    :try_start_6a
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_70
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    if-eqz v1, :cond_156

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_7a} :catch_12f

    move-result-object v0

    if-nez v0, :cond_8c

    :try_start_7d
    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_8c
    new-instance v2, Lcom/estrongs/android/pop/a/c;

    invoke-direct {v2, v0}, Lcom/estrongs/android/pop/a/c;-><init>(Ljava/io/InputStream;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_91} :catch_133

    move-object v0, v2

    :cond_92
    :goto_92
    if-eqz v0, :cond_3b

    sget-object v2, Lcom/estrongs/android/pop/fs/FtpFileSystem;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    :catch_9a
    move-exception v1

    move-object v1, v0

    :goto_9c
    if-nez v1, :cond_159

    if-eqz v0, :cond_a6

    :try_start_a0
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_a6
    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v0

    if-eqz v0, :cond_159

    invoke-virtual {v0, v4}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_c2

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_c2
    new-instance v2, Lcom/estrongs/android/pop/a/c;

    invoke-direct {v2, v1}, Lcom/estrongs/android/pop/a/c;-><init>(Ljava/io/InputStream;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_c7} :catch_ca

    move-object v1, v0

    move-object v0, v2

    goto :goto_92

    :catch_ca
    move-exception v2

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_92

    :catch_cf
    move-exception v1

    move-object v1, v0

    :goto_d1
    if-nez v0, :cond_92

    if-eqz v1, :cond_db

    :try_start_d5
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_db
    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    if-eqz v1, :cond_92

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_f7

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_f7
    new-instance v2, Lcom/estrongs/android/pop/a/c;

    invoke-direct {v2, v0}, Lcom/estrongs/android/pop/a/c;-><init>(Ljava/io/InputStream;)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_fc} :catch_142

    move-object v0, v2

    goto :goto_92

    :catchall_fe
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_103
    if-nez v2, :cond_12e

    if-eqz v1, :cond_10d

    :try_start_107
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_10d
    const/4 v1, 0x1

    invoke-static {v3, v1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v2

    if-eqz v2, :cond_12e

    invoke-virtual {v2, v4}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_129

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_129
    new-instance v2, Lcom/estrongs/android/pop/a/c;

    invoke-direct {v2, v1}, Lcom/estrongs/android/pop/a/c;-><init>(Ljava/io/InputStream;)V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_12e} :catch_136

    :cond_12e
    :goto_12e
    throw v0

    :catch_12f
    move-exception v0

    move-object v0, v2

    goto/16 :goto_92

    :catch_133
    move-exception v2

    goto/16 :goto_92

    :catch_136
    move-exception v1

    goto :goto_12e

    :catchall_138
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_103

    :catchall_13d
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_103

    :catch_142
    move-exception v2

    goto/16 :goto_92

    :catch_145
    move-exception v2

    goto :goto_d1

    :catch_147
    move-exception v2

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_9c

    :catch_14d
    move-exception v2

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_9c

    :catch_153
    move-exception v1

    goto/16 :goto_3b

    :cond_156
    move-object v0, v2

    goto/16 :goto_92

    :cond_159
    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_92
.end method

.method private static a(Lorg/apache/commons/net/ftp/FTPFile;)Ljava/lang/String;
    .registers 8

    const-string v1, ""

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b:Ljava/lang/String;

    if-nez v0, :cond_aa

    const-string v0, "MM/dd/yyyy"

    :goto_e
    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_ae

    const-string v0, ""

    :goto_1e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " | "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    :try_start_3a
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_cd
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_49} :catch_b8

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " | "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_df

    const-string v0, "d"

    :goto_7b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "r"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "w"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_aa
    sget-object v0, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b:Ljava/lang/String;

    goto/16 :goto_e

    :cond_ae
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e

    :catch_b8
    move-exception v0

    :try_start_b9
    const-string v0, "01/01/70"
    :try_end_bb
    .catchall {:try_start_b9 .. :try_end_bb} :catchall_cd

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5b

    :catchall_cd
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    throw v0

    :cond_df
    const-string v0, "-"

    goto :goto_7b
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/estrongs/android/pop/d/g;)Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/estrongs/android/pop/d/g;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->k()I

    move-result v0

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->l()I

    move-result v5

    if-nez v0, :cond_ad

    new-instance v0, Lcom/estrongs/android/pop/b/d;

    invoke-direct {v0, v1, v5}, Lcom/estrongs/android/pop/b/d;-><init>(Ljava/util/Map;I)V

    move-object v2, v0

    :goto_26
    if-eqz v2, :cond_cc

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    :goto_2d
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/pop/f;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_105

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_105

    new-instance v4, Lcom/estrongs/android/pop/g;

    invoke-direct {v4, v2}, Lcom/estrongs/android/pop/g;-><init>(Ljava/util/Map;)V

    :goto_42
    :try_start_42
    const-string v8, "recursion"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_51} :catch_d3

    move-result v8

    :goto_52
    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->b()I

    move-result v2

    if-eq v2, v9, :cond_d7

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->j()Z

    move-result v2

    if-nez v2, :cond_d7

    :goto_66
    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->m()Z

    move-result v7

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/estrongs/android/pop/c;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/estrongs/android/pop/c;->i(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/estrongs/android/pop/fs/FtpFileSystem;->e:Z

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/estrongs/android/pop/c;->k(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/estrongs/android/pop/fs/FtpFileSystem;->f:I

    :cond_8c
    if-eqz p5, :cond_91

    invoke-interface {p5}, Lcom/estrongs/android/pop/d/g;->a()V

    :cond_91
    :try_start_91
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    invoke-static {v2, v9}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_99
    .catchall {:try_start_91 .. :try_end_99} :catchall_eb
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_99} :catch_d9

    move-result-object v2

    move-object v3, p1

    move-object v9, p5

    :try_start_9c
    invoke-static/range {v0 .. v9}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/util/Map;Ljava/util/HashMap;Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;Ljava/io/FileFilter;IZZZLcom/estrongs/android/pop/d/g;)V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_ff
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_102

    if-eqz v2, :cond_a7

    :try_start_a1
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a7} :catch_fa

    :cond_a7
    :goto_a7
    if-eqz p5, :cond_ac

    invoke-interface {p5}, Lcom/estrongs/android/pop/d/g;->b()V

    :cond_ac
    return-object v0

    :cond_ad
    if-ne v0, v7, :cond_b7

    new-instance v0, Lcom/estrongs/android/pop/b/e;

    invoke-direct {v0, v1, v5}, Lcom/estrongs/android/pop/b/e;-><init>(Ljava/util/Map;I)V

    move-object v2, v0

    goto/16 :goto_26

    :cond_b7
    if-ne v0, v9, :cond_c1

    new-instance v0, Lcom/estrongs/android/pop/b/c;

    invoke-direct {v0, v1, v5}, Lcom/estrongs/android/pop/b/c;-><init>(Ljava/util/Map;I)V

    move-object v2, v0

    goto/16 :goto_26

    :cond_c1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_108

    new-instance v0, Lcom/estrongs/android/pop/b/b;

    invoke-direct {v0, v1, v5}, Lcom/estrongs/android/pop/b/b;-><init>(Ljava/util/Map;I)V

    move-object v2, v0

    goto/16 :goto_26

    :cond_cc
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_2d

    :catch_d3
    move-exception v2

    move v8, v6

    goto/16 :goto_52

    :cond_d7
    move v6, v7

    goto :goto_66

    :catch_d9
    move-exception v1

    :goto_da
    :try_start_da
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_eb

    if-eqz v3, :cond_a7

    :try_start_df
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e5} :catch_e6

    goto :goto_a7

    :catch_e6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a7

    :catchall_eb
    move-exception v0

    :goto_ec
    if-eqz v3, :cond_f4

    :try_start_ee
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f4} :catch_f5

    :cond_f4
    :goto_f4
    throw v0

    :catch_f5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f4

    :catch_fa
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a7

    :catchall_ff
    move-exception v0

    move-object v3, v2

    goto :goto_ec

    :catch_102
    move-exception v1

    move-object v3, v2

    goto :goto_da

    :cond_105
    move-object v4, v3

    goto/16 :goto_42

    :cond_108
    move-object v2, v3

    goto/16 :goto_26
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/Map;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/g;->c(Ljava/lang/String;)Lcom/estrongs/android/util/h;

    move-result-object v13

    if-eqz v13, :cond_16

    iget-boolean v2, v13, Lcom/estrongs/android/util/h;->e:Z

    if-nez v2, :cond_10

    iget-boolean v2, v13, Lcom/estrongs/android/util/h;->b:Z

    if-eqz v2, :cond_16

    :cond_10
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_15
    :goto_15
    return-object v2

    :cond_16
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/c;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/c;->i(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/estrongs/android/pop/fs/FtpFileSystem;->e:Z

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/c;->k(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/estrongs/android/pop/fs/FtpFileSystem;->f:I

    :cond_3a
    :try_start_3a
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_310
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3a .. :try_end_42} :catch_332
    .catch Lorg/apache/commons/net/ftp/parser/ParserInitializationException; {:try_start_3a .. :try_end_42} :catch_32c
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_42} :catch_328
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3a .. :try_end_42} :catch_31d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_42} :catch_314

    move-result-object v4

    if-nez v4, :cond_5c

    :try_start_45
    new-instance v2, Ljava/net/ConnectException;

    invoke-direct {v2}, Ljava/net/ConnectException;-><init>()V

    throw v2
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_17c
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_45 .. :try_end_4b} :catch_4b
    .catch Lorg/apache/commons/net/ftp/parser/ParserInitializationException; {:try_start_45 .. :try_end_4b} :catch_73
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4b} :catch_177
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_45 .. :try_end_4b} :catch_323
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_4b} :catch_319

    :catch_4b
    move-exception v2

    move-object v3, v2

    move-object v2, v5

    :goto_4e
    :try_start_4e
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_17c

    if-eqz v4, :cond_15

    :try_start_53
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_59} :catch_5a

    goto :goto_15

    :catch_5a
    move-exception v3

    goto :goto_15

    :cond_5c
    :try_start_5c
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v2

    const/16 v3, 0x226

    if-ne v2, v3, :cond_84

    new-instance v2, Ljava/io/IOException;

    const-string v3, "550"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_73
    .catchall {:try_start_5c .. :try_end_73} :catchall_17c
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_5c .. :try_end_73} :catch_4b
    .catch Lorg/apache/commons/net/ftp/parser/ParserInitializationException; {:try_start_5c .. :try_end_73} :catch_73
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_73} :catch_177
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_5c .. :try_end_73} :catch_323
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_73} :catch_319

    :catch_73
    move-exception v2

    move-object v3, v2

    move-object v2, v5

    :goto_76
    :try_start_76
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_17c

    if-eqz v4, :cond_15

    :try_start_7b
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_81} :catch_82

    goto :goto_15

    :catch_82
    move-exception v3

    goto :goto_15

    :cond_84
    const/4 v6, 0x0

    :try_start_85
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->k()I

    move-result v14

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->l()I

    move-result v7

    const/4 v2, 0x0

    if-nez v14, :cond_12d

    new-instance v6, Lcom/estrongs/android/pop/b/d;

    invoke-direct {v6, v3, v7}, Lcom/estrongs/android/pop/b/d;-><init>(Ljava/util/Map;I)V

    move-object v11, v2

    move-object v12, v3

    move-object v2, v6

    :goto_a5
    if-eqz v2, :cond_170

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V
    :try_end_ac
    .catchall {:try_start_85 .. :try_end_ac} :catchall_17c
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_85 .. :try_end_ac} :catch_4b
    .catch Lorg/apache/commons/net/ftp/parser/ParserInitializationException; {:try_start_85 .. :try_end_ac} :catch_73
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_ac} :catch_177
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_85 .. :try_end_ac} :catch_323
    .catch Ljava/lang/IllegalArgumentException; {:try_start_85 .. :try_end_ac} :catch_319

    :goto_ac
    const/4 v2, 0x0

    :try_start_ad
    check-cast v2, [Lorg/apache/commons/net/ftp/FTPFile;

    const-string v2, "."

    invoke-virtual {v4, v2}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v2

    if-eqz v2, :cond_d1

    array-length v5, v2

    if-eqz v5, :cond_d1

    array-length v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_33b

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33b

    :cond_d1
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v2

    move-object v10, v2

    :goto_d6
    if-nez p3, :cond_186

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->m()Z

    move-result v2

    if-nez v2, :cond_186

    const/4 v2, 0x0

    move v9, v2

    :goto_e4
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->b()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_18a

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->j()Z

    move-result v2

    if-nez v2, :cond_18a

    const/4 v2, 0x0

    move v8, v2

    :goto_fb
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->V()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b:Ljava/lang/String;

    if-eqz v10, :cond_122

    array-length v15, v10

    const/4 v2, 0x0

    move v7, v2

    :goto_10a
    if-lt v7, v15, :cond_18e

    if-eqz v11, :cond_122

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_122

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_11f
    .catchall {:try_start_ad .. :try_end_11f} :catchall_17c
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_ad .. :try_end_11f} :catch_201
    .catch Lorg/apache/commons/net/ftp/parser/ParserInitializationException; {:try_start_ad .. :try_end_11f} :catch_228
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_11f} :catch_177
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_ad .. :try_end_11f} :catch_25b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ad .. :try_end_11f} :catch_296

    move-result v2

    if-nez v2, :cond_2f3

    :cond_122
    if-eqz v4, :cond_338

    :try_start_124
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_12a} :catch_309

    move-object v2, v3

    goto/16 :goto_15

    :cond_12d
    const/4 v8, 0x1

    if-ne v14, v8, :cond_13a

    :try_start_130
    new-instance v6, Lcom/estrongs/android/pop/b/e;

    invoke-direct {v6, v3, v7}, Lcom/estrongs/android/pop/b/e;-><init>(Ljava/util/Map;I)V

    move-object v11, v2

    move-object v12, v3

    move-object v2, v6

    goto/16 :goto_a5

    :cond_13a
    const/4 v8, 0x2

    if-ne v14, v8, :cond_147

    new-instance v6, Lcom/estrongs/android/pop/b/c;

    invoke-direct {v6, v3, v7}, Lcom/estrongs/android/pop/b/c;-><init>(Ljava/util/Map;I)V

    move-object v11, v2

    move-object v12, v3

    move-object v2, v6

    goto/16 :goto_a5

    :cond_147
    const/4 v8, 0x3

    if-ne v14, v8, :cond_154

    new-instance v6, Lcom/estrongs/android/pop/b/b;

    invoke-direct {v6, v3, v7}, Lcom/estrongs/android/pop/b/b;-><init>(Ljava/util/Map;I)V

    move-object v11, v2

    move-object v12, v3

    move-object v2, v6

    goto/16 :goto_a5

    :cond_154
    const/4 v8, 0x4

    if-ne v14, v8, :cond_33e

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/ah;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Lcom/estrongs/android/pop/b/f;

    invoke-direct {v6, v3, v7}, Lcom/estrongs/android/pop/b/f;-><init>(Ljava/util/Map;I)V

    move-object v11, v2

    move-object v12, v3

    move-object v2, v6

    goto/16 :goto_a5

    :cond_170
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_175
    .catchall {:try_start_130 .. :try_end_175} :catchall_17c
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_130 .. :try_end_175} :catch_4b
    .catch Lorg/apache/commons/net/ftp/parser/ParserInitializationException; {:try_start_130 .. :try_end_175} :catch_73
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_175} :catch_177
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_130 .. :try_end_175} :catch_323
    .catch Ljava/lang/IllegalArgumentException; {:try_start_130 .. :try_end_175} :catch_319

    goto/16 :goto_ac

    :catch_177
    move-exception v2

    :goto_178
    :try_start_178
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    throw v2
    :try_end_17c
    .catchall {:try_start_178 .. :try_end_17c} :catchall_17c

    :catchall_17c
    move-exception v2

    :goto_17d
    if-eqz v4, :cond_185

    :try_start_17f
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_185
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_185} :catch_30d

    :cond_185
    :goto_185
    throw v2

    :cond_186
    const/4 v2, 0x1

    move v9, v2

    goto/16 :goto_e4

    :cond_18a
    const/4 v2, 0x1

    move v8, v2

    goto/16 :goto_fb

    :cond_18e
    :try_start_18e
    aget-object v16, v10, v7

    if-nez v16, :cond_197

    :cond_192
    :goto_192
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_10a

    :cond_197
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v9, :cond_1a8

    if-eqz v2, :cond_1a8

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_192

    :cond_1a8
    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_192

    const-string v5, ".."

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_192

    if-nez p2, :cond_1c4

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->j(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_192

    :cond_1c4
    invoke-static {v13, v2}, Lcom/estrongs/android/util/g;->a(Lcom/estrongs/android/util/h;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_192

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v17

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v2, v1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    if-eqz v14, :cond_1df

    const/4 v2, 0x1

    if-ne v14, v2, :cond_209

    :cond_1df
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e8
    :goto_1e8
    if-eqz v8, :cond_2e2

    invoke-static/range {v16 .. v16}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Lorg/apache/commons/net/ftp/FTPFile;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    move-object/from16 v0, v18

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_192

    :catch_201
    move-exception v2

    move-object/from16 v21, v2

    move-object v2, v3

    move-object/from16 v3, v21

    goto/16 :goto_4e

    :cond_209
    const/4 v2, 0x2

    if-ne v14, v2, :cond_235

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v5

    const/16 v19, 0x1

    if-eqz v17, :cond_230

    const-wide/16 v5, 0x0

    :goto_21c
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v19

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e8

    :catch_228
    move-exception v2

    move-object/from16 v21, v2

    move-object v2, v3

    move-object/from16 v3, v21

    goto/16 :goto_76

    :cond_230
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v5

    goto :goto_21c

    :cond_235
    const/4 v2, 0x3

    if-ne v14, v2, :cond_271

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25a
    .catchall {:try_start_18e .. :try_end_25a} :catchall_17c
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_18e .. :try_end_25a} :catch_201
    .catch Lorg/apache/commons/net/ftp/parser/ParserInitializationException; {:try_start_18e .. :try_end_25a} :catch_228
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_25a} :catch_177
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_18e .. :try_end_25a} :catch_25b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18e .. :try_end_25a} :catch_296

    goto :goto_1e8

    :catch_25b
    move-exception v2

    move-object/from16 v21, v2

    move-object v2, v3

    move-object/from16 v3, v21

    :goto_261
    :try_start_261
    invoke-virtual {v3}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V
    :try_end_264
    .catchall {:try_start_261 .. :try_end_264} :catchall_17c

    if-eqz v4, :cond_15

    :try_start_266
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_26c
    .catch Ljava/io/IOException; {:try_start_266 .. :try_end_26c} :catch_26e

    goto/16 :goto_15

    :catch_26e
    move-exception v3

    goto/16 :goto_15

    :cond_271
    const/4 v2, 0x4

    if-ne v14, v2, :cond_1e8

    if-nez v11, :cond_2ac

    const/4 v2, 0x0

    :goto_277
    if-eqz v2, :cond_2c8

    const/4 v5, 0x2

    :try_start_27a
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v5, v6

    const/4 v6, 0x1

    iget v2, v2, Lcom/estrongs/android/util/aj;->e:I

    int-to-long v0, v2

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_294
    .catchall {:try_start_27a .. :try_end_294} :catchall_17c
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_27a .. :try_end_294} :catch_201
    .catch Lorg/apache/commons/net/ftp/parser/ParserInitializationException; {:try_start_27a .. :try_end_294} :catch_228
    .catch Ljava/io/IOException; {:try_start_27a .. :try_end_294} :catch_177
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_27a .. :try_end_294} :catch_25b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27a .. :try_end_294} :catch_296

    goto/16 :goto_1e8

    :catch_296
    move-exception v2

    move-object/from16 v21, v2

    move-object v2, v3

    move-object/from16 v3, v21

    :goto_29c
    :try_start_29c
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_29f
    .catchall {:try_start_29c .. :try_end_29f} :catchall_17c

    if-eqz v4, :cond_15

    :try_start_2a1
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_2a7
    .catch Ljava/io/IOException; {:try_start_2a1 .. :try_end_2a7} :catch_2a9

    goto/16 :goto_15

    :catch_2a9
    move-exception v3

    goto/16 :goto_15

    :cond_2ac
    :try_start_2ac
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/util/aj;

    goto :goto_277

    :cond_2c8
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-wide/16 v19, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1e8

    :cond_2e2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, v18

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_192

    :cond_2f3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/util/aj;

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Lcom/estrongs/android/util/ah;->a(Lcom/estrongs/android/util/aj;Z)V
    :try_end_307
    .catchall {:try_start_2ac .. :try_end_307} :catchall_17c
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2ac .. :try_end_307} :catch_201
    .catch Lorg/apache/commons/net/ftp/parser/ParserInitializationException; {:try_start_2ac .. :try_end_307} :catch_228
    .catch Ljava/io/IOException; {:try_start_2ac .. :try_end_307} :catch_177
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2ac .. :try_end_307} :catch_25b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2ac .. :try_end_307} :catch_296

    goto/16 :goto_11c

    :catch_309
    move-exception v2

    move-object v2, v3

    goto/16 :goto_15

    :catch_30d
    move-exception v3

    goto/16 :goto_185

    :catchall_310
    move-exception v2

    move-object v4, v3

    goto/16 :goto_17d

    :catch_314
    move-exception v2

    move-object v4, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_29c

    :catch_319
    move-exception v2

    move-object v3, v2

    move-object v2, v5

    goto :goto_29c

    :catch_31d
    move-exception v2

    move-object v4, v3

    move-object v3, v2

    move-object v2, v5

    goto/16 :goto_261

    :catch_323
    move-exception v2

    move-object v3, v2

    move-object v2, v5

    goto/16 :goto_261

    :catch_328
    move-exception v2

    move-object v4, v3

    goto/16 :goto_178

    :catch_32c
    move-exception v2

    move-object v4, v3

    move-object v3, v2

    move-object v2, v5

    goto/16 :goto_76

    :catch_332
    move-exception v2

    move-object v4, v3

    move-object v3, v2

    move-object v2, v5

    goto/16 :goto_4e

    :cond_338
    move-object v2, v3

    goto/16 :goto_15

    :cond_33b
    move-object v10, v2

    goto/16 :goto_d6

    :cond_33e
    move-object v11, v2

    move-object v12, v3

    move-object v2, v6

    goto/16 :goto_a5
.end method

.method public static a(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPClient;
    .registers 8

    const/4 v0, 0x0

    const/4 v3, -0x1

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->k(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    :try_start_c
    const-string v1, "ftps://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    new-instance v1, Lorg/apache/commons/net/ftp/FTPSClient;

    invoke-direct {v1, v2}, Lorg/apache/commons/net/ftp/FTPSClient;-><init>(Z)V

    invoke-static {}, Lorg/apache/commons/net/util/TrustManagerUtils;->getAcceptAllTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPSClient;->setTrustManager(Ljavax/net/ssl/TrustManager;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPSClient;->setNeedClientAuth(Z)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_22} :catch_26

    :goto_22
    if-nez v1, :cond_2f

    move-object v1, v0

    :cond_25
    :goto_25
    return-object v1

    :catch_26
    move-exception v1

    move-object v1, v0

    goto :goto_22

    :cond_29
    new-instance v1, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    goto :goto_22

    :cond_2f
    sget-object v2, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a:[Ljava/lang/String;

    sget v6, Lcom/estrongs/android/pop/fs/FtpFileSystem;->f:I

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setControlEncoding(Ljava/lang/String;)V

    const v2, 0x9c40

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setConnectTimeout(I)V

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5f

    :try_start_44
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_47} :catch_5c

    move-result v2

    :goto_48
    if-eq v2, v3, :cond_64

    invoke-virtual {v1, v4, v2}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;I)V

    :goto_4d
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v2

    if-nez v2, :cond_68

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    move-object v1, v0

    goto :goto_25

    :catch_5c
    move-exception v2

    move v2, v3

    goto :goto_48

    :cond_5f
    if-eqz v5, :cond_73

    const/16 v2, 0x3de

    goto :goto_48

    :cond_64
    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;)V

    goto :goto_4d

    :cond_68
    if-eqz v5, :cond_25

    move-object v0, v1

    check-cast v0, Lorg/apache/commons/net/ftp/FTPSClient;

    const-string v2, "P"

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPSClient;->execPROT(Ljava/lang/String;)V

    goto :goto_25

    :cond_73
    move v2, v3

    goto :goto_48
.end method

.method public static a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    .registers 11

    const v8, 0x9c40

    const/4 v7, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->k(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    :try_start_10
    const-string v0, "ftps://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lorg/apache/commons/net/ftp/FTPSClient;

    invoke-direct {v1, v0}, Lorg/apache/commons/net/ftp/FTPSClient;-><init>(Z)V

    invoke-static {}, Lorg/apache/commons/net/util/TrustManagerUtils;->getAcceptAllTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPSClient;->setTrustManager(Ljavax/net/ssl/TrustManager;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPSClient;->setNeedClientAuth(Z)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_26} :catch_2a

    :goto_26
    if-nez v1, :cond_33

    move-object v1, v3

    :goto_29
    return-object v1

    :catch_2a
    move-exception v0

    move-object v1, v3

    goto :goto_26

    :cond_2d
    new-instance v1, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    goto :goto_26

    :cond_33
    sget-object v0, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a:[Ljava/lang/String;

    sget v6, Lcom/estrongs/android/pop/fs/FtpFileSystem;->f:I

    aget-object v0, v0, v6

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->setControlEncoding(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lorg/apache/commons/net/ftp/FTPClient;->setConnectTimeout(I)V

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    :try_start_45
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_48} :catch_5d

    move-result v0

    :goto_49
    if-eq v0, v2, :cond_65

    invoke-virtual {v1, v4, v0}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;I)V

    :goto_4e
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_69

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    move-object v1, v3

    goto :goto_29

    :catch_5d
    move-exception v0

    move v0, v2

    goto :goto_49

    :cond_60
    if-eqz v5, :cond_c5

    const/16 v0, 0x3de

    goto :goto_49

    :cond_65
    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;)V

    goto :goto_4e

    :cond_69
    if-eqz v5, :cond_73

    move-object v0, v1

    check-cast v0, Lorg/apache/commons/net/ftp/FTPSClient;

    const-string v2, "P"

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPSClient;->execPROT(Ljava/lang/String;)V

    :cond_73
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_85

    const-string v2, "Anonymous"

    const-string v0, ""

    :cond_85
    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v0

    const/16 v2, 0x212

    if-ne v0, v2, :cond_92

    move-object v1, v3

    goto :goto_29

    :cond_92
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_a0

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    move-object v1, v3

    goto :goto_29

    :cond_a0
    if-eqz v4, :cond_ab

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_ab

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    :cond_ab
    invoke-virtual {v1, v8}, Lorg/apache/commons/net/ftp/FTPClient;->setDefaultTimeout(I)V

    invoke-virtual {v1, v8}, Lorg/apache/commons/net/ftp/FTPClient;->setDataTimeout(I)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    sget-boolean v0, Lcom/estrongs/android/pop/fs/FtpFileSystem;->e:Z

    if-eqz v0, :cond_c1

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    :goto_bc
    invoke-virtual {v1, v7}, Lorg/apache/commons/net/ftp/FTPClient;->setListHiddenFiles(Z)V

    goto/16 :goto_29

    :cond_c1
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalActiveMode()V

    goto :goto_bc

    :cond_c5
    move v0, v2

    goto :goto_49
.end method

.method public static a()V
    .registers 3

    sget-object v0, Lcom/estrongs/android/pop/fs/FtpFileSystem;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/estrongs/android/pop/fs/FtpFileSystem;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    sget-object v0, Lcom/estrongs/android/pop/fs/FtpFileSystem;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/estrongs/android/pop/fs/FtpFileSystem;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/estrongs/android/pop/fs/FtpFileSystem;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_c

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/fs/FtpFileSystem;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_17

    :try_start_3e
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_44} :catch_45

    goto :goto_17

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/fs/FtpFileSystem;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_22

    if-eqz p2, :cond_15

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    :cond_15
    if-eqz p2, :cond_1a

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    :cond_1a
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    sget-object v1, Lcom/estrongs/android/pop/fs/FtpFileSystem;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    sget-object v1, Lcom/estrongs/android/pop/fs/FtpFileSystem;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v0, :cond_34

    if-eqz v1, :cond_34

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    :cond_34
    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4e

    if-eqz p2, :cond_41

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    :cond_41
    if-eqz p2, :cond_46

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    :cond_46
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    sget-object v0, Lcom/estrongs/android/pop/fs/FtpFileSystem;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_4e} :catch_51
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4e} :catch_4f

    :cond_4e
    :goto_4e
    return-void

    :catch_4f
    move-exception v0

    goto :goto_4e

    :catch_51
    move-exception v0

    goto :goto_4e
.end method

.method private static a(Ljava/util/Map;Ljava/util/HashMap;Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;Ljava/io/FileFilter;IZZZLcom/estrongs/android/pop/d/g;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/commons/net/ftp/FTPClient;",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            "IZZZ",
            "Lcom/estrongs/android/pop/d/g;",
            ")V"
        }
    .end annotation

    if-eqz p9, :cond_9

    :try_start_2
    invoke-interface/range {p9 .. p9}, Lcom/estrongs/android/pop/d/g;->c()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string v2, "/"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_26
    invoke-static/range {p3 .. p3}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->a(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v2

    const/16 v3, 0x226

    if-eq v2, v3, :cond_8

    const-string v2, "."

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v3

    const/4 v2, 0x0

    check-cast v2, [Lorg/apache/commons/net/ftp/FTPFile;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v14

    if-eqz v14, :cond_8

    array-length v15, v14

    const/4 v2, 0x0

    move v12, v2

    :goto_4e
    if-ge v12, v15, :cond_8

    aget-object v16, v14, v12

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    :cond_6a
    :goto_6a
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_4e

    :cond_6e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->a(Ljava/lang/String;)V

    if-eqz p9, :cond_8e

    invoke-interface/range {p9 .. p9}, Lcom/estrongs/android/pop/d/g;->c()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_8e
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_c0

    if-eqz p8, :cond_c0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-static/range {v2 .. v11}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/util/Map;Ljava/util/HashMap;Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;Ljava/io/FileFilter;IZZZLcom/estrongs/android/pop/d/g;)V

    :cond_c0
    if-eqz p9, :cond_c8

    invoke-interface/range {p9 .. p9}, Lcom/estrongs/android/pop/d/g;->c()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_c8
    if-eqz p4, :cond_d9

    new-instance v2, Lcom/estrongs/android/pop/fs/FtpFileSystem$FTPFileWrapper;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lcom/estrongs/android/pop/fs/FtpFileSystem$FTPFileWrapper;-><init>(Lorg/apache/commons/net/ftp/FTPFile;)V

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_6a

    :cond_d9
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, v16

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPFile;IZZ)V

    if-eqz p9, :cond_6a

    move-object/from16 v0, p9

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/d/g;->a(Ljava/lang/Object;)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f3} :catch_f5

    goto/16 :goto_6a

    :catch_f5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPFile;IZZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/ftp/FTPFile;",
            "IZZ)V"
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x1

    if-nez p3, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-nez p6, :cond_16

    :try_start_7
    invoke-virtual {p3}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_4

    :cond_16
    invoke-virtual {p3}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p3}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v2

    invoke-virtual {p3}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v2}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_30

    if-ne p4, v4, :cond_50

    :cond_30
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    :goto_37
    if-eqz p5, :cond_94

    invoke-static {p3}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Lorg/apache/commons/net/ftp/FTPFile;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catch_4e
    move-exception v0

    goto :goto_4

    :cond_50
    if-ne p4, v5, :cond_70

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v5, 0x1

    if-eqz v2, :cond_6b

    const-wide/16 v0, 0x0

    :goto_61
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :cond_6b
    invoke-virtual {p3}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v0

    goto :goto_61

    :cond_70
    const/4 v0, 0x3

    if-ne p4, v0, :cond_37

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p3}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :cond_94
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a1} :catch_4e

    goto/16 :goto_4
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-static {p0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/e/a;->a(Ljava/lang/String;)V

    :cond_17
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 14

    const-wide/16 v8, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;

    move-result-object v0

    cmp-long v1, p2, v8

    if-nez v1, :cond_af

    const v1, 0x7f09017a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/estrongs/android/pop/d/a;->c(J)V

    :goto_1d
    :try_start_1d
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v2

    if-nez v2, :cond_36

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v4, v1}, Lcom/estrongs/android/pop/d/a;->a(JZ)V
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_9a
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_1d .. :try_end_2c} :catch_5d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2c} :catch_8c

    if-eqz v2, :cond_34

    :try_start_2e
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_a9

    :cond_34
    :goto_34
    move v0, v6

    :goto_35
    return v0

    :cond_36
    :try_start_36
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->i(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_84

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->deleteFile(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7a

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v5

    const/16 v7, 0x226

    if-ne v5, v7, :cond_72

    new-instance v1, Ljava/io/IOException;

    const-string v5, "550"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5d
    .catchall {:try_start_36 .. :try_end_5d} :catchall_9a
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_36 .. :try_end_5d} :catch_5d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_5d} :catch_8c

    :catch_5d
    move-exception v1

    if-eqz v2, :cond_ad

    :try_start_60
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_66} :catch_89

    move v1, v6

    :goto_67
    cmp-long v2, p2, v8

    if-eqz v2, :cond_6d

    if-nez v1, :cond_70

    :cond_6d
    invoke-virtual {v0, v3, v4, v1}, Lcom/estrongs/android/pop/d/a;->a(JZ)V

    :cond_70
    move v0, v1

    goto :goto_35

    :cond_72
    :try_start_72
    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/commons/net/ftp/FTPClient;->deleteFile(Ljava/lang/String;)Z
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_9a
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_72 .. :try_end_79} :catch_5d
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_79} :catch_8c

    move-result v6

    :cond_7a
    :goto_7a
    if-eqz v2, :cond_ab

    :try_start_7c
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_82} :catch_a4

    move v1, v6

    goto :goto_67

    :cond_84
    :try_start_84
    invoke-static {p0, v2, v1, v3, v4}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Landroid/content/Context;Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;J)Z
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_9a
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_84 .. :try_end_87} :catch_5d
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_8c

    move-result v6

    goto :goto_7a

    :catch_89
    move-exception v1

    move v1, v6

    goto :goto_67

    :catch_8c
    move-exception v1

    if-eqz v2, :cond_ad

    :try_start_8f
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_95} :catch_97

    move v1, v6

    goto :goto_67

    :catch_97
    move-exception v1

    move v1, v6

    goto :goto_67

    :catchall_9a
    move-exception v0

    if-eqz v2, :cond_a3

    :try_start_9d
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a3} :catch_a7

    :cond_a3
    :goto_a3
    throw v0

    :catch_a4
    move-exception v1

    move v1, v6

    goto :goto_67

    :catch_a7
    move-exception v1

    goto :goto_a3

    :catch_a9
    move-exception v0

    goto :goto_34

    :cond_ab
    move v1, v6

    goto :goto_67

    :cond_ad
    move v1, v6

    goto :goto_67

    :cond_af
    move-wide v3, p2

    goto/16 :goto_1d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 17

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;

    move-result-object v0

    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_204

    const v1, 0x7f090179

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/a;->c(J)V

    move-wide v3, v1

    :goto_1e
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v4, v1}, Lcom/estrongs/android/pop/d/a;->a(JZ)V

    const/4 v0, 0x0

    :goto_29
    return v0

    :cond_2a
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->i(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_33

    invoke-static {p2}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->c(Ljava/lang/String;)Z

    :cond_33
    invoke-virtual {v0, v3, v4}, Lcom/estrongs/android/pop/d/a;->a(J)Lcom/estrongs/android/pop/d/c;

    move-result-object v9

    if-eqz v8, :cond_114

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    :try_start_3c
    invoke-static {p0, p1, v2, v5}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/Map;
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_98

    move-result-object v1

    move-object v7, v1

    :goto_41
    const/4 v6, 0x1

    if-eqz v7, :cond_52

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9b

    :cond_52
    move v1, v6

    :goto_53
    if-nez v1, :cond_111

    const/4 v1, 0x0

    :goto_56
    const-wide/16 v5, -0x1

    cmp-long v2, p3, v5

    if-nez v2, :cond_66

    if-eqz v9, :cond_63

    iget-object v2, v9, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v2, v5

    :cond_63
    invoke-virtual {v0, v3, v4, v1}, Lcom/estrongs/android/pop/d/a;->a(JZ)V

    :cond_66
    const-wide/16 v2, -0x1

    cmp-long v0, p3, v2

    if-nez v0, :cond_96

    if-nez v1, :cond_96

    if-eqz v8, :cond_1ef

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_1ef

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v2, v3}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    :cond_96
    :goto_96
    move v0, v1

    goto :goto_29

    :catch_98
    move-exception v2

    move-object v7, v1

    goto :goto_41

    :cond_9b
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-boolean v2, v9, Lcom/estrongs/android/pop/d/c;->e:Z

    if-eqz v2, :cond_a7

    const/4 v1, 0x0

    goto :goto_53

    :cond_a7
    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0x2f

    if-ne v5, v11, :cond_f8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    :goto_cb
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v2, v2, v11

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_ef

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_ef
    invoke-static {p0, v1, v5, v3, v4}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_4c

    const/4 v1, 0x0

    goto/16 :goto_53

    :cond_f8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_cb

    :cond_111
    const/4 v1, 0x1

    goto/16 :goto_56

    :cond_114
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_117
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->d(Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v7, v10

    int-to-long v10, v7

    iput-wide v10, v9, Lcom/estrongs/android/pop/d/c;->b:J

    const-wide/16 v10, 0x0

    iput-wide v10, v9, Lcom/estrongs/android/pop/d/c;->a:J

    iget-object v7, v9, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v7, v10

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    invoke-static {v7, v10}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    if-nez v1, :cond_152

    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7
    :try_end_139
    .catchall {:try_start_117 .. :try_end_139} :catchall_1ca
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_117 .. :try_end_139} :catch_139
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_139} :catch_177

    :catch_139
    move-exception v7

    if-eqz v5, :cond_13f

    :try_start_13c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_13f
    if-eqz v2, :cond_144

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_144} :catch_1fe

    :cond_144
    :goto_144
    if-eqz v1, :cond_201

    :try_start_146
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_14f} :catch_1e3

    move v1, v6

    goto/16 :goto_56

    :cond_152
    :try_start_152
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    const/4 v10, 0x1

    invoke-static {v7, v10}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    invoke-virtual {v1, v11}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    if-eqz v5, :cond_171

    if-nez v2, :cond_190

    :cond_171
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7
    :try_end_177
    .catchall {:try_start_152 .. :try_end_177} :catchall_1ca
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_152 .. :try_end_177} :catch_139
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_177} :catch_177

    :catch_177
    move-exception v7

    if-eqz v5, :cond_17d

    :try_start_17a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_17d
    if-eqz v2, :cond_182

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_17a .. :try_end_182} :catch_1fc

    :cond_182
    :goto_182
    if-eqz v1, :cond_201

    :try_start_184
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_18d
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_18d} :catch_1e7

    move v1, v6

    goto/16 :goto_56

    :cond_190
    const v7, 0x32000

    :try_start_193
    new-array v7, v7, [B

    :goto_195
    iget-boolean v10, v9, Lcom/estrongs/android/pop/d/c;->e:Z

    if-nez v10, :cond_1a4

    const/4 v10, 0x0

    const v11, 0x32000

    invoke-virtual {v5, v7, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1c1

    :cond_1a4
    iget-boolean v6, v9, Lcom/estrongs/android/pop/d/c;->e:Z
    :try_end_1a6
    .catchall {:try_start_193 .. :try_end_1a6} :catchall_1ca
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_193 .. :try_end_1a6} :catch_139
    .catch Ljava/io/IOException; {:try_start_193 .. :try_end_1a6} :catch_177

    if-eqz v6, :cond_1e1

    const/4 v6, 0x0

    :goto_1a9
    if-eqz v5, :cond_1ae

    :try_start_1ab
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_1ae
    if-eqz v2, :cond_1b3

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1b3
    .catch Ljava/io/IOException; {:try_start_1ab .. :try_end_1b3} :catch_1f6

    :cond_1b3
    :goto_1b3
    if-eqz v1, :cond_201

    :try_start_1b5
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_1be
    .catch Ljava/io/IOException; {:try_start_1b5 .. :try_end_1be} :catch_1eb

    move v1, v6

    goto/16 :goto_56

    :cond_1c1
    const/4 v11, 0x0

    :try_start_1c2
    invoke-virtual {v2, v7, v11, v10}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v10, v10

    invoke-virtual {v0, v3, v4, v10, v11}, Lcom/estrongs/android/pop/d/a;->a(JJ)V
    :try_end_1c9
    .catchall {:try_start_1c2 .. :try_end_1c9} :catchall_1ca
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_1c2 .. :try_end_1c9} :catch_139
    .catch Ljava/io/IOException; {:try_start_1c2 .. :try_end_1c9} :catch_177

    goto :goto_195

    :catchall_1ca
    move-exception v0

    if-eqz v5, :cond_1d0

    :try_start_1cd
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_1d0
    if-eqz v2, :cond_1d5

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1d5
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1d5} :catch_1fa

    :cond_1d5
    :goto_1d5
    if-eqz v1, :cond_1e0

    :try_start_1d7
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_1e0
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1e0} :catch_1f8

    :cond_1e0
    :goto_1e0
    throw v0

    :cond_1e1
    const/4 v6, 0x1

    goto :goto_1a9

    :catch_1e3
    move-exception v1

    move v1, v6

    goto/16 :goto_56

    :catch_1e7
    move-exception v1

    move v1, v6

    goto/16 :goto_56

    :catch_1eb
    move-exception v1

    move v1, v6

    goto/16 :goto_56

    :cond_1ef
    const-wide/16 v2, -0x1

    invoke-static {p0, p2, v2, v3}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    goto/16 :goto_96

    :catch_1f6
    move-exception v2

    goto :goto_1b3

    :catch_1f8
    move-exception v1

    goto :goto_1e0

    :catch_1fa
    move-exception v2

    goto :goto_1d5

    :catch_1fc
    move-exception v2

    goto :goto_182

    :catch_1fe
    move-exception v2

    goto/16 :goto_144

    :cond_201
    move v1, v6

    goto/16 :goto_56

    :cond_204
    move-wide v3, p3

    goto/16 :goto_1e
.end method

.method private static a(Landroid/content/Context;Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;J)Z
    .registers 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;

    move-result-object v3

    :try_start_6
    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    const-string v2, "."

    invoke-virtual {p1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v2

    if-eqz v2, :cond_26

    array-length v4, v2

    if-eqz v4, :cond_26

    array-length v4, v2

    if-ne v4, v0, :cond_93

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_93

    :cond_26
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v2

    move-object v4, v2

    :goto_2b
    if-eqz v4, :cond_35

    invoke-virtual {v3, p3, p4}, Lcom/estrongs/android/pop/d/a;->a(J)Lcom/estrongs/android/pop/d/c;

    move-result-object v5

    array-length v6, v4

    move v3, v1

    :goto_33
    if-lt v3, v6, :cond_3d

    :cond_35
    if-eqz v4, :cond_3b

    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->removeDirectory(Ljava/lang/String;)Z

    move-result v0

    :cond_3b
    :goto_3b
    move v1, v0

    :cond_3c
    :goto_3c
    return v1

    :cond_3d
    aget-object v2, v4, v3

    if-eqz v5, :cond_45

    iget-boolean v7, v5, Lcom/estrongs/android/pop/d/c;->e:Z

    if-nez v7, :cond_3c

    :cond_45
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->j(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_53

    :cond_4f
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_33

    :cond_53
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_88

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2, p3, p4}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Landroid/content/Context;Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;J)Z

    move-result v2

    :goto_85
    if-nez v2, :cond_4f

    goto :goto_3c

    :cond_88
    invoke-virtual {p1, v7}, Lorg/apache/commons/net/ftp/FTPClient;->deleteFile(Ljava/lang/String;)Z
    :try_end_8b
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_6 .. :try_end_8b} :catch_8d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_8b} :catch_90

    move-result v2

    goto :goto_85

    :catch_8d
    move-exception v0

    move v0, v1

    goto :goto_3b

    :catch_90
    move-exception v0

    move v0, v1

    goto :goto_3b

    :cond_93
    move-object v4, v2

    goto :goto_2b
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_5a
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_a} :catch_42
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_4e

    move-result-object v1

    if-nez v1, :cond_16

    if-eqz v1, :cond_15

    :try_start_f
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_66

    :cond_15
    :goto_15
    return v0

    :cond_16
    :try_start_16
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->rename(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_5a
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_16 .. :try_end_36} :catch_42
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_36} :catch_4e

    move-result v0

    :cond_37
    if-eqz v1, :cond_15

    :try_start_39
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3f} :catch_40

    goto :goto_15

    :catch_40
    move-exception v1

    goto :goto_15

    :catch_42
    move-exception v2

    if-eqz v1, :cond_15

    :try_start_45
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4b} :catch_4c

    goto :goto_15

    :catch_4c
    move-exception v1

    goto :goto_15

    :catch_4e
    move-exception v2

    if-eqz v1, :cond_15

    :try_start_51
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_57} :catch_58

    goto :goto_15

    :catch_58
    move-exception v1

    goto :goto_15

    :catchall_5a
    move-exception v0

    if-eqz v1, :cond_63

    :try_start_5d
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_63} :catch_64

    :cond_63
    :goto_63
    throw v0

    :catch_64
    move-exception v1

    goto :goto_63

    :catch_66
    move-exception v1

    goto :goto_15
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_1a

    const-string v0, "/"

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    const-string v0, ""

    goto :goto_11
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_3
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d6
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3 .. :try_end_b} :catch_e8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_c7

    move-result-object v3

    if-nez v3, :cond_17

    if-eqz v3, :cond_16

    :try_start_10
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_ea

    :cond_16
    :goto_16
    return v2

    :cond_17
    :try_start_17
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->i(Ljava/lang/String;)Z

    move-result v4

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_90

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_34
    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    check-cast v0, [Lorg/apache/commons/net/ftp/FTPFile;

    if-eqz v4, :cond_92

    invoke-virtual {v3, v6}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ed

    :goto_43
    if-eqz v1, :cond_b6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    long-to-int v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v4, :cond_a0

    const-string v0, "/"

    :goto_6d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lorg/apache/commons/net/ftp/FTPClient;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v4, :cond_a3

    invoke-static {p0, v3, v6, p3, p4}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Landroid/content/Context;Lorg/apache/commons/net/ftp/FTPClient;Ljava/lang/String;J)Z

    :goto_81
    invoke-virtual {v3, v0, v6}, Lorg/apache/commons/net/ftp/FTPClient;->rename(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_84
    .catchall {:try_start_17 .. :try_end_84} :catchall_e4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_17 .. :try_end_84} :catch_a7
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_84} :catch_e6

    move-result v2

    if-eqz v3, :cond_16

    :try_start_87
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8d} :catch_8e

    goto :goto_16

    :catch_8e
    move-exception v0

    goto :goto_16

    :cond_90
    move-object v0, p2

    goto :goto_34

    :cond_92
    :try_start_92
    invoke-virtual {v3, v6}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    if-eqz v0, :cond_9e

    array-length v0, v0

    if-lez v0, :cond_9e

    move v0, v1

    :goto_9c
    move v1, v0

    goto :goto_43

    :cond_9e
    move v0, v2

    goto :goto_9c

    :cond_a0
    const-string v0, ""

    goto :goto_6d

    :cond_a3
    invoke-static {p0, v6, p3, p4}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Landroid/content/Context;Ljava/lang/String;J)Z
    :try_end_a6
    .catchall {:try_start_92 .. :try_end_a6} :catchall_e4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_92 .. :try_end_a6} :catch_a7
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_a6} :catch_e6

    goto :goto_81

    :catch_a7
    move-exception v0

    move-object v0, v3

    :goto_a9
    if-eqz v0, :cond_16

    :try_start_ab
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b1} :catch_b3

    goto/16 :goto_16

    :catch_b3
    move-exception v0

    goto/16 :goto_16

    :cond_b6
    :try_start_b6
    invoke-virtual {v3, v5, v6}, Lorg/apache/commons/net/ftp/FTPClient;->rename(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_e4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_b6 .. :try_end_b9} :catch_a7
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_e6

    move-result v2

    if-eqz v3, :cond_16

    :try_start_bc
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_c2} :catch_c4

    goto/16 :goto_16

    :catch_c4
    move-exception v0

    goto/16 :goto_16

    :catch_c7
    move-exception v1

    move-object v3, v0

    :goto_c9
    if-eqz v3, :cond_16

    :try_start_cb
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_d1} :catch_d3

    goto/16 :goto_16

    :catch_d3
    move-exception v0

    goto/16 :goto_16

    :catchall_d6
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_d9
    if-eqz v3, :cond_e1

    :try_start_db
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e1} :catch_e2

    :cond_e1
    :goto_e1
    throw v0

    :catch_e2
    move-exception v1

    goto :goto_e1

    :catchall_e4
    move-exception v0

    goto :goto_d9

    :catch_e6
    move-exception v0

    goto :goto_c9

    :catch_e8
    move-exception v1

    goto :goto_a9

    :catch_ea
    move-exception v0

    goto/16 :goto_16

    :cond_ed
    move v1, v2

    goto/16 :goto_43
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_3
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3 .. :try_end_b} :catch_a7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_b6

    move-result-object v2

    if-nez v2, :cond_17

    if-eqz v2, :cond_16

    :try_start_10
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_d6

    :cond_16
    :goto_16
    return v0

    :cond_17
    :try_start_17
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_c4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_17 .. :try_end_1e} :catch_d0
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_b6

    move-result v4

    if-ne v4, v1, :cond_2b

    if-eqz v2, :cond_29

    :try_start_23
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_29} :catch_d3

    :cond_29
    :goto_29
    move v0, v1

    goto :goto_16

    :cond_2b
    :try_start_2b
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_67

    const/4 v4, 0x0

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move-object v3, v4

    move-object v4, v7

    :goto_4f
    invoke-virtual {v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->listNames()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5c

    move v3, v0

    :goto_59
    array-length v6, v5
    :try_end_5a
    .catchall {:try_start_2b .. :try_end_5a} :catchall_c4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2b .. :try_end_5a} :catch_d0
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_5a} :catch_b6

    if-lt v3, v6, :cond_9a

    :cond_5c
    :goto_5c
    if-eqz v2, :cond_16

    :try_start_5e
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_64} :catch_65

    goto :goto_16

    :catch_65
    move-exception v1

    goto :goto_16

    :cond_67
    const/4 v4, 0x0

    :try_start_68
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move-object v3, v4

    move-object v4, v7

    goto :goto_4f

    :cond_9a
    aget-object v6, v5, v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9f
    .catchall {:try_start_68 .. :try_end_9f} :catchall_c4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_68 .. :try_end_9f} :catch_d0
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_9f} :catch_b6

    move-result v6

    if-eqz v6, :cond_a4

    move v0, v1

    goto :goto_5c

    :cond_a4
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :catch_a7
    move-exception v1

    move-object v1, v2

    :goto_a9
    if-eqz v1, :cond_16

    :try_start_ab
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b1} :catch_b3

    goto/16 :goto_16

    :catch_b3
    move-exception v1

    goto/16 :goto_16

    :catch_b6
    move-exception v1

    if-eqz v2, :cond_16

    :try_start_b9
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bf} :catch_c1

    goto/16 :goto_16

    :catch_c1
    move-exception v1

    goto/16 :goto_16

    :catchall_c4
    move-exception v0

    if-eqz v2, :cond_cd

    :try_start_c7
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_cd} :catch_ce

    :cond_cd
    :goto_cd
    throw v0

    :catch_ce
    move-exception v1

    goto :goto_cd

    :catch_d0
    move-exception v1

    move-object v1, v2

    goto :goto_a9

    :catch_d3
    move-exception v0

    goto/16 :goto_29

    :catch_d6
    move-exception v1

    goto/16 :goto_16
.end method

.method public static b(Ljava/lang/String;Z)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_7e
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3 .. :try_end_b} :catch_66
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_72

    move-result-object v1

    if-nez v1, :cond_17

    if-eqz v1, :cond_16

    :try_start_10
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_8a

    :cond_16
    :goto_16
    return v0

    :cond_17
    :try_start_17
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_3d

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->makeDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->makeDirectory(Ljava/lang/String;)Z
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_7e
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_17 .. :try_end_31} :catch_66
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_31} :catch_72

    move-result v0

    :cond_32
    :goto_32
    if-eqz v1, :cond_16

    :try_start_34
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3a} :catch_3b

    goto :goto_16

    :catch_3b
    move-exception v1

    goto :goto_16

    :cond_3d
    const/4 v4, 0x0

    :try_start_3e
    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v3

    if-eqz v3, :cond_60

    move v0, v2

    :cond_60
    if-eqz v3, :cond_32

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_65
    .catchall {:try_start_3e .. :try_end_65} :catchall_7e
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3e .. :try_end_65} :catch_66
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_65} :catch_72

    goto :goto_32

    :catch_66
    move-exception v2

    if-eqz v1, :cond_16

    :try_start_69
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6f} :catch_70

    goto :goto_16

    :catch_70
    move-exception v1

    goto :goto_16

    :catch_72
    move-exception v2

    if-eqz v1, :cond_16

    :try_start_75
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7b} :catch_7c

    goto :goto_16

    :catch_7c
    move-exception v1

    goto :goto_16

    :catchall_7e
    move-exception v0

    if-eqz v1, :cond_87

    :try_start_81
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_87} :catch_88

    :cond_87
    :goto_87
    throw v0

    :catch_88
    move-exception v1

    goto :goto_87

    :catch_8a
    move-exception v1

    goto :goto_16
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_52
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_a} :catch_3a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_46

    move-result-object v1

    if-nez v1, :cond_16

    if-eqz v1, :cond_15

    :try_start_f
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_5e

    :cond_15
    :goto_15
    return v0

    :cond_16
    :try_start_16
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->makeDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->makeDirectory(Ljava/lang/String;)Z
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_52
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_16 .. :try_end_2e} :catch_3a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2e} :catch_46

    move-result v0

    :cond_2f
    if-eqz v1, :cond_15

    :try_start_31
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_37} :catch_38

    goto :goto_15

    :catch_38
    move-exception v1

    goto :goto_15

    :catch_3a
    move-exception v2

    if-eqz v1, :cond_15

    :try_start_3d
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_43} :catch_44

    goto :goto_15

    :catch_44
    move-exception v1

    goto :goto_15

    :catch_46
    move-exception v2

    if-eqz v1, :cond_15

    :try_start_49
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4f} :catch_50

    goto :goto_15

    :catch_50
    move-exception v1

    goto :goto_15

    :catchall_52
    move-exception v0

    if-eqz v1, :cond_5b

    :try_start_55
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5b} :catch_5c

    :cond_5b
    :goto_5b
    throw v0

    :catch_5c
    move-exception v1

    goto :goto_5b

    :catch_5e
    move-exception v1

    goto :goto_15
.end method

.method public static d(Ljava/lang/String;)J
    .registers 12

    const-wide/16 v1, -0x1

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_5
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_c8
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_5 .. :try_end_d} :catch_ad
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_b9

    move-result-object v3

    if-nez v3, :cond_1a

    if-eqz v3, :cond_18

    :try_start_12
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_e3

    :cond_18
    :goto_18
    move-wide v0, v1

    :cond_19
    :goto_19
    return-wide v0

    :cond_1a
    :try_start_1a
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_d9
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_1a .. :try_end_21} :catch_dd
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_db

    move v4, v5

    move-object v6, v0

    :goto_23
    if-lt v4, v10, :cond_3d

    :cond_25
    :try_start_25
    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_d9
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_e0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_25 .. :try_end_2f} :catch_dd
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2f} :catch_db

    move-result-object v7

    move v6, v5

    :goto_31
    if-lt v6, v10, :cond_6b

    :cond_33
    :goto_33
    if-eqz v3, :cond_3b

    :try_start_35
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3b} :catch_d4

    :cond_3b
    :goto_3b
    move-wide v0, v1

    goto :goto_19

    :cond_3d
    :try_start_3d
    invoke-virtual {v3, v6}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v7

    if-eqz v7, :cond_58

    array-length v8, v7

    if-lez v8, :cond_58

    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_d9
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3d .. :try_end_4c} :catch_dd
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_4c} :catch_db

    move-result-wide v0

    if-eqz v3, :cond_19

    :try_start_4f
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_55} :catch_56

    goto :goto_19

    :catch_56
    move-exception v2

    goto :goto_19

    :cond_58
    :try_start_58
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_25

    const-string v7, " "

    const-string v8, "\\ "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_67
    .catchall {:try_start_58 .. :try_end_67} :catchall_d9
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_58 .. :try_end_67} :catch_dd
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_67} :catch_db

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_6b
    :try_start_6b
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v8

    if-eqz v8, :cond_9c

    array-length v4, v8

    if-lez v4, :cond_9c

    move v4, v5

    :goto_75
    array-length v9, v8

    if-lt v4, v9, :cond_7c

    :goto_78
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_31

    :cond_7c
    aget-object v9, v8, v4

    invoke-virtual {v9}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_99

    aget-object v0, v8, v4

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J
    :try_end_8d
    .catchall {:try_start_6b .. :try_end_8d} :catchall_d9
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_8d} :catch_e0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_6b .. :try_end_8d} :catch_dd
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_8d} :catch_db

    move-result-wide v0

    if-eqz v3, :cond_19

    :try_start_90
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_96} :catch_97

    goto :goto_19

    :catch_97
    move-exception v2

    goto :goto_19

    :cond_99
    add-int/lit8 v4, v4, 0x1

    goto :goto_75

    :cond_9c
    :try_start_9c
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33

    const-string v4, " "

    const-string v8, "\\ "

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_ab
    .catchall {:try_start_9c .. :try_end_ab} :catchall_d9
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_ab} :catch_e0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_9c .. :try_end_ab} :catch_dd
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_ab} :catch_db

    move-result-object v0

    goto :goto_78

    :catch_ad
    move-exception v3

    :goto_ae
    if-eqz v0, :cond_3b

    :try_start_b0
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b6} :catch_b7

    goto :goto_3b

    :catch_b7
    move-exception v0

    goto :goto_3b

    :catch_b9
    move-exception v3

    move-object v3, v0

    :goto_bb
    if-eqz v3, :cond_3b

    :try_start_bd
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c3} :catch_c5

    goto/16 :goto_3b

    :catch_c5
    move-exception v0

    goto/16 :goto_3b

    :catchall_c8
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_cb
    if-eqz v3, :cond_d3

    :try_start_cd
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d3} :catch_d7

    :cond_d3
    :goto_d3
    throw v0

    :catch_d4
    move-exception v0

    goto/16 :goto_3b

    :catch_d7
    move-exception v1

    goto :goto_d3

    :catchall_d9
    move-exception v0

    goto :goto_cb

    :catch_db
    move-exception v0

    goto :goto_bb

    :catch_dd
    move-exception v0

    move-object v0, v3

    goto :goto_ae

    :catch_e0
    move-exception v0

    goto/16 :goto_33

    :catch_e3
    move-exception v0

    goto/16 :goto_18
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->i(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static f(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;
    .registers 11

    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_4
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_172
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_4 .. :try_end_c} :catch_17a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_176

    move-result-object v2

    if-nez v2, :cond_18

    if-eqz v2, :cond_17

    :try_start_11
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_17} :catch_183

    :cond_17
    :goto_17
    return-object v0

    :cond_18
    :try_start_18
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_152
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_18 .. :try_end_1b} :catch_9d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_ba

    move-result-object v1

    move v5, v3

    move-object v6, v1

    :goto_1e
    if-lt v5, v9, :cond_39

    :cond_20
    :try_start_20
    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_152
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_141
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_20 .. :try_end_2a} :catch_9d
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2a} :catch_ba

    move-object v5, v1

    move v1, v3

    :goto_2c
    if-lt v1, v9, :cond_dc

    :cond_2e
    :goto_2e
    if-eqz v2, :cond_17

    :try_start_30
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_36} :catch_37

    goto :goto_17

    :catch_37
    move-exception v1

    goto :goto_17

    :cond_39
    :try_start_39
    invoke-virtual {v2, v6}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v7

    if-eqz v7, :cond_c8

    array-length v8, v7

    if-lez v8, :cond_c8

    new-instance v1, Lcom/estrongs/android/pop/d/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/d/e;-><init>(Ljava/lang/String;)V

    array-length v5, v7

    if-le v5, v4, :cond_83

    :goto_4a
    iput-boolean v4, v1, Lcom/estrongs/android/pop/d/e;->d:Z

    iget-boolean v4, v1, Lcom/estrongs/android/pop/d/e;->d:Z

    if-eqz v4, :cond_ac

    array-length v4, v7

    :goto_51
    if-lt v3, v4, :cond_85

    :goto_53
    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/estrongs/android/pop/d/e;->j:J

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/estrongs/android/pop/d/e;->m:Z

    const/4 v3, 0x0

    aget-object v3, v7, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v3

    iput-boolean v3, v1, Lcom/estrongs/android/pop/d/e;->k:Z

    const/4 v3, 0x0

    aget-object v3, v7, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v3

    iput-boolean v3, v1, Lcom/estrongs/android/pop/d/e;->l:Z
    :try_end_79
    .catchall {:try_start_39 .. :try_end_79} :catchall_152
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_39 .. :try_end_79} :catch_9d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_79} :catch_ba

    if-eqz v2, :cond_81

    :try_start_7b
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_81} :catch_180

    :cond_81
    :goto_81
    move-object v0, v1

    goto :goto_17

    :cond_83
    move v4, v3

    goto :goto_4a

    :cond_85
    :try_start_85
    aget-object v5, v7, v3

    invoke-virtual {v5}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_96

    iget v5, v1, Lcom/estrongs/android/pop/d/e;->f:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/estrongs/android/pop/d/e;->f:I

    :goto_93
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    :cond_96
    iget v5, v1, Lcom/estrongs/android/pop/d/e;->g:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/estrongs/android/pop/d/e;->g:I
    :try_end_9c
    .catchall {:try_start_85 .. :try_end_9c} :catchall_152
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_85 .. :try_end_9c} :catch_9d
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_9c} :catch_ba

    goto :goto_93

    :catch_9d
    move-exception v1

    move-object v1, v2

    :goto_9f
    if-eqz v1, :cond_17

    :try_start_a1
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a7} :catch_a9

    goto/16 :goto_17

    :catch_a9
    move-exception v1

    goto/16 :goto_17

    :cond_ac
    :try_start_ac
    const-string v3, "File"

    iput-object v3, v1, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/estrongs/android/pop/d/e;->e:J
    :try_end_b9
    .catchall {:try_start_ac .. :try_end_b9} :catchall_152
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_ac .. :try_end_b9} :catch_9d
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b9} :catch_ba

    goto :goto_53

    :catch_ba
    move-exception v1

    :goto_bb
    if-eqz v2, :cond_17

    :try_start_bd
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c3} :catch_c5

    goto/16 :goto_17

    :catch_c5
    move-exception v1

    goto/16 :goto_17

    :cond_c8
    :try_start_c8
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_20

    const-string v7, " "

    const-string v8, "\\ "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_d7
    .catchall {:try_start_c8 .. :try_end_d7} :catchall_152
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_c8 .. :try_end_d7} :catch_9d
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_d7} :catch_ba

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1e

    :cond_dc
    :try_start_dc
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v6

    if-eqz v6, :cond_15c

    array-length v7, v6

    if-lez v7, :cond_15c

    new-instance v1, Lcom/estrongs/android/pop/d/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/d/e;-><init>(Ljava/lang/String;)V

    array-length v5, v6

    if-le v5, v4, :cond_127

    :goto_ed
    iput-boolean v4, v1, Lcom/estrongs/android/pop/d/e;->d:Z

    iget-boolean v4, v1, Lcom/estrongs/android/pop/d/e;->d:Z

    if-eqz v4, :cond_144

    array-length v4, v6

    :goto_f4
    if-lt v3, v4, :cond_129

    :goto_f6
    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/estrongs/android/pop/d/e;->j:J

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/estrongs/android/pop/d/e;->m:Z

    const/4 v3, 0x0

    aget-object v3, v6, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v3

    iput-boolean v3, v1, Lcom/estrongs/android/pop/d/e;->k:Z

    const/4 v3, 0x0

    aget-object v3, v6, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v3

    iput-boolean v3, v1, Lcom/estrongs/android/pop/d/e;->l:Z
    :try_end_11c
    .catchall {:try_start_dc .. :try_end_11c} :catchall_152
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_11c} :catch_141
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_dc .. :try_end_11c} :catch_9d
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_11c} :catch_ba

    if-eqz v2, :cond_124

    :try_start_11e
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_124} :catch_17e

    :cond_124
    :goto_124
    move-object v0, v1

    goto/16 :goto_17

    :cond_127
    move v4, v3

    goto :goto_ed

    :cond_129
    :try_start_129
    aget-object v5, v6, v3

    invoke-virtual {v5}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_13a

    iget v5, v1, Lcom/estrongs/android/pop/d/e;->f:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/estrongs/android/pop/d/e;->f:I

    :goto_137
    add-int/lit8 v3, v3, 0x1

    goto :goto_f4

    :cond_13a
    iget v5, v1, Lcom/estrongs/android/pop/d/e;->g:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/estrongs/android/pop/d/e;->g:I

    goto :goto_137

    :catch_141
    move-exception v1

    goto/16 :goto_2e

    :cond_144
    const-string v3, "File"

    iput-object v3, v1, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v6, v3

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/estrongs/android/pop/d/e;->e:J
    :try_end_151
    .catchall {:try_start_129 .. :try_end_151} :catchall_152
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_151} :catch_141
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_129 .. :try_end_151} :catch_9d
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_151} :catch_ba

    goto :goto_f6

    :catchall_152
    move-exception v0

    :goto_153
    if-eqz v2, :cond_15b

    :try_start_155
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_15b} :catch_170

    :cond_15b
    :goto_15b
    throw v0

    :cond_15c
    :try_start_15c
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const-string v6, " "

    const-string v7, "\\ "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_16b
    .catchall {:try_start_15c .. :try_end_16b} :catchall_152
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_16b} :catch_141
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_15c .. :try_end_16b} :catch_9d
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_16b} :catch_ba

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2c

    :catch_170
    move-exception v1

    goto :goto_15b

    :catchall_172
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_153

    :catch_176
    move-exception v1

    move-object v2, v0

    goto/16 :goto_bb

    :catch_17a
    move-exception v1

    move-object v1, v0

    goto/16 :goto_9f

    :catch_17e
    move-exception v0

    goto :goto_124

    :catch_180
    move-exception v0

    goto/16 :goto_81

    :catch_183
    move-exception v1

    goto/16 :goto_17
.end method

.method public static g(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 7

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    :try_start_a
    invoke-static {v3, v1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_d3
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_a .. :try_end_d} :catch_79
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_aa

    move-result-object v1

    if-nez v1, :cond_36

    if-nez v0, :cond_35

    if-eqz v1, :cond_1a

    :try_start_14
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_1a
    const/4 v1, 0x1

    invoke-static {v3, v1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    if-nez v2, :cond_35

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_35} :catch_11e

    :cond_35
    :goto_35
    return-object v0

    :cond_36
    :try_start_36
    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_103
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_36 .. :try_end_39} :catch_112
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_110

    move-result-object v0

    if-nez v0, :cond_4b

    :try_start_3c
    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_108
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3c .. :try_end_4a} :catch_118
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_4a} :catch_110

    move-result-object v0

    :cond_4b
    if-nez v0, :cond_71

    if-eqz v1, :cond_55

    :try_start_4f
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_55
    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    if-eqz v1, :cond_71

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_71

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_70} :catch_fe

    move-result-object v0

    :cond_71
    :goto_71
    if-eqz v0, :cond_35

    sget-object v2, Lcom/estrongs/android/pop/fs/FtpFileSystem;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    :catch_79
    move-exception v1

    move-object v1, v0

    :goto_7b
    if-nez v1, :cond_121

    if-eqz v0, :cond_85

    :try_start_7f
    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_85
    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v0

    if-eqz v0, :cond_121

    invoke-virtual {v0, v4}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    if-nez v1, :cond_121

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_a0} :catch_a5

    move-result-object v1

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_71

    :catch_a5
    move-exception v2

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_71

    :catch_aa
    move-exception v1

    move-object v1, v0

    :goto_ac
    if-nez v0, :cond_71

    if-eqz v1, :cond_b6

    :try_start_b0
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_b6
    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    if-eqz v1, :cond_71

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_71

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_d1} :catch_10d

    move-result-object v0

    goto :goto_71

    :catchall_d3
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_d8
    if-nez v2, :cond_fd

    if-eqz v1, :cond_e2

    :try_start_dc
    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    :cond_e2
    const/4 v1, 0x1

    invoke-static {v3, v1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Z)Lorg/apache/commons/net/ftp/FTPClient;

    move-result-object v1

    if-eqz v1, :cond_fd

    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    if-nez v2, :cond_fd

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_fd} :catch_101

    :cond_fd
    :goto_fd
    throw v0

    :catch_fe
    move-exception v2

    goto/16 :goto_71

    :catch_101
    move-exception v1

    goto :goto_fd

    :catchall_103
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_d8

    :catchall_108
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_d8

    :catch_10d
    move-exception v2

    goto/16 :goto_71

    :catch_110
    move-exception v2

    goto :goto_ac

    :catch_112
    move-exception v2

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_7b

    :catch_118
    move-exception v2

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_7b

    :catch_11e
    move-exception v1

    goto/16 :goto_35

    :cond_121
    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_71
.end method

.method private static i(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static j(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_a

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_a
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
