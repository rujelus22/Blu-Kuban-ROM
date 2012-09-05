.class public LI/r;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lam/e;)Lam/b;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_2b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_11} :catch_24

    :try_start_11
    new-instance v0, Lam/b;

    invoke-direct {v0, p2}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v0, v2}, Lam/b;->a(Ljava/io/InputStream;)Lam/b;
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_30
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_19} :catch_33

    invoke-static {v2}, LI/r;->a(Ljava/io/Closeable;)V

    :goto_1c
    return-object v0

    :catch_1d
    move-exception v0

    move-object v0, v1

    :goto_1f
    invoke-static {v0}, LI/r;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_1c

    :catch_24
    move-exception v0

    move-object v2, v1

    :goto_26
    invoke-static {v2}, LI/r;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_1c

    :catchall_2b
    move-exception v0

    :goto_2c
    invoke-static {v1}, LI/r;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_30
    move-exception v0

    move-object v1, v2

    goto :goto_2c

    :catch_33
    move-exception v0

    goto :goto_26

    :catch_35
    move-exception v0

    move-object v0, v2

    goto :goto_1f
.end method

.method public static a(F)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lbc/d;LF/C;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_5

    const-string v0, "n"

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p1, LF/C;->c:Lbc/a;

    if-eqz v0, :cond_25

    iget-object v0, p1, LF/C;->c:Lbc/a;

    iget-object v0, v0, Lbc/a;->a:Lbc/t;

    invoke-virtual {p0, v0}, Lbc/d;->a(Lbc/t;)Lbc/h;

    move-result-object v0

    invoke-virtual {v0}, Lbc/h;->c()Z

    move-result v0

    :goto_15
    sget-object v1, LI/s;->a:[I

    iget-object v2, p1, LF/C;->b:LF/D;

    invoke-virtual {v2}, LF/D;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_36

    const-string v0, ""

    goto :goto_4

    :cond_25
    const/4 v0, 0x0

    goto :goto_15

    :pswitch_27
    if-eqz v0, :cond_2c

    const-string v0, "w"

    goto :goto_4

    :cond_2c
    const-string v0, "t"

    goto :goto_4

    :pswitch_2f
    const-string v0, "o"

    goto :goto_4

    :pswitch_32
    const-string v0, "l"

    goto :goto_4

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_27
        :pswitch_2f
        :pswitch_32
    .end packed-switch
.end method

.method private static a(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;Lam/b;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_2
    new-instance v1, Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_25
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_14

    :try_start_c
    invoke-virtual {p1, v1}, Lam/b;->b(Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_20
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_28

    const/4 v0, 0x1

    :cond_10
    :goto_10
    invoke-static {v1}, LI/r;->a(Ljava/io/Closeable;)V

    return v0

    :catch_14
    move-exception v1

    move-object v1, v2

    :goto_16
    if-eqz v1, :cond_10

    :try_start_18
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_20

    goto :goto_10

    :catchall_20
    move-exception v0

    :goto_21
    invoke-static {v1}, LI/r;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_25
    move-exception v0

    move-object v1, v2

    goto :goto_21

    :catch_28
    move-exception v2

    goto :goto_16
.end method
