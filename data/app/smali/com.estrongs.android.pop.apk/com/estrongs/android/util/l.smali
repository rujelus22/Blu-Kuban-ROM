.class public Lcom/estrongs/android/util/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Thread;

.field private g:Z

.field private h:I

.field private i:Ljava/lang/Object;

.field private j:Ljava/util/concurrent/CountDownLatch;

.field private k:Z

.field private l:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/estrongs/android/util/l;->g:Z

    iput v1, p0, Lcom/estrongs/android/util/l;->h:I

    iput-object v0, p0, Lcom/estrongs/android/util/l;->i:Ljava/lang/Object;

    iput-object v0, p0, Lcom/estrongs/android/util/l;->j:Ljava/util/concurrent/CountDownLatch;

    iput-boolean v1, p0, Lcom/estrongs/android/util/l;->k:Z

    iput-object v0, p0, Lcom/estrongs/android/util/l;->l:Ljava/util/concurrent/CountDownLatch;

    iput-object v0, p0, Lcom/estrongs/android/util/l;->f:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ESAsyncTask"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/util/l;->f:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/estrongs/android/util/l;->g:Z

    iput v1, p0, Lcom/estrongs/android/util/l;->h:I

    iput-object v0, p0, Lcom/estrongs/android/util/l;->i:Ljava/lang/Object;

    iput-object v0, p0, Lcom/estrongs/android/util/l;->j:Ljava/util/concurrent/CountDownLatch;

    iput-boolean v1, p0, Lcom/estrongs/android/util/l;->k:Z

    iput-object v0, p0, Lcom/estrongs/android/util/l;->l:Ljava/util/concurrent/CountDownLatch;

    iput-object v0, p0, Lcom/estrongs/android/util/l;->f:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ESAsyncTask"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/util/l;->f:Ljava/lang/Thread;

    iput-boolean p1, p0, Lcom/estrongs/android/util/l;->g:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v5, 0x0

    const/4 v2, 0x0

    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    :goto_9
    array-length v1, v3

    if-lt v0, v1, :cond_11

    move-object v1, v2

    :goto_d
    array-length v4, v3

    if-lt v0, v4, :cond_62

    :cond_10
    :goto_10
    return-object v2

    :cond_11
    aget-object v1, v3, v0

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    aget-object v1, v3, v0

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "/ "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v3, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_3d
    aget-object v1, v3, v0

    const-string v4, "/system"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "/system "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v3, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_62
    const-string v4, "ShellCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get mount string:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v4, v3, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, " ro "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_a7

    const-string v3, "ro "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_a7

    const-string v3, "ro,"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_a7

    const-string v3, "ro)"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_bd

    :cond_a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ro"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ba
    move-object v2, v0

    goto/16 :goto_10

    :cond_bd
    const-string v3, " rw "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_dd

    const-string v3, "rw "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_dd

    const-string v3, "rw,"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_dd

    const-string v3, "rw)"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_10

    :cond_dd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "rw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ba
.end method

.method private a(Ljava/lang/String;IIIII)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_7
    aget-object v1, v2, p4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, p6, :cond_39

    const/4 v1, -0x1

    if-ne p5, v1, :cond_3a

    const-string v1, "0"

    :goto_14
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v2, p3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_39
    :goto_39
    return-object v0

    :cond_3a
    aget-object v1, v2, p5
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3c} :catch_3d

    goto :goto_14

    :catch_3d
    move-exception v1

    goto :goto_39
.end method

