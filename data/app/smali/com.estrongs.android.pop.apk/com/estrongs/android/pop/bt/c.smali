.class Lcom/estrongs/android/pop/bt/c;
.super La/b/f;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/bt/a;

.field private b:Ljava/util/Timer;

.field private c:Z

.field private d:Z

.field private e:La/a/a/a;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/bt/a;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-direct {p0}, La/b/f;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/c;->b:Ljava/util/Timer;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/c;->c:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/bt/c;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/bt/a;Lcom/estrongs/android/pop/bt/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/bt/c;-><init>(Lcom/estrongs/android/pop/bt/a;)V

    return-void
.end method

.method private c()V
    .registers 5

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v2, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ZJ)I

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-object v1, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)V

    goto :goto_1a
.end method


# virtual methods
.method public a(La/b/c;La/b/c;)I
    .registers 9

    const/16 v2, 0xc0

    const/16 v1, 0xa0

    const-string v0, "OBEXFtpServer"

    const-string v3, "OBEX onConnect"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_f

    move v0, v1

    :goto_e
    return v0

    :cond_f
    const/16 v0, 0x46

    :try_start_11
    invoke-interface {p1, v0}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_23

    iget-object v3, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/bt/a;->a(Lcom/estrongs/android/pop/bt/a;[B)Z

    move-result v0

    if-nez v0, :cond_23

    move v0, v2

    goto :goto_e

    :cond_23
    const/16 v0, 0xcb

    new-instance v3, Ljava/lang/Long;

    iget v4, p0, Lcom/estrongs/android/pop/bt/c;->h:I

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {p2, v0, v3}, La/b/c;->a(ILjava/lang/Object;)V

    const/16 v0, 0x4a

    invoke-static {}, Lcom/estrongs/android/pop/bt/a;->d()[B

    move-result-object v3

    invoke-interface {p2, v0, v3}, La/b/c;->a(ILjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->c:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_41} :catch_43

    move v0, v1

    goto :goto_e

    :catch_43
    move-exception v0

    move v0, v2

    goto :goto_e
.end method

.method public a(La/b/c;La/b/c;ZZ)I
    .registers 9

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX onSetPath"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->c:Z

    if-nez v0, :cond_e

    const/16 v0, 0xa4

    :goto_d
    return v0

    :cond_e
    if-eqz p3, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/c;->g:Ljava/lang/String;

    :cond_14
    const/16 v0, 0xcb

    :try_start_16
    invoke-interface {p1, v0}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p0, Lcom/estrongs/android/pop/bt/c;->h:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2a

    const/16 v0, 0xd3

    goto :goto_d

    :cond_2a
    const/4 v0, 0x1

    invoke-interface {p1, v0}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_40

    :cond_39
    sget-object v0, Lcom/estrongs/android/pop/bt/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    :cond_3d
    :goto_3d
    const/16 v0, 0xa0

    goto :goto_d

    :cond_40
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    sget-object v0, Lcom/estrongs/android/pop/bt/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    goto :goto_3d

    :catch_4d
    move-exception v0

    const/16 v0, 0xc0

    goto :goto_d

    :cond_51
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/bt/a;->b(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)Z

    move-result v1

    if-nez p4, :cond_77

    if-nez v1, :cond_77

    const/16 v0, 0xc4

    goto :goto_d

    :cond_77
    iput-object v0, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    if-eqz p4, :cond_3d

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/bt/a;->c(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)Z
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_82} :catch_4d

    goto :goto_3d
.end method

.method public a(La/b/d;)I
    .registers 12

    const/16 v1, 0xd3

    const/4 v2, 0x0

    const-string v0, "OBEXFtpServer"

    const-string v3, "OBEX onPut"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->c:Z

    if-nez v0, :cond_11

    const/16 v0, 0xa4

    :goto_10
    return v0

    :cond_11
    :try_start_11
    invoke-interface {p1}, La/b/d;->h()La/b/c;

    move-result-object v4

    const/16 v0, 0xcb

    invoke-interface {v4, v0}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget v0, p0, Lcom/estrongs/android/pop/bt/c;->h:I
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_183
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_23} :catch_152

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_3a

    const-string v0, "OBEXFtpServer"

    const-string v2, "OBEX onPut ends"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/a;->b(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/bt/j;->a()V

    move v0, v1

    goto :goto_10

    :cond_3a
    const/4 v0, 0x1

    :try_start_3b
    invoke-interface {v4, v0}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_123

    const-string v3, "OBEXFtpServer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "name:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Receiving "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/estrongs/android/pop/bt/a;->a(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V

    move-object v3, v0

    :goto_6c
    const/16 v0, 0xc3

    invoke-interface {v4, v0}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_a1

    const-string v4, "OBEXFtpServer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file lenght:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v4}, Lcom/estrongs/android/pop/bt/a;->b(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/j;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/estrongs/android/pop/bt/j;->b(I)V

    iget-object v4, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v4}, Lcom/estrongs/android/pop/bt/a;->b(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/j;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/estrongs/android/pop/bt/j;->a(I)V

    :cond_a1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_b1

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    :cond_b1
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-interface {p1}, La/b/d;->a()Ljava/io/InputStream;

    move-result-object v7

    const/high16 v8, 0x1

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/high16 v7, 0x1

    new-array v7, v7, [B

    :cond_cc
    :goto_cc
    iget-object v8, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v8}, Lcom/estrongs/android/pop/bt/a;->c(Lcom/estrongs/android/pop/bt/a;)Z

    move-result v8

    if-eqz v8, :cond_140

    :goto_d4
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    invoke-interface {p1}, La/b/d;->e()V

    const-string v0, "OBEXFtpServer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "file saved:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Received "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/bt/a;->a(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->d:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/bt/c;->c()V
    :try_end_10f
    .catchall {:try_start_3b .. :try_end_10f} :catchall_183
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_10f} :catch_152

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX onPut ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/a;->b(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/bt/j;->a()V

    const/16 v0, 0xa0

    goto/16 :goto_10

    :cond_123
    :try_start_123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "bt_received.tmp"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    const-string v5, "Receiving file"

    invoke-static {v3, v5}, Lcom/estrongs/android/pop/bt/a;->a(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V

    move-object v3, v0

    goto/16 :goto_6c

    :cond_140
    const/4 v8, 0x0

    const/high16 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_16d

    const-string v0, "OBEXFtpServer"

    const-string v2, "EOS received"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_151
    .catchall {:try_start_123 .. :try_end_151} :catchall_183
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_151} :catch_152

    goto :goto_d4

    :catch_152
    move-exception v0

    :try_start_153
    const-string v2, "OBEXFtpServer"

    const-string v3, "OBEX Server onPut error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15a
    .catchall {:try_start_153 .. :try_end_15a} :catchall_183

    const-string v0, "OBEXFtpServer"

    const-string v2, "OBEX onPut ends"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/a;->b(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/bt/j;->a()V

    move v0, v1

    goto/16 :goto_10

    :cond_16d
    const/4 v9, 0x0

    :try_start_16e
    invoke-virtual {v5, v7, v9, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr v2, v8

    if-eqz v0, :cond_cc

    rem-int/lit8 v8, v2, 0x64

    if-nez v8, :cond_cc

    iget-object v8, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v8}, Lcom/estrongs/android/pop/bt/a;->b(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/j;

    move-result-object v8

    invoke-interface {v8, v2}, Lcom/estrongs/android/pop/bt/j;->b(I)V
    :try_end_181
    .catchall {:try_start_16e .. :try_end_181} :catchall_183
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_181} :catch_152

    goto/16 :goto_cc

    :catchall_183
    move-exception v0

    const-string v1, "OBEXFtpServer"

    const-string v2, "OBEX onPut ends"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/bt/a;->b(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/pop/bt/j;->a()V

    throw v0
.end method

.method public a()V
    .registers 3

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX notConnectedClose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->c:Z

    if-nez v0, :cond_22

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX connection timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_12
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->e:La/a/a/a;

    invoke-interface {v0}, La/a/a/a;->e()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_23

    :goto_17
    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->d:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    const-string v1, "Disconnected"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/bt/a;->a(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V

    :cond_22
    return-void

    :catch_23
    move-exception v0

    goto :goto_17
.end method

.method public a(La/a/a/a;I)V
    .registers 7

    const-string v0, "OBEXFtpServer"

    const-string v1, "Received OBEX connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    const-string v1, "Client connected"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/bt/a;->a(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/bt/c;->e:La/a/a/a;

    iput p2, p0, Lcom/estrongs/android/pop/bt/c;->h:I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->c:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->b:Ljava/util/Timer;

    new-instance v1, Lcom/estrongs/android/pop/bt/d;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/bt/d;-><init>(Lcom/estrongs/android/pop/bt/c;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_23
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/a;->a(Lcom/estrongs/android/pop/bt/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->N()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .registers 5

    const-string v0, "OBEXFtpServer"

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
    .registers 10

    const/16 v3, 0xa0

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX onGet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->c:Z

    if-nez v0, :cond_10

    const/16 v0, 0xa4

    :goto_f
    return v0

    :cond_10
    :try_start_10
    invoke-interface {p1}, La/b/d;->h()La/b/c;
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_124
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_111

    move-result-object v2

    if-nez v2, :cond_20

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX onGet ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc0

    goto :goto_f

    :cond_20
    const/16 v0, 0x42

    :try_start_22
    invoke-interface {v2, v0}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v4, 0xcb

    invoke-interface {v2, v4}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v2, p0, Lcom/estrongs/android/pop/bt/c;->h:I
    :try_end_3d
    .catchall {:try_start_22 .. :try_end_3d} :catchall_124
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_3d} :catch_111

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-eqz v2, :cond_4c

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX onGet ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd3

    goto :goto_f

    :cond_4c
    if-eqz v0, :cond_ac

    :try_start_4e
    const-string v2, "x-obex/folder-listing"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/bt/a;->d(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/bluetooth/parser/a;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    iget-object v4, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    invoke-static {v2, v4, v1}, Lcom/estrongs/android/pop/bt/a;->a(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/bluetooth/parser/a;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/bt/c;->b()La/b/c;

    move-result-object v2

    const/16 v4, 0xcb

    new-instance v5, Ljava/lang/Long;

    iget v6, p0, Lcom/estrongs/android/pop/bt/c;->h:I

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v2, v4, v5}, La/b/c;->a(ILjava/lang/Object;)V

    const/16 v4, 0xc3

    new-instance v5, Ljava/lang/Long;

    array-length v6, v0

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v2, v4, v5}, La/b/c;->a(ILjava/lang/Object;)V

    const/4 v4, 0x1

    invoke-interface {v2, v4, v1}, La/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {p1, v2}, La/b/d;->b(La/b/c;)V

    invoke-interface {p1}, La/b/d;->d()Ljava/io/DataOutputStream;

    move-result-object v1

    const/4 v2, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-interface {p1}, La/b/d;->e()V
    :try_end_a2
    .catchall {:try_start_4e .. :try_end_a2} :catchall_124
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_a2} :catch_111

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX onGet ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto/16 :goto_f

    :cond_ac
    if-nez v1, :cond_ca

    :try_start_ae
    invoke-interface {p1}, La/b/d;->h()La/b/c;

    move-result-object v0

    const/16 v1, 0x49

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-interface {v0, v1, v2}, La/b/c;->a(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, La/b/d;->b(La/b/c;)V

    invoke-interface {p1}, La/b/d;->e()V
    :try_end_c0
    .catchall {:try_start_ae .. :try_end_c0} :catchall_124
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_c0} :catch_111

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX onGet ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto/16 :goto_f

    :cond_ca
    :try_start_ca
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v0, 0x1

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-interface {p1}, La/b/d;->c()Ljava/io/OutputStream;

    move-result-object v2

    const/high16 v4, 0x1

    invoke-direct {v0, v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/high16 v2, 0x1

    new-array v2, v2, [B

    :goto_ec
    const/4 v4, 0x0

    const/high16 v5, 0x1

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_10c

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    invoke-interface {p1}, La/b/d;->e()V
    :try_end_102
    .catchall {:try_start_ca .. :try_end_102} :catchall_124
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_102} :catch_111

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX onGet ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto/16 :goto_f

    :cond_10c
    const/4 v5, 0x0

    :try_start_10d
    invoke-virtual {v0, v2, v5, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_110
    .catchall {:try_start_10d .. :try_end_110} :catchall_124
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_110} :catch_111

    goto :goto_ec

    :catch_111
    move-exception v0

    :try_start_112
    const-string v1, "OBEXFtpServer"

    const-string v2, "OBEX Server onGet error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_119
    .catchall {:try_start_112 .. :try_end_119} :catchall_124

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX onGet ends"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd3

    goto/16 :goto_f

    :catchall_124
    move-exception v0

    const-string v1, "OBEXFtpServer"

    const-string v2, "OBEX onGet ends"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method public b(La/b/c;La/b/c;)V
    .registers 5

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX onDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->d:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    const-string v1, "Disconnected"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/bt/a;->a(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V

    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->c:Z

    return-void
.end method

.method public c(La/b/c;La/b/c;)I
    .registers 7

    const-string v0, "OBEXFtpServer"

    const-string v1, "OBEX onDelete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/bt/c;->c:Z

    if-nez v0, :cond_e

    const/16 v0, 0xa4

    :goto_d
    return v0

    :cond_e
    const/16 v0, 0xcb

    :try_start_10
    invoke-interface {p1, v0}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p0, Lcom/estrongs/android/pop/bt/c;->h:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    const/16 v0, 0xd3

    goto :goto_d

    :cond_24
    const/4 v0, 0x1

    invoke-interface {p1, v0}, La/b/c;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_35

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    :cond_35
    const/16 v0, 0xc0

    goto :goto_d

    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/estrongs/android/pop/bt/c;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/bt/a;->b(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    const/16 v0, 0xc4

    goto :goto_d

    :cond_5c
    iget-object v1, p0, Lcom/estrongs/android/pop/bt/c;->a:Lcom/estrongs/android/pop/bt/a;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/bt/a;->d(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)Z
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_61} :catch_6a

    move-result v0

    if-eqz v0, :cond_67

    const/16 v0, 0xa0

    goto :goto_d

    :cond_67
    const/16 v0, 0xc3

    goto :goto_d

    :catch_6a
    move-exception v0

    invoke-super {p0, p1, p2}, La/b/f;->c(La/b/c;La/b/c;)I

    move-result v0

    goto :goto_d
.end method
