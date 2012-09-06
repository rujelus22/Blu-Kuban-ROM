.class public Lcom/estrongs/android/pop/fs/g;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/netfs/INetFileSystem;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/g;->b:Landroid/content/Context;

    sput-object v0, Lcom/estrongs/android/pop/fs/g;->c:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/fs/g;->d:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/fs/g;->e:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/fs/g;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/fs/g;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/fs/g;->g:Ljava/util/HashMap;

    sget-object v0, Lcom/estrongs/android/pop/fs/g;->g:Ljava/util/HashMap;

    const-string v1, "vdisk"

    const-string v2, "com.estrongs.android.pop.netfs.VDiskFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/fs/g;->g:Ljava/util/HashMap;

    const-string v1, "kanbox"

    const-string v2, "com.estrongs.android.pop.netfs.KanboxFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/fs/g;->g:Ljava/util/HashMap;

    const-string v1, "sugarsync"

    const-string v2, "com.estrongs.android.pop.netfs.SugarsyncFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/fs/g;->g:Ljava/util/HashMap;

    const-string v1, "kuaipan"

    const-string v2, "com.estrongs.android.pop.netfs.KuaipanFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/fs/g;->g:Ljava/util/HashMap;

    const-string v1, "box"

    const-string v2, "com.estrongs.android.pop.netfs.BoxnetFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/fs/g;->g:Ljava/util/HashMap;

    const-string v1, "baidu"

    const-string v2, "com.estrongs.android.pop.netfs.BaiduFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/fs/g;->g:Ljava/util/HashMap;

    const-string v1, "vdisk"

    const-string v2, "com.estrongs.android.pop.netfs.VDiskFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/fs/g;->g:Ljava/util/HashMap;

    const-string v1, "skydrive"

    const-string v2, "com.estrongs.android.pop.netfs.SkydrvFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/fs/g;->g:Ljava/util/HashMap;

    const-string v1, "gdrive"

    const-string v2, "com.estrongs.android.pop.netfs.GdriveFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/fs/g;->g:Ljava/util/HashMap;

    const-string v1, "s3"

    const-string v2, "com.estrongs.android.pop.netfs.S3FileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/fs/g;->g:Ljava/util/HashMap;

    const-string v1, "ubuntu"

    const-string v2, "com.estrongs.android.pop.netfs.UbuntuFileSystem"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 6

    const/16 v0, 0x64

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v1

    if-nez v1, :cond_d

    :goto_c
    return v0

    :cond_d
    :try_start_d
    invoke-interface {v1, p1, p2, p3}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->register(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_12

    move-result v0

    goto :goto_c

    :catch_12
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public static a(Ljava/lang/String;J)Ljava/io/OutputStream;
    .registers 9

    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/fs/g;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "yandex"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_1f
    invoke-static {v0, p1, p2}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;J)Ljava/io/OutputStream;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_24

    move-result-object v0

    :goto_23
    return-object v0

    :catch_24
    move-exception v0

    move-object v0, v1

    goto :goto_23

    :cond_27
    invoke-static {v0}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    if-nez v0, :cond_2f

    move-object v0, v1

    goto :goto_23

    :cond_2f
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->getFileOutputStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_23
.end method

