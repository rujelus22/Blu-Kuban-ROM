.class public LF/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBufType;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 43
    .line 45
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

    .line 46
    :try_start_11
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v0, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 47
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_30
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_19} :catch_33

    .line 56
    invoke-static {v2}, LF/r;->a(Ljava/io/Closeable;)V

    :goto_1c
    return-object v0

    .line 49
    :catch_1d
    move-exception v0

    move-object v0, v1

    .line 56
    :goto_1f
    invoke-static {v0}, LF/r;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_1c

    .line 52
    :catch_24
    move-exception v0

    move-object v2, v1

    .line 56
    :goto_26
    invoke-static {v2}, LF/r;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_1c

    :catchall_2b
    move-exception v0

    :goto_2c
    invoke-static {v1}, LF/r;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_30
    move-exception v0

    move-object v1, v2

    goto :goto_2c

    .line 52
    :catch_33
    move-exception v0

    goto :goto_26

    .line 49
    :catch_35
    move-exception v0

    move-object v0, v2

    goto :goto_1f
.end method

.method public static a(F)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 132
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(LaP/d;LC/z;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 108
    if-nez p1, :cond_5

    .line 109
    const-string v0, "n"

    .line 122
    :goto_4
    return-object v0

    .line 111
    :cond_5
    iget-object v0, p1, LC/z;->c:LaP/a;

    if-eqz v0, :cond_25

    iget-object v0, p1, LC/z;->c:LaP/a;

    iget-object v0, v0, LaP/a;->a:LaP/t;

    invoke-virtual {p0, v0}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v0

    invoke-virtual {v0}, LaP/h;->c()Z

    move-result v0

    .line 113
    :goto_15
    sget-object v1, LF/s;->a:[I

    iget-object v2, p1, LC/z;->b:LC/A;

    invoke-virtual {v2}, LC/A;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_36

    .line 122
    const-string v0, ""

    goto :goto_4

    .line 111
    :cond_25
    const/4 v0, 0x0

    goto :goto_15

    .line 115
    :pswitch_27
    if-eqz v0, :cond_2c

    const-string v0, "w"

    goto :goto_4

    :cond_2c
    const-string v0, "t"

    goto :goto_4

    .line 118
    :pswitch_2f
    const-string v0, "o"

    goto :goto_4

    .line 120
    :pswitch_32
    const-string v0, "l"

    goto :goto_4

    .line 113
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
    .parameter

    .prologue
    .line 90
    if-eqz p0, :cond_5

    .line 92
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 97
    :cond_5
    :goto_5
    return-void

    .line 93
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 71
    const/4 v2, 0x0

    .line 73
    :try_start_2
    new-instance v1, Ljava/io/DataOutputStream;

    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_23
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_14

    .line 74
    :try_start_c
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_29
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_2b

    .line 75
    const/4 v0, 0x1

    .line 85
    invoke-static {v1}, LF/r;->a(Ljava/io/Closeable;)V

    :goto_13
    return v0

    .line 76
    :catch_14
    move-exception v1

    move-object v1, v2

    .line 78
    :goto_16
    if-eqz v1, :cond_1f

    .line 81
    :try_start_18
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_29

    .line 85
    :cond_1f
    invoke-static {v1}, LF/r;->a(Ljava/io/Closeable;)V

    goto :goto_13

    :catchall_23
    move-exception v0

    move-object v1, v2

    :goto_25
    invoke-static {v1}, LF/r;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_29
    move-exception v0

    goto :goto_25

    .line 76
    :catch_2b
    move-exception v2

    goto :goto_16
.end method
