.class public Lcom/estrongs/android/pop/fs/SFtpFileSystem;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/String;

.field private static d:Lcom/jcraft/jsch/JSch;

.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/fs/l;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b:Landroid/content/Context;

    sput-object v0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->c:Ljava/lang/String;

    new-instance v0, Lcom/jcraft/jsch/JSch;

    invoke-direct {v0}, Lcom/jcraft/jsch/JSch;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->d:Lcom/jcraft/jsch/JSch;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->e:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;
    .registers 15

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x0

    const-string v2, "22"

    :try_start_5
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_ad

    move-result-object v4

    :try_start_9
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_dc
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_e7

    move-result-object v3

    :try_start_11
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    const-string v2, "22"

    :cond_19
    invoke-static {v4, v1, v3, v2}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/fs/l;
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_e1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_eb

    move-result-object v5

    if-nez v5, :cond_2d

    if-eqz v5, :cond_2c

    iget-object v1, v5, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {v4, v3, v2, v5}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_2c
    :goto_2c
    return-object v0

    :cond_2d
    :try_start_2d
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v8, v5, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v8, v1}, Lcom/jcraft/jsch/ChannelSftp;->h(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v9

    new-instance v1, Lcom/estrongs/android/pop/d/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/d/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v8

    iput-boolean v8, v1, Lcom/estrongs/android/pop/d/e;->d:Z

    iget-boolean v8, v1, Lcom/estrongs/android/pop/d/e;->d:Z

    if-nez v8, :cond_50

    const-string v8, "File"

    iput-object v8, v1, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/jcraft/jsch/SftpATTRS;->g()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/estrongs/android/pop/d/e;->e:J

    :cond_50
    invoke-virtual {v9}, Lcom/jcraft/jsch/SftpATTRS;->k()I

    move-result v8

    int-to-long v10, v8

    iput-wide v10, v1, Lcom/estrongs/android/pop/d/e;->j:J

    iget-wide v10, v1, Lcom/estrongs/android/pop/d/e;->j:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    iput-wide v10, v1, Lcom/estrongs/android/pop/d/e;->j:J

    const-wide/16 v10, 0x0

    iput-wide v10, v1, Lcom/estrongs/android/pop/d/e;->h:J

    invoke-virtual {v9}, Lcom/jcraft/jsch/SftpATTRS;->j()I

    move-result v8

    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_a7

    move v8, v7

    :goto_6b
    iput-boolean v8, v1, Lcom/estrongs/android/pop/d/e;->k:Z

    invoke-virtual {v9}, Lcom/jcraft/jsch/SftpATTRS;->j()I

    move-result v8

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_a9

    move v8, v7

    :goto_76
    iput-boolean v8, v1, Lcom/estrongs/android/pop/d/e;->l:Z

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/jcraft/jsch/SftpATTRS;->a()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_87

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_87
    iput-object v8, v1, Lcom/estrongs/android/pop/d/e;->p:Ljava/lang/String;

    if-eqz v10, :cond_ab

    const-string v8, "."

    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_ab

    :goto_93
    iput-boolean v6, v1, Lcom/estrongs/android/pop/d/e;->m:Z

    const/4 v6, 0x0

    sput-object v6, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;
    :try_end_98
    .catchall {:try_start_2d .. :try_end_98} :catchall_e5
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_98} :catch_ee

    if-eqz v5, :cond_a5

    iget-object v0, v5, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-static {v4, v3, v2, v5}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_a5
    move-object v0, v1

    goto :goto_2c

    :cond_a7
    move v8, v6

    goto :goto_6b

    :cond_a9
    move v8, v6

    goto :goto_76

    :cond_ab
    move v6, v7

    goto :goto_93

    :catch_ad
    move-exception v1

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    :goto_b1
    :try_start_b1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;
    :try_end_ba
    .catchall {:try_start_b1 .. :try_end_ba} :catchall_e5

    if-eqz v5, :cond_2c

    iget-object v1, v5, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {v4, v3, v2, v5}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    goto/16 :goto_2c

    :catchall_c9
    move-exception v1

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v0, v1

    :goto_ce
    if-eqz v5, :cond_db

    iget-object v1, v5, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_db

    invoke-static {v4, v3, v2, v5}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_db
    throw v0

    :catchall_dc
    move-exception v1

    move-object v3, v0

    move-object v5, v0

    move-object v0, v1

    goto :goto_ce

    :catchall_e1
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    goto :goto_ce

    :catchall_e5
    move-exception v0

    goto :goto_ce

    :catch_e7
    move-exception v1

    move-object v3, v0

    move-object v5, v0

    goto :goto_b1

    :catch_eb
    move-exception v1

    move-object v5, v0

    goto :goto_b1

    :catch_ee
    move-exception v1

    goto :goto_b1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/fs/l;
    .registers 11

    const/4 v2, 0x0

    :try_start_1
    sget-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->e:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_114

    :try_start_4
    sget-object v0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->e:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1e6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->e:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    :goto_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_4 .. :try_end_5c} :catchall_111

    :goto_5c
    :try_start_5c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_12e

    new-instance v1, Lcom/estrongs/android/pop/fs/l;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/fs/l;-><init>(Lcom/estrongs/android/pop/fs/l;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_68} :catch_114

    :try_start_68
    sget-object v0, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    iput-object v0, v1, Lcom/estrongs/android/pop/fs/l;->c:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->d:Lcom/jcraft/jsch/JSch;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, p0, p2, v3}, Lcom/jcraft/jsch/JSch;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    new-instance v0, Lcom/estrongs/android/pop/fs/i;

    invoke-direct {v0, p1}, Lcom/estrongs/android/pop/fs/i;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Session;->a(Lcom/jcraft/jsch/UserInfo;)V

    iget-object v0, v1, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Session;->a(I)V

    iget-object v0, v1, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    const-string v3, "sftp"

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Session;->a(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/ChannelSftp;

    iput-object v0, v1, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v0, v1, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/ChannelSftp;->b(I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "sftp://"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "22"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    const-string p3, ""

    :cond_cb
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b:Landroid/content/Context;

    if-eqz v3, :cond_10f

    sget-object v3, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/c;->j(Ljava/lang/String;)I

    move-result v0

    sget-object v3, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a:[Ljava/lang/String;

    aget-object v0, v3, v0

    iput-object v0, v1, Lcom/estrongs/android/pop/fs/l;->c:Ljava/lang/String;

    iget-object v0, v1, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v3, v1, Lcom/estrongs/android/pop/fs/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/ChannelSftp;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_10f

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1da

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    if-eqz v0, :cond_1da

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/estrongs/android/pop/fs/l;->d:Z
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_10f} :catch_1d5

    :cond_10f
    :goto_10f
    move-object v0, v1

    :cond_110
    :goto_110
    return-object v0

    :catchall_111
    move-exception v0

    :try_start_112
    monitor-exit v1
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    :try_start_113
    throw v0
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_114} :catch_114

    :catch_114
    move-exception v0

    move-object v1, v2

    :goto_116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v1, :cond_124

    iget-object v3, v1, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    if-eqz v3, :cond_124

    iget-object v1, v1, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->b()V

    :cond_124
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;

    instance-of v0, v0, Lcom/jcraft/jsch/JSchException;

    move-object v0, v2

    goto :goto_110

    :cond_12e
    :try_start_12e
    monitor-enter v3
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_12f} :catch_114

    const/4 v0, 0x0

    :try_start_130
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/fs/l;
    :try_end_136
    .catchall {:try_start_130 .. :try_end_136} :catchall_1d1

    :try_start_136
    monitor-exit v3
    :try_end_137
    .catchall {:try_start_136 .. :try_end_137} :catchall_1df

    :try_start_137
    iget-object v1, v0, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_1b9

    sget-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b:Landroid/content/Context;

    if-eqz v1, :cond_1b9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "sftp://"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v1, "22"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d8

    const-string v1, ""

    :goto_16c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/estrongs/android/pop/c;->j(Ljava/lang/String;)I

    move-result v1

    sget-object v4, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a:[Ljava/lang/String;

    aget-object v1, v4, v1

    iput-object v1, v0, Lcom/estrongs/android/pop/fs/l;->c:Ljava/lang/String;

    iget-object v1, v0, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v4, v0, Lcom/estrongs/android/pop/fs/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/ChannelSftp;->i(Ljava/lang/String;)V

    sget-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1b9

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_1a9

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    if-nez v4, :cond_1ad

    :cond_1a9
    iget-boolean v4, v0, Lcom/estrongs/android/pop/fs/l;->d:Z

    if-eqz v4, :cond_110

    :cond_1ad
    if-eqz v1, :cond_1b9

    iget-boolean v4, v0, Lcom/estrongs/android/pop/fs/l;->d:Z

    if-eqz v4, :cond_1b9

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    if-nez v1, :cond_110

    :cond_1b9
    iget-object v1, v0, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp;->j()V

    iget-object v1, v0, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->b()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_1c9} :catch_1cb

    goto/16 :goto_5c

    :catch_1cb
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_116

    :catchall_1d1
    move-exception v0

    move-object v1, v2

    :goto_1d3
    :try_start_1d3
    monitor-exit v3
    :try_end_1d4
    .catchall {:try_start_1d3 .. :try_end_1d4} :catchall_1e4

    :try_start_1d4
    throw v0

    :catch_1d5
    move-exception v0

    goto/16 :goto_116

    :cond_1d8
    move-object v1, p3

    goto :goto_16c

    :cond_1da
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/estrongs/android/pop/fs/l;->d:Z
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_1dd} :catch_1d5

    goto/16 :goto_10f

    :catchall_1df
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1d3

    :catchall_1e4
    move-exception v0

    goto :goto_1d3

    :cond_1e6
    move-object v3, v0

    goto/16 :goto_5b
