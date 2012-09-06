.class Lcom/estrongs/android/pop/bt/h;
.super La/b/f;


# instance fields
.field a:Ljava/util/Timer;

.field b:Z

.field c:Z

.field d:La/a/a/a;

.field final synthetic e:Lcom/estrongs/android/pop/bt/g;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/bt/g;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/estrongs/android/pop/bt/h;->e:Lcom/estrongs/android/pop/bt/g;

    invoke-direct {p0}, La/b/f;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/h;->a:Ljava/util/Timer;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/h;->b:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/h;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/bt/g;Lcom/estrongs/android/pop/bt/h;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/bt/h;-><init>(Lcom/estrongs/android/pop/bt/g;)V

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/c;)I
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/h;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/h;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const-string v0, "OBEXOppServer"

    const-string v1, "OBEX onConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa0

    return v0
.end method

.method public a(La/b/c;La/b/c;ZZ)I
    .registers 7

    const-string v0, "OBEXOppServer"

    const-string v1, "OBEX onSetPath"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3, p4}, La/b/f;->a(La/b/c;La/b/c;ZZ)I

    move-result v0

    return v0
.end method

.method public a(La/b/d;)I
    .registers 10

    const/4 v2, 0x0

    const-string v0, "OBEXOppServer"

    const-string v1, "OBEX onPut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    invoke-interface {p1}, La/b/d;->h()La/b/c;

    move-result-object v3

    const/4 v0, 0x1

    invoke-interface {v3, v0}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x42

    invoke-interface {v3, v1}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_12c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1b} :catch_101

    if-nez v0, :cond_32

    if-nez v1, :cond_32

    const-string v0, "OBEXOppServer"

    const-string v1, "OBEX onPut ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/h;->e:Lcom/estrongs/android/pop/bt/g;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;)Lcom/estrongs/android/pop/bt/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/bt/j;->a()V

    const/16 v0, 0xc0

    :goto_31
    return v0

    :cond_32
    :try_start_32
    const-string v4, "OBEXOppServer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file type:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/h;->e:Lcom/estrongs/android/pop/bt/g;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Receiving "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;Ljava/lang/String;)V

    const/16 v1, 0xc3

    invoke-interface {v3, v1}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_8f

    const-string v3, "OBEXOppServer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file lenght:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/estrongs/android/pop/bt/h;->e:Lcom/estrongs/android/pop/bt/g;

    invoke-static {v3}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;)Lcom/estrongs/android/pop/bt/j;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/estrongs/android/pop/bt/j;->b(I)V

    iget-object v3, p0, Lcom/estrongs/android/pop/bt/h;->e:Lcom/estrongs/android/pop/bt/g;

    invoke-static {v3}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;)Lcom/estrongs/android/pop/bt/j;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/estrongs/android/pop/bt/j;->a(I)V

    :cond_8f
    if-nez v0, :cond_f7

    const-string v3, "temp"

    const-string v4, "tmp"

    invoke-static {}, Lcom/estrongs/android/pop/bt/g;->d()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    :goto_9d
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-interface {p1}, La/b/d;->a()Ljava/io/InputStream;

    move-result-object v5

    :cond_a6
    :goto_a6
    iget-object v6, p0, Lcom/estrongs/android/pop/bt/h;->e:Lcom/estrongs/android/pop/bt/g;

    invoke-static {v6}, Lcom/estrongs/android/pop/bt/g;->b(Lcom/estrongs/android/pop/bt/g;)Z

    move-result v6

    if-eqz v6, :cond_11d

    :goto_ae
    invoke-interface {p1}, La/b/d;->e()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    const-string v1, "OBEXOppServer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "file saved:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/h;->e:Lcom/estrongs/android/pop/bt/g;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/h;->c:Z
    :try_end_e3
    .catchall {:try_start_32 .. :try_end_e3} :catchall_12c
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_e3} :catch_101

    const-string v0, "OBEXOppServer"

    const-string v1, "OBEX onPut ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/h;->e:Lcom/estrongs/android/pop/bt/g;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;)Lcom/estrongs/android/pop/bt/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/bt/j;->a()V

    const/16 v0, 0xa0

    goto/16 :goto_31

    :cond_f7
    :try_start_f7
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/estrongs/android/pop/bt/g;->d()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_100
    .catchall {:try_start_f7 .. :try_end_100} :catchall_12c
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_100} :catch_101

    goto :goto_9d

    :catch_101
    move-exception v0

    :try_start_102
    const-string v1, "OBEXOppServer"

    const-string v2, "OBEX Server onPut error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_109
    .catchall {:try_start_102 .. :try_end_109} :catchall_12c

    const-string v0, "OBEXOppServer"

    const-string v1, "OBEX onPut ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/h;->e:Lcom/estrongs/android/pop/bt/g;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;)Lcom/estrongs/android/pop/bt/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/bt/j;->a()V

    const/16 v0, 0xd3

    goto/16 :goto_31

    :cond_11d
    :try_start_11d
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_13e

    const-string v1, "OBEXOppServer"

    const-string v2, "EOS received"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12b
    .catchall {:try_start_11d .. :try_end_12b} :catchall_12c
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_12b} :catch_101

    goto :goto_ae

    :catchall_12c
    move-exception v0

    const-string v1, "OBEXOppServer"

    const-string v2, "OBEX onPut ends"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/h;->e:Lcom/estrongs/android/pop/bt/g;

    invoke-static {v1}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;)Lcom/estrongs/android/pop/bt/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/pop/bt/j;->a()V

    throw v0

    :cond_13e
    :try_start_13e
    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    if-eqz v1, :cond_a6

    rem-int/lit8 v6, v2, 0x64

    if-nez v6, :cond_a6

    iget-object v6, p0, Lcom/estrongs/android/pop/bt/h;->e:Lcom/estrongs/android/pop/bt/g;

    invoke-static {v6}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;)Lcom/estrongs/android/pop/bt/j;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/estrongs/android/pop/bt/j;->b(I)V
    :try_end_152
    .catchall {:try_start_13e .. :try_end_152} :catchall_12c
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_152} :catch_101

    goto/16 :goto_a6
