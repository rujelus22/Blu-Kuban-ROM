.class public Lcom/estrongs/android/pop/ftp/h;
.super Ljava/lang/Thread;


# instance fields
.field a:Z

.field private b:Ljava/net/Socket;

.field private c:Lcom/estrongs/android/pop/ftp/a;

.field private d:Ljava/io/BufferedOutputStream;

.field private e:Ljava/io/BufferedReader;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Integer;

.field private l:Lcom/estrongs/android/pop/ftp/i;

.field private m:Lcom/estrongs/android/pop/ftp/i;

.field private n:J

.field private o:Ljava/io/File;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Z


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lcom/estrongs/android/pop/ftp/a;)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->d:Ljava/io/BufferedOutputStream;

    iput-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->e:Ljava/io/BufferedReader;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/ftp/h;->f:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->h:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/estrongs/android/pop/ftp/h;->i:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->k:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->l:Lcom/estrongs/android/pop/ftp/i;

    iput-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/ftp/h;->n:J

    iput-boolean v3, p0, Lcom/estrongs/android/pop/ftp/h;->a:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->o:Ljava/io/File;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/ftp/h;->p:Z

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->q:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/estrongs/android/pop/ftp/h;->r:Z

    iput-object p1, p0, Lcom/estrongs/android/pop/ftp/h;->b:Ljava/net/Socket;

    iput-object p2, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    const-string v0, "/"

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/ftp/h;)Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->k:Ljava/lang/Integer;

    return-object v0
.end method

.method private a(ILjava/lang/String;)Ljava/lang/Object;
    .registers 7

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_d

    if-eq p1, v2, :cond_d

    if-ne p1, v3, :cond_111

    :cond_d
    if-eqz p2, :cond_132

    :try_start_f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_132

    const-string v1, "-a "

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "-A "

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "-l "

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "-L "

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    :cond_35
    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_3a
    :goto_3a
    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_3f} :catch_12f

    move-result v1

    if-eqz v1, :cond_c5

    :goto_42
    if-nez v0, :cond_10b

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    iget-object v1, v1, Lcom/estrongs/android/pop/ftp/a;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5b
    :goto_5b
    return-object v0

    :cond_5c
    :try_start_5c
    const-string v1, "-la "

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "-LA "

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "-al "

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "-AL "

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    :cond_7c
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3a

    :cond_82
    const-string v1, "-a"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c2

    const-string v1, "-A"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c2

    const-string v1, "-la"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c2

    const-string v1, "-LA"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c2

    const-string v1, "-AL"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c2

    const-string v1, "-al"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c2

    const-string v1, "-L"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c2

    const-string v1, "-l"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    :cond_c2
    move-object p2, v0

    goto/16 :goto_3a

    :cond_c5
    const-string v1, ".."

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_132

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f9

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    const/16 v2, 0x2f

    iget-object v3, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    :goto_f1
    if-ltz v1, :cond_5b

    if-nez v1, :cond_102

    const-string v0, "/"

    goto/16 :goto_42

    :cond_f9
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    goto :goto_f1

    :cond_102
    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_108} :catch_12f

    move-result-object v0

    goto/16 :goto_42

    :cond_10b
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5b

    :cond_111
    const/4 v1, 0x5

    if-eq p1, v1, :cond_11a

    const/4 v1, 0x6

    if-eq p1, v1, :cond_11a

    const/4 v1, 0x7

    if-ne p1, v1, :cond_5b

    :cond_11a
    new-instance v0, Lcom/estrongs/android/pop/ftp/j;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/ftp/j;-><init>(Lcom/estrongs/android/pop/ftp/h;)V

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/ftp/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/ftp/j;->b:Ljava/lang/String;

    iget-wide v1, p0, Lcom/estrongs/android/pop/ftp/h;->n:J

    iput-wide v1, v0, Lcom/estrongs/android/pop/ftp/j;->a:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/estrongs/android/pop/ftp/h;->n:J

    goto/16 :goto_5b

    :catch_12f
    move-exception v1

    goto/16 :goto_42

    :cond_132
    move-object v0, p2

    goto/16 :goto_42
.end method

