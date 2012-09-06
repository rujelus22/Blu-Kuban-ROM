.class public Lcom/estrongs/android/pop/d/p;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static e:Lcom/estrongs/android/pop/d/p;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private final d:I

.field private f:Landroid/os/PowerManager;

.field private g:Landroid/net/wifi/WifiManager;

.field private h:Landroid/os/PowerManager$WakeLock;

.field private i:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/d/p;->a:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    iput-object v1, p0, Lcom/estrongs/android/pop/d/p;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/high16 v0, 0x2

    iput v0, p0, Lcom/estrongs/android/pop/d/p;->d:I

    iput-object v1, p0, Lcom/estrongs/android/pop/d/p;->f:Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/estrongs/android/pop/d/p;->g:Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/estrongs/android/pop/d/p;->h:Landroid/os/PowerManager$WakeLock;

    iput-object v1, p0, Lcom/estrongs/android/pop/d/p;->i:Landroid/net/wifi/WifiManager$WifiLock;

    iput-object p1, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    instance-of v0, p1, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_1e

    check-cast p1, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p1, p0, Lcom/estrongs/android/pop/d/p;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    :cond_1e
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/p;
    .registers 2

    sget-object v0, Lcom/estrongs/android/pop/d/p;->e:Lcom/estrongs/android/pop/d/p;

    if-nez v0, :cond_e

    new-instance v0, Lcom/estrongs/android/pop/d/p;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/d/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/pop/d/p;->e:Lcom/estrongs/android/pop/d/p;

    :cond_b
    :goto_b
    sget-object v0, Lcom/estrongs/android/pop/d/p;->e:Lcom/estrongs/android/pop/d/p;

    return-object v0

    :cond_e
    if-eqz p0, :cond_b

    sget-object v0, Lcom/estrongs/android/pop/d/p;->e:Lcom/estrongs/android/pop/d/p;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/d/p;->b(Landroid/content/Context;)V

    goto :goto_b
.end method

.method private d()V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ILjava/lang/Object;I)V

    :cond_12
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    const v1, 0x7f0902c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/d/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/c;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/estrongs/android/pop/fs/a;->a(Landroid/content/Context;J)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JLcom/estrongs/android/pop/d/g;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/4 v6, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move-object v0, v6

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_52

    :goto_e
    :pswitch_e
    move-object v0, v6

    goto :goto_6

    :pswitch_10
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/fs/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/estrongs/android/pop/d/g;)Ljava/util/Map;

    move-result-object v0

    goto :goto_6

    :pswitch_1b
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/estrongs/android/pop/d/g;)Ljava/util/Map;

    move-result-object v0

    goto :goto_6

    :pswitch_26
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/estrongs/android/pop/d/g;)Ljava/util/Map;

    move-result-object v0

    goto :goto_6

    :pswitch_31
    move-object v0, v6

    goto :goto_6

    :pswitch_33
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/estrongs/android/pop/d/g;)Ljava/util/Map;

    move-result-object v0

    goto :goto_6

    :pswitch_3e
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/estrongs/android/pop/fs/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/Map;

    move-result-object v0

    goto :goto_6

    :pswitch_45
    :try_start_45
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/fs/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/estrongs/android/pop/d/g;)Ljava/util/Map;
    :try_end_4e
    .catch Lcom/estrongs/android/pop/fs/DropboxException; {:try_start_45 .. :try_end_4e} :catch_50

    move-result-object v0

    goto :goto_6

    :catch_50
    move-exception v0

    goto :goto_e

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_10
        :pswitch_1b
        :pswitch_33
        :pswitch_3e
        :pswitch_45
        :pswitch_26
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_31
        :pswitch_33
    .end packed-switch
.end method

.method public a(Ljava/lang/String;ZZ)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;ZZZ)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ZZZ)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_80

    :pswitch_c
    goto :goto_4

    :pswitch_d
    iget-object v1, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v1, p1, v0, p4, v2}, Lcom/estrongs/android/pop/fs/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/FileFilter;ZZ)Ljava/util/Map;

    move-result-object v0

    goto :goto_4

    :pswitch_14
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1, p4}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    goto :goto_4

    :pswitch_1b
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1, p4}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    goto :goto_4

    :pswitch_22
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1, p4, v2, v2}, Lcom/estrongs/android/pop/fs/m;->a(Landroid/content/Context;Ljava/lang/String;ZZZ)Ljava/util/Map;

    move-result-object v0

    goto :goto_4

    :pswitch_29
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2, p4}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/Map;

    move-result-object v0

    goto :goto_4

    :pswitch_30
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2, p4}, Lcom/estrongs/android/pop/fs/a;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/Map;

    move-result-object v0

    goto :goto_4

    :pswitch_37
    :try_start_37
    iget-object v1, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->getMacAddr(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_4f

    :goto_3c
    :try_start_3c
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dropbox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/estrongs/android/pop/fs/d;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/Map;
    :try_end_4d
    .catch Lcom/estrongs/android/pop/fs/DropboxException; {:try_start_3c .. :try_end_4d} :catch_5b
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_3c .. :try_end_4d} :catch_68

    move-result-object v0

    goto :goto_4

    :catch_4f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c

    :cond_54
    :try_start_54
    iget-object v1, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v1, p1, p3, p4}, Lcom/estrongs/android/pop/fs/g;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/Map;
    :try_end_59
    .catch Lcom/estrongs/android/pop/fs/DropboxException; {:try_start_54 .. :try_end_59} :catch_5b
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_54 .. :try_end_59} :catch_68

    move-result-object v0

    goto :goto_4

    :catch_5b
    move-exception v1

    iget-object v1, v1, Lcom/estrongs/android/pop/fs/DropboxException;->error:Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;

    sget-object v2, Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;->DROPBOX_ERROR_AUTH_FAILED:Lcom/estrongs/android/pop/fs/DropboxException$ERROR_CODE;

    if-ne v1, v2, :cond_4

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :catch_68
    move-exception v1

    iget-object v2, v1, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    sget-object v3, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_AUTH_FAILED:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    if-ne v2, v3, :cond_75

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_75
    iget-object v1, v1, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    sget-object v2, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_LOG_IN:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lcom/estrongs/android/pop/d/p;->d()V

    goto :goto_4

    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_d
        :pswitch_14
        :pswitch_29
        :pswitch_30
        :pswitch_37
        :pswitch_1b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_22
        :pswitch_29
    .end packed-switch
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e()V

    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_52

    :pswitch_b
    goto :goto_3

    :pswitch_c
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/fs/f;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_13
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_1a
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_21
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/fs/m;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_28
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_2f
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/fs/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_36
    :try_start_36
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dropbox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/estrongs/android/pop/fs/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_49
    iget-object v1, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/estrongs/android/pop/fs/g;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_4e
    .catch Lcom/estrongs/android/pop/fs/DropboxException; {:try_start_36 .. :try_end_4e} :catch_50

    move-result v0

    goto :goto_3

    :catch_50
    move-exception v1

    goto :goto_3

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_c
        :pswitch_13
        :pswitch_28
        :pswitch_2f
        :pswitch_36
        :pswitch_1a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_21
        :pswitch_28
    .end packed-switch
.end method