.end method

.method a()V
    .registers 3

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/h;->b:Z

    if-nez v0, :cond_1b

    const-string v0, "OBEXOppServer"

    const-string v1, "OBEX connection timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_b
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/h;->d:La/a/a/a;

    invoke-interface {v0}, La/a/a/a;->e()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_1c

    :goto_10
    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/h;->c:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/h;->e:Lcom/estrongs/android/pop/bt/g;

    const-string v1, "Disconnected"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;Ljava/lang/String;)V

    :cond_1b
    return-void

    :catch_1c
    move-exception v0

    goto :goto_10
.end method

.method a(La/a/a/a;)V
    .registers 6

    const-string v0, "OBEXOppServer"

    const-string v1, "Received OBEX connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/h;->e:Lcom/estrongs/android/pop/bt/g;

    const-string v1, "Client connected"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/bt/h;->d:La/a/a/a;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/h;->b:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/h;->a:Ljava/util/Timer;

    new-instance v1, Lcom/estrongs/android/pop/bt/i;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/bt/i;-><init>(Lcom/estrongs/android/pop/bt/h;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_20
    return-void
.end method

.method public a([B)V
    .registers 5

    const-string v0, "OBEXOppServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OBEX AuthFailure "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(La/b/d;)I
    .registers 9

    const/16 v3, 0xd3

    const/16 v2, 0xa0

    const-string v0, "OBEXOppServer"

    const-string v1, "OBEX onGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_b
    invoke-interface {p1}, La/b/d;->h()La/b/c;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1, v0}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0x42

    invoke-interface {v1, v4}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_c7
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1e} :catch_ab

    if-nez v1, :cond_2a

    const-string v0, "OBEXOppServer"

    const-string v1, "OBEX onGet ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc0

    :goto_29
    return v0

    :cond_2a
    :try_start_2a
    const-string v4, "x-obex/capability"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_c7
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_ab

    move-result v4

    if-eqz v4, :cond_3b

    const-string v0, "OBEXOppServer"

    const-string v1, "OBEX onGet ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_29

    :cond_3b
    :try_start_3b
    const-string v4, "x-obex/object-profile"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    const-string v4, "text/x-vCard"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    :cond_4b
    if-nez v0, :cond_9b

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/vcard.vcf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_61

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/h;->e:Lcom/estrongs/android/pop/bt/g;

    const-string v4, "/sdcard/vcard.vcf"

    invoke-static {v1, v4}, Lcom/estrongs/android/pop/bt/g;->b(Lcom/estrongs/android/pop/bt/g;Ljava/lang/String;)Z

    :cond_61
    :goto_61
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v0, 0x1

    invoke-direct {v1, v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-interface {p1}, La/b/d;->c()Ljava/io/OutputStream;

    move-result-object v4

    const/high16 v5, 0x1

    invoke-direct {v0, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/high16 v4, 0x1

    new-array v4, v4, [B

    :goto_7c
    const/4 v5, 0x0

    const/high16 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a6

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    invoke-interface {p1}, La/b/d;->e()V
    :try_end_92
    .catchall {:try_start_3b .. :try_end_92} :catchall_c7
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_92} :catch_ab

    const-string v0, "OBEXOppServer"

    const-string v1, "OBEX onGet ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_29

    :cond_9b
    :try_start_9b
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/estrongs/android/pop/bt/g;->d()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_61

    :cond_a6
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_aa
    .catchall {:try_start_9b .. :try_end_aa} :catchall_c7
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_aa} :catch_ab

    goto :goto_7c

    :catch_ab
    move-exception v0

    :try_start_ac
    const-string v1, "OBEXOppServer"

    const-string v2, "OBEX Server onGet error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b3
    .catchall {:try_start_ac .. :try_end_b3} :catchall_c7

    const-string v0, "OBEXOppServer"

    const-string v1, "OBEX onGet ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto/16 :goto_29

    :cond_bd
    const-string v0, "OBEXOppServer"

    const-string v1, "OBEX onGet ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto/16 :goto_29

    :catchall_c7
    move-exception v0

    const-string v1, "OBEXOppServer"

    const-string v2, "OBEX onGet ends"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method public b(La/b/c;La/b/c;)V
    .registers 5

    const-string v0, "OBEXOppServer"

    const-string v1, "OBEX onDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/h;->c:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/h;->e:Lcom/estrongs/android/pop/bt/g;

    const-string v1, "Disconnected"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/bt/g;->a(Lcom/estrongs/android/pop/bt/g;Ljava/lang/String;)V

    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/h;->b:Z

    return-void
.end method

.method public c(La/b/c;La/b/c;)I
    .registers 5

    const-string v0, "OBEXOppServer"

    const-string v1, "OBEX onDelete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, La/b/f;->c(La/b/c;La/b/c;)I

    move-result v0

    return v0
.end method