.end method

.method public static a(Ljava/lang/String;J)Ljava/io/InputStream;
    .registers 11

    const/4 v6, 0x0

    const-string v0, "22"

    :try_start_3
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_17

    const-string v5, "22"

    :cond_17
    invoke-static {v3, v0, v4, v5}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/fs/l;

    move-result-object v2

    if-nez v2, :cond_1f

    move-object v0, v6

    :goto_1e
    return-object v0

    :cond_1f
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->a(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object v1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/pop/fs/j;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/fs/j;-><init>(Ljava/io/InputStream;Lcom/estrongs/android/pop/fs/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_32} :catch_33

    goto :goto_1e

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;

    move-object v0, v6

    goto :goto_1e
.end method

.method private static a(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)Ljava/lang/String;
    .registers 12

    const-string v1, ""

    :try_start_2
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->b()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v3

    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->k()I

    move-result v0

    int-to-long v4, v0

    new-instance v6, Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->c:Ljava/lang/String;

    if-nez v0, :cond_8b

    const-string v0, "MM/dd/yy"

    :goto_17
    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_8e

    const-string v0, ""

    :goto_27
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " | "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    const-wide/16 v7, 0x3e8

    mul-long/2addr v4, v7

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " | "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_86} :catch_97

    move-result-object v0

    const/4 v1, 0x0

    :try_start_88
    sput-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8a} :catch_a5

    :goto_8a
    return-object v0

    :cond_8b
    :try_start_8b
    sget-object v0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->c:Ljava/lang/String;

    goto :goto_17

    :cond_8e
    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->g()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_95} :catch_97

    move-result-object v0

    goto :goto_27

    :catch_97
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_9b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;

    goto :goto_8a

    :catch_a5
    move-exception v1

    goto :goto_9b
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/estrongs/android/pop/d/g;)Ljava/util/Map;
    .registers 20
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

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->k()I

    move-result v5

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->l()I

    move-result v2

    if-nez v5, :cond_a1

    new-instance v0, Lcom/estrongs/android/pop/b/d;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/b/d;-><init>(Ljava/util/Map;I)V

    move-object v2, v0

    :goto_23
    if-eqz v2, :cond_c2

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    :goto_2a
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/f;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_40

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_40

    new-instance v4, Lcom/estrongs/android/pop/g;

    invoke-direct {v4, v2}, Lcom/estrongs/android/pop/g;-><init>(Ljava/util/Map;)V

    :cond_40
    const/4 v8, 0x0

    :try_start_41
    const-string v3, "recursion"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_50} :catch_12f

    move-result v8

    :goto_51
    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->b()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_c9

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->j()Z

    move-result v2

    if-nez v2, :cond_c9

    const/4 v6, 0x0

    :goto_67
    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->m()Z

    move-result v7

    if-eqz p5, :cond_74

    invoke-interface/range {p5 .. p5}, Lcom/estrongs/android/pop/d/g;->a()V

    :cond_74
    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v2, "22"

    :try_start_79
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_f8
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7c} :catch_e4

    move-result-object v12

    :try_start_7d
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_109
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_84} :catch_11a

    move-result-object v11

    :try_start_85
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_132

    const-string v10, "22"
    :try_end_8d
    .catchall {:try_start_85 .. :try_end_8d} :catchall_10c
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8d} :catch_11e

    :goto_8d
    :try_start_8d
    invoke-static {v12, v9, v11, v10}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/fs/l;
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_10e
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_123

    move-result-object v2

    if-nez v2, :cond_cb

    if-eqz v2, :cond_a0

    iget-object v1, v2, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-static {v12, v11, v10, v2}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_a0
    :goto_a0
    return-object v0

    :cond_a1
    const/4 v3, 0x1

    if-ne v5, v3, :cond_ac

    new-instance v0, Lcom/estrongs/android/pop/b/e;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/b/e;-><init>(Ljava/util/Map;I)V

    move-object v2, v0

    goto/16 :goto_23

    :cond_ac
    const/4 v3, 0x2

    if-ne v5, v3, :cond_b7

    new-instance v0, Lcom/estrongs/android/pop/b/c;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/b/c;-><init>(Ljava/util/Map;I)V

    move-object v2, v0

    goto/16 :goto_23

    :cond_b7
    const/4 v3, 0x3

    if-ne v5, v3, :cond_135

    new-instance v0, Lcom/estrongs/android/pop/b/b;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/b/b;-><init>(Ljava/util/Map;I)V

    move-object v2, v0

    goto/16 :goto_23

    :cond_c2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/16 :goto_2a

    :cond_c9
    const/4 v6, 0x1

    goto :goto_67

    :cond_cb
    move-object v3, p1

    move-object/from16 v9, p5

    :try_start_ce
    invoke-static/range {v0 .. v9}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/util/Map;Ljava/util/HashMap;Lcom/estrongs/android/pop/fs/l;Ljava/lang/String;Ljava/io/FileFilter;IZZZLcom/estrongs/android/pop/d/g;)V
    :try_end_d1
    .catchall {:try_start_ce .. :try_end_d1} :catchall_111
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d1} :catch_129

    if-eqz v2, :cond_de

    iget-object v1, v2, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_de

    invoke-static {v12, v11, v10, v2}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_de
    :goto_de
    if-eqz p5, :cond_a0

    invoke-interface/range {p5 .. p5}, Lcom/estrongs/android/pop/d/g;->b()V

    goto :goto_a0

    :catch_e4
    move-exception v1

    move-object v4, v9

    move-object v5, v13

    :goto_e7
    :try_start_e7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ea
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_115

    if-eqz v5, :cond_de

    iget-object v1, v5, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_de

    invoke-static {v4, v3, v2, v5}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    goto :goto_de

    :catchall_f8
    move-exception v0

    move-object v11, v3

    move-object v12, v9

    :goto_fb
    if-eqz v13, :cond_108

    iget-object v1, v13, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_108

    invoke-static {v12, v11, v2, v13}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_108
    throw v0

    :catchall_109
    move-exception v0

    move-object v11, v3

    goto :goto_fb

    :catchall_10c
    move-exception v0

    goto :goto_fb

    :catchall_10e
    move-exception v0

    move-object v2, v10

    goto :goto_fb

    :catchall_111
    move-exception v0

    move-object v13, v2

    move-object v2, v10

    goto :goto_fb

    :catchall_115
    move-exception v0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    goto :goto_fb

    :catch_11a
    move-exception v1

    move-object v4, v12

    move-object v5, v13

    goto :goto_e7

    :catch_11e
    move-exception v1

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    goto :goto_e7

    :catch_123
    move-exception v1

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    goto :goto_e7

    :catch_129
    move-exception v1

    move-object v3, v11

    move-object v4, v12

    move-object v5, v2

    move-object v2, v10

    goto :goto_e7

    :catch_12f
    move-exception v2

    goto/16 :goto_51

    :cond_132
    move-object v10, v2

    goto/16 :goto_8d

    :cond_135
    move-object v2, v0

    goto/16 :goto_23
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v2, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b:Landroid/content/Context;

    if-eqz v2, :cond_6

    if-eqz p0, :cond_8

    :cond_6
    sput-object p0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b:Landroid/content/Context;

    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/g;->c(Ljava/lang/String;)Lcom/estrongs/android/util/h;

    move-result-object v15

    if-eqz v15, :cond_1c

    iget-boolean v2, v15, Lcom/estrongs/android/util/h;->e:Z

    if-nez v2, :cond_16

    iget-boolean v2, v15, Lcom/estrongs/android/util/h;->b:Z

    if-eqz v2, :cond_1c

    :cond_16
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_1b
    :goto_1b
    return-object v2

    :cond_1c
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v3, "22"

    :try_start_22
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_318
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_32e

    move-result-object v7

    :try_start_26
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_31e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_337

    move-result-object v6

    :try_start_2e
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_35a

    const-string v5, "22"
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_323
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_36} :catch_340

    :goto_36
    :try_start_36
    invoke-static {v7, v2, v6, v5}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/fs/l;
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_260
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_349

    move-result-object v8

    if-nez v8, :cond_4b

    if-eqz v8, :cond_49

    iget-object v2, v8, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-static {v7, v6, v5, v8}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_49
    const/4 v2, 0x0

    goto :goto_1b

    :cond_4b
    :try_start_4b
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    iget-object v2, v8, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->b(Ljava/lang/String;)V

    iget-object v2, v8, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    const-string v3, "."

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/ChannelSftp;->d(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v10

    const/4 v4, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->k()I

    move-result v17

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->l()I

    move-result v11

    const/4 v2, 0x0

    if-nez v17, :cond_ea

    new-instance v4, Lcom/estrongs/android/pop/b/d;

    invoke-direct {v4, v3, v11}, Lcom/estrongs/android/pop/b/d;-><init>(Ljava/util/Map;I)V

    move-object v13, v2

    move-object v14, v3

    move-object v2, v4

    :goto_7f
    if-eqz v2, :cond_134

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V
    :try_end_86
    .catchall {:try_start_4b .. :try_end_86} :catchall_260
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_86} :catch_13b

    :goto_86
    if-nez p2, :cond_15a

    :try_start_88
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->m()Z

    move-result v2

    if-nez v2, :cond_15a

    const/4 v2, 0x0

    move v12, v2

    :goto_94
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->b()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_15e

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->j()Z

    move-result v2

    if-nez v2, :cond_15e

    const/4 v2, 0x0

    move v11, v2

    :goto_ab
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->V()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->c:Ljava/lang/String;

    if-eqz v10, :cond_d7

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_bb
    :goto_bb
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_162

    if-eqz v13, :cond_d7

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_d7

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_302

    :cond_d7
    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;
    :try_end_da
    .catchall {:try_start_88 .. :try_end_da} :catchall_260
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_da} :catch_210

    if-eqz v8, :cond_e7

    iget-object v2, v8, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v2

    if-eqz v2, :cond_e7

    invoke-static {v7, v6, v5, v8}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_e7
    move-object v2, v4

    goto/16 :goto_1b

    :cond_ea
    const/4 v12, 0x1

    move/from16 v0, v17

    if-ne v0, v12, :cond_f8

    :try_start_ef
    new-instance v4, Lcom/estrongs/android/pop/b/e;

    invoke-direct {v4, v3, v11}, Lcom/estrongs/android/pop/b/e;-><init>(Ljava/util/Map;I)V

    move-object v13, v2

    move-object v14, v3

    move-object v2, v4

    goto :goto_7f

    :cond_f8
    const/4 v12, 0x2

    move/from16 v0, v17

    if-ne v0, v12, :cond_107

    new-instance v4, Lcom/estrongs/android/pop/b/c;

    invoke-direct {v4, v3, v11}, Lcom/estrongs/android/pop/b/c;-><init>(Ljava/util/Map;I)V

    move-object v13, v2

    move-object v14, v3

    move-object v2, v4

    goto/16 :goto_7f

    :cond_107
    const/4 v12, 0x3

    move/from16 v0, v17

    if-ne v0, v12, :cond_116

    new-instance v4, Lcom/estrongs/android/pop/b/b;

    invoke-direct {v4, v3, v11}, Lcom/estrongs/android/pop/b/b;-><init>(Ljava/util/Map;I)V

    move-object v13, v2

    move-object v14, v3

    move-object v2, v4

    goto/16 :goto_7f

    :cond_116
    const/4 v12, 0x4

    move/from16 v0, v17

    if-ne v0, v12, :cond_355

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/ah;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Lcom/estrongs/android/pop/b/f;

    invoke-direct {v4, v3, v11}, Lcom/estrongs/android/pop/b/f;-><init>(Ljava/util/Map;I)V

    move-object v13, v2

    move-object v14, v3

    move-object v2, v4

    goto/16 :goto_7f

    :cond_134
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_139
    .catchall {:try_start_ef .. :try_end_139} :catchall_260
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_139} :catch_13b

    goto/16 :goto_86

    :catch_13b
    move-exception v2

    move-object v3, v2

    move-object v4, v5

    move-object v5, v6

    move-object v2, v9

    move-object v6, v7

    move-object v7, v8

    :goto_142
    :try_start_142
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;
    :try_end_14b
    .catchall {:try_start_142 .. :try_end_14b} :catchall_327

    if-eqz v7, :cond_1b

    iget-object v3, v7, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static {v6, v5, v4, v7}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    goto/16 :goto_1b

    :cond_15a
    const/4 v2, 0x1

    move v12, v2

    goto/16 :goto_94

    :cond_15e
    const/4 v2, 0x1

    move v11, v2

    goto/16 :goto_ab

    :cond_162
    :try_start_162
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_bb

    check-cast v2, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a()Ljava/lang/String;

    move-result-object v10

    if-nez v12, :cond_17b

    if-eqz v10, :cond_17b

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x2e

    if-eq v3, v9, :cond_bb

    :cond_17b
    const-string v3, "."

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bb

    const-string v3, ".."

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bb

    invoke-static {v15, v10}, Lcom/estrongs/android/util/g;->a(Lcom/estrongs/android/util/h;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_bb

    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->b()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jcraft/jsch/SftpATTRS;->e()Z

    move-result v9

    if-eqz v9, :cond_352

    const-string v3, "/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_219

    iget-object v3, v8, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/jcraft/jsch/ChannelSftp;->h(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v3

    move-object v9, v3

    :goto_1bf
    invoke-virtual {v9}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-eqz v19, :cond_23c

    const-string v3, "/"

    :goto_1dc
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    if-eqz v17, :cond_1ed

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_23f

    :cond_1ed
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f6
    :goto_1f6
    if-eqz v11, :cond_2f1

    invoke-static {v2}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x1

    aput-object v2, v3, v9

    move-object/from16 v0, v20

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_bb

    :catch_210
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_142

    :cond_219
    iget-object v3, v8, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/jcraft/jsch/ChannelSftp;->h(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v3

    move-object v9, v3

    goto :goto_1bf

    :cond_23c
    const-string v3, ""

    goto :goto_1dc

    :cond_23f
    const/4 v3, 0x2

    move/from16 v0, v17

    if-ne v0, v3, :cond_274

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v3, v10

    const/16 v21, 0x1

    if-eqz v19, :cond_26f

    const-wide/16 v9, 0x0

    :goto_254
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v21

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25f
    .catchall {:try_start_162 .. :try_end_25f} :catchall_260
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_25f} :catch_210

    goto :goto_1f6

    :catchall_260
    move-exception v2

    :goto_261
    if-eqz v8, :cond_26e

    iget-object v3, v8, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v3

    if-eqz v3, :cond_26e

    invoke-static {v7, v6, v5, v8}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_26e
    throw v2

    :cond_26f
    :try_start_26f
    invoke-virtual {v9}, Lcom/jcraft/jsch/SftpATTRS;->g()J

    move-result-wide v9

    goto :goto_254

    :cond_274
    const/4 v3, 0x3

    move/from16 v0, v17

    if-ne v0, v3, :cond_298

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v3, v10

    const/4 v10, 0x1

    invoke-virtual {v9}, Lcom/jcraft/jsch/SftpATTRS;->k()I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v10

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1f6

    :cond_298
    const/4 v3, 0x4

    move/from16 v0, v17

    if-ne v0, v3, :cond_1f6

    if-nez v13, :cond_2bf

    const/4 v3, 0x0

    :goto_2a0
    if-eqz v3, :cond_2d7

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v9, v10

    const/4 v10, 0x1

    iget v3, v3, Lcom/estrongs/android/util/aj;->e:I

    int-to-long v0, v3

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v10

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1f6

    :cond_2bf
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/android/util/aj;

    goto :goto_2a0

    :cond_2d7
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x1

    const-wide/16 v21, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v9

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1f6

    :cond_2f1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v2, v3

    move-object/from16 v0, v20

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_bb

    :cond_302
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/util/aj;

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v2, v10}, Lcom/estrongs/android/util/ah;->a(Lcom/estrongs/android/util/aj;Z)V
    :try_end_316
    .catchall {:try_start_26f .. :try_end_316} :catchall_260
    .catch Ljava/lang/Exception; {:try_start_26f .. :try_end_316} :catch_210

    goto/16 :goto_d1

    :catchall_318
    move-exception v2

    move-object v6, v4

    move-object v7, v5

    move-object v5, v3

    goto/16 :goto_261

    :catchall_31e
    move-exception v2

    move-object v5, v3

    move-object v6, v4

    goto/16 :goto_261

    :catchall_323
    move-exception v2

    move-object v5, v3

    goto/16 :goto_261

    :catchall_327
    move-exception v2

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    goto/16 :goto_261

    :catch_32e
    move-exception v2

    move-object v6, v5

    move-object v7, v8

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v9

    goto/16 :goto_142

    :catch_337
    move-exception v2

    move-object v5, v4

    move-object v6, v7

    move-object v4, v3

    move-object v7, v8

    move-object v3, v2

    move-object v2, v9

    goto/16 :goto_142

    :catch_340
    move-exception v2

    move-object v4, v3

    move-object v5, v6

    move-object v3, v2

    move-object v6, v7

    move-object v7, v8

    move-object v2, v9

    goto/16 :goto_142

    :catch_349
    move-exception v2

    move-object v3, v2

    move-object v4, v5

    move-object v5, v6

    move-object v2, v9

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_142

    :cond_352
    move-object v9, v3

    goto/16 :goto_1bf

    :cond_355
    move-object v13, v2

    move-object v14, v3

    move-object v2, v4

    goto/16 :goto_7f

    :cond_35a
    move-object v5, v3

    goto/16 :goto_36
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/util/HashMap;Lcom/estrongs/android/pop/fs/l;Ljava/lang/String;Ljava/io/FileFilter;IZZZLcom/estrongs/android/pop/d/g;)V
    .registers 24
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
            "Lcom/estrongs/android/pop/fs/l;",
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

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string v1, "/"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_26
    invoke-static/range {p3 .. p3}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->a(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v1, v12}, Lcom/jcraft/jsch/ChannelSftp;->b(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    const-string v2, "."

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->d(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_44
    :goto_44
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_44

    move-object v0, v1

    check-cast v0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    invoke-virtual {v11}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->a(Ljava/lang/String;)V

    if-eqz p9, :cond_8c

    invoke-interface/range {p9 .. p9}, Lcom/estrongs/android/pop/d/g;->c()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_8c
    invoke-virtual {v11}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->b()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v2

    if-eqz v2, :cond_c6

    if-eqz p8, :cond_c6

    invoke-virtual {v1}, Lcom/jcraft/jsch/SftpATTRS;->e()Z

    move-result v1

    if-nez v1, :cond_c6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-static/range {v1 .. v10}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/util/Map;Ljava/util/HashMap;Lcom/estrongs/android/pop/fs/l;Ljava/lang/String;Ljava/io/FileFilter;IZZZLcom/estrongs/android/pop/d/g;)V

    :cond_c6
    if-eqz p9, :cond_ce

    invoke-interface/range {p9 .. p9}, Lcom/estrongs/android/pop/d/g;->c()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_ce
    if-eqz p4, :cond_dd

    new-instance v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem$SFTPFileWrapper;

    invoke-direct {v1, v11}, Lcom/estrongs/android/pop/fs/SFtpFileSystem$SFTPFileWrapper;-><init>(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)V

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_44

    :cond_dd
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object v4, v11

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v1 .. v7}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp$LsEntry;IZZ)V

    if-eqz p9, :cond_44

    move-object/from16 v0, p9

    invoke-interface {v0, p0}, Lcom/estrongs/android/pop/d/g;->a(Ljava/lang/Object;)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f2} :catch_f4

    goto/16 :goto_44

    :catch_f4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp$LsEntry;IZZ)V
    .registers 14
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
            "Lcom/jcraft/jsch/ChannelSftp$LsEntry;",
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
    :try_start_5
    invoke-virtual {p3}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->b()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v1

    if-nez p6, :cond_1a

    invoke-virtual {p3}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_4

    :cond_1a
    invoke-virtual {p3}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p3}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2c
    invoke-virtual {p3}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_80

    const-string v0, "/"

    :goto_51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_5d

    if-ne p4, v4, :cond_83

    :cond_5d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_64
    :goto_64
    if-eqz p5, :cond_c0

    invoke-static {p3}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)Ljava/lang/String;

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
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7a} :catch_7b

    goto :goto_4

    :catch_7b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_80
    :try_start_80
    const-string v0, ""

    goto :goto_51

    :cond_83
    if-ne p4, v5, :cond_a3

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    if-eqz v2, :cond_9e

    const-wide/16 v0, 0x0

    :goto_94
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    :cond_9e
    invoke-virtual {v1}, Lcom/jcraft/jsch/SftpATTRS;->g()J

    move-result-wide v0

    goto :goto_94

    :cond_a3
    const/4 v0, 0x3

    if-ne p4, v0, :cond_64

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/jcraft/jsch/SftpATTRS;->k()I

    move-result v1

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    :cond_c0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_cd} :catch_7b

    goto/16 :goto_4