.method public a(Ljava/lang/String;J)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_6e

    :pswitch_b
    goto :goto_3

    :pswitch_c
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/estrongs/android/pop/fs/f;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    goto :goto_3

    :pswitch_13
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    goto :goto_3

    :pswitch_1a
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    goto :goto_3

    :pswitch_21
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/estrongs/android/pop/fs/m;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    goto :goto_3

    :pswitch_28
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    goto :goto_3

    :pswitch_2f
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/estrongs/android/pop/fs/a;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    goto :goto_3

    :pswitch_36
    :try_start_36
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dropbox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-static {p1, p2, p3}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/lang/String;J)Z

    move-result v0

    goto :goto_3

    :cond_47
    iget-object v1, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3}, Lcom/estrongs/android/pop/fs/g;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_5e

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ubuntu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/d/p;->j(Ljava/lang/String;)V
    :try_end_5e
    .catch Lcom/estrongs/android/pop/fs/DropboxException; {:try_start_36 .. :try_end_5e} :catch_6b
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_36 .. :try_end_5e} :catch_60

    :cond_5e
    move v0, v1

    goto :goto_3

    :catch_60
    move-exception v1

    iget-object v1, v1, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    sget-object v2, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_LOG_IN:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/pop/d/p;->d()V

    goto :goto_3

    :catch_6b
    move-exception v1

    goto :goto_3

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_13
        :pswitch_28
        :pswitch_2f
        :pswitch_36
        :pswitch_1a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_21
        :pswitch_28
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_7

    :cond_5
    move v0, v1

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_64

    :cond_e
    :goto_e
    :pswitch_e
    move v0, v1

    goto :goto_6

    :pswitch_10
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/fs/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_6

    :pswitch_15
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_6

    :pswitch_1a
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_6

    :pswitch_1f
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_6

    :pswitch_24
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_6

    :pswitch_29
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/fs/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_6

    :pswitch_2e
    :try_start_2e
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dropbox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcom/estrongs/android/pop/fs/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_6

    :cond_40
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/fs/g;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ubuntu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/d/p;->j(Ljava/lang/String;)V
    :try_end_55
    .catch Lcom/estrongs/android/pop/fs/DropboxException; {:try_start_2e .. :try_end_55} :catch_56
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_2e .. :try_end_55} :catch_58

    goto :goto_6

    :catch_56
    move-exception v0

    goto :goto_e

    :catch_58
    move-exception v0

    iget-object v0, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    sget-object v2, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_LOG_IN:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    if-ne v0, v2, :cond_e

    invoke-direct {p0}, Lcom/estrongs/android/pop/d/p;->d()V

    goto :goto_e

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_10
        :pswitch_15
        :pswitch_24
        :pswitch_29
        :pswitch_2e
        :pswitch_1a
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_1f
        :pswitch_24
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JZ)Z
    .registers 27

    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    :cond_4
    const/4 v4, 0x0

    :cond_5
    :goto_5
    return v4

    :cond_6
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    const-wide/16 v7, -0x1

    cmp-long v7, p3, v7

    if-nez v7, :cond_13

    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->b()V

    :cond_13
    invoke-static/range {p1 .. p2}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5a6

    const/4 v6, 0x1

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_32

    :cond_26
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4a

    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_3f
    .catchall {:try_start_10 .. :try_end_3f} :catchall_388

    move-result v4

    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    goto :goto_5

    :cond_4a
    :try_start_4a
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6e

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_63
    .catchall {:try_start_4a .. :try_end_63} :catchall_388

    move-result v4

    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    goto :goto_5

    :cond_6e
    :try_start_6e
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_93

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_93

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/estrongs/android/pop/fs/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_87
    .catchall {:try_start_6e .. :try_end_87} :catchall_388

    move-result v4

    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    goto/16 :goto_5

    :cond_93
    :try_start_93
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5a6

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "gdrive"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    const v5, 0x7f0902ab

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sput-object v4, Lcom/estrongs/android/pop/fs/g;->a:Ljava/lang/String;
    :try_end_b4
    .catchall {:try_start_93 .. :try_end_b4} :catchall_388

    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-nez v4, :cond_bd

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    :cond_bd
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_c0
    :try_start_c0
    const-string v5, "dropbox"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c5
    .catchall {:try_start_c0 .. :try_end_c5} :catchall_388

    move-result v5

    if-eqz v5, :cond_e4

    :try_start_c8
    invoke-static/range {p1 .. p4}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_388
    .catch Lcom/estrongs/android/pop/fs/DropboxException; {:try_start_c8 .. :try_end_cb} :catch_d7

    move-result v4

    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    goto/16 :goto_5

    :catch_d7
    move-exception v4

    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-nez v4, :cond_e1

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    :cond_e1
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_e4
    :try_start_e4
    const-string v5, "kanbox"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/p;->b(Ljava/lang/String;)Z
    :try_end_f3
    .catchall {:try_start_e4 .. :try_end_f3} :catchall_388

    move-result v5

    if-nez v5, :cond_11c

    :try_start_f6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/estrongs/android/pop/fs/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_103
    .catchall {:try_start_f6 .. :try_end_103} :catchall_388
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_f6 .. :try_end_103} :catch_10f

    move-result v4

    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    goto/16 :goto_5

    :catch_10f
    move-exception v4

    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-nez v4, :cond_119

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    :cond_119
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_11c
    const/4 v4, 0x1

    move v10, v4

    move v13, v5

    move v14, v6

    :goto_120
    const/4 v11, 0x0

    :try_start_121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;

    move-result-object v4

    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_22b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    const v6, 0x7f090179

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/estrongs/android/pop/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/estrongs/android/pop/d/a;->c(J)V

    invoke-virtual {v4, v8, v9}, Lcom/estrongs/android/pop/d/a;->a(J)Lcom/estrongs/android/pop/d/c;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, v5, Lcom/estrongs/android/pop/d/c;->i:Ljava/lang/Thread;

    move-object v15, v5

    :goto_152
    invoke-virtual/range {p0 .. p1}, Lcom/estrongs/android/pop/d/p;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/p;->g(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_16a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/p;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_16a
    if-eqz v5, :cond_2be

    iget-boolean v5, v15, Lcom/estrongs/android/pop/d/c;->e:Z
    :try_end_16e
    .catchall {:try_start_121 .. :try_end_16e} :catchall_388

    if-nez v5, :cond_2be

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    :try_start_174
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7, v10}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;ZZZ)Ljava/util/Map;
    :try_end_17b
    .catchall {:try_start_174 .. :try_end_17b} :catchall_388
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_17b} :catch_236

    move-result-object v5

    move-object v12, v5

    :goto_17d
    const/4 v11, 0x1

    if-eqz v12, :cond_18e

    :try_start_180
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_188
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_23d

    :cond_18e
    move v5, v11

    :goto_18f
    if-nez v5, :cond_2bb

    const/4 v5, 0x0

    :cond_192
    :goto_192
    const-wide/16 v6, -0x1

    cmp-long v6, p3, v6

    if-nez v6, :cond_1a0

    iget-object v6, v15, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v4, v8, v9, v5}, Lcom/estrongs/android/pop/d/a;->a(JZ)V

    :cond_1a0
    const-wide/16 v6, -0x1

    cmp-long v4, p3, v6

    if-nez v4, :cond_1bd

    if-nez v5, :cond_1bd

    if-eqz v15, :cond_1bd

    iget-boolean v4, v15, Lcom/estrongs/android/pop/d/c;->e:Z

    if-eqz v4, :cond_1bd

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/p;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/estrongs/android/pop/d/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1bd
    .catchall {:try_start_180 .. :try_end_1bd} :catchall_388

    :cond_1bd
    const-wide/16 v6, -0x1

    cmp-long v4, p3, v6

    if-nez v4, :cond_1c6

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    :cond_1c6
    move v4, v5

    goto/16 :goto_5

    :cond_1c9
    :try_start_1c9
    const-string v5, "ubuntu"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1ce
    .catchall {:try_start_1c9 .. :try_end_1ce} :catchall_388

    move-result v4

    if-eqz v4, :cond_1fc

    :try_start_1d1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/estrongs/android/pop/fs/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_1e4

    invoke-direct/range {p0 .. p1}, Lcom/estrongs/android/pop/d/p;->j(Ljava/lang/String;)V
    :try_end_1e4
    .catchall {:try_start_1d1 .. :try_end_1e4} :catchall_388
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1d1 .. :try_end_1e4} :catch_1ef

    :cond_1e4
    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    goto/16 :goto_5

    :catch_1ef
    move-exception v4

    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-nez v4, :cond_1f9

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    :cond_1f9
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_1fc
    :try_start_1fc
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/estrongs/android/pop/fs/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_209
    .catchall {:try_start_1fc .. :try_end_209} :catchall_388
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_1fc .. :try_end_209} :catch_215

    move-result v4

    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    goto/16 :goto_5

    :catch_215
    move-exception v4

    :try_start_216
    iget-object v4, v4, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    sget-object v5, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_LOG_IN:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    if-ne v4, v5, :cond_21f

    invoke-direct/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->d()V
    :try_end_21f
    .catchall {:try_start_216 .. :try_end_21f} :catchall_388

    :cond_21f
    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-nez v4, :cond_228

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    :cond_228
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_22b
    :try_start_22b
    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Lcom/estrongs/android/pop/d/a;->a(J)Lcom/estrongs/android/pop/d/c;

    move-result-object v5

    move-object v15, v5

    move-wide/from16 v8, p3

    goto/16 :goto_152

    :catch_236
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v12, v5

    goto/16 :goto_17d

    :cond_23d
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-boolean v5, v15, Lcom/estrongs/android/pop/d/c;->e:Z

    if-eqz v5, :cond_24a

    const/4 v5, 0x0

    goto/16 :goto_18f

    :cond_24a
    invoke-static {v6}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x2f

    if-ne v7, v10, :cond_2a0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_26f
    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget-object v5, v5, v10

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_293

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_292
    .catchall {:try_start_22b .. :try_end_292} :catchall_388

    move-result-object v7

    :cond_293
    move-object/from16 v5, p0

    move/from16 v10, p5

    :try_start_297
    invoke-virtual/range {v5 .. v10}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z
    :try_end_29a
    .catchall {:try_start_297 .. :try_end_29a} :catchall_388
    .catch Ljava/lang/StackOverflowError; {:try_start_297 .. :try_end_29a} :catch_2b8

    move-result v5

    :goto_29b
    if-nez v5, :cond_188

    const/4 v5, 0x0

    goto/16 :goto_18f

    :cond_2a0
    :try_start_2a0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_26f

    :catch_2b8
    move-exception v5

    const/4 v5, 0x0

    goto :goto_29b

    :cond_2bb
    const/4 v5, 0x1

    goto/16 :goto_192

    :cond_2be
    if-eqz v14, :cond_2e7

    if-eqz v13, :cond_2e7

    if-eqz v10, :cond_2e7

    iget-boolean v5, v15, Lcom/estrongs/android/pop/d/c;->e:Z
    :try_end_2c6
    .catchall {:try_start_2a0 .. :try_end_2c6} :catchall_388

    if-nez v5, :cond_2e7

    :try_start_2c8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-static {v5, v0, v1, v2}, Lcom/estrongs/android/pop/fs/g;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-static {v5, v0, v1, v2, v3}, Lcom/estrongs/android/pop/fs/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_2e0
    .catchall {:try_start_2c8 .. :try_end_2e0} :catchall_388
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_2c8 .. :try_end_2e0} :catch_2e3

    move-result v5

    goto/16 :goto_192

    :catch_2e3
    move-exception v5

    const/4 v5, 0x0

    goto/16 :goto_192

    :cond_2e7
    :try_start_2e7
    iget-boolean v5, v15, Lcom/estrongs/android/pop/d/c;->e:Z
    :try_end_2e9
    .catchall {:try_start_2e7 .. :try_end_2e9} :catchall_388

    if-nez v5, :cond_5a3

    const/4 v10, 0x0

    const/4 v7, 0x0

    :try_start_2ed
    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->B(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_393

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->V(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_393

    const-string v5, "ServiceAgent"

    const-string v6, "sky drv not support"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    const v6, 0x7f0902aa

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_30d
    .catchall {:try_start_2ed .. :try_end_30d} :catchall_3ce
    .catch Ljava/lang/Exception; {:try_start_2ed .. :try_end_30d} :catch_3ae

    :try_start_30d
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
    :try_end_313
    .catchall {:try_start_30d .. :try_end_313} :catchall_3ce
    .catch Ljava/lang/Exception; {:try_start_30d .. :try_end_313} :catch_313

    :catch_313
    move-exception v6

    move-object/from16 v20, v7

    move-object v7, v10

    move v10, v11

    move-object v11, v5

    move-object/from16 v5, v20

    :goto_31b
    :try_start_31b
    const-string v12, "ServiceAgent"

    const-string v13, "copy exception,delete dest file"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    if-nez v11, :cond_32f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/p;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_32f
    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_33e

    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v13}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;J)Z

    :cond_33e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Lcom/estrongs/android/pop/d/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_345
    .catchall {:try_start_31b .. :try_end_345} :catchall_574

    if-eqz v5, :cond_352

    if-nez v10, :cond_51a

    :try_start_349
    instance-of v6, v5, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    if-eqz v6, :cond_51a

    check-cast v5, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->forceClose()V

    :cond_352
    :goto_352
    if-eqz v7, :cond_59d

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_357
    .catchall {:try_start_349 .. :try_end_357} :catchall_388
    .catch Ljava/lang/Exception; {:try_start_349 .. :try_end_357} :catch_527

    move v5, v10

    :goto_358
    :try_start_358
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_370

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_370

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_370

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_377

    :cond_370
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_377
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_383

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_192

    :cond_383
    invoke-static/range {p1 .. p2}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_386
    .catchall {:try_start_358 .. :try_end_386} :catchall_388

    goto/16 :goto_192

    :catchall_388
    move-exception v4

    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_392

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    :cond_392
    throw v4

    :cond_393
    :try_start_393
    invoke-virtual/range {p0 .. p1}, Lcom/estrongs/android/pop/d/p;->d(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v15, Lcom/estrongs/android/pop/d/c;->b:J

    iget-wide v5, v15, Lcom/estrongs/android/pop/d/c;->b:J

    const-wide/16 v13, -0x1

    cmp-long v5, v5, v13

    if-nez v5, :cond_3b6

    const-string v5, "ServiceAgent"

    const-string v6, "can\'t get the file length"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    :catch_3ae
    move-exception v5

    move-object v6, v5

    move-object v5, v7

    move-object v7, v10

    move v10, v11

    move-object v11, v12

    goto/16 :goto_31b

    :cond_3b6
    const-wide/16 v5, 0x0

    iput-wide v5, v15, Lcom/estrongs/android/pop/d/c;->a:J

    iget-object v5, v15, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    iget-wide v5, v15, Lcom/estrongs/android/pop/d/c;->b:J

    long-to-int v5, v5

    div-int/lit8 v16, v5, 0x64

    iget-boolean v5, v15, Lcom/estrongs/android/pop/d/c;->e:Z

    if-eqz v5, :cond_412

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_3ce
    .catchall {:try_start_393 .. :try_end_3ce} :catchall_3ce
    .catch Ljava/lang/Exception; {:try_start_393 .. :try_end_3ce} :catch_3ae

    :catchall_3ce
    move-exception v4

    move-object v5, v4

    move-object v4, v7

    :goto_3d1
    if-eqz v4, :cond_3de

    if-nez v11, :cond_531

    :try_start_3d5
    instance-of v6, v4, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    if-eqz v6, :cond_531

    check-cast v4, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    invoke-virtual {v4}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->forceClose()V

    :cond_3de
    :goto_3de
    if-eqz v10, :cond_3e3

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3e3
    .catchall {:try_start_3d5 .. :try_end_3e3} :catchall_388
    .catch Ljava/lang/Exception; {:try_start_3d5 .. :try_end_3e3} :catch_53e

    :cond_3e3
    :goto_3e3
    :try_start_3e3
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3fb

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3fb

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3fb

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_402

    :cond_3fb
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v11}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_402
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_40e

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_411

    :cond_40e
    invoke-static/range {p1 .. p2}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_411
    throw v5
    :try_end_412
    .catchall {:try_start_3e3 .. :try_end_412} :catchall_388

    :cond_412
    :try_start_412
    invoke-virtual/range {p0 .. p1}, Lcom/estrongs/android/pop/d/p;->e(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_415
    .catchall {:try_start_412 .. :try_end_415} :catchall_3ce
    .catch Ljava/lang/Exception; {:try_start_412 .. :try_end_415} :catch_3ae

    move-result-object v10

    :try_start_416
    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_458

    iget-wide v5, v15, Lcom/estrongs/android/pop/d/c;->b:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5, v6}, Lcom/estrongs/android/pop/d/p;->b(Ljava/lang/String;J)Ljava/io/OutputStream;
    :try_end_425
    .catchall {:try_start_416 .. :try_end_425} :catchall_3ce
    .catch Ljava/lang/Exception; {:try_start_416 .. :try_end_425} :catch_57e

    move-result-object v6

    if-nez v6, :cond_5a0

    :try_start_428
    iget-wide v13, v15, Lcom/estrongs/android/pop/d/c;->b:J

    const-wide/32 v17, 0xa00000

    cmp-long v5, v13, v17

    if-lez v5, :cond_5a0

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "vdisk"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a0

    const/4 v5, 0x1

    sput-boolean v5, Lcom/estrongs/android/pop/d/p;->a:Z
    :try_end_440
    .catchall {:try_start_428 .. :try_end_440} :catchall_55e
    .catch Ljava/lang/Exception; {:try_start_428 .. :try_end_440} :catch_586

    move-object v5, v6

    :goto_441
    if-eqz v10, :cond_445

    if-nez v5, :cond_474

    :cond_445
    :try_start_445
    const-string v6, "ServiceAgent"

    const-string v7, "input or output stream is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
    :try_end_452
    .catchall {:try_start_445 .. :try_end_452} :catchall_563
    .catch Ljava/lang/Exception; {:try_start_445 .. :try_end_452} :catch_452

    :catch_452
    move-exception v6

    move-object v7, v10

    move v10, v11

    move-object v11, v12

    goto/16 :goto_31b

    :cond_458
    :try_start_458
    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46a

    iget-wide v5, v15, Lcom/estrongs/android/pop/d/c;->b:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5, v6}, Lcom/estrongs/android/pop/d/p;->b(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v6

    move-object v5, v6

    goto :goto_441

    :cond_46a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/p;->f(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_471
    .catchall {:try_start_458 .. :try_end_471} :catchall_3ce
    .catch Ljava/lang/Exception; {:try_start_458 .. :try_end_471} :catch_57e

    move-result-object v6

    move-object v5, v6

    goto :goto_441

    :cond_474
    :try_start_474
    iput-object v10, v15, Lcom/estrongs/android/pop/d/c;->g:Ljava/io/InputStream;

    iput-object v5, v15, Lcom/estrongs/android/pop/d/c;->h:Ljava/io/OutputStream;

    const/high16 v6, 0x2

    new-array v7, v6, [B

    const-wide/16 v13, 0x0

    const/4 v6, 0x0

    :cond_47f
    :goto_47f
    iget-boolean v0, v15, Lcom/estrongs/android/pop/d/c;->e:Z

    move/from16 v17, v0

    if-nez v17, :cond_499

    const/16 v17, 0x0

    const/high16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v7, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4ef

    :cond_499
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    iget-boolean v6, v15, Lcom/estrongs/android/pop/d/c;->e:Z
    :try_end_49e
    .catchall {:try_start_474 .. :try_end_49e} :catchall_563
    .catch Ljava/lang/Exception; {:try_start_474 .. :try_end_49e} :catch_452

    if-eqz v6, :cond_510

    const/4 v7, 0x0

    :goto_4a1
    if-nez v7, :cond_4ac

    const-wide/16 v13, -0x1

    :try_start_4a5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13, v14}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;J)Z
    :try_end_4ac
    .catchall {:try_start_4a5 .. :try_end_4ac} :catchall_56b
    .catch Ljava/lang/Exception; {:try_start_4a5 .. :try_end_4ac} :catch_591

    :cond_4ac
    if-eqz v5, :cond_4b9

    if-nez v7, :cond_547

    :try_start_4b0
    instance-of v6, v5, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    if-eqz v6, :cond_547

    check-cast v5, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->forceClose()V

    :cond_4b9
    :goto_4b9
    if-eqz v10, :cond_59a

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4be
    .catchall {:try_start_4b0 .. :try_end_4be} :catchall_388
    .catch Ljava/lang/Exception; {:try_start_4b0 .. :try_end_4be} :catch_554

    move v5, v7

    :goto_4bf
    :try_start_4bf
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4d7

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4d7

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4d7

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4de

    :cond_4d7
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4de
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4ea

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_192

    :cond_4ea
    invoke-static/range {p1 .. p2}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4ed
    .catchall {:try_start_4bf .. :try_end_4ed} :catchall_388

    goto/16 :goto_192

    :cond_4ef
    const/16 v18, 0x0

    :try_start_4f1
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v5, v7, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v13, v13, v18

    add-int v6, v6, v17

    move/from16 v0, v16

    if-le v6, v0, :cond_47f

    int-to-long v0, v6

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v4, v8, v9, v0, v1}, Lcom/estrongs/android/pop/d/a;->a(JJ)V

    const/4 v6, 0x0

    goto/16 :goto_47f

    :cond_510
    iget-wide v6, v15, Lcom/estrongs/android/pop/d/c;->b:J
    :try_end_512
    .catchall {:try_start_4f1 .. :try_end_512} :catchall_563
    .catch Ljava/lang/Exception; {:try_start_4f1 .. :try_end_512} :catch_452

    cmp-long v6, v13, v6

    if-gez v6, :cond_518

    const/4 v7, 0x0

    goto :goto_4a1

    :cond_518
    const/4 v7, 0x1

    goto :goto_4a1

    :cond_51a
    if-nez v10, :cond_52c

    :try_start_51c
    instance-of v6, v5, Lcom/estrongs/android/pop/fs/e;

    if-eqz v6, :cond_52c

    check-cast v5, Lcom/estrongs/android/pop/fs/e;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/fs/e;->a()V

    goto/16 :goto_352

    :catch_527
    move-exception v5

    const/4 v10, 0x0

    move v5, v10

    goto/16 :goto_358

    :cond_52c
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_52f
    .catchall {:try_start_51c .. :try_end_52f} :catchall_388
    .catch Ljava/lang/Exception; {:try_start_51c .. :try_end_52f} :catch_527

    goto/16 :goto_352

    :cond_531
    if-nez v11, :cond_542

    :try_start_533
    instance-of v6, v4, Lcom/estrongs/android/pop/fs/e;

    if-eqz v6, :cond_542

    check-cast v4, Lcom/estrongs/android/pop/fs/e;

    invoke-virtual {v4}, Lcom/estrongs/android/pop/fs/e;->a()V

    goto/16 :goto_3de

    :catch_53e
    move-exception v4

    const/4 v11, 0x0

    goto/16 :goto_3e3

    :cond_542
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_545
    .catchall {:try_start_533 .. :try_end_545} :catchall_388
    .catch Ljava/lang/Exception; {:try_start_533 .. :try_end_545} :catch_53e

    goto/16 :goto_3de

    :cond_547
    if-nez v7, :cond_559

    :try_start_549
    instance-of v6, v5, Lcom/estrongs/android/pop/fs/e;

    if-eqz v6, :cond_559

    check-cast v5, Lcom/estrongs/android/pop/fs/e;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/fs/e;->a()V

    goto/16 :goto_4b9

    :catch_554
    move-exception v5

    const/4 v7, 0x0

    move v5, v7

    goto/16 :goto_4bf

    :cond_559
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_55c
    .catchall {:try_start_549 .. :try_end_55c} :catchall_388
    .catch Ljava/lang/Exception; {:try_start_549 .. :try_end_55c} :catch_554

    goto/16 :goto_4b9

    :catchall_55e
    move-exception v4

    move-object v5, v4

    move-object v4, v6

    goto/16 :goto_3d1

    :catchall_563
    move-exception v4

    move-object/from16 v20, v4

    move-object v4, v5

    move-object/from16 v5, v20

    goto/16 :goto_3d1

    :catchall_56b
    move-exception v4

    move v11, v7

    move-object/from16 v20, v5

    move-object v5, v4

    move-object/from16 v4, v20

    goto/16 :goto_3d1

    :catchall_574
    move-exception v4

    move v11, v10

    move-object v10, v7

    move-object/from16 v20, v5

    move-object v5, v4

    move-object/from16 v4, v20

    goto/16 :goto_3d1

    :catch_57e
    move-exception v5

    move-object v6, v5

    move-object v5, v7

    move-object v7, v10

    move v10, v11

    move-object v11, v12

    goto/16 :goto_31b

    :catch_586
    move-exception v5

    move-object v7, v10

    move v10, v11

    move-object v11, v12

    move-object/from16 v20, v6

    move-object v6, v5

    move-object/from16 v5, v20

    goto/16 :goto_31b

    :catch_591
    move-exception v6

    move-object v11, v12

    move/from16 v20, v7

    move-object v7, v10

    move/from16 v10, v20

    goto/16 :goto_31b

    :cond_59a
    move v5, v7

    goto/16 :goto_4bf

    :cond_59d
    move v5, v10

    goto/16 :goto_358

    :cond_5a0
    move-object v5, v6

    goto/16 :goto_441

    :cond_5a3
    move v5, v11

    goto/16 :goto_192

    :cond_5a6
    move v10, v4

    move v13, v5

    move v14, v6

    goto/16 :goto_120
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 7

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move v0, v1

    :cond_4
    :goto_4
    return v0

    :cond_5
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_86

    :cond_c
    :goto_c
    :pswitch_c
    move v0, v1

    goto :goto_4

    :pswitch_e
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/fs/f;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_4

    :pswitch_13
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_4

    :pswitch_18
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_4

    :pswitch_1d
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_4

    :pswitch_22
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_4

    :pswitch_27
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/fs/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_4

    :pswitch_2c
    if-nez p2, :cond_51

    :try_start_2e
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->B(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->V(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string v0, "ServiceAgent"

    const-string v2, "sky drv not support"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    const v2, 0x7f0902aa

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/d/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_4

    :cond_51
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dropbox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-static {p1, p2}, Lcom/estrongs/android/pop/fs/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_4

    :cond_62
    invoke-static {p1, p2}, Lcom/estrongs/android/pop/fs/g;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ubuntu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/d/p;->j(Ljava/lang/String;)V
    :try_end_77
    .catch Lcom/estrongs/android/pop/fs/DropboxException; {:try_start_2e .. :try_end_77} :catch_78
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_2e .. :try_end_77} :catch_7a

    goto :goto_4

    :catch_78
    move-exception v0

    goto :goto_c

    :catch_7a
    move-exception v0

    iget-object v0, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    sget-object v2, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_LOG_IN:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    if-ne v0, v2, :cond_c

    invoke-direct {p0}, Lcom/estrongs/android/pop/d/p;->d()V

    goto :goto_c

    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_e
        :pswitch_13
        :pswitch_22
        :pswitch_27
        :pswitch_2c
        :pswitch_18
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_1d
        :pswitch_22
    .end packed-switch
.end method

.method public b(Ljava/lang/String;J)Ljava/io/OutputStream;
    .registers 7

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1, p2, p3}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v0

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/d/p;->f(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_a

    :cond_16
    const-string v0, "dropbox"

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    :try_start_22
    invoke-static {p1, p2, p3}, Lcom/estrongs/android/pop/fs/d;->b(Ljava/lang/String;J)Ljava/io/OutputStream;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_4f

    move-result-object v0

    goto :goto_a

    :cond_27
    :try_start_27
    invoke-static {p1, p2, p3}, Lcom/estrongs/android/pop/fs/g;->a(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v1, "ubuntu"

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/d/p;->j(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3c} :catch_3d

    goto :goto_a

    :catch_3d
    move-exception v0

    instance-of v1, v0, Lcom/estrongs/android/pop/netfs/NetFsException;

    if-eqz v1, :cond_4d

    check-cast v0, Lcom/estrongs/android/pop/netfs/NetFsException;

    iget-object v0, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    sget-object v1, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_LOG_IN:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    if-ne v0, v1, :cond_4d

    invoke-direct {p0}, Lcom/estrongs/android/pop/d/p;->d()V

    :cond_4d
    :goto_4d
    const/4 v0, 0x0

    goto :goto_a

    :catch_4f
    move-exception v0

    goto :goto_4d
.end method

.method public declared-synchronized b()V
    .registers 6

    const/16 v4, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->f:Landroid/os/PowerManager;

    if-nez v0, :cond_17

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const-string v3, "power"

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/p;->f:Landroid/os/PowerManager;

    :cond_17
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->g:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_29

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/estrongs/android/pop/d/p;->g:Landroid/net/wifi/WifiManager;

    :cond_29
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->h:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_de

    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_de

    move v3, v1

    :goto_36
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->i:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->i:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_db

    move v0, v1

    :goto_43
    if-eqz v3, :cond_59

    iget-object v1, p0, Lcom/estrongs/android/pop/d/p;->f:Landroid/os/PowerManager;

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/estrongs/android/pop/d/p;->f:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "ES Wake Lock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/d/p;->h:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/estrongs/android/pop/d/p;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_59
    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->g:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_92

    invoke-static {}, Lcom/estrongs/android/pop/b;->a()I
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_c5

    move-result v0

    if-lt v0, v4, :cond_c8

    :try_start_65
    const-string v1, "EEE"

    const-string v2, "acquire WIFI_MODE_FULL_HIGH_PERF lock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/estrongs/android/pop/d/p;->g:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x3

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/d/p;->i:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v1, p0, Lcom/estrongs/android/pop/d/p;->i:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v1, :cond_8d

    const-string v1, "EEE"

    const-string v2, "change to acquire WIFI_MODE_FULL lock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/estrongs/android/pop/d/p;->g:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/d/p;->i:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_8d
    .catchall {:try_start_65 .. :try_end_8d} :catchall_c5
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_8d} :catch_94

    :cond_8d
    :goto_8d
    :try_start_8d
    iget-object v1, p0, Lcom/estrongs/android/pop/d/p;->i:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_c5
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_92} :catch_a8

    :cond_92
    :goto_92
    monitor-exit p0

    return-void

    :catch_94
    move-exception v1

    :try_start_95
    const-string v1, "EEE"

    const-string v2, "change to acquire WIFI_MODE_FULL lock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/estrongs/android/pop/d/p;->g:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/d/p;->i:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_a7
    .catchall {:try_start_95 .. :try_end_a7} :catchall_c5
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a7} :catch_a8

    goto :goto_8d

    :catch_a8
    move-exception v1

    if-lt v0, v4, :cond_92

    const/16 v1, 0xc

    if-ge v0, v1, :cond_92

    :try_start_af
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->g:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const-string v2, "ES Wifi Lock"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/d/p;->i:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->i:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_bf
    .catchall {:try_start_af .. :try_end_bf} :catchall_c5
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_bf} :catch_c0

    goto :goto_92

    :catch_c0
    move-exception v0

    const/4 v0, 0x0

    :try_start_c2
    iput-object v0, p0, Lcom/estrongs/android/pop/d/p;->i:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_c4
    .catchall {:try_start_c2 .. :try_end_c4} :catchall_c5

    goto :goto_92

    :catchall_c5
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_c8
    :try_start_c8
    const-string v1, "EEE"

    const-string v2, "acquire WIFI_MODE_FULL lock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/estrongs/android/pop/d/p;->g:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/d/p;->i:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_da
    .catchall {:try_start_c8 .. :try_end_da} :catchall_c5
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_da} :catch_a8

    goto :goto_8d

    :cond_db
    move v0, v2

    goto/16 :goto_43

    :cond_de
    move v3, v2

    goto/16 :goto_36