.method private a(Ljava/lang/String;IIII[Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v0, 0x0

    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_7
    aget-object v1, v2, p2

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    const/4 v1, 0x0

    :goto_d
    array-length v3, p6

    if-ge v1, v3, :cond_b

    aget-object v3, v2, p2

    aget-object v4, p6, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    aget-object v3, v2, p2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, p6, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    :cond_33
    const/4 v1, -0x1

    if-ne p5, v1, :cond_5e

    const-string v1, "0"

    :goto_38
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v2, p3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_5e
    aget-object v1, v2, p5
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_60} :catch_64

    goto :goto_38

    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :catch_64
    move-exception v1

    goto :goto_b
.end method

.method private j()Ljava/lang/Object;
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/estrongs/android/util/l;->a:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/util/ag;

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v2, v4

    const-class v1, Ljava/lang/String;

    aput-object v1, v2, v5

    const-class v1, Ljava/io/InputStream;

    aput-object v1, v2, v3

    const/4 v1, 0x3

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-class v3, Ljava/lang/Long;

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/estrongs/android/util/l;->b:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    :try_start_24
    const-string v3, "putFile"

    invoke-virtual {v0, v3, v2, v1}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ag;

    move-result-object v0

    if-eqz v0, :cond_40

    const-string v2, "httpCode"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_4f

    :cond_40
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_44
    .catchall {:try_start_24 .. :try_end_44} :catchall_5e

    move-result-object v2

    const/4 v0, 0x2

    :try_start_46
    aget-object v0, v1, v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4d} :catch_6d

    :goto_4d
    move-object v0, v2

    :goto_4e
    return-object v0

    :cond_4f
    const/4 v0, 0x1

    :try_start_50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5e

    move-result-object v2

    const/4 v0, 0x2

    :try_start_55
    aget-object v0, v1, v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5c} :catch_6b

    :goto_5c
    move-object v0, v2

    goto :goto_4e

    :catchall_5e
    move-exception v0

    move-object v2, v0

    const/4 v0, 0x2

    :try_start_61
    aget-object v0, v1, v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_68} :catch_69

    :goto_68
    throw v2

    :catch_69
    move-exception v0

    goto :goto_68

    :catch_6b
    move-exception v0

    goto :goto_5c

    :catch_6d
    move-exception v0

    goto :goto_4d
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/util/l;->e:Ljava/lang/Object;

    iput-object v0, p0, Lcom/estrongs/android/util/l;->d:Ljava/lang/Object;

    iput-object v0, p0, Lcom/estrongs/android/util/l;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/estrongs/android/util/l;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/estrongs/android/util/l;->a:Ljava/lang/Object;

    return-void
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/util/l;->h:I

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/util/l;->g:Z

    iget-object v0, p0, Lcom/estrongs/android/util/l;->l:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/util/l;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_c
    return-void
.end method

.method public b(I)Z
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/util/l;->j:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_11

    :try_start_4
    iget-object v0, p0, Lcom/estrongs/android/util/l;->j:Ljava/util/concurrent/CountDownLatch;

    int-to-long v1, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_c} :catch_e

    move-result v0

    :goto_d
    return v0

    :catch_e
    move-exception v0

    const/4 v0, 0x0

    goto :goto_d

    :cond_11
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public c()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/util/l;->j:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/util/l;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_d

    :cond_9
    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/util/l;->j:Ljava/util/concurrent/CountDownLatch;

    return-void

    :catch_d
    move-exception v0

    goto :goto_9
.end method

.method public d()V
    .registers 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/util/l;->j:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/util/l;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/util/l;->j:Ljava/util/concurrent/CountDownLatch;

    iget-boolean v0, p0, Lcom/estrongs/android/util/l;->k:Z

    if-nez v0, :cond_25

    iput-boolean v4, p0, Lcom/estrongs/android/util/l;->k:Z

    iget-object v0, p0, Lcom/estrongs/android/util/l;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_11

    :cond_25
    iget-boolean v0, p0, Lcom/estrongs/android/util/l;->g:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/util/l;->l:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/util/l;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_11
.end method