.end method

.method private static a(Landroid/content/Context;Lcom/estrongs/android/pop/fs/l;Ljava/lang/String;J)Z
    .registers 15

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;

    move-result-object v0

    :try_start_6
    iget-object v3, p1, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v3, p2}, Lcom/jcraft/jsch/ChannelSftp;->b(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    const-string v4, "."

    invoke-virtual {v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->d(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v0, p3, p4}, Lcom/estrongs/android/pop/d/a;->a(J)Lcom/estrongs/android/pop/d/c;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_23
    if-eqz v3, :cond_2a

    iget-object v0, p1, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->f(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2a} :catch_90

    :cond_2a
    const/4 v0, 0x0

    :try_start_2b
    sput-object v0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2d} :catch_9d

    move v0, v1

    :goto_2e
    return v0

    :cond_2f
    :try_start_2f
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v4, :cond_3b

    iget-boolean v6, v4, Lcom/estrongs/android/pop/d/c;->e:Z

    if-eqz v6, :cond_3b

    move v0, v2

    goto :goto_2e

    :cond_3b
    check-cast v0, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->b()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v0

    if-eqz v6, :cond_4f

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    :cond_4f
    const-string v7, ".."

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v0

    if-eqz v0, :cond_89

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3, p4}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Landroid/content/Context;Lcom/estrongs/android/pop/fs/l;Ljava/lang/String;J)Z

    move-result v0

    :goto_85
    if-nez v0, :cond_1d

    move v0, v2

    goto :goto_2e

    :cond_89
    iget-object v0, p1, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v0, v6}, Lcom/jcraft/jsch/ChannelSftp;->e(Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_8e} :catch_90

    move v0, v1

    goto :goto_85

    :catch_90
    move-exception v0

    move-object v1, v0

    move v0, v2

    :goto_93
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;

    goto :goto_2e

    :catch_9d
    move-exception v0

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    goto :goto_93
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-static {p0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->d(Ljava/lang/String;)Z

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
    .registers 13

    invoke-static {p0}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;

    move-result-object v0

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-nez v1, :cond_b1

    const/4 v2, 0x0

    const v1, 0x7f09017a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/a;->c(J)V

    :goto_1c
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v4, "22"

    :try_start_21
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_35

    const-string v4, "22"

    :cond_35
    invoke-static {v6, v3, v5, v4}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/fs/l;
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_a2
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_38} :catch_89

    move-result-object v7

    if-nez v7, :cond_4a

    if-eqz v7, :cond_48

    iget-object v0, v7, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {v6, v5, v4, v7}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_48
    const/4 v0, 0x0

    :goto_49
    return v0

    :cond_4a
    :try_start_4a
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v8, v7, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v8, v3}, Lcom/jcraft/jsch/ChannelSftp;->h(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jcraft/jsch/SftpATTRS;->d()Z

    move-result v8

    if-nez v8, :cond_84

    iget-object v8, v7, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v8, v3}, Lcom/jcraft/jsch/ChannelSftp;->e(Ljava/lang/String;)V

    const/4 v3, 0x1

    :goto_60
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->h(Ljava/lang/String;)V

    const/4 v8, 0x0

    sput-object v8, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;
    :try_end_6a
    .catchall {:try_start_4a .. :try_end_6a} :catchall_a2
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_6a} :catch_89

    if-eqz v7, :cond_77

    iget-object v8, v7, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v8

    if-eqz v8, :cond_77

    invoke-static {v6, v5, v4, v7}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_77
    :goto_77
    const-wide/16 v4, -0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_7f

    if-nez v3, :cond_82

    :cond_7f
    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/d/a;->a(JZ)V

    :cond_82
    move v0, v3

    goto :goto_49

    :cond_84
    :try_start_84
    invoke-static {p0, v7, v3, v1, v2}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Landroid/content/Context;Lcom/estrongs/android/pop/fs/l;Ljava/lang/String;J)Z
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_a2
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_89

    move-result v3

    goto :goto_60

    :catch_89
    move-exception v3

    :try_start_8a
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_a2

    const/4 v3, 0x0

    if-eqz v7, :cond_77

    iget-object v8, v7, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v8

    if-eqz v8, :cond_77

    invoke-static {v6, v5, v4, v7}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    goto :goto_77

    :catchall_a2
    move-exception v0

    if-eqz v7, :cond_b0

    iget-object v1, v7, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-static {v6, v5, v4, v7}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_b0
    throw v0

    :cond_b1
    move-wide v1, p2

    goto/16 :goto_1c
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 17

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;

    move-result-object v0

    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_196

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
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v1

    if-nez v1, :cond_2a

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v4, v1}, Lcom/estrongs/android/pop/d/a;->a(JZ)V

    const/4 v0, 0x0

    :goto_29
    return v0

    :cond_2a
    iget-boolean v8, v1, Lcom/estrongs/android/pop/d/e;->d:Z

    if-eqz v8, :cond_31

    invoke-static {p2}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->e(Ljava/lang/String;)Z

    :cond_31
    invoke-virtual {v0, v3, v4}, Lcom/estrongs/android/pop/d/a;->a(J)Lcom/estrongs/android/pop/d/c;

    move-result-object v9

    if-eqz v8, :cond_111

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_39
    invoke-static {p0, p1, v2}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/Map;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_95

    move-result-object v1

    move-object v7, v1

    :goto_3e
    const/4 v6, 0x1

    if-eqz v7, :cond_4f

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_49
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_98

    :cond_4f
    move v1, v6

    :goto_50
    if-nez v1, :cond_10e

    const/4 v1, 0x0

    :goto_53
    const-wide/16 v5, -0x1

    cmp-long v2, p3, v5

    if-nez v2, :cond_63

    if-eqz v9, :cond_60

    iget-object v2, v9, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v2, v5

    :cond_60
    invoke-virtual {v0, v3, v4, v1}, Lcom/estrongs/android/pop/d/a;->a(JZ)V

    :cond_63
    const-wide/16 v2, -0x1

    cmp-long v0, p3, v2

    if-nez v0, :cond_93

    if-nez v1, :cond_93

    if-eqz v8, :cond_187

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_187

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

    invoke-static {p0, v0, v2, v3}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    :cond_93
    :goto_93
    move v0, v1

    goto :goto_29

    :catch_95
    move-exception v2

    move-object v7, v1

    goto :goto_3e

    :cond_98
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-boolean v2, v9, Lcom/estrongs/android/pop/d/c;->e:Z

    if-eqz v2, :cond_a4

    const/4 v1, 0x0

    goto :goto_50

    :cond_a4
    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0x2f

    if-ne v5, v11, :cond_f5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    :goto_c8
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v2, v2, v11

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_ec

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_ec
    invoke-static {p0, v1, v5, v3, v4}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_49

    const/4 v1, 0x0

    goto/16 :goto_50

    :cond_f5
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

    goto :goto_c8

    :cond_10e
    const/4 v1, 0x1

    goto/16 :goto_53

    :cond_111
    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_113
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;)J

    move-result-wide v10

    long-to-int v5, v10

    int-to-long v10, v5

    iput-wide v10, v9, Lcom/estrongs/android/pop/d/c;->b:J

    const-wide/16 v10, 0x0

    iput-wide v10, v9, Lcom/estrongs/android/pop/d/c;->a:J

    iget-object v5, v9, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->f(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {p2}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->g(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v2, :cond_130

    if-nez v1, :cond_144

    :cond_130
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_136
    .catchall {:try_start_113 .. :try_end_136} :catchall_171
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_136} :catch_136

    :catch_136
    move-exception v5

    if-eqz v2, :cond_13c

    :try_start_139
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_13c
    if-eqz v1, :cond_193

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_141} :catch_17f

    move v1, v6

    goto/16 :goto_53

    :cond_144
    const/high16 v5, 0x1

    :try_start_146
    new-array v5, v5, [B

    :goto_148
    iget-boolean v7, v9, Lcom/estrongs/android/pop/d/c;->e:Z

    if-nez v7, :cond_156

    const/4 v7, 0x0

    const/high16 v10, 0x1

    invoke-virtual {v2, v5, v7, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_168

    :cond_156
    iget-boolean v5, v9, Lcom/estrongs/android/pop/d/c;->e:Z
    :try_end_158
    .catchall {:try_start_146 .. :try_end_158} :catchall_171
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_158} :catch_136

    if-eqz v5, :cond_17d

    const/4 v5, 0x0

    :goto_15b
    if-eqz v2, :cond_160

    :try_start_15d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_160
    if-eqz v1, :cond_190

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_165
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_165} :catch_183

    move v1, v5

    goto/16 :goto_53

    :cond_168
    const/4 v10, 0x0

    :try_start_169
    invoke-virtual {v1, v5, v10, v7}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v10, v7

    invoke-virtual {v0, v3, v4, v10, v11}, Lcom/estrongs/android/pop/d/a;->a(JJ)V
    :try_end_170
    .catchall {:try_start_169 .. :try_end_170} :catchall_171
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_170} :catch_136

    goto :goto_148

    :catchall_171
    move-exception v0

    if-eqz v2, :cond_177

    :try_start_174
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_177
    if-eqz v1, :cond_17c

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_17c} :catch_18e

    :cond_17c
    :goto_17c
    throw v0

    :cond_17d
    const/4 v5, 0x1

    goto :goto_15b

    :catch_17f
    move-exception v1

    move v1, v6

    goto/16 :goto_53

    :catch_183
    move-exception v1

    move v1, v5

    goto/16 :goto_53

    :cond_187
    const-wide/16 v2, -0x1

    invoke-static {p0, p2, v2, v3}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    goto/16 :goto_93

    :catch_18e
    move-exception v1

    goto :goto_17c

    :cond_190
    move v1, v5

    goto/16 :goto_53

    :cond_193
    move v1, v6

    goto/16 :goto_53

    :cond_196
    move-wide v3, p3

    goto/16 :goto_1e