.end method

.method public b(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    if-eq v0, p1, :cond_e

    iput-object p1, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    instance-of v0, p1, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p1, p0, Lcom/estrongs/android/pop/d/p;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    :cond_e
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    :pswitch_2
    return-void

    :cond_3
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_14

    :pswitch_a
    goto :goto_2

    :pswitch_b
    sput-object p2, Lcom/estrongs/android/pop/fs/g;->a:Ljava/lang/String;

    goto :goto_2

    :pswitch_e
    sput-object p2, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;

    :pswitch_10
    sput-object p2, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;

    goto :goto_2

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_b
        :pswitch_e
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_10
        :pswitch_2
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_44

    :pswitch_b
    goto :goto_3

    :pswitch_c
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/f;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_11
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_16
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_1b
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/m;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_20
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_25
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/a;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_2a
    :try_start_2a
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dropbox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/d;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_3b
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->c(Ljava/lang/String;)Z
    :try_end_3e
    .catch Lcom/estrongs/android/pop/fs/DropboxException; {:try_start_2a .. :try_end_3e} :catch_42
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_2a .. :try_end_3e} :catch_40

    move-result v0

    goto :goto_3

    :catch_40
    move-exception v1

    goto :goto_3

    :catch_42
    move-exception v1

    goto :goto_3

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_c
        :pswitch_11
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_16
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_1b
        :pswitch_20
    .end packed-switch
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;JZ)Z
    .registers 27

    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    :cond_4
    const/4 v4, 0x0

    :cond_5
    :goto_5
    return v4

    :cond_6
    const/4 v10, 0x0

    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-nez v4, :cond_10

    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->b()V

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/p;->b(Ljava/lang/String;)Z

    move-result v12

    invoke-static/range {p1 .. p2}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v12, :cond_48

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_48

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_48

    invoke-static/range {p1 .. p2}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/estrongs/android/pop/fs/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_300

    move-result v4

    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    goto :goto_5

    :cond_48
    if-nez v12, :cond_137

    if-eqz v13, :cond_137

    :try_start_4c
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->r(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->r(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_70

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_65
    .catchall {:try_start_4c .. :try_end_65} :catchall_300

    move-result v4

    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    goto :goto_5

    :cond_70
    :try_start_70
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_88

    :cond_7c
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a1

    :cond_88
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_95
    .catchall {:try_start_70 .. :try_end_95} :catchall_300

    move-result v4

    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    goto/16 :goto_5

    :cond_a1
    :try_start_a1
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_300

    move-result v4

    if-eqz v4, :cond_10d

    :try_start_a7
    const-string v4, "dropbox"

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ca

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v4, v0, v1}, Lcom/estrongs/android/pop/fs/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_be
    .catchall {:try_start_a7 .. :try_end_be} :catchall_300
    .catch Lcom/estrongs/android/pop/fs/DropboxException; {:try_start_a7 .. :try_end_be} :catch_ea
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_a7 .. :try_end_be} :catch_f7

    move-result v4

    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    goto/16 :goto_5

    :cond_ca
    :try_start_ca
    invoke-static/range {p1 .. p2}, Lcom/estrongs/android/pop/fs/g;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_df

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ubuntu"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_df

    invoke-direct/range {p0 .. p1}, Lcom/estrongs/android/pop/d/p;->j(Ljava/lang/String;)V
    :try_end_df
    .catchall {:try_start_ca .. :try_end_df} :catchall_300
    .catch Lcom/estrongs/android/pop/fs/DropboxException; {:try_start_ca .. :try_end_df} :catch_ea
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_ca .. :try_end_df} :catch_f7

    :cond_df
    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    goto/16 :goto_5

    :catch_ea
    move-exception v4

    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-nez v4, :cond_f4

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    :cond_f4
    const/4 v4, 0x0

    goto/16 :goto_5

    :catch_f7
    move-exception v4

    :try_start_f8
    iget-object v4, v4, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    sget-object v5, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_LOG_IN:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    if-ne v4, v5, :cond_101

    invoke-direct/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->d()V
    :try_end_101
    .catchall {:try_start_f8 .. :try_end_101} :catchall_300

    :cond_101
    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-nez v4, :cond_10a

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    :cond_10a
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_10d
    :try_start_10d
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_122

    invoke-static/range {p1 .. p2}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_116
    .catchall {:try_start_10d .. :try_end_116} :catchall_300

    move-result v4

    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    goto/16 :goto_5

    :cond_122
    :try_start_122
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_137

    invoke-static/range {p1 .. p2}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_12b
    .catchall {:try_start_122 .. :try_end_12b} :catchall_300

    move-result v4

    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    goto/16 :goto_5

    :cond_137
    const/4 v11, 0x0

    :try_start_138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;

    move-result-object v4

    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_1cc

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    const v6, 0x7f090178

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/estrongs/android/pop/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/estrongs/android/pop/d/a;->c(J)V

    invoke-virtual {v4, v8, v9}, Lcom/estrongs/android/pop/d/a;->a(J)Lcom/estrongs/android/pop/d/c;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, v5, Lcom/estrongs/android/pop/d/c;->i:Ljava/lang/Thread;

    move-object v14, v5

    :goto_169
    invoke-virtual/range {p0 .. p1}, Lcom/estrongs/android/pop/d/p;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_181

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/p;->g(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_181

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/p;->i(Ljava/lang/String;)Ljava/lang/String;
    :try_end_180
    .catchall {:try_start_138 .. :try_end_180} :catchall_300

    move-result-object v10

    :cond_181
    if-eqz v5, :cond_259

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    :try_start_187
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7, v10}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;ZZZ)Ljava/util/Map;
    :try_end_18e
    .catchall {:try_start_187 .. :try_end_18e} :catchall_300
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_18e} :catch_1d6

    move-result-object v5

    move-object v12, v5

    :goto_190
    const/4 v11, 0x1

    if-eqz v12, :cond_1a1

    :try_start_193
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_19b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1d9

    :cond_1a1
    move v5, v11

    :goto_1a2
    if-nez v5, :cond_256

    const/4 v5, 0x0

    :cond_1a5
    :goto_1a5
    const-wide/16 v6, -0x1

    cmp-long v6, p3, v6

    if-nez v6, :cond_1b5

    if-eqz v14, :cond_1b2

    iget-object v6, v14, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    :cond_1b2
    invoke-virtual {v4, v8, v9, v5}, Lcom/estrongs/android/pop/d/a;->a(JZ)V

    :cond_1b5
    if-eqz v5, :cond_4a9

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v7}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;J)Z
    :try_end_1c0
    .catchall {:try_start_193 .. :try_end_1c0} :catchall_300

    :cond_1c0
    :goto_1c0
    const-wide/16 v6, -0x1

    cmp-long v4, p3, v6

    if-nez v4, :cond_1c9

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    :cond_1c9
    move v4, v5

    goto/16 :goto_5

    :cond_1cc
    :try_start_1cc
    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Lcom/estrongs/android/pop/d/a;->a(J)Lcom/estrongs/android/pop/d/c;

    move-result-object v5

    move-object v14, v5

    move-wide/from16 v8, p3

    goto :goto_169

    :catch_1d6
    move-exception v6

    move-object v12, v5

    goto :goto_190

    :cond_1d9
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-boolean v5, v14, Lcom/estrongs/android/pop/d/c;->e:Z

    if-eqz v5, :cond_1e5

    const/4 v5, 0x0

    goto :goto_1a2

    :cond_1e5
    invoke-static {v6}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x2f

    if-ne v7, v10, :cond_23b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_20a
    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget-object v5, v5, v10

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_22e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_22d
    .catchall {:try_start_1cc .. :try_end_22d} :catchall_300

    move-result-object v7

    :cond_22e
    move-object/from16 v5, p0

    move/from16 v10, p5

    :try_start_232
    invoke-virtual/range {v5 .. v10}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z
    :try_end_235
    .catchall {:try_start_232 .. :try_end_235} :catchall_300
    .catch Ljava/lang/StackOverflowError; {:try_start_232 .. :try_end_235} :catch_253

    move-result v5

    :goto_236
    if-nez v5, :cond_19b

    const/4 v5, 0x0

    goto/16 :goto_1a2

    :cond_23b
    :try_start_23b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_20a

    :catch_253
    move-exception v5

    const/4 v5, 0x0

    goto :goto_236

    :cond_256
    const/4 v5, 0x1

    goto/16 :goto_1a5

    :cond_259
    if-eqz v13, :cond_27c

    if-eqz v12, :cond_27c

    const-string v5, "kanbox"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_264
    .catchall {:try_start_23b .. :try_end_264} :catchall_300

    move-result v5

    if-eqz v5, :cond_27c

    :try_start_267
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-static {v5, v0, v1, v2}, Lcom/estrongs/android/pop/fs/g;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    invoke-static/range {p1 .. p2}, Lcom/estrongs/android/pop/fs/g;->c(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_275
    .catchall {:try_start_267 .. :try_end_275} :catchall_300
    .catch Ljava/lang/Exception; {:try_start_267 .. :try_end_275} :catch_278

    move-result v5

    goto/16 :goto_1a5

    :catch_278
    move-exception v5

    const/4 v5, 0x0

    goto/16 :goto_1a5

    :cond_27c
    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_27e
    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->B(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30b

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->V(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30b

    const-string v5, "ServiceAgent"

    const-string v12, "sky drv not support"

    invoke-static {v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    const v12, 0x7f0902aa

    invoke-virtual {v5, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_29e
    .catchall {:try_start_27e .. :try_end_29e} :catchall_445
    .catch Ljava/lang/Exception; {:try_start_27e .. :try_end_29e} :catch_326

    :try_start_29e
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10}, Ljava/io/IOException;-><init>()V

    throw v10
    :try_end_2a4
    .catchall {:try_start_29e .. :try_end_2a4} :catchall_445
    .catch Ljava/lang/Exception; {:try_start_29e .. :try_end_2a4} :catch_2a4

    :catch_2a4
    move-exception v10

    move-object/from16 v20, v6

    move-object v6, v7

    move-object v7, v5

    move-object/from16 v5, v20

    :goto_2ab
    :try_start_2ab
    const-string v10, "ServiceAgent"

    const-string v12, "move exception,delete dest file"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_2bc

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/p;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_2bc
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v7}, Lcom/estrongs/android/pop/d/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c3
    .catchall {:try_start_2ab .. :try_end_2c3} :catchall_4ce

    if-eqz v5, :cond_2ce

    :try_start_2c5
    instance-of v7, v5, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    if-eqz v7, :cond_431

    check-cast v5, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->forceClose()V

    :cond_2ce
    :goto_2ce
    if-eqz v6, :cond_4e0

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2d3
    .catchall {:try_start_2c5 .. :try_end_2d3} :catchall_300
    .catch Ljava/io/IOException; {:try_start_2c5 .. :try_end_2d3} :catch_43c

    move v5, v11

    :goto_2d4
    :try_start_2d4
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2ec

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2ec

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2ec

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2ef

    :cond_2ec
    invoke-static/range {p1 .. p2}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2ef
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2fb

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a5

    :cond_2fb
    invoke-static/range {p1 .. p2}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2fe
    .catchall {:try_start_2d4 .. :try_end_2fe} :catchall_300

    goto/16 :goto_1a5

    :catchall_300
    move-exception v4

    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_30a

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/pop/d/p;->c()V

    :cond_30a
    throw v4

    :cond_30b
    :try_start_30b
    invoke-virtual/range {p0 .. p1}, Lcom/estrongs/android/pop/d/p;->d(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v14, Lcom/estrongs/android/pop/d/c;->b:J

    iget-wide v12, v14, Lcom/estrongs/android/pop/d/c;->b:J

    const-wide/16 v15, -0x1

    cmp-long v5, v12, v15

    if-nez v5, :cond_32b

    const-string v5, "ServiceAgent"

    const-string v12, "can\'t get the file length"

    invoke-static {v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    :catch_326
    move-exception v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v10

    goto :goto_2ab

    :cond_32b
    const-wide/16 v12, 0x0

    iput-wide v12, v14, Lcom/estrongs/android/pop/d/c;->a:J

    iget-object v5, v14, Lcom/estrongs/android/pop/d/c;->d:[Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v5, v12

    iget-wide v12, v14, Lcom/estrongs/android/pop/d/c;->b:J

    long-to-int v5, v12

    div-int/lit8 v15, v5, 0x64

    invoke-virtual/range {p0 .. p1}, Lcom/estrongs/android/pop/d/p;->e(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_33c
    .catchall {:try_start_30b .. :try_end_33c} :catchall_445
    .catch Ljava/lang/Exception; {:try_start_30b .. :try_end_33c} :catch_326

    move-result-object v7

    :try_start_33d
    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_376

    iget-wide v12, v14, Lcom/estrongs/android/pop/d/c;->b:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v13}, Lcom/estrongs/android/pop/d/p;->b(Ljava/lang/String;J)Ljava/io/OutputStream;
    :try_end_34c
    .catchall {:try_start_33d .. :try_end_34c} :catchall_445
    .catch Ljava/lang/Exception; {:try_start_33d .. :try_end_34c} :catch_4d7

    move-result-object v5

    if-nez v5, :cond_367

    :try_start_34f
    iget-wide v12, v14, Lcom/estrongs/android/pop/d/c;->b:J

    const-wide/32 v16, 0xa00000

    cmp-long v6, v12, v16

    if-lez v6, :cond_367

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v12, "vdisk"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_367

    const/4 v6, 0x1

    sput-boolean v6, Lcom/estrongs/android/pop/d/p;->a:Z

    :cond_367
    :goto_367
    if-eqz v7, :cond_36b

    if-nez v5, :cond_390

    :cond_36b
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
    :try_end_371
    .catchall {:try_start_34f .. :try_end_371} :catchall_4c6
    .catch Ljava/lang/Exception; {:try_start_34f .. :try_end_371} :catch_371

    :catch_371
    move-exception v6

    move-object v6, v7

    move-object v7, v10

    goto/16 :goto_2ab

    :cond_376
    :try_start_376
    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_387

    iget-wide v12, v14, Lcom/estrongs/android/pop/d/c;->b:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v13}, Lcom/estrongs/android/pop/d/p;->b(Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v5

    goto :goto_367

    :cond_387
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/p;->f(Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_38e
    .catchall {:try_start_376 .. :try_end_38e} :catchall_445
    .catch Ljava/lang/Exception; {:try_start_376 .. :try_end_38e} :catch_4d7

    move-result-object v5

    goto :goto_367

    :cond_390
    :try_start_390
    iput-object v7, v14, Lcom/estrongs/android/pop/d/c;->g:Ljava/io/InputStream;

    iput-object v5, v14, Lcom/estrongs/android/pop/d/c;->h:Ljava/io/OutputStream;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, v14, Lcom/estrongs/android/pop/d/c;->i:Ljava/lang/Thread;

    const/high16 v6, 0x2

    new-array v0, v6, [B

    move-object/from16 v16, v0

    const-wide/16 v12, 0x0

    const/4 v6, 0x0

    :cond_3a3
    :goto_3a3
    iget-boolean v0, v14, Lcom/estrongs/android/pop/d/c;->e:Z

    move/from16 v17, v0

    if-nez v17, :cond_3bf

    const/16 v17, 0x0

    const/high16 v18, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v7, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_406

    :cond_3bf
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    iget-boolean v6, v14, Lcom/estrongs/android/pop/d/c;->e:Z
    :try_end_3c4
    .catchall {:try_start_390 .. :try_end_3c4} :catchall_4c6
    .catch Ljava/lang/Exception; {:try_start_390 .. :try_end_3c4} :catch_371

    if-eqz v6, :cond_427

    const/4 v6, 0x0

    :goto_3c7
    if-eqz v5, :cond_3d4

    if-nez v6, :cond_493

    :try_start_3cb
    instance-of v10, v5, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    if-eqz v10, :cond_493

    check-cast v5, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->forceClose()V

    :cond_3d4
    :goto_3d4
    if-eqz v7, :cond_4dd

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3d9
    .catchall {:try_start_3cb .. :try_end_3d9} :catchall_300
    .catch Ljava/io/IOException; {:try_start_3cb .. :try_end_3d9} :catch_4a0

    move v5, v6

    :goto_3da
    :try_start_3da
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3f2

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3f2

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3f2

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3f5

    :cond_3f2
    invoke-static/range {p1 .. p2}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f5
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_401

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a5

    :cond_401
    invoke-static/range {p1 .. p2}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_404
    .catchall {:try_start_3da .. :try_end_404} :catchall_300

    goto/16 :goto_1a5

    :cond_406
    const/16 v18, 0x0

    :try_start_408
    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v5, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v12, v12, v18

    add-int v6, v6, v17

    if-le v6, v15, :cond_3a3

    int-to-long v0, v6

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v4, v8, v9, v0, v1}, Lcom/estrongs/android/pop/d/a;->a(JJ)V

    const/4 v6, 0x0

    goto/16 :goto_3a3

    :cond_427
    iget-wide v10, v14, Lcom/estrongs/android/pop/d/c;->b:J
    :try_end_429
    .catchall {:try_start_408 .. :try_end_429} :catchall_4c6
    .catch Ljava/lang/Exception; {:try_start_408 .. :try_end_429} :catch_371

    cmp-long v6, v12, v10

    if-gez v6, :cond_42f

    const/4 v6, 0x0

    goto :goto_3c7

    :cond_42f
    const/4 v6, 0x1

    goto :goto_3c7

    :cond_431
    :try_start_431
    instance-of v7, v5, Lcom/estrongs/android/pop/fs/e;

    if-eqz v7, :cond_440

    check-cast v5, Lcom/estrongs/android/pop/fs/e;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/fs/e;->a()V

    goto/16 :goto_2ce

    :catch_43c
    move-exception v5

    const/4 v5, 0x0

    goto/16 :goto_2d4

    :cond_440
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_443
    .catchall {:try_start_431 .. :try_end_443} :catchall_300
    .catch Ljava/io/IOException; {:try_start_431 .. :try_end_443} :catch_43c

    goto/16 :goto_2ce

    :catchall_445
    move-exception v4

    move-object v5, v4

    move-object v4, v6

    :goto_448
    if-eqz v4, :cond_453

    :try_start_44a
    instance-of v6, v4, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    if-eqz v6, :cond_483

    check-cast v4, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    invoke-virtual {v4}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->forceClose()V

    :cond_453
    :goto_453
    if-eqz v7, :cond_458

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_458
    .catchall {:try_start_44a .. :try_end_458} :catchall_300
    .catch Ljava/io/IOException; {:try_start_44a .. :try_end_458} :catch_48d

    :cond_458
    :goto_458
    :try_start_458
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_470

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_470

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_470

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_473

    :cond_470
    invoke-static/range {p1 .. p2}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_473
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_47f

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_482

    :cond_47f
    invoke-static/range {p1 .. p2}, Lcom/estrongs/android/pop/fs/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_482
    throw v5
    :try_end_483
    .catchall {:try_start_458 .. :try_end_483} :catchall_300

    :cond_483
    :try_start_483
    instance-of v6, v4, Lcom/estrongs/android/pop/fs/e;

    if-eqz v6, :cond_48f

    check-cast v4, Lcom/estrongs/android/pop/fs/e;

    invoke-virtual {v4}, Lcom/estrongs/android/pop/fs/e;->a()V

    goto :goto_453

    :catch_48d
    move-exception v4

    goto :goto_458

    :cond_48f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_492
    .catchall {:try_start_483 .. :try_end_492} :catchall_300
    .catch Ljava/io/IOException; {:try_start_483 .. :try_end_492} :catch_48d

    goto :goto_453

    :cond_493
    if-nez v6, :cond_4a4

    :try_start_495
    instance-of v10, v5, Lcom/estrongs/android/pop/fs/e;

    if-eqz v10, :cond_4a4

    check-cast v5, Lcom/estrongs/android/pop/fs/e;

    invoke-virtual {v5}, Lcom/estrongs/android/pop/fs/e;->a()V

    goto/16 :goto_3d4

    :catch_4a0
    move-exception v5

    const/4 v5, 0x0

    goto/16 :goto_3da

    :cond_4a4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4a7
    .catchall {:try_start_495 .. :try_end_4a7} :catchall_300
    .catch Ljava/io/IOException; {:try_start_495 .. :try_end_4a7} :catch_4a0

    goto/16 :goto_3d4

    :cond_4a9
    const-wide/16 v6, -0x1

    cmp-long v4, p3, v6

    if-nez v4, :cond_1c0

    if-eqz v14, :cond_1c0

    :try_start_4b1
    iget-boolean v4, v14, Lcom/estrongs/android/pop/d/c;->e:Z

    if-eqz v4, :cond_1c0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/p;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/estrongs/android/pop/d/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c4
    .catchall {:try_start_4b1 .. :try_end_4c4} :catchall_300

    goto/16 :goto_1c0

    :catchall_4c6
    move-exception v4

    move-object/from16 v20, v4

    move-object v4, v5

    move-object/from16 v5, v20

    goto/16 :goto_448

    :catchall_4ce
    move-exception v4

    move-object v7, v6

    move-object/from16 v20, v5

    move-object v5, v4

    move-object/from16 v4, v20

    goto/16 :goto_448

    :catch_4d7
    move-exception v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v10

    goto/16 :goto_2ab

    :cond_4dd
    move v5, v6

    goto/16 :goto_3da

    :cond_4e0
    move v5, v11

    goto/16 :goto_2d4
.end method

.method public c(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_44

    :pswitch_b
    goto :goto_3

    :pswitch_c
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/f;->b(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    goto :goto_3

    :pswitch_11
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->e(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    goto :goto_3

    :pswitch_16
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    goto :goto_3

    :pswitch_1b
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    goto :goto_3

    :pswitch_20
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->f(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    goto :goto_3

    :pswitch_25
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/a;->f(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    goto :goto_3

    :pswitch_2a
    :try_start_2a
    const-string v1, "dropbox"

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/d;->c(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    goto :goto_3

    :cond_3b
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->e(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;
    :try_end_3e
    .catch Lcom/estrongs/android/pop/fs/DropboxException; {:try_start_2a .. :try_end_3e} :catch_42
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_2a .. :try_end_3e} :catch_40

    move-result-object v0

    goto :goto_3

    :catch_40
    move-exception v1

    goto :goto_3

    :catch_42
    move-exception v1

    goto :goto_3

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_c
        :pswitch_11
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_16
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_1b
        :pswitch_20
    .end packed-switch
.end method

.method public declared-synchronized c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->i:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->i:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->i:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/d/p;->i:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_15
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->h:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/d/p;->h:Landroid/os/PowerManager$WakeLock;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Ljava/lang/String;)J
    .registers 6

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    :goto_4
    return-wide v0

    :cond_5
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_46

    :pswitch_c
    goto :goto_4

    :pswitch_d
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/f;->c(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_4

    :pswitch_12
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->c(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_4

    :pswitch_17
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->b(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_4

    :pswitch_1c
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_4

    :pswitch_21
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->d(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_4

    :pswitch_26
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/a;->a(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_4

    :pswitch_2b
    :try_start_2b
    const-string v2, "dropbox"

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/d;->d(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_4

    :cond_3c
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->f(Ljava/lang/String;)J
    :try_end_3f
    .catch Lcom/estrongs/android/pop/fs/DropboxException; {:try_start_2b .. :try_end_3f} :catch_43
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_2b .. :try_end_3f} :catch_41

    move-result-wide v0

    goto :goto_4

    :catch_41
    move-exception v2

    goto :goto_4

    :catch_43
    move-exception v2

    goto :goto_4

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_d
        :pswitch_12
        :pswitch_21
        :pswitch_26
        :pswitch_2b
        :pswitch_17
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_1c
        :pswitch_21
    .end packed-switch
.end method

.method public e(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move-object v0, v1

    :goto_4
    return-object v0

    :cond_5
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_58

    :cond_c
    :goto_c
    :pswitch_c
    move-object v0, v1

    goto :goto_4

    :pswitch_e
    iget-object v0, p0, Lcom/estrongs/android/pop/d/p;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/fs/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4

    :pswitch_15
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->f(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4

    :pswitch_1a
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->f(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4

    :pswitch_1f
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/m;->f(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4

    :pswitch_24
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->g(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4

    :pswitch_29
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/a;->g(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4

    :pswitch_2e
    :try_start_2e
    const-string v0, "dropbox"

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/d;->e(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4

    :cond_3f
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->i(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_42} :catch_44

    move-result-object v0

    goto :goto_4

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    instance-of v2, v0, Lcom/estrongs/android/pop/netfs/NetFsException;

    if-eqz v2, :cond_c

    check-cast v0, Lcom/estrongs/android/pop/netfs/NetFsException;

    iget-object v0, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    sget-object v2, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_LOG_IN:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    if-ne v0, v2, :cond_c

    invoke-direct {p0}, Lcom/estrongs/android/pop/d/p;->d()V

    goto :goto_c

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_e
        :pswitch_15
        :pswitch_24
        :pswitch_29
        :pswitch_2e
        :pswitch_1a
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_1f
        :pswitch_24
    .end packed-switch
.end method

.method public f(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_26

    :pswitch_b
    goto :goto_3

    :pswitch_c
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/f;->d(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_3

    :pswitch_11
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->g(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_3

    :pswitch_16
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->g(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_3

    :pswitch_1b
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->h(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_3

    :pswitch_20
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/a;->h(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_3

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_c
        :pswitch_11
        :pswitch_1b
        :pswitch_20
        :pswitch_b
        :pswitch_16
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_1b
    .end packed-switch
.end method

.method public g(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_4e

    :pswitch_b
    goto :goto_3

    :pswitch_c
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/f;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_11
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_16
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_1b
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/m;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_20
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_25
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/a;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_2a
    :try_start_2a
    const-string v1, "dropbox"

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/d;->f(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_3b
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->g(Ljava/lang/String;)Z
    :try_end_3e
    .catch Lcom/estrongs/android/pop/fs/DropboxException; {:try_start_2a .. :try_end_3e} :catch_4b
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_2a .. :try_end_3e} :catch_40

    move-result v0

    goto :goto_3

    :catch_40
    move-exception v1

    iget-object v1, v1, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    sget-object v2, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_LOG_IN:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/pop/d/p;->d()V

    goto :goto_3

    :catch_4b
    move-exception v1

    goto :goto_3

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_11
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_16
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_1b
        :pswitch_20
    .end packed-switch
.end method

.method public h(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_4e

    :pswitch_b
    goto :goto_3

    :pswitch_c
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/f;->f(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_11
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SmbFileSystem;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_16
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_1b
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/m;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_20
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_25
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/a;->c(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :pswitch_2a
    :try_start_2a
    const-string v1, "dropbox"

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/d;->g(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_3b
    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->h(Ljava/lang/String;)Z
    :try_end_3e
    .catch Lcom/estrongs/android/pop/fs/DropboxException; {:try_start_2a .. :try_end_3e} :catch_4b
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_2a .. :try_end_3e} :catch_40

    move-result v0

    goto :goto_3

    :catch_40
    move-exception v1

    iget-object v1, v1, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    sget-object v2, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_LOG_IN:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/pop/d/p;->d()V

    goto :goto_3

    :catch_4b
    move-exception v1

    goto :goto_3

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_11
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_16
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_1b
        :pswitch_20
    .end packed-switch
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    :pswitch_3
    return-object v0

    :cond_4
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->q(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_18

    :pswitch_b
    goto :goto_3

    :pswitch_c
    sget-object v0, Lcom/estrongs/android/pop/fs/a;->a:Ljava/lang/String;

    goto :goto_3

    :pswitch_f
    sget-object v0, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;

    goto :goto_3

    :pswitch_12
    sget-object v0, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;

    goto :goto_3

    :pswitch_15
    sget-object v0, Lcom/estrongs/android/pop/fs/g;->a:Ljava/lang/String;

    goto :goto_3

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_c
        :pswitch_15
        :pswitch_f
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_12
        :pswitch_3
    .end packed-switch
.end method
