.class public Lcom/estrongs/android/pop/bt/g;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/UUID;

.field private b:La/b/g;

.field private c:Z

.field private d:Z

.field private e:Lcom/estrongs/android/pop/bt/j;

.field private f:Landroid/content/Context;


# direct methods
.method static synthetic a(Lcom/estrongs/android/pop/bt/g;)Lcom/estrongs/android/pop/bt/j;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/g;->e:Lcom/estrongs/android/pop/bt/j;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/bt/g;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/bt/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/g;->e:Lcom/estrongs/android/pop/bt/j;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/bt/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/bt/g;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/g;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/bt/g;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/bt/g;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/g;->f:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/bt/vcard/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/io/File;
    .registers 1

    invoke-static {}, Lcom/estrongs/android/pop/bt/g;->f()Ljava/io/File;

    move-result-object v0

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

.method private static f()Ljava/io/File;
    .registers 2

    const-string v0, "/sdcard"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public a()V
    .registers 7

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/g;->c:Z

    :try_start_3
    invoke-direct {p0}, Lcom/estrongs/android/pop/bt/g;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "OBEX Object Push"

    iget-object v2, p0, Lcom/estrongs/android/pop/bt/g;->a:Ljava/util/UUID;

    invoke-static {v0, v2}, Lcom/estrongs/bluetooth/c;->a(Ljava/lang/String;Ljava/util/UUID;)La/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/g;->b:La/b/g;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_13} :catch_29

    :cond_13
    const/4 v0, 0x1

    :try_start_14
    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/g;->d:Z

    move v0, v1

    move v3, v1

    :goto_18
    iget-boolean v2, p0, Lcom/estrongs/android/pop/bt/g;->c:Z
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_52

    if-eqz v2, :cond_32

    :goto_1c
    invoke-virtual {p0}, Lcom/estrongs/android/pop/bt/g;->c()V

    const-string v0, "OBEXOppServer"

    const-string v2, "OBEX Server finished!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/g;->d:Z

    :goto_28
    return-void

    :catch_29
    move-exception v0

    const-string v1, "OBEXOppServer"

    const-string v2, "Unable to create notifier"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_32
    :try_start_32
    new-instance v4, Lcom/estrongs/android/pop/bt/h;

    const/4 v2, 0x0

    invoke-direct {v4, p0, v2}, Lcom/estrongs/android/pop/bt/h;-><init>(Lcom/estrongs/android/pop/bt/g;Lcom/estrongs/android/pop/bt/h;)V
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_52

    add-int/lit8 v2, v0, 0x1

    :try_start_3a
    const-string v0, "OBEXOppServer"

    const-string v5, "Accepting OBEX OPP connections"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/g;->b:La/b/g;

    invoke-interface {v0, v4}, La/b/g;->a(La/b/f;)La/a/a/a;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/estrongs/android/pop/bt/h;->a(La/a/a/a;)V
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_52
    .catch Ljava/io/InterruptedIOException; {:try_start_3a .. :try_end_4a} :catch_4d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_4a} :catch_60

    move v0, v2

    move v3, v1

    goto :goto_18

    :catch_4d
    move-exception v0

    const/4 v0, 0x1

    :try_start_4f
    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/g;->c:Z
    :try_end_51
    .catchall {:try_start_4f .. :try_end_51} :catchall_52

    goto :goto_1c

    :catchall_52
    move-exception v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/bt/g;->c()V

    const-string v2, "OBEXOppServer"

    const-string v3, "OBEX Server finished!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/g;->d:Z

    throw v0

    :catch_60
    move-exception v0

    :try_start_61
    const-string v4, "Stack closed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/estrongs/android/pop/bt/g;->c:Z

    :cond_70
    iget-boolean v4, p0, Lcom/estrongs/android/pop/bt/g;->c:Z
    :try_end_72
    .catchall {:try_start_61 .. :try_end_72} :catchall_52

    if-eqz v4, :cond_81

    invoke-virtual {p0}, Lcom/estrongs/android/pop/bt/g;->c()V

    const-string v0, "OBEXOppServer"

    const-string v2, "OBEX Server finished!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/g;->d:Z

    goto :goto_28

    :cond_81
    add-int/lit8 v3, v3, 0x1

    :try_start_83
    const-string v4, "OBEXOppServer"

    const-string v5, "acceptAndOpen "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8a
    .catchall {:try_start_83 .. :try_end_8a} :catchall_52

    move v0, v2

    goto :goto_18
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/g;->d:Z

    return v0
.end method

.method public c()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/g;->c:Z

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/g;->b:La/b/g;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/g;->b:La/b/g;

    invoke-interface {v0}, La/b/g;->e()V

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/g;->d:Z

    const-string v0, "OBEXOppServer"

    const-string v1, "OBEX ServerConnection closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    const-string v1, "OBEXOppServer"

    const-string v2, "OBEX Server stop error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method