.end method

.method public static a(Ljava/lang/String;I)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-string v2, "22"

    :try_start_4
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_61
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_47

    move-result-object v5

    :try_start_8
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_7c

    move-result-object v3

    :try_start_10
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    const-string v2, "22"

    :cond_18
    invoke-static {v5, v1, v3, v2}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/fs/l;
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_75
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_82

    move-result-object v4

    if-nez v4, :cond_2c

    if-eqz v4, :cond_2b

    iget-object v1, v4, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_2b
    :goto_2b
    return v0

    :cond_2c
    :try_start_2c
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, v4, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v6, p1, v1}, Lcom/jcraft/jsch/ChannelSftp;->a(ILjava/lang/String;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_75
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_38} :catch_87

    if-eqz v4, :cond_45

    iget-object v0, v4, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_45
    const/4 v0, 0x1

    goto :goto_2b

    :catch_47
    move-exception v1

    move-object v3, v4

    move-object v5, v4

    :goto_4a
    :try_start_4a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_77

    if-eqz v5, :cond_2b

    iget-object v1, v5, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {v4, v3, v2, v5}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    goto :goto_2b

    :catchall_61
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    :goto_64
    if-eqz v4, :cond_71

    iget-object v1, v4, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_71
    throw v0

    :catchall_72
    move-exception v0

    move-object v3, v4

    goto :goto_64

    :catchall_75
    move-exception v0

    goto :goto_64

    :catchall_77
    move-exception v0

    move-object v7, v4

    move-object v4, v5

    move-object v5, v7

    goto :goto_64

    :catch_7c
    move-exception v1

    move-object v3, v4

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    goto :goto_4a

    :catch_82
    move-exception v1

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    goto :goto_4a

    :catch_87
    move-exception v1

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    goto :goto_4a
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-string v2, "22"

    :try_start_4
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_65
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_4b

    move-result-object v5

    :try_start_8
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_76
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_80

    move-result-object v3

    :try_start_10
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    const-string v2, "22"

    :cond_18
    invoke-static {v5, v1, v3, v2}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/fs/l;
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_86

    move-result-object v4

    if-nez v4, :cond_2c

    if-eqz v4, :cond_2b

    iget-object v1, v4, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_2b
    :goto_2b
    return v0

    :cond_2c
    :try_start_2c
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v7, v1, v6}, Lcom/jcraft/jsch/ChannelSftp;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3c} :catch_8b

    if-eqz v4, :cond_49

    iget-object v0, v4, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_49
    const/4 v0, 0x1

    goto :goto_2b

    :catch_4b
    move-exception v1

    move-object v3, v4

    move-object v5, v4

    :goto_4e
    :try_start_4e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_7b

    if-eqz v5, :cond_2b

    iget-object v1, v5, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {v4, v3, v2, v5}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    goto :goto_2b

    :catchall_65
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    :goto_68
    if-eqz v4, :cond_75

    iget-object v1, v4, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_75
    throw v0

    :catchall_76
    move-exception v0

    move-object v3, v4

    goto :goto_68

    :catchall_79
    move-exception v0

    goto :goto_68

    :catchall_7b
    move-exception v0

    move-object v8, v4

    move-object v4, v5

    move-object v5, v8

    goto :goto_68

    :catch_80
    move-exception v1

    move-object v3, v4

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    goto :goto_4e

    :catch_86
    move-exception v1

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    goto :goto_4e

    :catch_8b
    move-exception v1

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    goto :goto_4e
.end method

