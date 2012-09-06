.class public Lcom/estrongs/android/pop/bt/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/UUID;

.field public static b:Ljava/lang/String;

.field private static final j:[B


# instance fields
.field private c:Lcom/estrongs/bluetooth/parser/a;

.field private d:La/b/g;

.field private e:Z

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Z

.field private i:Lcom/estrongs/android/pop/bt/j;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0x9

    const-string v0, "00001106-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/bt/a;->a:Ljava/util/UUID;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/bt/a;->b:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, -0x3c

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, -0x6b

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, -0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    aput-byte v1, v0, v3

    const/16 v1, 0xa

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    sput-object v0, Lcom/estrongs/android/pop/bt/a;->j:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->e:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->f:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->h:Z

    new-instance v0, Lcom/estrongs/android/pop/bt/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/bt/b;-><init>(Lcom/estrongs/android/pop/bt/a;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/a;->i:Lcom/estrongs/android/pop/bt/j;

    new-instance v0, Lcom/estrongs/bluetooth/parser/a;

    invoke-direct {v0}, Lcom/estrongs/bluetooth/parser/a;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/a;->c:Lcom/estrongs/bluetooth/parser/a;

    iput-object p1, p0, Lcom/estrongs/android/pop/bt/a;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->N()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/bt/a;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/bt/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/a;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/bt/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/bluetooth/parser/OBEXElement;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_20

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_20

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_26

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return-object v0

    :cond_20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :cond_26
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_2d
    if-lt v2, v4, :cond_31

    move-object v0, v1

    goto :goto_1f

    :cond_31
    aget-object v5, v3, v2

    if-nez v5, :cond_39

    :goto_35
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2d

    :cond_39
    new-instance v6, Lcom/estrongs/bluetooth/parser/OBEXElement;

    invoke-direct {v6}, Lcom/estrongs/bluetooth/parser/OBEXElement;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_62

    sget-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->FOLDER:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    :goto_4d
    invoke-virtual {v6, v0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a(Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a(J)V

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/estrongs/bluetooth/parser/OBEXElement;->b(J)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_62
    sget-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->FILE:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    goto :goto_4d
.end method

.method static synthetic a(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/bt/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/a;->i:Lcom/estrongs/android/pop/bt/j;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/bt/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/bt/a;[B)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/bt/a;->a([B)Z

    move-result v0

    return v0
.end method

.method private a([B)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    array-length v0, p1

    sget-object v2, Lcom/estrongs/android/pop/bt/a;->j:[B

    array-length v2, v2

    if-eq v0, v2, :cond_a

    :cond_9
    :goto_9
    return v1

    :cond_a
    move v0, v1

    :goto_b
    sget-object v2, Lcom/estrongs/android/pop/bt/a;->j:[B

    array-length v2, v2

    if-lt v0, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_9

    :cond_12
    sget-object v2, Lcom/estrongs/android/pop/bt/a;->j:[B

    aget-byte v2, v2, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method static synthetic b(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/j;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/a;->i:Lcom/estrongs/android/pop/bt/j;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/bt/a;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1d

    array-length v4, v3

    move v1, v0

    :goto_1b
    if-lt v1, v4, :cond_22

    :cond_1d
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_c

    :cond_22
    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/estrongs/android/pop/bt/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_31
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_c
.end method

.method static synthetic c(Lcom/estrongs/android/pop/bt/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/bt/a;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/bluetooth/parser/a;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/a;->c:Lcom/estrongs/bluetooth/parser/a;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/bt/a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private d(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    return v0
.end method

.method static synthetic d()[B
    .registers 1

    sget-object v0, Lcom/estrongs/android/pop/bt/a;->j:[B

    return-object v0
.end method

.method private e()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_6} :catch_c

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_b

    const/4 v0, 0x1

    :cond_b
    :goto_b
    return v0

    :catch_c
    move-exception v1

    goto :goto_b
.end method


# virtual methods
.method public a()V
    .registers 7

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/a;->e:Z

    :try_start_3
    invoke-direct {p0}, Lcom/estrongs/android/pop/bt/a;->e()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "FTP"

    sget-object v2, Lcom/estrongs/android/pop/bt/a;->a:Ljava/util/UUID;

    invoke-static {v0, v2}, Lcom/estrongs/bluetooth/c;->a(Ljava/lang/String;Ljava/util/UUID;)La/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/a;->d:La/b/g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->h:Z
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_16} :catch_2c

    :cond_16
    const/4 v0, 0x1

    :try_start_17
    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->f:Z

    move v0, v1

    move v3, v1

    :goto_1b
    iget-boolean v2, p0, Lcom/estrongs/android/pop/bt/a;->e:Z
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_55

    if-eqz v2, :cond_35

    :goto_1f
    invoke-virtual {p0}, Lcom/estrongs/android/pop/bt/a;->c()V

    const-string v0, "OBEXFtpServer"

    const-string v2, "OBEX Server finished!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/a;->f:Z

    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    const-string v1, "OBEXFtpServer"

    const-string v2, "Unable to create notifier"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_35
    :try_start_35
    new-instance v4, Lcom/estrongs/android/pop/bt/c;

    const/4 v2, 0x0

    invoke-direct {v4, p0, v2}, Lcom/estrongs/android/pop/bt/c;-><init>(Lcom/estrongs/android/pop/bt/a;Lcom/estrongs/android/pop/bt/c;)V
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_55

    add-int/lit8 v2, v0, 0x1

    :try_start_3d
    const-string v0, "OBEXFtpServer"

    const-string v5, "Accepting OBEX ftp connections"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/a;->d:La/b/g;

    invoke-interface {v0, v4}, La/b/g;->a(La/b/f;)La/a/a/a;

    move-result-object v0

    invoke-virtual {v4, v0, v2}, Lcom/estrongs/android/pop/bt/c;->a(La/a/a/a;I)V
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_55
    .catch Ljava/io/InterruptedIOException; {:try_start_3d .. :try_end_4d} :catch_50
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_4d} :catch_63

    move v0, v2

    move v3, v1

    goto :goto_1b

    :catch_50
    move-exception v0

    const/4 v0, 0x1

    :try_start_52
    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->e:Z
    :try_end_54
    .catchall {:try_start_52 .. :try_end_54} :catchall_55

    goto :goto_1f

    :catchall_55
    move-exception v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/bt/a;->c()V

    const-string v2, "OBEXFtpServer"

    const-string v3, "OBEX Server finished!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/a;->f:Z

    throw v0

    :catch_63
    move-exception v0

    :try_start_64
    const-string v4, "Stack closed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/estrongs/android/pop/bt/a;->e:Z

    :cond_73
    iget-boolean v4, p0, Lcom/estrongs/android/pop/bt/a;->e:Z
    :try_end_75
    .catchall {:try_start_64 .. :try_end_75} :catchall_55

    if-eqz v4, :cond_84

    invoke-virtual {p0}, Lcom/estrongs/android/pop/bt/a;->c()V

    const-string v0, "OBEXFtpServer"

    const-string v2, "OBEX Server finished!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/a;->f:Z

    goto :goto_2b

    :cond_84
    add-int/lit8 v3, v3, 0x1

    :try_start_86
    const-string v4, "OBEXFtpServer"

    const-string v5, "acceptAndOpen "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_55

    move v0, v2

    goto :goto_1b
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->f:Z

    return v0
.end method

.method public c()V
    .registers 4

    const-string v0, "xxxxxxxxxx"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->e:Z

    :try_start_a
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/a;->d:La/b/g;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/a;->d:La/b/g;

    invoke-interface {v0}, La/b/g;->e()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/bt/a;->e()Z

    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/a;->f:Z

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX ServerConnection closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_20} :catch_21

    :goto_20
    return-void

    :catch_21
    move-exception v0

    const-string v1, "OBEXFtpServer"

    const-string v2, "OBEX Server stop error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method