.method static synthetic a(Lcom/estrongs/android/pop/ftp/h;Lcom/estrongs/android/pop/ftp/i;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/ftp/h;->l:Lcom/estrongs/android/pop/ftp/i;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/ftp/h;Lcom/estrongs/android/pop/ftp/i;Ljava/io/File;Ljava/net/Socket;ZJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/estrongs/android/pop/ftp/h;->a(Lcom/estrongs/android/pop/ftp/i;Ljava/io/File;Ljava/net/Socket;ZJ)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/ftp/h;Ljava/io/BufferedOutputStream;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/ftp/h;->a(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/ftp/h;->k:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/ftp/h;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/ftp/i;Ljava/io/File;Ljava/net/Socket;ZJ)V
    .registers 14

    if-eqz p4, :cond_40

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/a;->a()V

    :goto_7
    if-eqz p4, :cond_51

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v1, v0

    :goto_10
    if-eqz p4, :cond_57

    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_16
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-lez v2, :cond_21

    if-nez p4, :cond_21

    invoke-virtual {v0, p5, p6}, Ljava/io/InputStream;->skip(J)J

    :cond_21
    const/16 v2, 0x2000

    new-array v2, v2, [B

    :goto_25
    const/4 v3, 0x0

    const/16 v4, 0x2000

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_35

    iget-object v4, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    iget-boolean v4, v4, Lcom/estrongs/android/pop/ftp/a;->e:Z

    if-nez v4, :cond_5d

    :cond_35
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_46

    if-eqz p4, :cond_89

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/a;->b()V

    :goto_3f
    return-void

    :cond_40
    :try_start_40
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/a;->c()V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_45} :catch_46

    goto :goto_7

    :catch_46
    move-exception v0

    :try_start_47
    throw v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v0

    if-eqz p4, :cond_83

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ftp/a;->b()V

    :goto_50
    throw v0

    :cond_51
    :try_start_51
    invoke-virtual {p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    move-object v1, v0

    goto :goto_10

    :cond_57
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_16

    :cond_5d
    iget-boolean v4, p1, Lcom/estrongs/android/pop/ftp/i;->f:Z
    :try_end_5f
    .catchall {:try_start_51 .. :try_end_5f} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5f} :catch_46

    if-eqz v4, :cond_6f

    if-eqz p4, :cond_69

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/a;->b()V

    goto :goto_3f

    :cond_69
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/a;->d()V

    goto :goto_3f

    :cond_6f
    const/4 v4, 0x0

    :try_start_70
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p4, :cond_7c

    iget-object v4, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Lcom/estrongs/android/pop/ftp/a;->b(J)V

    goto :goto_25

    :cond_7c
    iget-object v4, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Lcom/estrongs/android/pop/ftp/a;->a(J)V
    :try_end_82
    .catchall {:try_start_70 .. :try_end_82} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_82} :catch_46

    goto :goto_25

    :cond_83
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ftp/a;->d()V

    goto :goto_50

    :cond_89
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/a;->d()V

    goto :goto_3f
.end method