.method public static a(Ljava/lang/String;Z)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-string v2, "22"

    :try_start_4
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_6e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_89

    move-result-object v5

    :try_start_8
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_7f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_8d

    move-result-object v3

    :try_start_10
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    const-string v2, "22"

    :cond_18
    invoke-static {v5, v1, v3, v2}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/fs/l;
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_93

    move-result-object v4

    if-nez v4, :cond_2c

    if-eqz v4, :cond_2b

    iget-object v1, v4, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_2b
    :goto_2b
    return v0

    :cond_2c
    :try_start_2c
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_49

    iget-object v6, v4, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v6, v1}, Lcom/jcraft/jsch/ChannelSftp;->g(Ljava/lang/String;)V

    :goto_37
    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3a} :catch_53

    if-eqz v4, :cond_47

    iget-object v0, v4, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_47
    const/4 v0, 0x1

    goto :goto_2b

    :cond_49
    :try_start_49
    iget-object v6, v4, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v6, v1}, Lcom/jcraft/jsch/ChannelSftp;->c(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_52} :catch_53

    goto :goto_37

    :catch_53
    move-exception v1

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_57
    :try_start_57
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_84

    if-eqz v5, :cond_2b

    iget-object v1, v5, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {v4, v3, v2, v5}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    goto :goto_2b

    :catchall_6e
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    :goto_71
    if-eqz v4, :cond_7e

    iget-object v1, v4, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_7e
    throw v0

    :catchall_7f
    move-exception v0

    move-object v3, v4

    goto :goto_71

    :catchall_82
    move-exception v0

    goto :goto_71

    :catchall_84
    move-exception v0

    move-object v7, v4

    move-object v4, v5

    move-object v5, v7

    goto :goto_71

    :catch_89
    move-exception v1

    move-object v3, v4

    move-object v5, v4

    goto :goto_57

    :catch_8d
    move-exception v1

    move-object v3, v4

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    goto :goto_57

    :catch_93
    move-exception v1

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    goto :goto_57
.end method

