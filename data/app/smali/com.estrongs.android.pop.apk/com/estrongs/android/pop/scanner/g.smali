.class public Lcom/estrongs/android/pop/scanner/g;
.super Ljava/util/Observable;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/net/InetAddress;

.field private final b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    iput v0, p0, Lcom/estrongs/android/pop/scanner/g;->c:I

    iput v0, p0, Lcom/estrongs/android/pop/scanner/g;->d:I

    iput-object p1, p0, Lcom/estrongs/android/pop/scanner/g;->a:Ljava/net/InetAddress;

    iput p2, p0, Lcom/estrongs/android/pop/scanner/g;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 6

    const/4 v0, 0x1

    :try_start_1
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/estrongs/android/pop/scanner/g;->a:Ljava/net/InetAddress;

    iget v4, p0, Lcom/estrongs/android/pop/scanner/g;->b:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v3, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_17
    .catch Ljava/net/NoRouteToHostException; {:try_start_1 .. :try_end_17} :catch_19
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_17} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_53

    const/4 v0, 0x0

    :cond_18
    :goto_18
    return v0

    :catch_19
    move-exception v0

    throw v0

    :catch_1b
    move-exception v1

    instance-of v2, v1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_36

    iget v1, p0, Lcom/estrongs/android/pop/scanner/g;->c:I

    if-ge v1, v0, :cond_34

    iget v0, p0, Lcom/estrongs/android/pop/scanner/g;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/scanner/g;->c:I

    const-wide/16 v0, 0x1f4

    :try_start_2c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_4f

    :goto_2f
    invoke-virtual {p0}, Lcom/estrongs/android/pop/scanner/g;->a()I

    move-result v0

    goto :goto_18

    :cond_34
    const/4 v0, 0x2

    goto :goto_18

    :cond_36
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    iget v1, p0, Lcom/estrongs/android/pop/scanner/g;->d:I

    if-ge v1, v0, :cond_18

    iget v0, p0, Lcom/estrongs/android/pop/scanner/g;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/scanner/g;->d:I

    const-wide/16 v0, 0x1f4

    :try_start_47
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_51

    :goto_4a
    invoke-virtual {p0}, Lcom/estrongs/android/pop/scanner/g;->a()I

    move-result v0

    goto :goto_18

    :catch_4f
    move-exception v0

    goto :goto_2f

    :catch_51
    move-exception v0

    goto :goto_4a

    :catch_53
    move-exception v1

    goto :goto_18
.end method

.method public run()V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/scanner/g;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/scanner/g;->setChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/g;->a:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "localhost"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/g;->a:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :cond_1b
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/estrongs/android/pop/scanner/g;->a:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    aput-object v0, v2, v1

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/scanner/g;->notifyObservers(Ljava/lang/Object;)V
    :try_end_34
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_34} :catch_35

    :goto_34
    return-void

    :catch_35
    move-exception v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/scanner/g;->setChanged()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/scanner/g;->notifyObservers()V

    goto :goto_34
.end method