.method public e()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/util/l;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .registers 14

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/util/l;->a:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/util/l;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/16 v5, 0x4e20

    const v6, 0x9c40

    move v3, v4

    :goto_f
    array-length v2, v0

    if-lt v3, v2, :cond_17

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    :try_start_17
    new-instance v2, Ljava/net/URL;

    aget-object v7, v0, v3

    invoke-direct {v2, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v7, "GET"

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    aget-object v9, v0, v3

    invoke-static {v9}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    const/16 v2, 0x400

    new-array v10, v2, [B

    move v2, v4

    :goto_6b
    invoke-virtual {v9, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-gtz v11, :cond_88

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    new-instance v2, Ljava/io/File;

    aget-object v8, v0, v3

    invoke-static {v8}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_16

    :cond_88
    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8c
    .catch Ljava/net/MalformedURLException; {:try_start_17 .. :try_end_8c} :catch_8e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_8c} :catch_b8

    add-int/2addr v2, v11

    goto :goto_6b

    :catch_8e
    move-exception v2

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_92
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v8, v0, v3

    invoke-static {v8}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_f

    :catch_b8
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_92
.end method

.method public g()Ljava/lang/Object;
    .registers 14

    iget-object v0, p0, Lcom/estrongs/android/util/l;->a:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/estrongs/android/util/ag;

    iget-object v0, p0, Lcom/estrongs/android/util/l;->b:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/estrongs/android/util/l;->c:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/estrongs/android/util/u;

    iget-object v3, p0, Lcom/estrongs/android/util/l;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const/4 v9, 0x0

    if-nez v6, :cond_1c

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v10

    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const-wide/16 v1, 0x0

    const v4, 0x1000d

    const v5, 0x30002

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    if-eqz v10, :cond_32

    invoke-virtual {v10, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/d/o;)V

    :cond_32
    const/4 v0, 0x5

    :try_start_33
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    const-string v4, "dropbox"

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, v8, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Integer;

    const/16 v4, 0x2710

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, v8, Lcom/estrongs/android/util/u;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/Boolean;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v0, v1

    const-string v1, "metadata"

    invoke-virtual {v6, v1, v0}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ag;

    move-result-object v1

    if-nez v1, :cond_81

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_6c
    .catchall {:try_start_33 .. :try_end_6c} :catchall_11f

    move-result-object v6

    const v5, 0x30005

    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const-wide/16 v1, 0x0

    const v4, 0x1000e

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    if-eqz v10, :cond_7f

    invoke-virtual {v10, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/d/o;)V

    :cond_7f
    move-object v0, v6

    goto :goto_1b

    :cond_81
    :try_start_81
    const-string v0, "httpCode"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v0, 0x130

    if-ne v2, v0, :cond_ab

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_95
    .catchall {:try_start_81 .. :try_end_95} :catchall_11f

    move-result-object v6

    const v5, 0x30005

    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const-wide/16 v1, 0x0

    const v4, 0x1000e

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    if-eqz v10, :cond_a8

    invoke-virtual {v10, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/d/o;)V

    :cond_a8
    move-object v0, v6

    goto/16 :goto_1b

    :cond_ab
    :try_start_ab
    const-string v0, "is_dir"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_bd

    const/16 v0, 0xc8

    if-eq v2, v0, :cond_e3

    :cond_bd
    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v0

    iget v1, v8, Lcom/estrongs/android/util/u;->b:I

    iget-object v2, v8, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/t;->c(ILjava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_ab .. :try_end_c8} :catchall_11f

    :goto_c8
    const/4 v1, 0x1

    const/4 v0, 0x1

    :try_start_ca
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_14d

    move-result-object v6

    const v5, 0x30002

    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const-wide/16 v1, 0x0

    const v4, 0x1000e

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    if-eqz v10, :cond_e0

    invoke-virtual {v10, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/d/o;)V

    :cond_e0
    move-object v0, v6

    goto/16 :goto_1b

    :cond_e3
    :try_start_e3
    invoke-static {v1, v8}, Lcom/estrongs/android/pop/fs/d;->a(Lcom/estrongs/android/util/ag;Lcom/estrongs/android/util/u;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v11, 0x3e8

    div-long/2addr v4, v11

    long-to-int v0, v4

    iput v0, v8, Lcom/estrongs/android/util/u;->i:I

    const-string v0, "contents"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/ag;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_106
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_137

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v0

    iget v2, v8, Lcom/estrongs/android/util/u;->b:I

    iget v4, v8, Lcom/estrongs/android/util/u;->a:I

    invoke-virtual {v0, v2, v4, v7, v1}, Lcom/estrongs/android/util/t;->a(IILjava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/estrongs/android/util/t;->b(Lcom/estrongs/android/util/u;)V
    :try_end_11e
    .catchall {:try_start_e3 .. :try_end_11e} :catchall_11f

    goto :goto_c8

    :catchall_11f
    move-exception v0

    move-object v6, v0

    move v0, v9

    :goto_122
    if-eqz v0, :cond_149

    const v5, 0x30002

    :goto_127
    new-instance v0, Lcom/estrongs/android/pop/d/o;

    const-wide/16 v1, 0x0

    const v4, 0x1000e

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/d/o;-><init>(JLjava/lang/String;II)V

    if-eqz v10, :cond_136

    invoke-virtual {v10, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/d/o;)V

    :cond_136
    throw v6

    :cond_137
    :try_start_137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ag;->a(Ljava/lang/Object;)Lcom/estrongs/android/util/ag;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/fs/d;->a(Lcom/estrongs/android/util/ag;)Lcom/estrongs/android/util/u;

    move-result-object v2

    iget-object v4, v2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_148
    .catchall {:try_start_137 .. :try_end_148} :catchall_11f

    goto :goto_106

    :cond_149
    const v5, 0x30005

    goto :goto_127

    :catchall_14d
    move-exception v0

    move-object v6, v0

    move v0, v1

    goto :goto_122
.end method

.method public h()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/util/l;->a:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/d/i;

    if-eqz v0, :cond_27

    :try_start_6
    iget-boolean v1, v0, Lcom/estrongs/android/pop/d/i;->d:Z

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/estrongs/android/pop/d/i;->b:Ljava/io/BufferedWriter;

    const-string v2, "exit\n"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_11
    iget-object v1, v0, Lcom/estrongs/android/pop/d/i;->c:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    iget-object v1, v0, Lcom/estrongs/android/pop/d/i;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    iget-object v0, v0, Lcom/estrongs/android/pop/d/i;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_26

    move-result-object v0

    :goto_25
    return-object v0

    :catch_26
    move-exception v0

    :cond_27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_25
.end method

.method public i()Ljava/lang/Object;
    .registers 21

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/estrongs/android/util/l;->e:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/util/l;->a:Ljava/lang/Object;

    check-cast v1, Lcom/estrongs/android/pop/d/i;

    iget-object v3, v1, Lcom/estrongs/android/pop/d/i;->b:Ljava/io/BufferedWriter;

    iget-object v0, v1, Lcom/estrongs/android/pop/d/i;->c:Ljava/io/BufferedReader;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/util/l;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/util/l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    :try_start_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    const-string v1, "echo \n"

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    const-string v1, "echo \'$-----ESTOOL-END-----$\'\n"

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_4e} :catch_88

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v2, 0xf

    move/from16 v0, v19

    if-ne v0, v2, :cond_98

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/util/l;->d:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object v7, v1

    :goto_63
    const/4 v4, -0x1

    const/4 v3, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v15, v8

    move/from16 v16, v9

    move-object/from16 v17, v10

    move v8, v11

    :cond_6d
    :goto_6d
    :try_start_6d
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_22d
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_209

    move-result-object v1

    if-nez v1, :cond_aa

    :cond_73
    const/16 v1, 0xf

    move/from16 v0, v19

    if-eq v0, v1, :cond_7f

    const/16 v1, 0xe

    move/from16 v0, v19

    if-ne v0, v1, :cond_83

    :cond_7f
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/estrongs/android/util/l;->d:Ljava/lang/Object;

    :cond_83
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_87
    :goto_87
    return-object v1

    :catch_88
    move-exception v1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/estrongs/android/util/l;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_87

    :cond_98
    const/16 v2, 0xe

    move/from16 v0, v19

    if-ne v0, v2, :cond_242

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/util/l;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object v7, v1

    goto :goto_63

    :cond_aa
    :try_start_aa
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6d

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_73

    packed-switch v19, :pswitch_data_246

    :pswitch_bf
    goto :goto_6d

    :pswitch_c0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_6d

    const/4 v1, 0x0

    move v8, v1

    goto :goto_6d

    :pswitch_ca
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/estrongs/android/util/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6d

    if-nez v17, :cond_db

    :goto_d4
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/estrongs/android/util/l;->d:Ljava/lang/Object;

    move-object/from16 v17, v1

    goto :goto_6d

    :cond_db
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d4

    :pswitch_f3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_6d

    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_6d

    :pswitch_fe
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_6d

    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_6d

    :pswitch_109
    if-nez v16, :cond_15a

    const/4 v8, 0x0

    const-string v1, "\\s+"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x0

    move v2, v5

    move v5, v1

    move v1, v6

    :goto_116
    array-length v6, v9

    if-lt v5, v6, :cond_121

    :cond_119
    add-int/lit8 v5, v16, 0x1

    move v6, v1

    move/from16 v16, v5

    move v5, v2

    goto/16 :goto_6d

    :cond_121
    aget-object v6, v9, v5

    const-string v10, "user"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_135

    aget-object v6, v9, v5

    const-string v10, "uid"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_142

    :cond_135
    move v4, v5

    :cond_136
    :goto_136
    const/4 v6, -0x1

    if-eq v4, v6, :cond_13f

    const/4 v6, -0x1

    if-eq v2, v6, :cond_13f

    const/4 v6, -0x1

    if-ne v1, v6, :cond_119

    :cond_13f
    add-int/lit8 v5, v5, 0x1

    goto :goto_116

    :cond_142
    aget-object v6, v9, v5

    const-string v10, "ppid"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14e

    move v2, v5

    goto :goto_136

    :cond_14e
    aget-object v6, v9, v5

    const-string v10, "pid"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_136

    move v1, v5

    goto :goto_136

    :cond_15a
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_1a0

    const-string v1, "\\s+"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v3, v1, -0x1

    const-string v1, "ES"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "ps nameIndex:"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ",usrIndex:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ",parentIdx:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ",pidIndex:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v16, 0x1

    move/from16 v16, v1

    goto/16 :goto_6d

    :cond_1a0
    const/4 v1, 0x0

    const/4 v8, -0x1

    if-eq v3, v8, :cond_1a7

    const/4 v8, -0x1

    if-ne v4, v8, :cond_1be

    :cond_1a7
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1ab
    .catchall {:try_start_aa .. :try_end_1ab} :catchall_22d
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_1ab} :catch_209

    move-result-object v1

    :goto_1ac
    const/16 v2, 0xf

    move/from16 v0, v19

    if-eq v0, v2, :cond_1b8

    const/16 v2, 0xe

    move/from16 v0, v19

    if-ne v0, v2, :cond_87

    :cond_1b8
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/estrongs/android/util/l;->d:Ljava/lang/Object;

    goto/16 :goto_87

    :cond_1be
    const/16 v8, 0xf

    move/from16 v0, v19

    if-ne v0, v8, :cond_1d3

    move-object/from16 v1, p0

    :try_start_1c6
    invoke-direct/range {v1 .. v7}, Lcom/estrongs/android/util/l;->a(Ljava/lang/String;IIII[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1ca
    :goto_1ca
    const/4 v2, 0x1

    if-eqz v1, :cond_23f

    if-nez v15, :cond_1ee

    move-object v15, v1

    move v8, v2

    goto/16 :goto_6d

    :cond_1d3
    const/16 v8, 0xe

    move/from16 v0, v19

    if-ne v0, v8, :cond_1ca

    const/4 v1, -0x1

    if-ne v5, v1, :cond_1e2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1ac

    :cond_1e2
    move-object/from16 v8, p0

    move-object v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-direct/range {v8 .. v14}, Lcom/estrongs/android/util/l;->a(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    goto :goto_1ca

    :cond_1ee
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_204
    .catchall {:try_start_1c6 .. :try_end_204} :catchall_22d
    .catch Ljava/io/IOException; {:try_start_1c6 .. :try_end_204} :catch_209

    move-result-object v1

    move-object v15, v1

    move v8, v2

    goto/16 :goto_6d

    :catch_209
    move-exception v1

    :try_start_20a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/estrongs/android/util/l;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_21a
    .catchall {:try_start_20a .. :try_end_21a} :catchall_22d

    move-result-object v1

    const/16 v2, 0xf

    move/from16 v0, v19

    if-eq v0, v2, :cond_227

    const/16 v2, 0xe

    move/from16 v0, v19

    if-ne v0, v2, :cond_87

    :cond_227
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/estrongs/android/util/l;->d:Ljava/lang/Object;

    goto/16 :goto_87

    :catchall_22d
    move-exception v1

    const/16 v2, 0xf

    move/from16 v0, v19

    if-eq v0, v2, :cond_23a

    const/16 v2, 0xe

    move/from16 v0, v19

    if-ne v0, v2, :cond_23e

    :cond_23a
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/estrongs/android/util/l;->d:Ljava/lang/Object;

    :cond_23e
    throw v1

    :cond_23f
    move v8, v2

    goto/16 :goto_6d

    :cond_242
    move-object v7, v1

    goto/16 :goto_63

    nop

    :pswitch_data_246
    .packed-switch 0x4
        :pswitch_c0
        :pswitch_ca
        :pswitch_f3
        :pswitch_bf
        :pswitch_bf
        :pswitch_bf
        :pswitch_bf
        :pswitch_bf
        :pswitch_bf
        :pswitch_fe
        :pswitch_109
        :pswitch_109
    .end packed-switch
.end method

.method public run()V
    .registers 3

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/util/l;->g:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/util/l;->l:Ljava/util/concurrent/CountDownLatch;

    :cond_c
    :try_start_c
    iget v0, p0, Lcom/estrongs/android/util/l;->h:I

    packed-switch v0, :pswitch_data_5a

    :goto_11
    iget-object v0, p0, Lcom/estrongs/android/util/l;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_16} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_37

    :goto_16
    iget-boolean v0, p0, Lcom/estrongs/android/util/l;->g:Z

    if-eqz v0, :cond_22

    :try_start_1a
    iget-object v0, p0, Lcom/estrongs/android/util/l;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1f} :catch_58

    :goto_1f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/util/l;->l:Ljava/util/concurrent/CountDownLatch;

    :cond_22
    iget-boolean v0, p0, Lcom/estrongs/android/util/l;->g:Z

    if-nez v0, :cond_0

    return-void

    :pswitch_27
    :try_start_27
    invoke-direct {p0}, Lcom/estrongs/android/util/l;->j()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/util/l;->i:Ljava/lang/Object;

    goto :goto_11

    :catch_2e
    move-exception v0

    goto :goto_16

    :pswitch_30
    invoke-virtual {p0}, Lcom/estrongs/android/util/l;->f()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/util/l;->i:Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_36} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_36} :catch_37

    goto :goto_11

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    :pswitch_3c
    :try_start_3c
    invoke-virtual {p0}, Lcom/estrongs/android/util/l;->g()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/util/l;->i:Ljava/lang/Object;

    goto :goto_11

    :pswitch_43
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/util/l;->i:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/estrongs/android/util/l;->i()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/util/l;->i:Ljava/lang/Object;

    goto :goto_11

    :pswitch_51
    invoke-virtual {p0}, Lcom/estrongs/android/util/l;->h()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/util/l;->i:Ljava/lang/Object;
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_57} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_57} :catch_37

    goto :goto_11

    :catch_58
    move-exception v0

    goto :goto_1f

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_30
        :pswitch_3c
        :pswitch_43
        :pswitch_51
    .end packed-switch
.end method