.method public static b(Ljava/lang/String;)J
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    :goto_8
    return-wide v0

    :cond_9
    iget-wide v0, v0, Lcom/estrongs/android/pop/d/e;->e:J

    goto :goto_8
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V
    .registers 9

    sget-object v2, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->e:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->e:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_3b

    monitor-enter v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_38

    :try_start_2f
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_35

    :goto_33
    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_38

    return-void

    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v1

    :catchall_38
    move-exception v0

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_38

    throw v0

    :cond_3b
    :try_start_3b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->e:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catchall {:try_start_3b .. :try_end_69} :catchall_38

    goto :goto_33
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-boolean v0, v0, Lcom/estrongs/android/pop/d/e;->d:Z

    goto :goto_7
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-string v2, "22"

    :try_start_4
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_61
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_47

    move-result-object v5

    :try_start_8
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_72
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_7c

    move-result-object v3

    :try_start_10
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    const-string v2, "22"

    :cond_18
    invoke-static {v5, v1, v3, v2}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/fs/l;
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_75
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_82

    move-result-object v4

    if-nez v4, :cond_2c

    if-eqz v4, :cond_2b

    iget-object v1, v4, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_2b
    :goto_2b
    return v0

    :cond_2c
    :try_start_2c
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, v4, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v6, v1}, Lcom/jcraft/jsch/ChannelSftp;->g(Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_75
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_38} :catch_87

    if-eqz v4, :cond_45

    iget-object v0, v4, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_45
    const/4 v0, 0x1

    goto :goto_2b

    :catch_47
    move-exception v1

    move-object v3, v4

    move-object v5, v4

    :goto_4a
    :try_start_4a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_77

    if-eqz v5, :cond_2b

    iget-object v1, v5, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {v4, v3, v2, v5}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    goto :goto_2b

    :catchall_61
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    :goto_64
    if-eqz v4, :cond_71

    iget-object v1, v4, Lcom/estrongs/android/pop/fs/l;->a:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Session;->d()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/fs/l;)V

    :cond_71
    throw v0

    :catchall_72
    move-exception v0

    move-object v3, v4

    goto :goto_64

    :catchall_75
    move-exception v0

    goto :goto_64

    :catchall_77
    move-exception v0

    move-object v7, v4

    move-object v4, v5

    move-object v5, v7

    goto :goto_64

    :catch_7c
    move-exception v1

    move-object v3, v4

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    goto :goto_4a

    :catch_82
    move-exception v1

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    goto :goto_4a

    :catch_87
    move-exception v1

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    goto :goto_4a
.end method

.method public static f(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 8

    const/4 v6, 0x0

    const-string v0, "22"

    :try_start_3
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_17

    const-string v5, "22"

    :cond_17
    invoke-static {v3, v0, v4, v5}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/fs/l;

    move-result-object v2

    if-nez v2, :cond_1f

    move-object v0, v6

    :goto_1e
    return-object v0

    :cond_1f
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lcom/estrongs/android/pop/fs/l;->b:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->c(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/pop/fs/k;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/fs/k;-><init>(Ljava/io/OutputStream;Lcom/estrongs/android/pop/fs/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_31} :catch_32

    goto :goto_1e

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;

    move-object v0, v6

    goto :goto_1e
.end method

.method private static h(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o(Ljava/lang/String;)V

    :cond_9
    return-void
.end method