.method private static a(Lcom/estrongs/android/pop/netfs/NetFileInfo;)Ljava/lang/String;
    .registers 9

    const-string v1, ""

    iget-boolean v2, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->isDirectory:Z

    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/estrongs/android/pop/fs/g;->c:Ljava/lang/String;

    if-nez v0, :cond_8e

    const-string v0, "MM/dd/yy"

    :goto_c
    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_92

    const-string v0, ""

    :goto_1c
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

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->lastModifiedTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_99

    const-string v0, "N/A"

    :goto_4a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_a5

    const-string v0, "d"

    :goto_72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "rw"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8e
    sget-object v0, Lcom/estrongs/android/pop/fs/g;->c:Ljava/lang/String;

    goto/16 :goto_c

    :cond_92
    iget-wide v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->size:J

    invoke-static {v0, v1}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_99
    new-instance v0, Ljava/util/Date;

    iget-wide v4, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->lastModifiedTime:J

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    :cond_a5
    const-string v0, "-"

    goto :goto_72
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/util/Map;
    .registers 25
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

    sget-object v2, Lcom/estrongs/android/pop/fs/g;->b:Landroid/content/Context;

    if-nez v2, :cond_6

    sput-object p0, Lcom/estrongs/android/pop/fs/g;->b:Landroid/content/Context;

    :cond_6
    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/pop/fs/g;->a:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/g;->c(Ljava/lang/String;)Lcom/estrongs/android/util/h;

    move-result-object v11

    if-eqz v11, :cond_1d

    iget-boolean v2, v11, Lcom/estrongs/android/util/h;->e:Z

    if-nez v2, :cond_17

    iget-boolean v2, v11, Lcom/estrongs/android/util/h;->b:Z

    if-eqz v2, :cond_1d

    :cond_17
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_1c
    :goto_1c
    return-object v2

    :cond_1d
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v3, :cond_33

    if-eqz v4, :cond_33

    if-nez v5, :cond_3d

    :cond_33
    new-instance v2, Lcom/estrongs/android/pop/netfs/NetFsException;

    const-string v3, "MalFormed URL"

    sget-object v4, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_MALFORMED_URL:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/pop/netfs/NetFsException;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)V

    throw v2

    :cond_3d
    const-string v2, "yandex"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-static {v3, v4, v5}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_4a
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/pop/fs/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/Map;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4f} :catch_51

    move-result-object v2

    goto :goto_1c

    :catch_51
    move-exception v2

    const/4 v2, 0x0

    goto :goto_1c

    :cond_54
    invoke-static {v12}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v2

    if-nez v2, :cond_5c

    const/4 v2, 0x0

    goto :goto_1c

    :cond_5c
    const/4 v8, 0x0

    :try_start_5d
    new-instance v7, Lcom/estrongs/android/pop/fs/h;

    invoke-direct {v7}, Lcom/estrongs/android/pop/fs/h;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/estrongs/android/pop/fs/h;->a(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10e

    const-string v6, "sugarsync"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10e

    const/4 v6, 0x5

    new-array v9, v6, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/estrongs/android/pop/fs/g;->b:Landroid/content/Context;

    const v14, 0x7f090219

    invoke-virtual {v6, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v10, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/estrongs/android/pop/fs/g;->b:Landroid/content/Context;

    const v14, 0x7f09021a

    invoke-virtual {v6, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v10, 0x2

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/estrongs/android/pop/fs/g;->b:Landroid/content/Context;

    const v14, 0x7f09021b

    invoke-virtual {v6, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v10, 0x3

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/estrongs/android/pop/fs/g;->b:Landroid/content/Context;

    const v14, 0x7f09021c

    invoke-virtual {v6, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v10, 0x4

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/estrongs/android/pop/fs/g;->b:Landroid/content/Context;

    const v14, 0x7f09021d

    invoke-virtual {v6, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    invoke-interface {v2, v3, v4, v9}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->setPrivateContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10e
    move/from16 v6, p2

    invoke-interface/range {v2 .. v7}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->listFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/estrongs/android/pop/netfs/INetRefreshCallback;)Ljava/util/Map;
    :try_end_113
    .catch Lcom/estrongs/android/pop/netfs/NetFsException; {:try_start_5d .. :try_end_113} :catch_11a

    move-result-object v2

    move-object v7, v2

    :goto_115
    if-nez v7, :cond_129

    const/4 v2, 0x0

    goto/16 :goto_1c

    :catch_11a
    move-exception v2

    iget-object v5, v2, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    sget-object v6, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_AUTH_FAILED:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    if-ne v5, v6, :cond_122

    throw v2

    :cond_122
    iget-object v5, v2, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    sget-object v6, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_LOG_IN:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    if-ne v5, v6, :cond_2fd

    throw v2

    :cond_129
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    const/4 v2, 0x0

    if-eqz v13, :cond_1c

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->k()I

    move-result v14

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->l()I

    move-result v8

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x4

    if-ge v14, v9, :cond_1a8

    new-instance v6, Lcom/estrongs/android/pop/b/a;

    const/4 v9, 0x4

    invoke-direct {v6, v14, v8, v7, v9}, Lcom/estrongs/android/pop/b/a;-><init>(IILjava/lang/Object;I)V

    move-object v9, v2

    move-object v10, v5

    move-object v2, v6

    :goto_14f
    if-eqz v2, :cond_1c3

    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    :goto_156
    if-nez p3, :cond_1c9

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->m()Z

    move-result v2

    if-nez v2, :cond_1c9

    const/4 v2, 0x0

    move v6, v2

    :goto_164
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->b()I

    move-result v2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1cc

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->j()Z

    move-result v2

    if-nez v2, :cond_1cc

    const/4 v2, 0x0

    move v7, v2

    :goto_17b
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->V()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/estrongs/android/pop/fs/g;->c:Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_189
    :goto_189
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1cf

    if-eqz v10, :cond_1a5

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1a5

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2e2

    :cond_1a5
    move-object v2, v8

    goto/16 :goto_1c

    :cond_1a8
    const/4 v7, 0x4

    if-ne v14, v7, :cond_2f8

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/ah;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Lcom/estrongs/android/pop/b/f;

    invoke-direct {v6, v2, v8}, Lcom/estrongs/android/pop/b/f;-><init>(Ljava/util/Map;I)V

    move-object v9, v2

    move-object v10, v5

    move-object v2, v6

    goto :goto_14f

    :cond_1c3
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    goto :goto_156

    :cond_1c9
    const/4 v2, 0x1

    move v6, v2

    goto :goto_164

    :cond_1cc
    const/4 v2, 0x1

    move v7, v2

    goto :goto_17b

    :cond_1cf
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/pop/netfs/NetFileInfo;

    iget-boolean v15, v2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->isDirectory:Z

    iget-object v5, v2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->path:Ljava/lang/String;

    invoke-static {v12, v3, v4, v5}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    iget-object v5, v2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    if-nez v6, :cond_1ff

    if-eqz v5, :cond_1ff

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1ff

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2e

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_189

    :cond_1ff
    invoke-static {v11, v5}, Lcom/estrongs/android/util/g;->a(Lcom/estrongs/android/util/h;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_189

    const/4 v5, 0x4

    if-ne v14, v5, :cond_233

    if-eqz v9, :cond_233

    if-nez v10, :cond_261

    const/4 v5, 0x0

    :goto_20d
    if-eqz v5, :cond_281

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    iget v5, v5, Lcom/estrongs/android/util/aj;->e:I

    int-to-long v0, v5

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_233
    :goto_233
    if-eqz v7, :cond_2b1

    invoke-static {v2}, Lcom/estrongs/android/pop/fs/g;->a(Lcom/estrongs/android/pop/netfs/NetFileInfo;)Ljava/lang/String;

    move-result-object v5

    if-eqz v15, :cond_29c

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v17, v18

    const/4 v15, 0x1

    aput-object v5, v17, v15

    const/4 v5, 0x2

    new-instance v15, Lcom/estrongs/android/pop/a/b;

    iget v2, v2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->folder_type:I

    invoke-direct {v15, v2}, Lcom/estrongs/android/pop/a/b;-><init>(I)V

    aput-object v15, v17, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_189

    :cond_261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/estrongs/android/util/aj;

    goto :goto_20d

    :cond_281
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v5, v17

    const/16 v17, 0x1

    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v5, v17

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_233

    :cond_29c
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v2, v17

    const/4 v15, 0x1

    aput-object v5, v2, v15

    move-object/from16 v0, v16

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_189

    :cond_2b1
    if-eqz v15, :cond_2d1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v5, v17

    const/4 v15, 0x1

    new-instance v17, Lcom/estrongs/android/pop/a/b;

    iget v2, v2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->folder_type:I

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/estrongs/android/pop/a/b;-><init>(I)V

    aput-object v17, v5, v15

    move-object/from16 v0, v16

    invoke-interface {v8, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_189

    :cond_2d1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v2, v5

    move-object/from16 v0, v16

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_189

    :cond_2e2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/util/aj;

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/estrongs/android/util/ah;->a(Lcom/estrongs/android/util/aj;Z)V

    goto/16 :goto_19f

    :cond_2f8
    move-object v9, v2

    move-object v10, v5

    move-object v2, v6

    goto/16 :goto_14f

    :cond_2fd
    move-object v7, v8

    goto/16 :goto_115
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    if-nez v0, :cond_24

    const-string v0, "NetFileSystem"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t load fs for :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/estrongs/android/pop/netfs/NetFsException;

    const-string v1, "Not installed"

    sget-object v2, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_NOT_INSTALLED:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/netfs/NetFsException;-><init>(Ljava/lang/String;Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;)V

    throw v0

    :cond_24
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sput-object p0, Lcom/estrongs/android/pop/fs/g;->d:Ljava/lang/String;

    sput-object p1, Lcom/estrongs/android/pop/fs/g;->e:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/pop/fs/g;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-interface {v0, p1, p2, p3}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->setPrivateContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yandex"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_4b

    move-result-object v1

    const/4 v2, 0x1

    :try_start_1f
    invoke-static {p0, v1, v2}, Lcom/estrongs/android/pop/fs/m;->b(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_50

    move-result v0

    :cond_23
    :goto_23
    return v0

    :cond_24
    :try_start_24
    invoke-static {v2}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-static {p0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v6

    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-interface {v2, v3, v4, v5}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->getThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v6, p1, v2}, Lcom/estrongs/android/pop/e/a;->a(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_49} :catch_4b

    :cond_49
    move v0, v1

    goto :goto_23

    :catch_4b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23

    :catch_50
    move-exception v1

    goto :goto_23
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/fs/g;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yandex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_20
    invoke-static {p0, v1, p2, p3}, Lcom/estrongs/android/pop/fs/m;->a(Landroid/content/Context;Ljava/lang/String;J)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_3c

    move-result v0

    :cond_24
    :goto_24
    return v0

    :cond_25
    invoke-static {v1}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_24

    :catch_3c
    move-exception v1

    goto :goto_24
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/fs/g;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yandex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v4}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_28
    invoke-static {p0, v3, v1, p3, p4}, Lcom/estrongs/android/pop/fs/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_48

    move-result v0

    :cond_2c
    :goto_2c
    return v0

    :cond_2d
    invoke-static {v1}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2c

    :catch_48
    move-exception v1

    goto :goto_2c
.end method

.method public static a(Ljava/lang/String;Z)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/fs/g;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yandex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_20
    invoke-static {v1, p1}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Z)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_3c

    move-result v0

    :cond_24
    :goto_24
    return v0

    :cond_25
    invoke-static {v1}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3, p1}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->createFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_24

    :catch_3c
    move-exception v1

    goto :goto_24
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return v0

    :cond_8
    invoke-interface {v1, p1}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->getRegisterPrepareInfo([Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-result v0

    goto :goto_7

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method private static b(Lcom/estrongs/android/pop/netfs/NetFileInfo;)Lcom/estrongs/android/pop/d/e;
    .registers 5

    new-instance v1, Lcom/estrongs/android/pop/d/e;

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->path:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/d/e;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->isDirectory:Z

    iput-boolean v0, v1, Lcom/estrongs/android/pop/d/e;->d:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->readable:Z

    iput-boolean v0, v1, Lcom/estrongs/android/pop/d/e;->k:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->writable:Z

    iput-boolean v0, v1, Lcom/estrongs/android/pop/d/e;->l:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->hidden:Z

    iput-boolean v0, v1, Lcom/estrongs/android/pop/d/e;->m:Z

    iget-wide v2, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->lastModifiedTime:J

    iput-wide v2, v1, Lcom/estrongs/android/pop/d/e;->j:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->size:J

    iput-wide v2, v1, Lcom/estrongs/android/pop/d/e;->e:J

    iget v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->md5_block_size:I

    iput v0, v1, Lcom/estrongs/android/pop/d/e;->s:I

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->md5s:Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/android/pop/d/e;->r:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->isDirectory:Z

    if-nez v0, :cond_34

    const-string v0, "File"

    :goto_31
    iput-object v0, v1, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    return-object v1

    :cond_34
    const-string v0, "Directory"

    goto :goto_31
.end method

.method public static b(Ljava/lang/String;J)Ljava/io/InputStream;
    .registers 9

    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/fs/g;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "yandex"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_1f
    invoke-static {v0, p1, p2}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;J)Ljava/io/InputStream;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_24

    move-result-object v0

    :goto_23
    return-object v0

    :catch_24
    move-exception v0

    move-object v0, v1

    goto :goto_23

    :cond_27
    invoke-static {v0}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    if-nez v0, :cond_2f

    move-object v0, v1

    goto :goto_23

    :cond_2f
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->getFileInputStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_23
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->addServer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_b
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/fs/g;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yandex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v4}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_28
    invoke-static {v3, v1}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_48

    move-result v0

    :cond_2c
    :goto_2c
    return v0

    :cond_2d
    invoke-static {v1}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->renameFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2c

    :catch_48
    move-exception v1

    goto :goto_2c
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/fs/g;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yandex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_20
    invoke-static {v1}, Lcom/estrongs/android/pop/fs/m;->d(Ljava/lang/String;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_3c

    move-result v0

    :cond_24
    :goto_24
    return v0

    :cond_25
    invoke-static {v1}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->exists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_24

    :catch_3c
    move-exception v1

    goto :goto_24
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/fs/g;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yandex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v4}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_28
    invoke-static {v3, v1}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_48

    move-result v0

    :cond_2c
    :goto_2c
    return v0

    :cond_2d
    invoke-static {v1}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->moveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2c

    :catch_48
    move-exception v1

    goto :goto_2c
.end method

.method public static d(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/NetFileInfo;
    .registers 5

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/g;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->getFileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/NetFileInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    iput-object p0, v0, Lcom/estrongs/android/pop/netfs/NetFileInfo;->path:Ljava/lang/String;

    goto :goto_d
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {v1, p1}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->getUserLoginName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-result-object v0

    goto :goto_7

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public static e(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;
    .registers 5

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/g;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yandex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_20
    invoke-static {v1, v2}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;Z)Lcom/estrongs/android/pop/d/e;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_30

    move-result-object v0

    :cond_24
    :goto_24
    return-object v0

    :cond_25
    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->d(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/NetFileInfo;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-static {v1}, Lcom/estrongs/android/pop/fs/g;->b(Lcom/estrongs/android/pop/netfs/NetFileInfo;)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    goto :goto_24

    :catch_30
    move-exception v1

    goto :goto_24
.end method

.method public static f(Ljava/lang/String;)J
    .registers 3

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/g;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->e(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    if-nez v0, :cond_c

    const-wide/16 v0, 0x0

    :goto_b
    return-wide v0

    :cond_c
    iget-wide v0, v0, Lcom/estrongs/android/pop/d/e;->e:J

    goto :goto_b
.end method

.method public static g(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/g;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/fs/g;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static h(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/pop/fs/g;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yandex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_20
    invoke-static {v1}, Lcom/estrongs/android/pop/fs/m;->c(Ljava/lang/String;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_3c

    move-result v0

    :cond_24
    :goto_24
    return v0

    :cond_25
    invoke-static {v1}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->isDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_24

    :catch_3c
    move-exception v1

    goto :goto_24
.end method

.method public static i(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/pop/fs/g;->b(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yandex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v0, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    invoke-static {v1}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v1

    if-eqz v1, :cond_f

    :try_start_16
    invoke-interface {v1, p0}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->getLastErrorString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1b

    move-result-object v0

    goto :goto_f

    :catch_1b
    move-exception v1

    goto :goto_f
.end method

.method public static k(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "s3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_18

    :cond_17
    :goto_17
    return-void

    :cond_18
    const-string v1, "yandex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {v0}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->delServer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    goto :goto_17

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v2

    if-nez v2, :cond_8

    :goto_7
    return-object v0

    :cond_8
    const-string v1, "skydrive"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    sget-object v1, Lcom/estrongs/android/pop/esclasses/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_23

    const-string v3, "cn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    const-string v1, "zh_cn"

    :cond_1e
    :goto_1e
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v1}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->setPrivateContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_23
    invoke-interface {v2}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->getOAuthLoginUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_28
    const-string v3, "cn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v1, "zh_tw"
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_33

    goto :goto_1e

    :catch_33
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "gdrive"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    invoke-static {v0}, Lcom/estrongs/android/pop/fs/g;->n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;

    move-result-object v0

    if-nez v0, :cond_17

    move-object v0, v1

    goto :goto_e

    :cond_17
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/g;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/util/ag;

    invoke-direct {v5, v0}, Lcom/estrongs/android/util/ag;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v0, v6

    const/4 v2, 0x1

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object v4, v0, v2

    const-string v2, "getWebUrl"

    invoke-virtual {v5, v2, v0}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_3d

    goto :goto_e

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_e
.end method

.method private static n(Ljava/lang/String;)Lcom/estrongs/android/pop/netfs/INetFileSystem;
    .registers 5

    const/4 v2, 0x0

    sget-object v0, Lcom/estrongs/android/pop/fs/g;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/netfs/INetFileSystem;

    sget-object v1, Lcom/estrongs/android/pop/fs/g;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_15

    move-object v0, v2

    :cond_14
    :goto_14
    return-object v0

    :cond_15
    if-nez v0, :cond_14

    invoke-static {p0, v2}, Lcom/estrongs/android/util/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-static {v3, v1, v2}, Lcom/estrongs/android/util/f;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/netfs/INetFileSystem;

    :cond_23
    if-eqz v0, :cond_14

    sget-object v1, Lcom/estrongs/android/pop/fs/g;->f:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_28
    sget-object v2, Lcom/estrongs/android/pop/fs/g;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_36

    sget-object v1, Lcom/estrongs/android/pop/fs/g;->d:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/pop/fs/g;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/netfs/INetFileSystem;->setConfigDir(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0
.end method

.method private static o(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :cond_7
    return-object v0
.end method