.method private declared-synchronized a(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->q:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_f

    move-result-object v0

    :goto_7
    :try_start_7
    invoke-virtual {p1, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_15

    :goto_d
    monitor-exit p0

    return-void

    :catch_f
    move-exception v0

    :try_start_10
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_7

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1f

    :try_start_19
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_d

    :catch_1d
    move-exception v0

    goto :goto_d

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resp:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->d:Ljava/io/BufferedOutputStream;

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/pop/ftp/h;->a(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1c

    :goto_1a
    monitor-exit p0

    return-void

    :catch_1c
    move-exception v0

    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_1a

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    iget-object v1, v1, Lcom/estrongs/android/pop/ftp/a;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    iget-object v1, v1, Lcom/estrongs/android/pop/ftp/a;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    iget-object v1, v1, Lcom/estrongs/android/pop/ftp/a;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method private d(Ljava/lang/String;)I
    .registers 3

    const-string v0, "LIST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const-string v0, "NLST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    goto :goto_9

    :cond_14
    const-string v0, "MLSD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x3

    goto :goto_9

    :cond_1e
    const-string v0, "MLST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x4

    goto :goto_9

    :cond_28
    const-string v0, "RETR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x5

    goto :goto_9

    :cond_32
    const-string v0, "STOR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x6

    goto :goto_9

    :cond_3c
    const-string v0, "APPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x7

    goto :goto_9

    :cond_46
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private e(Ljava/lang/String;)V
    .registers 11

    const/4 v8, 0x4

    const/4 v1, 0x0

    const/4 v7, 0x5

    const/4 v2, 0x0

    const/4 v6, 0x1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "recv cmd:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    array-length v3, v0

    if-ge v3, v6, :cond_2a

    :cond_24
    const-string v0, "500 Command unrecognized.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/estrongs/android/pop/ftp/h;->a:Z

    if-eqz v4, :cond_77

    const-string v0, "RNTO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "550 Target exist.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    :goto_58
    iput-boolean v2, p0, Lcom/estrongs/android/pop/ftp/h;->a:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->o:Ljava/io/File;

    goto :goto_29

    :cond_5d
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->o:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_6b

    const-string v0, "250 RNTO command successful.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto :goto_58

    :cond_6b
    const-string v0, "550 RNTO failed.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto :goto_58

    :cond_71
    const-string v0, "503 Bad sequence of commands.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto :goto_58

    :cond_77
    const-string v4, "USER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_8b

    aget-object v1, v0, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_95

    :cond_8b
    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->g:Ljava/lang/String;

    :goto_8f
    const-string v0, "331 User name okay, need password.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto :goto_29

    :cond_95
    aget-object v0, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->g:Ljava/lang/String;

    goto :goto_8f

    :cond_9a
    const-string v4, "PASS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_158

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_ae

    aget-object v1, v0, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_111

    :cond_ae
    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->h:Ljava/lang/String;

    :goto_b2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "anonymous:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    iget-boolean v2, v2, Lcom/estrongs/android/pop/ftp/a;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    iget-object v2, v2, Lcom/estrongs/android/pop/ftp/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pass:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    iget-object v2, v2, Lcom/estrongs/android/pop/ftp/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",recv user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recv_pass:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/ftp/a;->g:Z

    if-eqz v0, :cond_116

    iput-boolean v6, p0, Lcom/estrongs/android/pop/ftp/h;->f:Z

    :cond_106
    :goto_106
    iget-boolean v0, p0, Lcom/estrongs/android/pop/ftp/h;->f:Z

    if-eqz v0, :cond_151

    const-string v0, "230 User logged in, proceed.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_111
    aget-object v0, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->h:Ljava/lang/String;

    goto :goto_b2

    :cond_116
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/ftp/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_132

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/ftp/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_132

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    iget-object v1, v1, Lcom/estrongs/android/pop/ftp/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    :cond_132
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/ftp/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_14e

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/ftp/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14e

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    iget-object v1, v1, Lcom/estrongs/android/pop/ftp/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    :cond_14e
    iput-boolean v6, p0, Lcom/estrongs/android/pop/ftp/h;->f:Z

    goto :goto_106

    :cond_151
    const-string v0, "530 Not logged in.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_158
    iget-boolean v4, p0, Lcom/estrongs/android/pop/ftp/h;->f:Z

    if-nez v4, :cond_163

    const-string v0, "530 Not logged in.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_163
    const-string v4, "REST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_189

    const/4 v0, 0x5

    :try_start_16c
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/ftp/h;->n:J

    const-string v0, "350 REST succ.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_17b} :catch_17d

    goto/16 :goto_29

    :catch_17d
    move-exception v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/ftp/h;->n:J

    const-string v0, "501 Invalid args.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_189
    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/ftp/h;->d(Ljava/lang/String;)I

    move-result v4

    iget-boolean v5, p0, Lcom/estrongs/android/pop/ftp/h;->p:Z

    if-eqz v5, :cond_1b4

    if-eqz v4, :cond_1c1

    const/4 v0, 0x5

    :try_start_194
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_197} :catch_1b1

    move-result-object v0

    :goto_198
    iget-object v3, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    iput v4, v3, Lcom/estrongs/android/pop/ftp/i;->d:I

    iget-object v3, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    invoke-direct {p0, v4, v0}, Lcom/estrongs/android/pop/ftp/h;->a(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lcom/estrongs/android/pop/ftp/i;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    iget-object v0, v0, Lcom/estrongs/android/pop/ftp/i;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iput-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/ftp/h;->p:Z

    goto/16 :goto_29

    :catch_1b1
    move-exception v0

    move-object v0, v1

    goto :goto_198

    :cond_1b4
    if-eqz v4, :cond_1c1

    iget-object v4, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    if-nez v4, :cond_1c1

    const-string v0, "503 Bad sequence of commands.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_1c1
    const-string v4, "SYST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d0

    const-string v0, "215 UNIX Type: L8\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_1d0
    const-string v4, "TYPE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_218

    array-length v1, v0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1e4

    aget-object v1, v0, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1eb

    :cond_1e4
    const-string v0, "501 Command invalid args.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_1eb
    aget-object v1, v0, v6

    const-string v3, "I"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1fe

    const-string v0, "200 Type set to I.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/estrongs/android/pop/ftp/h;->i:Z

    goto/16 :goto_29

    :cond_1fe
    aget-object v0, v0, v6

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_211

    const-string v0, "200 Type set to A.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/estrongs/android/pop/ftp/h;->i:Z

    goto/16 :goto_29

    :cond_211
    const-string v0, "501 Command invalid args.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_218
    const-string v4, "PWD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "257 \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" is current directory.\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_23c
    const-string v4, "CDUP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_297

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_255

    const-string v0, "550 Failed to change directory.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_255
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_278

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    const/16 v1, 0x2f

    iget-object v3, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    :goto_26f
    if-gez v0, :cond_281

    const-string v0, "550 Failed to change directory.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_278
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    goto :goto_26f

    :cond_281
    if-nez v0, :cond_28e

    const-string v0, "/"

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    :goto_287
    const-string v0, "250 Directory successfully changed.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_28e
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    goto :goto_287

    :cond_297
    const-string v4, "CWD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d4

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2cd

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2cd

    const-string v1, "250 Directory successfully changed.\r\n"

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    iget-object v1, v1, Lcom/estrongs/android/pop/ftp/a;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->j:Ljava/lang/String;

    goto/16 :goto_29

    :cond_2cd
    const-string v0, "550 Failed to change directory.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_2d4
    const-string v4, "FEAT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e3

    const-string v0, "211-Features\r\nSIZE\r\nPASV\r\n UTF8\r\n211 End\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_2e3
    const-string v4, "LIST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string v4, "NLST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string v4, "MLST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string v4, "MLSD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string v4, "RETR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string v4, "PASV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b0

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    if-eqz v0, :cond_31e

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/i;->a()V

    iput-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    :cond_31e
    :try_start_31e
    new-instance v0, Ljava/net/ServerSocket;

    iget-object v3, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/ftp/a;->f()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_329
    .catch Ljava/lang/Exception; {:try_start_31e .. :try_end_329} :catch_687

    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    :goto_32c
    if-nez v1, :cond_332

    const/16 v0, 0x14

    if-lt v2, v0, :cond_31e

    :cond_332
    const/16 v0, 0x14

    if-ge v2, v0, :cond_338

    if-nez v1, :cond_33f

    :cond_338
    const-string v0, "502 open data port failed.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_33f
    :try_start_33f
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/a;->g()Ljava/net/InetAddress;
    :try_end_344
    .catch Ljava/lang/Exception; {:try_start_33f .. :try_end_344} :catch_354

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    if-eqz v0, :cond_34d

    if-gtz v2, :cond_35f

    :cond_34d
    const-string v0, "502 get local ip/port failed.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :catch_354
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "502 open data port failed.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_35f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "227 Entering Passive Mode ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2e

    const/16 v5, 0x2c

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v0, v2, 0x100

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit16 v0, v2, 0x100

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ").\r\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/estrongs/android/pop/ftp/i;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/ftp/i;-><init>(Lcom/estrongs/android/pop/ftp/h;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    iput-object v1, v0, Lcom/estrongs/android/pop/ftp/i;->a:Ljava/net/ServerSocket;

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    iget-object v0, v0, Lcom/estrongs/android/pop/ftp/i;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iput-boolean v6, p0, Lcom/estrongs/android/pop/ftp/h;->p:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/i;->start()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_3b0
    const-string v1, "NOOP"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3bf

    const-string v0, "200 NOOP OK.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_3bf
    const-string v1, "DELE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40b

    const/4 v0, 0x5

    :try_start_3c8
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3ea

    const-string v0, "550 File not exist.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V
    :try_end_3e0
    .catch Ljava/lang/Exception; {:try_start_3c8 .. :try_end_3e0} :catch_3e2

    goto/16 :goto_29

    :catch_3e2
    move-exception v0

    const-string v0, "450 DELE fail.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_3ea
    :try_start_3ea
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3f7

    const-string v0, "550 Target is dir.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V
    :try_end_3f5
    .catch Ljava/lang/Exception; {:try_start_3ea .. :try_end_3f5} :catch_3e2

    goto/16 :goto_29

    :cond_3f7
    :try_start_3f7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3fa
    .catch Ljava/lang/SecurityException; {:try_start_3f7 .. :try_end_3fa} :catch_67e
    .catch Ljava/lang/Exception; {:try_start_3f7 .. :try_end_3fa} :catch_3e2

    move-result v2

    :goto_3fb
    if-eqz v2, :cond_404

    :try_start_3fd
    const-string v0, "250 DELE command successful.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_404
    const-string v0, "450 DELE fail.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V
    :try_end_409
    .catch Ljava/lang/Exception; {:try_start_3fd .. :try_end_409} :catch_3e2

    goto/16 :goto_29

    :cond_40b
    const-string v1, "RMD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_457

    const/4 v0, 0x4

    :try_start_414
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_436

    const-string v0, "550 Directory not exist.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V
    :try_end_42c
    .catch Ljava/lang/Exception; {:try_start_414 .. :try_end_42c} :catch_42e

    goto/16 :goto_29

    :catch_42e
    move-exception v0

    const-string v0, "450 RMD fail.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_436
    :try_start_436
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_443

    const-string v0, "550 Target is not a dir.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V
    :try_end_441
    .catch Ljava/lang/Exception; {:try_start_436 .. :try_end_441} :catch_42e

    goto/16 :goto_29

    :cond_443
    :try_start_443
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_446
    .catch Ljava/lang/SecurityException; {:try_start_443 .. :try_end_446} :catch_681
    .catch Ljava/lang/Exception; {:try_start_443 .. :try_end_446} :catch_42e

    move-result v2

    :goto_447
    if-eqz v2, :cond_450

    :try_start_449
    const-string v0, "250 RMD command successful.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_450
    const-string v0, "450 RMD fail.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V
    :try_end_455
    .catch Ljava/lang/Exception; {:try_start_449 .. :try_end_455} :catch_42e

    goto/16 :goto_29

    :cond_457
    const-string v1, "MKD"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_496

    const/4 v0, 0x4

    :try_start_460
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_482

    const-string v0, "550 Target exist.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V
    :try_end_478
    .catch Ljava/lang/Exception; {:try_start_460 .. :try_end_478} :catch_47a

    goto/16 :goto_29

    :catch_47a
    move-exception v0

    const-string v0, "550 Directory create failed.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_482
    :try_start_482
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_485
    .catch Ljava/lang/SecurityException; {:try_start_482 .. :try_end_485} :catch_684
    .catch Ljava/lang/Exception; {:try_start_482 .. :try_end_485} :catch_47a

    move-result v2

    :goto_486
    if-eqz v2, :cond_48f

    :try_start_488
    const-string v0, "257 Directory created.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_48f
    const-string v0, "550 Directory create failed.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V
    :try_end_494
    .catch Ljava/lang/Exception; {:try_start_488 .. :try_end_494} :catch_47a

    goto/16 :goto_29

    :cond_496
    const-string v1, "OPTS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4ef

    aget-object v1, v0, v6

    if-eqz v1, :cond_4b4

    aget-object v1, v0, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4b4

    aget-object v0, v0, v6

    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4bb

    :cond_4b4
    const-string v0, "550 OPTS wrong args.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_4bb
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->q:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e3

    iput-boolean v2, p0, Lcom/estrongs/android/pop/ftp/h;->r:Z

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->q:Ljava/lang/String;

    :try_start_4cb
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/ftp/h;->q:Ljava/lang/String;

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->e:Ljava/io/BufferedReader;
    :try_end_4e3
    .catch Ljava/lang/Exception; {:try_start_4cb .. :try_end_4e3} :catch_4ea

    :cond_4e3
    :goto_4e3
    const-string v0, "200 OPTS UTF8 is set to ON.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :catch_4ea
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4e3

    :cond_4ef
    const-string v0, "PORT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c4

    :try_start_4f7
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    if-eqz v0, :cond_503

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/i;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    :cond_503
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_52a

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_52a

    const-string v0, "550 IPV6 addr.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V
    :try_end_51d
    .catch Ljava/lang/Exception; {:try_start_4f7 .. :try_end_51d} :catch_51f

    goto/16 :goto_29

    :catch_51f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "501 PORT invalid format.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_52a
    :try_start_52a
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_53b

    const-string v0, "501 PORT invalid format.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_53b
    move v0, v2

    :goto_53c
    array-length v1, v3

    if-lt v0, v1, :cond_584

    const/4 v0, 0x4

    new-array v4, v0, [B
    :try_end_542
    .catch Ljava/lang/Exception; {:try_start_52a .. :try_end_542} :catch_51f

    move v1, v2

    :goto_543
    if-lt v1, v8, :cond_5a1

    :try_start_545
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_548
    .catch Ljava/net/UnknownHostException; {:try_start_545 .. :try_end_548} :catch_5bc
    .catch Ljava/lang/Exception; {:try_start_545 .. :try_end_548} :catch_51f

    move-result-object v0

    const/4 v1, 0x4

    :try_start_54a
    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x100

    const/4 v2, 0x5

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Lcom/estrongs/android/pop/ftp/i;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/ftp/i;-><init>(Lcom/estrongs/android/pop/ftp/h;)V

    iput-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/estrongs/android/pop/ftp/i;->a:Ljava/net/ServerSocket;

    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    iput-object v0, v2, Lcom/estrongs/android/pop/ftp/i;->b:Ljava/net/InetAddress;

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    iput v1, v0, Lcom/estrongs/android/pop/ftp/i;->c:I

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    iget-object v0, v0, Lcom/estrongs/android/pop/ftp/i;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/ftp/h;->p:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/i;->start()V

    const-string v0, "227 Entering Active Mode.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_584
    aget-object v1, v3, v0

    const-string v4, "[0-9]+"

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_597

    aget-object v1, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x3

    if-le v1, v4, :cond_59e

    :cond_597
    const-string v0, "501 PORT invalid format.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V
    :try_end_59c
    .catch Ljava/lang/Exception; {:try_start_54a .. :try_end_59c} :catch_51f

    goto/16 :goto_29

    :cond_59e
    add-int/lit8 v0, v0, 0x1

    goto :goto_53c

    :cond_5a1
    :try_start_5a1
    aget-object v0, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x80

    if-lt v0, v2, :cond_5ad

    add-int/lit16 v0, v0, -0x100

    :cond_5ad
    int-to-byte v0, v0

    aput-byte v0, v4, v1
    :try_end_5b0
    .catch Ljava/lang/Exception; {:try_start_5a1 .. :try_end_5b0} :catch_5b4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_543

    :catch_5b4
    move-exception v0

    :try_start_5b5
    const-string v0, "501 PORT invalid format.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :catch_5bc
    move-exception v0

    const-string v0, "550 Unknown host.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V
    :try_end_5c2
    .catch Ljava/lang/Exception; {:try_start_5b5 .. :try_end_5c2} :catch_51f

    goto/16 :goto_29

    :cond_5c4
    const-string v0, "ABOR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e6

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5db

    const-string v0, "226 ABOR succ.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_5db
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->l:Lcom/estrongs/android/pop/ftp/i;

    iput-boolean v6, v0, Lcom/estrongs/android/pop/ftp/i;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->l:Lcom/estrongs/android/pop/ftp/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/i;->a()V

    goto/16 :goto_29

    :cond_5e6
    const-string v0, "SIZE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_633

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_608

    const-string v0, "550 Target not exist.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_608
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_615

    const-string v0, "550 Target is a directory.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_615
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "213 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_633
    const-string v0, "QUIT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64a

    const-string v0, "221 Byte.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    :try_start_640
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_645
    .catch Ljava/lang/Exception; {:try_start_640 .. :try_end_645} :catch_647

    goto/16 :goto_29

    :catch_647
    move-exception v0

    goto/16 :goto_29

    :cond_64a
    const-string v0, "RNFR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_677

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_66c

    const-string v0, "550 Target not exist.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_66c
    const-string v0, "350 Target exists, ready for destination name.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/estrongs/android/pop/ftp/h;->a:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->o:Ljava/io/File;

    goto/16 :goto_29

    :cond_677
    const-string v0, "502 Command not implemented.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    goto/16 :goto_29

    :catch_67e
    move-exception v0

    goto/16 :goto_3fb

    :catch_681
    move-exception v0

    goto/16 :goto_447

    :catch_684
    move-exception v0

    goto/16 :goto_486

    :catch_687
    move-exception v0

    goto/16 :goto_32c
.end method


# virtual methods
.method public a(ILjava/io/File;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v1, "*"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x1

    if-ne p1, v0, :cond_97

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_80

    const-string v0, "drwxr-xr-x 1 nobody nobody"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2f
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0xd

    :goto_42
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_86

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    const-wide/32 v4, -0x61075000

    cmp-long v0, v0, v4

    if-lez v0, :cond_8d

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, " MMM dd HH:mm "

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_63
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7b
    :goto_7b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_80
    const-string v0, "-rw-r--r-- 1 nobody nobody"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    :cond_86
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_42

    :cond_8d
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, " MMM dd  yyyy "

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_63

    :cond_97
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/ftp/h;->q:Ljava/lang/String;

    return-void
.end method

.method public run()V
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->d:Ljava/io/BufferedOutputStream;

    if-nez v0, :cond_12

    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->d:Ljava/io/BufferedOutputStream;

    :cond_12
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->e:Ljava/io/BufferedReader;

    if-nez v0, :cond_2e

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/estrongs/android/pop/ftp/h;->b:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/ftp/h;->q:Ljava/lang/String;

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->e:Ljava/io/BufferedReader;

    :cond_2e
    const-string v0, "220 ESFtpServer 0.1 ready.\r\n"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/ftp/h;->b(Ljava/lang/String;)V

    move v0, v1

    :cond_34
    :goto_34
    const/16 v2, 0xa

    if-ge v0, v2, :cond_3e

    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->c:Lcom/estrongs/android/pop/ftp/a;

    iget-boolean v2, v2, Lcom/estrongs/android/pop/ftp/a;->e:Z

    if-nez v2, :cond_6f

    :cond_3e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "client exit"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_e0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_45} :catch_a6

    :try_start_45
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/i;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    :cond_51
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->d:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    :cond_5a
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->e:Ljava/io/BufferedReader;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->e:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->d:Ljava/io/BufferedOutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->e:Ljava/io/BufferedReader;

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_6e} :catch_10b

    :goto_6e
    return-void

    :cond_6f
    :try_start_6f
    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->e:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_dd

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/ftp/h;->e(Ljava/lang/String;)V

    move v0, v1

    :goto_7b
    iget-boolean v2, p0, Lcom/estrongs/android/pop/ftp/h;->r:Z

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->q:Ljava/lang/String;

    sget-object v3, Lcom/estrongs/android/pop/ftp/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    sget-object v2, Lcom/estrongs/android/pop/ftp/a;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->q:Ljava/lang/String;

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/estrongs/android/pop/ftp/h;->b:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/ftp/h;->q:Ljava/lang/String;

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/estrongs/android/pop/ftp/h;->e:Ljava/io/BufferedReader;
    :try_end_a5
    .catchall {:try_start_6f .. :try_end_a5} :catchall_e0
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_a5} :catch_a6

    goto :goto_34

    :catch_a6
    move-exception v0

    :try_start_a7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "client exception, exit"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_a7 .. :try_end_b1} :catchall_e0

    :try_start_b1
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/i;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    :cond_bd
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->d:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_c6

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    :cond_c6
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->e:Ljava/io/BufferedReader;

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->e:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_cf
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->d:Ljava/io/BufferedOutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->e:Ljava/io/BufferedReader;

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/h;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_da} :catch_db

    goto :goto_6e

    :catch_db
    move-exception v0

    goto :goto_6e

    :cond_dd
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    :catchall_e0
    move-exception v0

    :try_start_e1
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ftp/i;->a()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->m:Lcom/estrongs/android/pop/ftp/i;

    :cond_ed
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->d:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_f6

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_f6
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->e:Ljava/io/BufferedReader;

    if-eqz v1, :cond_ff

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->e:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_ff
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->d:Ljava/io/BufferedOutputStream;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->e:Ljava/io/BufferedReader;

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/h;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_10a} :catch_10e

    :goto_10a
    throw v0

    :catch_10b
    move-exception v0

    goto/16 :goto_6e

    :catch_10e
    move-exception v1

    goto :goto_10a
.end method
