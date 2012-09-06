.class public Lcom/estrongs/android/pop/d/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/estrongs/android/pop/d/i;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/estrongs/android/pop/d/i;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/estrongs/android/pop/d/i;

.field private static e:I

.field private static f:Lcom/estrongs/android/pop/d/i;

.field private static g:I

.field private static h:I

.field private static i:Ljava/lang/Object;

.field private static j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-object v2, Lcom/estrongs/android/pop/d/h;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/d/h;->b:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/d/h;->c:Ljava/util/Queue;

    sput-object v2, Lcom/estrongs/android/pop/d/h;->d:Lcom/estrongs/android/pop/d/i;

    sput v1, Lcom/estrongs/android/pop/d/h;->e:I

    sput-object v2, Lcom/estrongs/android/pop/d/h;->f:Lcom/estrongs/android/pop/d/i;

    sput v1, Lcom/estrongs/android/pop/d/h;->g:I

    sput v1, Lcom/estrongs/android/pop/d/h;->h:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/d/h;->i:Ljava/lang/Object;

    sput-boolean v1, Lcom/estrongs/android/pop/d/h;->j:Z

    return-void
.end method

.method private static a(ZI)I
    .registers 9

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/d/h;->d(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ESProc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get port path:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_76

    const-string v2, "ESProc"

    const-string v3, "port file exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2b
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_41} :catch_72

    move-result v0

    :goto_42
    if-eqz v0, :cond_5c

    const-string v2, "ESProc"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get port from file:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    :goto_59
    const/4 v2, 0x2

    if-lt v3, v2, :cond_78

    :cond_5c
    if-eqz p0, :cond_9c

    const/16 v0, 0x5bbe

    :goto_60
    move v3, v1

    :goto_61
    const/16 v2, 0xa

    if-lt v3, v2, :cond_a0

    if-nez p1, :cond_c2

    const-wide/16 v0, 0x7d0

    :try_start_69
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_c6

    :goto_6c
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/d/h;->a(ZI)I

    move-result v0

    :goto_71
    return v0

    :catch_72
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_76
    move v0, v1

    goto :goto_42

    :cond_78
    :try_start_78
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    new-instance v4, Ljava/net/InetSocketAddress;

    const-string v5, "127.0.0.1"

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_8e} :catch_8f

    goto :goto_71

    :catch_8f
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v4, 0x1f4

    :try_start_95
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_c4

    :goto_98
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_59

    :cond_9c
    const v0, 0x82ce

    goto :goto_60

    :cond_a0
    :try_start_a0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    new-instance v4, Ljava/net/InetSocketAddress;

    const-string v5, "127.0.0.1"

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    add-int v6, v0, v3

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b8} :catch_ba

    add-int/2addr v0, v3

    goto :goto_71

    :catch_ba
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_61

    :cond_c2
    move v0, v1

    goto :goto_71

    :catch_c4
    move-exception v2

    goto :goto_98

    :catch_c6
    move-exception v0

    goto :goto_6c
.end method

.method public static a()Lcom/estrongs/android/pop/d/i;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->a(Z)Lcom/estrongs/android/pop/d/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Z)Lcom/estrongs/android/pop/d/i;
    .registers 7

    const/4 v1, 0x0

    sget-object v2, Lcom/estrongs/android/pop/d/h;->b:Ljava/util/Queue;

    monitor-enter v2

    :try_start_4
    sget-object v0, Lcom/estrongs/android/pop/d/h;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/d/i;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_af
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_c} :catch_ab

    :goto_c
    :try_start_c
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_af

    if-nez v0, :cond_56

    if-nez p0, :cond_15

    sget-boolean v2, Lcom/estrongs/android/pop/d/h;->j:Z

    if-eqz v2, :cond_56

    :cond_15
    :try_start_15
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "su"

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    if-eqz v2, :cond_56

    new-instance v0, Lcom/estrongs/android/pop/d/i;

    invoke-direct {v0}, Lcom/estrongs/android/pop/d/i;-><init>()V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v3, v0, Lcom/estrongs/android/pop/d/i;->c:Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, v0, Lcom/estrongs/android/pop/d/i;->b:Ljava/io/BufferedWriter;

    iput-object v2, v0, Lcom/estrongs/android/pop/d/i;->a:Ljava/lang/Process;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/estrongs/android/pop/d/i;->d:Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_56} :catch_b2

    :cond_56
    if-nez v0, :cond_aa

    sget-boolean v2, Lcom/estrongs/android/pop/d/h;->j:Z

    if-nez v2, :cond_aa

    sget-object v2, Lcom/estrongs/android/pop/d/h;->c:Ljava/util/Queue;

    monitor-enter v2

    :try_start_5f
    sget-object v0, Lcom/estrongs/android/pop/d/h;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/d/i;
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_bb
    .catch Ljava/util/NoSuchElementException; {:try_start_5f .. :try_end_67} :catch_b8

    :goto_67
    :try_start_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_bb

    if-nez v0, :cond_aa

    :try_start_6a
    new-instance v2, Ljava/lang/ProcessBuilder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/bin/sh"

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->redirectErrorStream()Z

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    if-eqz v2, :cond_aa

    new-instance v0, Lcom/estrongs/android/pop/d/i;

    invoke-direct {v0}, Lcom/estrongs/android/pop/d/i;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/estrongs/android/pop/d/i;->d:Z

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v3, v0, Lcom/estrongs/android/pop/d/i;->c:Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, v0, Lcom/estrongs/android/pop/d/i;->b:Ljava/io/BufferedWriter;

    iput-object v2, v0, Lcom/estrongs/android/pop/d/i;->a:Ljava/lang/Process;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_aa} :catch_be

    :cond_aa
    :goto_aa
    return-object v0

    :catch_ab
    move-exception v0

    move-object v0, v1

    goto/16 :goto_c

    :catchall_af
    move-exception v0

    :try_start_b0
    monitor-exit v2
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    throw v0

    :catch_b2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_aa

    :catch_b8
    move-exception v0

    move-object v0, v1

    goto :goto_67

    :catchall_bb
    move-exception v0

    :try_start_bc
    monitor-exit v2
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v0

    :catch_be
    move-exception v0

    move-object v0, v1

    goto :goto_aa
.end method

.method private static a(I[Ljava/lang/String;I)Ljava/lang/String;
    .registers 13

    const/16 v9, 0xe

    const/4 v8, 0x4

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    new-instance v1, Ljava/io/File;

    const-string v3, "/system/bin/toolbox"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_59

    const-string v1, "toolbox ps"

    move-object v3, v1

    move v1, v0

    :goto_17
    new-instance v5, Ljava/lang/ProcessBuilder;

    new-array v6, v0, [Ljava/lang/String;

    const-string v7, "/system/bin/sh"

    aput-object v7, v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    :try_start_25
    invoke-virtual {v5}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_5e

    move-result-object v5

    if-eqz v5, :cond_11e

    new-instance v0, Lcom/estrongs/android/pop/d/i;

    invoke-direct {v0}, Lcom/estrongs/android/pop/d/i;-><init>()V

    iput-boolean v2, v0, Lcom/estrongs/android/pop/d/i;->d:Z

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, v0, Lcom/estrongs/android/pop/d/i;->c:Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, v0, Lcom/estrongs/android/pop/d/i;->b:Ljava/io/BufferedWriter;

    iput-object v5, v0, Lcom/estrongs/android/pop/d/i;->a:Ljava/lang/Process;

    move-object v2, v0

    :goto_55
    if-nez v2, :cond_61

    move-object v0, v4

    :cond_58
    :goto_58
    return-object v0

    :cond_59
    const-string v1, "ps"

    move-object v3, v1

    move v1, v2

    goto :goto_17

    :catch_5e
    move-exception v0

    move-object v0, v4

    goto :goto_58

    :cond_61
    new-instance v5, Lcom/estrongs/android/util/l;

    invoke-direct {v5}, Lcom/estrongs/android/util/l;-><init>()V

    invoke-virtual {v5, v8}, Lcom/estrongs/android/util/l;->a(I)V

    iput-object v2, v5, Lcom/estrongs/android/util/l;->a:Ljava/lang/Object;

    iput-object v3, v5, Lcom/estrongs/android/util/l;->b:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/estrongs/android/util/l;->c:Ljava/lang/Object;

    if-ne p2, v9, :cond_90

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/estrongs/android/util/l;->d:Ljava/lang/Object;

    :goto_7b
    invoke-virtual {v5}, Lcom/estrongs/android/util/l;->d()V

    const/16 v0, 0x1388

    invoke-virtual {v5, v0}, Lcom/estrongs/android/util/l;->b(I)Z

    move-result v0

    if-nez v0, :cond_9c

    iget-object v0, v5, Lcom/estrongs/android/util/l;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    move-object v0, v4

    goto :goto_58

    :cond_90
    const/16 v0, 0xf

    if-ne p2, v0, :cond_97

    iput-object p1, v5, Lcom/estrongs/android/util/l;->d:Ljava/lang/Object;

    goto :goto_7b

    :cond_97
    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    move-object v0, v4

    goto :goto_58

    :cond_9c
    invoke-virtual {v5}, Lcom/estrongs/android/util/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    iget-object v0, v5, Lcom/estrongs/android/util/l;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_58

    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_58

    :cond_b9
    if-eqz v1, :cond_118

    new-instance v1, Lcom/estrongs/android/util/l;

    invoke-direct {v1}, Lcom/estrongs/android/util/l;-><init>()V

    invoke-virtual {v1, v8}, Lcom/estrongs/android/util/l;->a(I)V

    iput-object v2, v1, Lcom/estrongs/android/util/l;->a:Ljava/lang/Object;

    const-string v0, "ps"

    iput-object v0, v1, Lcom/estrongs/android/util/l;->b:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/util/l;->c:Ljava/lang/Object;

    if-ne p2, v9, :cond_ed

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/util/l;->d:Ljava/lang/Object;

    :goto_d7
    invoke-virtual {v1}, Lcom/estrongs/android/util/l;->d()V

    const/16 v0, 0x1388

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/l;->b(I)Z

    move-result v0

    if-nez v0, :cond_fa

    iget-object v0, v1, Lcom/estrongs/android/util/l;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    move-object v0, v4

    goto/16 :goto_58

    :cond_ed
    const/16 v0, 0xf

    if-ne p2, v0, :cond_f4

    iput-object p1, v1, Lcom/estrongs/android/util/l;->d:Ljava/lang/Object;

    goto :goto_d7

    :cond_f4
    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    move-object v0, v4

    goto/16 :goto_58

    :cond_fa
    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    invoke-virtual {v1}, Lcom/estrongs/android/util/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11b

    iget-object v0, v1, Lcom/estrongs/android/util/l;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_58

    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_58

    :cond_118
    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    :cond_11b
    move-object v0, v4

    goto/16 :goto_58

    :cond_11e
    move-object v2, v4

    goto/16 :goto_55
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/estrongs/android/pop/d/h;->b(Ljava/io/InputStream;)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_13
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static a(I)V
    .registers 3

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_13

    sget-object v1, Lcom/estrongs/android/pop/d/h;->b:Ljava/util/Queue;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/estrongs/android/pop/d/h;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/d/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_27
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_12} :catch_2f

    :goto_12
    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_27

    :cond_13
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_26

    sget-object v1, Lcom/estrongs/android/pop/d/h;->c:Ljava/util/Queue;

    monitor-enter v1

    :try_start_1a
    sget-object v0, Lcom/estrongs/android/pop/d/h;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/d/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_2a
    .catch Ljava/util/NoSuchElementException; {:try_start_1a .. :try_end_25} :catch_2d

    :goto_25
    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_2a

    :cond_26
    return-void

    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0

    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0

    :catch_2d
    move-exception v0

    goto :goto_25

    :catch_2f
    move-exception v0

    goto :goto_12
.end method

.method public static a(Lcom/estrongs/android/pop/d/i;)V
    .registers 3

    if-eqz p0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/d/i;->a:Ljava/lang/Process;

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    new-instance v0, Lcom/estrongs/android/util/l;

    invoke-direct {v0}, Lcom/estrongs/android/util/l;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/l;->a(I)V

    iput-object p0, v0, Lcom/estrongs/android/util/l;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/estrongs/android/util/l;->d()V

    goto :goto_6
.end method

.method private static a(Ljava/io/OutputStream;I)V
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    invoke-static {p0, v1}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/OutputStream;I)V

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/libestool.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/d/h;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 13

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-static {}, Lcom/estrongs/android/pop/d/h;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/estrongs/android/pop/d/h;->e()Ljava/net/Socket;

    move-result-object v10

    if-eqz v10, :cond_3

    :try_start_10
    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_58
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_72

    move-result-object v9

    :try_start_14
    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_6c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_75

    move-result-object v8

    const/4 v0, 0x1

    :try_start_19
    invoke-static {v8, v0}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {v8, p0}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    :goto_1f
    invoke-static {v9}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lcom/estrongs/android/pop/d/h;->b(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v9}, Lcom/estrongs/android/pop/d/h;->b(Ljava/io/InputStream;)I

    move-result v2

    shl-int/lit8 v0, v0, 0x20

    add-int/2addr v0, v2

    int-to-long v2, v0

    invoke-static {v9}, Lcom/estrongs/android/pop/d/h;->b(Ljava/io/InputStream;)I

    move-result v4

    invoke-static {v9}, Lcom/estrongs/android/pop/d/h;->b(Ljava/io/InputStream;)I

    move-result v5

    invoke-static {v9}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/pop/d/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/q;

    move-result-object v0

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/estrongs/android/pop/d/q;->a(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/Object;)Z
    :try_end_44
    .catchall {:try_start_19 .. :try_end_44} :catchall_70
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_44} :catch_45

    goto :goto_1f

    :catch_45
    move-exception v0

    move-object v0, v8

    move-object v1, v9

    :goto_48
    if-eqz v1, :cond_4d

    :try_start_4a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_4d
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_52
    invoke-virtual {v10}, Ljava/net/Socket;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_55} :catch_56

    goto :goto_3

    :catch_56
    move-exception v0

    goto :goto_3

    :catchall_58
    move-exception v1

    move-object v8, v0

    move-object v9, v0

    move-object v0, v1

    :goto_5c
    if-eqz v9, :cond_61

    :try_start_5e
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_61
    if-eqz v8, :cond_66

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    :cond_66
    invoke-virtual {v10}, Ljava/net/Socket;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_69} :catch_6a

    throw v0

    :catch_6a
    move-exception v0

    goto :goto_3

    :catchall_6c
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_5c

    :catchall_70
    move-exception v0

    goto :goto_5c

    :catch_72
    move-exception v1

    move-object v1, v0

    goto :goto_48

    :catch_75
    move-exception v1

    move-object v1, v9

    goto :goto_48
.end method

.method public static a(Landroid/content/Context;Z)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_9

    if-nez p1, :cond_9

    sget-boolean v0, Lcom/estrongs/android/pop/d/h;->j:Z

    :cond_8
    :goto_8
    return v0

    :cond_9
    sget-object v1, Lcom/estrongs/android/pop/d/h;->a:Ljava/lang/String;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/estrongs/android/pop/d/h;->a:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_34

    :try_start_1a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x7f06

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    sget-object v1, Lcom/estrongs/android/pop/d/h;->a:Ljava/lang/String;

    const/16 v4, 0x424b

    invoke-static {v3, v1, v4}, Lcom/estrongs/android/pop/view/a/m;->a(Ljava/io/InputStream;Ljava/lang/String;I)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2b} :catch_6b

    move-result v1

    if-eqz v1, :cond_70

    move v1, v2

    :goto_2f
    :try_start_2f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_6e

    :goto_32
    if-eqz v1, :cond_8

    :cond_34
    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->g()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->d()Z

    move-result v1

    if-eqz v1, :cond_50

    move v1, v2

    :goto_49
    if-eqz p1, :cond_52

    if-nez v1, :cond_52

    sput-boolean v1, Lcom/estrongs/android/pop/d/h;->j:Z

    goto :goto_8

    :cond_50
    move v1, v0

    goto :goto_49

    :cond_52
    if-nez p1, :cond_5c

    if-nez v1, :cond_59

    sput-boolean v1, Lcom/estrongs/android/pop/d/h;->j:Z

    goto :goto_8

    :cond_59
    sget-boolean v0, Lcom/estrongs/android/pop/d/h;->j:Z

    goto :goto_8

    :cond_5c
    invoke-static {p0, p1}, Lcom/estrongs/android/pop/d/h;->b(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_8

    sget-boolean v1, Lcom/estrongs/android/pop/d/h;->j:Z

    if-nez v1, :cond_8

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/d/h;->b(Landroid/content/Context;Z)Z

    move-result v0

    goto :goto_8

    :catch_6b
    move-exception v1

    move v1, v0

    goto :goto_32

    :catch_6e
    move-exception v3

    goto :goto_32

    :cond_70
    move v1, v0

    goto :goto_2f
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/pop/d/h;->a()Lcom/estrongs/android/pop/d/i;

    move-result-object v2

    if-nez v2, :cond_27

    :goto_26
    return v0

    :cond_27
    new-instance v3, Lcom/estrongs/android/util/l;

    invoke-direct {v3}, Lcom/estrongs/android/util/l;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/estrongs/android/util/l;->a(I)V

    iput-object v2, v3, Lcom/estrongs/android/util/l;->a:Ljava/lang/Object;

    iput-object v1, v3, Lcom/estrongs/android/util/l;->b:Ljava/lang/Object;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/estrongs/android/util/l;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/estrongs/android/util/l;->d()V

    const/16 v1, 0x1388

    invoke-virtual {v3, v1}, Lcom/estrongs/android/util/l;->b(I)Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, v3, Lcom/estrongs/android/util/l;->f:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    goto :goto_26

    :cond_50
    iget-object v0, v3, Lcom/estrongs/android/util/l;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->b(Lcom/estrongs/android/pop/d/i;)V

    :goto_5d
    invoke-virtual {v3}, Lcom/estrongs/android/util/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_26

    :cond_68
    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    goto :goto_5d
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/d/i;)Z
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/util/l;

    invoke-direct {v1}, Lcom/estrongs/android/util/l;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/estrongs/android/util/l;->a(I)V

    iput-object p2, v1, Lcom/estrongs/android/util/l;->a:Ljava/lang/Object;

    iput-object v0, v1, Lcom/estrongs/android/util/l;->b:Ljava/lang/Object;

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/util/l;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/estrongs/android/util/l;->d()V

    const/16 v0, 0x1388

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/l;->b(I)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, v1, Lcom/estrongs/android/util/l;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    :goto_45
    return v0

    :cond_46
    invoke-virtual {v1}, Lcom/estrongs/android/util/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_45
.end method

.method public static a(Ljava/lang/String;Z)Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/estrongs/android/pop/d/h;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;ZZ)Z
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    if-eqz p2, :cond_3e

    const/4 v0, 0x2

    :goto_8
    invoke-static {p0, p1}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/estrongs/android/pop/d/h;->f()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/estrongs/android/pop/d/h;->e()Ljava/net/Socket;

    move-result-object v5

    if-eqz v5, :cond_4

    :try_start_1a
    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_54
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_42

    move-result-object v3

    :try_start_1e
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_66
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_68

    move-result-object v2

    :try_start_22
    invoke-static {v2, v0}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {v2, v4}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/estrongs/android/pop/d/h;->b(Ljava/io/InputStream;)I
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_66
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2b} :catch_6c

    move-result v0

    if-nez v0, :cond_40

    const/4 v0, 0x1

    :goto_2f
    if-eqz v3, :cond_34

    :try_start_31
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_34
    if-eqz v2, :cond_39

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_39
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3c} :catch_70

    move v1, v0

    goto :goto_4

    :cond_3e
    const/4 v0, 0x3

    goto :goto_8

    :cond_40
    move v0, v1

    goto :goto_2f

    :catch_42
    move-exception v0

    move-object v0, v2

    :goto_44
    if-eqz v2, :cond_49

    :try_start_46
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_49
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_4e
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_51} :catch_52

    goto :goto_4

    :catch_52
    move-exception v0

    goto :goto_4

    :catchall_54
    move-exception v0

    move-object v3, v2

    :goto_56
    if-eqz v3, :cond_5b

    :try_start_58
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_5b
    if-eqz v2, :cond_60

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_60
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_63} :catch_64

    throw v0

    :catch_64
    move-exception v0

    goto :goto_4

    :catchall_66
    move-exception v0

    goto :goto_56

    :catch_68
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_44

    :catch_6c
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_44

    :catch_70
    move-exception v0

    goto :goto_4
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xf

    invoke-static {v1, p0, v0}, Lcom/estrongs/android/pop/d/h;->a(I[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_11

    :cond_10
    :goto_10
    return v1

    :cond_11
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_18
    array-length v4, v3

    if-ge v0, v4, :cond_10

    aget-object v4, v3, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    if-eqz p2, :cond_2b

    move v1, v2

    goto :goto_10

    :cond_27
    if-nez p2, :cond_2b

    move v1, v2

    goto :goto_10

    :cond_2b
    add-int/lit8 v0, v0, 0x3

    goto :goto_18
.end method

.method private static b(Ljava/io/InputStream;)I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_10
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/estrongs/android/pop/d/h;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/estrongs/android/pop/d/i;)V
    .registers 3

    iget-boolean v0, p0, Lcom/estrongs/android/pop/d/i;->d:Z

    if-eqz v0, :cond_16

    sget-object v1, Lcom/estrongs/android/pop/d/h;->b:Ljava/util/Queue;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/estrongs/android/pop/d/h;->b:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    :goto_c
    :try_start_c
    monitor-exit v1

    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-static {p0}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    goto :goto_c

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v0

    :cond_16
    sget-object v1, Lcom/estrongs/android/pop/d/h;->c:Ljava/util/Queue;

    monitor-enter v1

    :try_start_19
    sget-object v0, Lcom/estrongs/android/pop/d/h;->c:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_23

    :goto_1e
    :try_start_1e
    monitor-exit v1

    goto :goto_d

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_20

    throw v0

    :catch_23
    move-exception v0

    :try_start_24
    invoke-static {p0}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_20

    goto :goto_1e
.end method

.method private static b(Landroid/content/Context;Z)Z
    .registers 14

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_4
    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->a(Z)Lcom/estrongs/android/pop/d/i;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_13e
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_7} :catch_155
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_129

    move-result-object v3

    :try_start_8
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    if-eqz v3, :cond_114

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/d/h;->j:Z

    const/16 v0, 0xc8

    move-object v5, v2

    move v6, v1

    move v2, v0

    move v0, v4

    :goto_17
    sget-boolean v7, Lcom/estrongs/android/pop/d/h;->j:Z

    if-nez v7, :cond_1e

    const/4 v7, 0x7

    if-lt v6, v7, :cond_5c

    :cond_1e
    :goto_1e
    sget-boolean v0, Lcom/estrongs/android/pop/d/h;->j:Z

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/estrongs/android/pop/d/h;->a:Ljava/lang/String;

    const-string v2, "777"

    invoke-static {v0, v2, v3}, Lcom/estrongs/android/pop/d/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/d/i;)Z

    invoke-static {}, Lcom/estrongs/android/pop/d/h;->f()Z

    move-result v0

    sput-boolean v0, Lcom/estrongs/android/pop/d/h;->j:Z

    sget-boolean v0, Lcom/estrongs/android/pop/d/h;->j:Z

    if-nez v0, :cond_3a

    const-string v0, "ES"

    const-string v2, "check ES Cmd Proc failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    const-string v0, "ES"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "SU Check result:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/estrongs/android/pop/d/h;->j:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/estrongs/android/pop/d/h;->j:Z
    :try_end_52
    .catchall {:try_start_8 .. :try_end_52} :catchall_14e
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_52} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_52} :catch_153

    if-eqz v3, :cond_5b

    sget-boolean v0, Lcom/estrongs/android/pop/d/h;->j:Z

    if-eqz v0, :cond_10f

    invoke-static {v3}, Lcom/estrongs/android/pop/d/h;->b(Lcom/estrongs/android/pop/d/i;)V

    :cond_5b
    :goto_5b
    return v1

    :cond_5c
    int-to-long v9, v2

    :try_start_5d
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    const-string v7, "ES"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Sleep "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " times"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_83

    const/4 v5, 0x0

    const/16 v7, 0xe

    invoke-static {v8, v5, v7}, Lcom/estrongs/android/pop/d/h;->a(I[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :cond_83
    if-nez v5, :cond_a0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v9, "sh"

    aput-object v9, v0, v7

    const/4 v7, 0x1

    const-string v9, "sh -"

    aput-object v9, v0, v7

    const-string v7, "root"

    const/4 v9, 0x1

    invoke-static {v0, v7, v9}, Lcom/estrongs/android/pop/d/h;->a([Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/estrongs/android/pop/d/h;->j:Z

    move v0, v1

    :cond_9c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_17

    :cond_a0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_d2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/d/h;->j:Z
    :try_end_a9
    .catchall {:try_start_5d .. :try_end_a9} :catchall_14e
    .catch Ljava/lang/SecurityException; {:try_start_5d .. :try_end_a9} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_a9} :catch_153

    goto/16 :goto_1e

    :catch_ab
    move-exception v0

    move-object v2, v3

    :goto_ad
    const/4 v3, 0x0

    :try_start_ae
    sput-boolean v3, Lcom/estrongs/android/pop/d/h;->j:Z

    const-string v3, "NativeExecuter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NativeExecuter SecurityException :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catchall {:try_start_ae .. :try_end_c8} :catchall_150

    if-eqz v2, :cond_5b

    sget-boolean v0, Lcom/estrongs/android/pop/d/h;->j:Z

    if-eqz v0, :cond_124

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->b(Lcom/estrongs/android/pop/d/i;)V

    goto :goto_5b

    :cond_d2
    :try_start_d2
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move v7, v1

    :goto_d9
    array-length v10, v9

    if-lt v7, v10, :cond_e1

    move v7, v1

    :goto_dd
    if-nez v7, :cond_9c

    goto/16 :goto_1e

    :cond_e1
    add-int/lit8 v10, v7, 0x2

    aget-object v10, v9, v10

    const-string v11, "su"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f1

    const/16 v2, 0x7d0

    move v7, v4

    goto :goto_dd

    :cond_f1
    add-int/lit8 v10, v7, 0x2

    aget-object v10, v9, v10

    const-string v11, "sh"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10c

    aget-object v10, v9, v7

    const-string v11, "root"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10c

    const/4 v7, 0x1

    sput-boolean v7, Lcom/estrongs/android/pop/d/h;->j:Z
    :try_end_10a
    .catchall {:try_start_d2 .. :try_end_10a} :catchall_14e
    .catch Ljava/lang/SecurityException; {:try_start_d2 .. :try_end_10a} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_10a} :catch_153

    move v7, v1

    goto :goto_dd

    :cond_10c
    add-int/lit8 v7, v7, 0x3

    goto :goto_d9

    :cond_10f
    invoke-static {v3}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    goto/16 :goto_5b

    :cond_114
    if-eqz v3, :cond_5b

    sget-boolean v0, Lcom/estrongs/android/pop/d/h;->j:Z

    if-eqz v0, :cond_11f

    invoke-static {v3}, Lcom/estrongs/android/pop/d/h;->b(Lcom/estrongs/android/pop/d/i;)V

    goto/16 :goto_5b

    :cond_11f
    invoke-static {v3}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    goto/16 :goto_5b

    :cond_124
    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    goto/16 :goto_5b

    :catch_129
    move-exception v0

    move-object v3, v2

    :goto_12b
    const/4 v0, 0x0

    :try_start_12c
    sput-boolean v0, Lcom/estrongs/android/pop/d/h;->j:Z
    :try_end_12e
    .catchall {:try_start_12c .. :try_end_12e} :catchall_14e

    if-eqz v3, :cond_5b

    sget-boolean v0, Lcom/estrongs/android/pop/d/h;->j:Z

    if-eqz v0, :cond_139

    invoke-static {v3}, Lcom/estrongs/android/pop/d/h;->b(Lcom/estrongs/android/pop/d/i;)V

    goto/16 :goto_5b

    :cond_139
    invoke-static {v3}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    goto/16 :goto_5b

    :catchall_13e
    move-exception v0

    move-object v3, v2

    :goto_140
    if-eqz v3, :cond_149

    sget-boolean v1, Lcom/estrongs/android/pop/d/h;->j:Z

    if-eqz v1, :cond_14a

    invoke-static {v3}, Lcom/estrongs/android/pop/d/h;->b(Lcom/estrongs/android/pop/d/i;)V

    :cond_149
    :goto_149
    throw v0

    :cond_14a
    invoke-static {v3}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    goto :goto_149

    :catchall_14e
    move-exception v0

    goto :goto_140

    :catchall_150
    move-exception v0

    move-object v3, v2

    goto :goto_140

    :catch_153
    move-exception v0

    goto :goto_12b

    :catch_155
    move-exception v0

    goto/16 :goto_ad
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "$-----ESTOOL-END-----$"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1e

    const-string v1, "$-----ESTOOL-END-----$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return v1

    :cond_7
    invoke-static {}, Lcom/estrongs/android/pop/d/h;->f()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/estrongs/android/pop/d/h;->e()Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_6

    :try_start_13
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_4f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_3d

    move-result-object v3

    :try_start_17
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_64
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_6b

    move-result-object v2

    const/4 v0, 0x7

    :try_start_1c
    invoke-static {v2, v0}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {v2, p0}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/estrongs/android/pop/d/h;->b(Ljava/io/InputStream;)I
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_69
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_28} :catch_6e

    move-result v0

    if-nez v0, :cond_3b

    const/4 v0, 0x1

    :goto_2c
    if-eqz v3, :cond_31

    :try_start_2e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_31
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_36
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_39} :catch_72

    move v1, v0

    goto :goto_6

    :cond_3b
    move v0, v1

    goto :goto_2c

    :catch_3d
    move-exception v2

    move-object v2, v0

    :goto_3f
    if-eqz v2, :cond_44

    :try_start_41
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_44
    if-eqz v0, :cond_49

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_49
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4c} :catch_4d

    goto :goto_6

    :catch_4d
    move-exception v0

    goto :goto_6

    :catchall_4f
    move-exception v2

    move-object v3, v0

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    :goto_54
    if-eqz v3, :cond_59

    :try_start_56
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_59
    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_5e
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_61} :catch_62

    throw v0

    :catch_62
    move-exception v0

    goto :goto_6

    :catchall_64
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_54

    :catchall_69
    move-exception v0

    goto :goto_54

    :catch_6b
    move-exception v2

    move-object v2, v3

    goto :goto_3f

    :catch_6e
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_3f

    :catch_72
    move-exception v0

    goto :goto_6
.end method

.method public static b(Z)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->a(Z)Lcom/estrongs/android/pop/d/i;

    move-result-object v5

    if-nez v5, :cond_a

    move v0, v1

    :goto_9
    return v0

    :cond_a
    const-string v0, "mount"

    new-instance v6, Lcom/estrongs/android/util/l;

    invoke-direct {v6, v2}, Lcom/estrongs/android/util/l;-><init>(Z)V

    const/4 v3, 0x4

    :try_start_12
    invoke-virtual {v6, v3}, Lcom/estrongs/android/util/l;->a(I)V

    iput-object v5, v6, Lcom/estrongs/android/util/l;->a:Ljava/lang/Object;

    iput-object v0, v6, Lcom/estrongs/android/util/l;->b:Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/estrongs/android/util/l;->c:Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/estrongs/android/util/l;->d()V

    const/16 v0, 0x1388

    invoke-virtual {v6, v0}, Lcom/estrongs/android/util/l;->b(I)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, v6, Lcom/estrongs/android/util/l;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-static {v5}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V
    :try_end_33
    .catchall {:try_start_12 .. :try_end_33} :catchall_155

    move v2, v1

    :cond_34
    :goto_34
    if-eqz v2, :cond_3e

    invoke-static {v5}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    :goto_39
    invoke-virtual {v6}, Lcom/estrongs/android/util/l;->b()V

    move v0, v1

    goto :goto_9

    :cond_3e
    invoke-static {v5}, Lcom/estrongs/android/pop/d/h;->b(Lcom/estrongs/android/pop/d/i;)V

    goto :goto_39

    :cond_42
    :try_start_42
    iget-object v0, v6, Lcom/estrongs/android/util/l;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {v6}, Lcom/estrongs/android/util/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5a

    move v2, v1

    goto :goto_34

    :cond_5a
    iget-object v0, v6, Lcom/estrongs/android/util/l;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_5e
    .catchall {:try_start_42 .. :try_end_5e} :catchall_155

    if-nez v0, :cond_68

    invoke-static {v5}, Lcom/estrongs/android/pop/d/h;->b(Lcom/estrongs/android/pop/d/i;)V

    invoke-virtual {v6}, Lcom/estrongs/android/util/l;->b()V

    move v0, v1

    goto :goto_9

    :cond_68
    :try_start_68
    const-string v3, "\\s+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v0, ""

    move v3, v1

    move-object v4, v0

    :goto_72
    array-length v0, v7

    if-lt v3, v0, :cond_83

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_155

    move-result v0

    if-nez v0, :cond_104

    invoke-static {v5}, Lcom/estrongs/android/pop/d/h;->b(Lcom/estrongs/android/pop/d/i;)V

    invoke-virtual {v6}, Lcom/estrongs/android/util/l;->b()V

    move v0, v2

    goto :goto_9

    :cond_83
    if-eqz p0, :cond_91

    add-int/lit8 v0, v3, 0x2

    :try_start_87
    aget-object v0, v7, v0

    const-string v8, "rw"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    :cond_91
    if-nez p0, :cond_a3

    add-int/lit8 v0, v3, 0x2

    aget-object v0, v7, v0

    const-string v8, "ro"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    :cond_9f
    add-int/lit8 v0, v3, 0x3

    move v3, v0

    goto :goto_72

    :cond_a3
    if-eqz p0, :cond_d6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "mount -o remount,rw "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v4, v3, 0x1

    aget-object v4, v7, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, v7, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d2
    add-int/lit8 v3, v3, 0x3

    move-object v4, v0

    goto :goto_72

    :cond_d6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "mount -o remount,ro "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v4, v3, 0x1

    aget-object v4, v7, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, v7, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d2

    :cond_104
    invoke-virtual {v6}, Lcom/estrongs/android/util/l;->a()V

    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lcom/estrongs/android/util/l;->a(I)V

    iput-object v5, v6, Lcom/estrongs/android/util/l;->a:Ljava/lang/Object;

    iput-object v4, v6, Lcom/estrongs/android/util/l;->b:Ljava/lang/Object;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/estrongs/android/util/l;->c:Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/estrongs/android/util/l;->d()V

    const/16 v0, 0x1388

    invoke-virtual {v6, v0}, Lcom/estrongs/android/util/l;->b(I)Z

    move-result v0

    if-nez v0, :cond_132

    iget-object v0, v6, Lcom/estrongs/android/util/l;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-static {v5}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V
    :try_end_129
    .catchall {:try_start_87 .. :try_end_129} :catchall_155

    invoke-static {v5}, Lcom/estrongs/android/pop/d/h;->b(Lcom/estrongs/android/pop/d/i;)V

    invoke-virtual {v6}, Lcom/estrongs/android/util/l;->b()V

    move v0, v1

    goto/16 :goto_9

    :cond_132
    :try_start_132
    iget-object v0, v6, Lcom/estrongs/android/util/l;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13d

    move v1, v2

    :cond_13d
    invoke-virtual {v6}, Lcom/estrongs/android/util/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_146
    .catchall {:try_start_132 .. :try_end_146} :catchall_155

    move-result v0

    if-eqz v1, :cond_151

    invoke-static {v5}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    :goto_14c
    invoke-virtual {v6}, Lcom/estrongs/android/util/l;->b()V

    goto/16 :goto_9

    :cond_151
    invoke-static {v5}, Lcom/estrongs/android/pop/d/h;->b(Lcom/estrongs/android/pop/d/i;)V

    goto :goto_14c

    :catchall_155
    move-exception v0

    if-eqz v1, :cond_15f

    invoke-static {v5}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    :goto_15b
    invoke-virtual {v6}, Lcom/estrongs/android/util/l;->b()V

    throw v0

    :cond_15f
    invoke-static {v5}, Lcom/estrongs/android/pop/d/h;->b(Lcom/estrongs/android/pop/d/i;)V

    goto :goto_15b
.end method

.method public static c()V
    .registers 1

    invoke-static {}, Lcom/estrongs/android/pop/d/h;->d()V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->a(I)V

    return-void
.end method

.method public static c(Lcom/estrongs/android/pop/d/i;)V
    .registers 5

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    iget v0, p0, Lcom/estrongs/android/pop/d/i;->e:I

    if-eqz v0, :cond_28

    :try_start_7
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "127.0.0.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iget v3, p0, Lcom/estrongs/android/pop/d/i;->e:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/OutputStream;I)V

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_28} :catch_2c

    :cond_28
    :goto_28
    invoke-static {p0}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    goto :goto_2

    :catch_2c
    move-exception v0

    goto :goto_28
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/estrongs/android/pop/d/h;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x4

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mv "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/d/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/pop/d/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/pop/d/h;->a()Lcom/estrongs/android/pop/d/i;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v3, Lcom/estrongs/android/util/l;

    invoke-direct {v3}, Lcom/estrongs/android/util/l;-><init>()V

    invoke-virtual {v3, v4}, Lcom/estrongs/android/util/l;->a(I)V

    iput-object v2, v3, Lcom/estrongs/android/util/l;->a:Ljava/lang/Object;

    iput-object v1, v3, Lcom/estrongs/android/util/l;->b:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/estrongs/android/util/l;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/estrongs/android/util/l;->d()V

    const/16 v1, 0x1388

    invoke-virtual {v3, v1}, Lcom/estrongs/android/util/l;->b(I)Z

    move-result v1

    if-nez v1, :cond_54

    iget-object v1, v3, Lcom/estrongs/android/util/l;->f:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    goto :goto_6

    :cond_54
    iget-object v0, v3, Lcom/estrongs/android/util/l;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->b(Lcom/estrongs/android/pop/d/i;)V

    :goto_61
    invoke-virtual {v3}, Lcom/estrongs/android/util/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_6

    :cond_6c
    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    goto :goto_61
.end method

.method private static c(Z)Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_11

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "libestool.so"

    aput-object v1, v0, v2

    const-string v1, "root"

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/pop/d/h;->a([Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "libestool.so"

    aput-object v1, v0, v2

    const-string v1, "root"

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/d/h;->a([Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_10
.end method

.method public static d(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;
    .registers 14

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    const/4 v0, 0x0

    goto :goto_3

    :cond_c
    invoke-static {}, Lcom/estrongs/android/pop/d/h;->f()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    goto :goto_3

    :cond_14
    invoke-static {}, Lcom/estrongs/android/pop/d/h;->e()Ljava/net/Socket;

    move-result-object v4

    if-nez v4, :cond_1c

    const/4 v0, 0x0

    goto :goto_3

    :cond_1c
    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_1e
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_137
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_142

    move-result-object v2

    :try_start_22
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_13d
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_144

    move-result-object v1

    const/16 v0, 0x9

    :try_start_28
    invoke-static {v1, v0}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->b(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->b(Ljava/io/InputStream;)I

    move-result v3

    shl-int/lit8 v0, v0, 0x20

    add-int/2addr v0, v3

    int-to-long v6, v0

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->b(Ljava/io/InputStream;)I

    move-result v8

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->b(Ljava/io/InputStream;)I

    move-result v9

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/estrongs/android/pop/d/e;

    const-string v10, ""

    invoke-direct {v0, v10}, Lcom/estrongs/android/pop/d/e;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v10, 0x64

    if-eq v3, v10, :cond_e1

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v10, 0x65

    if-eq v3, v10, :cond_e1

    const/4 v3, 0x0

    :goto_66
    iput-boolean v3, v0, Lcom/estrongs/android/pop/d/e;->d:Z

    iput-object p0, v0, Lcom/estrongs/android/pop/d/e;->b:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/estrongs/android/pop/d/e;->d:Z

    if-eqz v3, :cond_e3

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/estrongs/android/pop/d/e;->e:J

    :goto_72
    int-to-long v6, v8

    iput-wide v6, v0, Lcom/estrongs/android/pop/d/e;->j:J

    iget-wide v6, v0, Lcom/estrongs/android/pop/d/e;->j:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    iput-wide v6, v0, Lcom/estrongs/android/pop/d/e;->j:J

    iput v9, v0, Lcom/estrongs/android/pop/d/e;->q:I

    const/4 v3, 0x1

    const/16 v6, 0xa

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/estrongs/android/pop/d/e;->p:Ljava/lang/String;

    iget-object v3, v0, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x2e

    if-ne v3, v6, :cond_f9

    const/4 v3, 0x1

    :goto_93
    iput-boolean v3, v0, Lcom/estrongs/android/pop/d/e;->m:Z

    iget-object v3, v0, Lcom/estrongs/android/pop/d/e;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->O(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ff

    iget-object v3, v0, Lcom/estrongs/android/pop/d/e;->p:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x72

    if-ne v3, v6, :cond_fb

    const/4 v3, 0x1

    :goto_a9
    iput-boolean v3, v0, Lcom/estrongs/android/pop/d/e;->k:Z

    iget-object v3, v0, Lcom/estrongs/android/pop/d/e;->p:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x77

    if-ne v3, v6, :cond_fd

    const/4 v3, 0x1

    :goto_b7
    iput-boolean v3, v0, Lcom/estrongs/android/pop/d/e;->l:Z

    :goto_b9
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x6c

    if-eq v3, v6, :cond_cb

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x65

    if-ne v3, v5, :cond_ce

    :cond_cb
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/estrongs/android/pop/d/e;->n:Z
    :try_end_ce
    .catchall {:try_start_28 .. :try_end_ce} :catchall_11c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_ce} :catch_e6

    :cond_ce
    if-eqz v2, :cond_d3

    :try_start_d0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_d3
    if-eqz v1, :cond_d8

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_d8
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_db} :catch_dd

    goto/16 :goto_3

    :catch_dd
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_e1
    const/4 v3, 0x1

    goto :goto_66

    :cond_e3
    :try_start_e3
    iput-wide v6, v0, Lcom/estrongs/android/pop/d/e;->e:J
    :try_end_e5
    .catchall {:try_start_e3 .. :try_end_e5} :catchall_11c
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e5} :catch_e6

    goto :goto_72

    :catch_e6
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    :goto_e9
    if-eqz v1, :cond_ee

    :try_start_eb
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_ee
    if-eqz v0, :cond_f3

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_f3
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_f6} :catch_12f

    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_f9
    const/4 v3, 0x0

    goto :goto_93

    :cond_fb
    const/4 v3, 0x0

    goto :goto_a9

    :cond_fd
    const/4 v3, 0x0

    goto :goto_b7

    :cond_ff
    :try_start_ff
    iget-object v3, v0, Lcom/estrongs/android/pop/d/e;->p:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x72

    if-ne v3, v6, :cond_12b

    const/4 v3, 0x1

    :goto_10b
    iput-boolean v3, v0, Lcom/estrongs/android/pop/d/e;->k:Z

    iget-object v3, v0, Lcom/estrongs/android/pop/d/e;->p:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x77

    if-ne v3, v6, :cond_12d

    const/4 v3, 0x1

    :goto_119
    iput-boolean v3, v0, Lcom/estrongs/android/pop/d/e;->l:Z
    :try_end_11b
    .catchall {:try_start_ff .. :try_end_11b} :catchall_11c
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_11b} :catch_e6

    goto :goto_b9

    :catchall_11c
    move-exception v0

    :goto_11d
    if-eqz v2, :cond_122

    :try_start_11f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_122
    if-eqz v1, :cond_127

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_127
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_12a} :catch_133

    throw v0

    :cond_12b
    const/4 v3, 0x0

    goto :goto_10b

    :cond_12d
    const/4 v3, 0x0

    goto :goto_119

    :catch_12f
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_3

    :catch_133
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_3

    :catchall_137
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_11d

    :catchall_13d
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_11d

    :catch_142
    move-exception v2

    goto :goto_e9

    :catch_144
    move-exception v1

    move-object v1, v2

    goto :goto_e9
.end method

.method private static d(Z)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/estrongs/android/pop/d/h;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "files/su_port"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/estrongs/android/pop/d/h;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "files/shell_port"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method

.method public static d()V
    .registers 4

    sget-object v1, Lcom/estrongs/android/pop/d/h;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/d/h;->d:Lcom/estrongs/android/pop/d/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->c(Lcom/estrongs/android/pop/d/i;)V

    sget-object v0, Lcom/estrongs/android/pop/d/h;->f:Lcom/estrongs/android/pop/d/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->c(Lcom/estrongs/android/pop/d/i;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/d/h;->f:Lcom/estrongs/android/pop/d/i;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/d/h;->d:Lcom/estrongs/android/pop/d/i;

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1c

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->e(Z)Ljava/net/Socket;

    move-result-object v0

    if-nez v0, :cond_1f

    :goto_1b
    return-void

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0

    :cond_1f
    :try_start_1f
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v1, v3}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/OutputStream;I)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_35} :catch_36

    goto :goto_1b

    :catch_36
    move-exception v0

    goto :goto_1b
.end method

.method public static e(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/16 v4, 0xa

    invoke-static {}, Lcom/estrongs/android/pop/d/h;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/estrongs/android/pop/d/h;->e()Ljava/net/Socket;

    move-result-object v5

    if-eqz v5, :cond_3

    :try_start_18
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_69
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_54

    move-result-object v2

    :try_start_1c
    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_7e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_83

    move-result-object v3

    :try_start_20
    invoke-static {v2, v4}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {v2, v1}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/estrongs/android/pop/d/h;->b(Ljava/io/InputStream;)I
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_81
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_29} :catch_87

    move-result v1

    if-eqz v1, :cond_3e

    if-nez v0, :cond_3

    if-eqz v3, :cond_33

    :try_start_30
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_33
    if-eqz v2, :cond_38

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_38
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3

    :catch_3c
    move-exception v1

    goto :goto_3

    :cond_3e
    :try_start_3e
    new-instance v1, Lcom/estrongs/android/pop/d/k;

    invoke-direct {v1, v5, v3, v2}, Lcom/estrongs/android/pop/d/k;-><init>(Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_81
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_87

    if-nez v1, :cond_52

    if-eqz v3, :cond_4a

    :try_start_47
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_4a
    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_4f
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_52} :catch_8b

    :cond_52
    move-object v0, v1

    goto :goto_3

    :catch_54
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_57
    if-nez v0, :cond_3

    if-eqz v2, :cond_5e

    :try_start_5b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_5e
    if-eqz v1, :cond_63

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_63
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_66} :catch_67

    goto :goto_3

    :catch_67
    move-exception v1

    goto :goto_3

    :catchall_69
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_6c
    if-nez v0, :cond_7b

    if-eqz v3, :cond_73

    :try_start_70
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_73
    if-eqz v2, :cond_78

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_78
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_7b} :catch_7c

    :cond_7b
    throw v1

    :catch_7c
    move-exception v1

    goto :goto_3

    :catchall_7e
    move-exception v1

    move-object v3, v0

    goto :goto_6c

    :catchall_81
    move-exception v1

    goto :goto_6c

    :catch_83
    move-exception v1

    move-object v1, v2

    move-object v2, v0

    goto :goto_57

    :catch_87
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_57

    :catch_8b
    move-exception v1

    goto/16 :goto_3
.end method

.method private static e()Ljava/net/Socket;
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->e(Z)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method private static e(Z)Ljava/net/Socket;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "127.0.0.1"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    sget v4, Lcom/estrongs/android/pop/d/h;->h:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_17

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    sget-object v2, Lcom/estrongs/android/pop/d/h;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1b
    sget-boolean v0, Lcom/estrongs/android/pop/d/h;->j:Z

    if-eqz v0, :cond_30

    sget-object v0, Lcom/estrongs/android/pop/d/h;->d:Lcom/estrongs/android/pop/d/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/d/h;->d:Lcom/estrongs/android/pop/d/i;

    :goto_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_39

    invoke-static {p0}, Lcom/estrongs/android/pop/d/h;->h(Z)Z

    move-result v0

    if-nez v0, :cond_3c

    move-object v0, v1

    goto :goto_16

    :cond_30
    :try_start_30
    sget-object v0, Lcom/estrongs/android/pop/d/h;->f:Lcom/estrongs/android/pop/d/i;

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/d/h;->f:Lcom/estrongs/android/pop/d/i;

    goto :goto_27

    :catchall_39
    move-exception v0

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_39

    throw v0

    :cond_3c
    :try_start_3c
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "127.0.0.1"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    sget v4, Lcom/estrongs/android/pop/d/h;->h:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_51} :catch_52

    goto :goto_16

    :catch_52
    move-exception v0

    move-object v0, v1

    goto :goto_16
.end method

.method private static f(Z)I
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/d/h;->a(ZI)I

    move-result v0

    return v0
.end method

.method public static f(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/16 v4, 0xb

    invoke-static {}, Lcom/estrongs/android/pop/d/h;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/estrongs/android/pop/d/h;->e()Ljava/net/Socket;

    move-result-object v5

    if-eqz v5, :cond_3

    :try_start_18
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_69
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_54

    move-result-object v2

    :try_start_1c
    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_7e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_83

    move-result-object v3

    :try_start_20
    invoke-static {v2, v4}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/OutputStream;I)V

    invoke-static {v2, v1}, Lcom/estrongs/android/pop/d/h;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/estrongs/android/pop/d/h;->b(Ljava/io/InputStream;)I
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_81
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_29} :catch_87

    move-result v1

    if-eqz v1, :cond_3e

    if-nez v0, :cond_3

    if-eqz v3, :cond_33

    :try_start_30
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_33
    if-eqz v2, :cond_38

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_38
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3

    :catch_3c
    move-exception v1

    goto :goto_3

    :cond_3e
    :try_start_3e
    new-instance v1, Lcom/estrongs/android/pop/d/j;

    invoke-direct {v1, v5, v3, v2}, Lcom/estrongs/android/pop/d/j;-><init>(Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_81
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_87

    if-nez v1, :cond_52

    if-eqz v3, :cond_4a

    :try_start_47
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_4a
    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_4f
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_52} :catch_8b

    :cond_52
    move-object v0, v1

    goto :goto_3

    :catch_54
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_57
    if-nez v0, :cond_3

    if-eqz v2, :cond_5e

    :try_start_5b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_5e
    if-eqz v1, :cond_63

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_63
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_66} :catch_67

    goto :goto_3

    :catch_67
    move-exception v1

    goto :goto_3

    :catchall_69
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_6c
    if-nez v0, :cond_7b

    if-eqz v3, :cond_73

    :try_start_70
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_73
    if-eqz v2, :cond_78

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_78
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_7b} :catch_7c

    :cond_7b
    throw v1

    :catch_7c
    move-exception v1

    goto :goto_3

    :catchall_7e
    move-exception v1

    move-object v3, v0

    goto :goto_6c

    :catchall_81
    move-exception v1

    goto :goto_6c

    :catch_83
    move-exception v1

    move-object v1, v2

    move-object v2, v0

    goto :goto_57

    :catch_87
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_57

    :catch_8b
    move-exception v1

    goto/16 :goto_3
.end method

.method private static f()Z
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->h(Z)Z

    move-result v0

    return v0
.end method

.method private static g(Z)Lcom/estrongs/android/pop/d/i;
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/d/h;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {p0}, Lcom/estrongs/android/pop/d/h;->f(Z)I

    move-result v2

    if-nez v2, :cond_17

    const-string v0, "ESProc"

    const-string v2, "Can\'t get the ES Cmd Port"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :cond_16
    :goto_16
    return-object v0

    :cond_17
    new-instance v0, Lcom/estrongs/android/pop/d/i;

    invoke-direct {v0}, Lcom/estrongs/android/pop/d/i;-><init>()V

    iput-boolean p0, v0, Lcom/estrongs/android/pop/d/i;->d:Z

    iput v2, v0, Lcom/estrongs/android/pop/d/i;->e:I

    goto :goto_16

    :cond_21
    :try_start_21
    invoke-static {p0}, Lcom/estrongs/android/pop/d/h;->a(Z)Lcom/estrongs/android/pop/d/i;
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_dd
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_ca

    move-result-object v0

    if-nez v0, :cond_2e

    if-eqz v0, :cond_2c

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    :cond_2c
    move-object v0, v1

    goto :goto_16

    :cond_2e
    :try_start_2e
    iget-boolean v3, v0, Lcom/estrongs/android/pop/d/i;->d:Z

    if-eqz v3, :cond_9e

    const/16 v3, 0x5bbe

    :goto_34
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Lcom/estrongs/android/pop/d/i;->d:Z

    invoke-static {v4}, Lcom/estrongs/android/pop/d/h;->d(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/estrongs/android/pop/d/i;->b:Ljava/io/BufferedWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/estrongs/android/pop/d/h;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/estrongs/android/pop/d/i;->b:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    move v3, v2

    move v4, v2

    :goto_7e
    if-nez v3, :cond_83

    const/4 v5, 0x7

    if-lt v4, v5, :cond_a2

    :cond_83
    if-eqz v3, :cond_bb

    iget-boolean v3, v0, Lcom/estrongs/android/pop/d/i;->d:Z

    invoke-static {v3}, Lcom/estrongs/android/pop/d/h;->f(Z)I

    move-result v2

    if-nez v2, :cond_b0

    const-string v3, "ESProc"

    const-string v4, "Get Zero Port"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_2e .. :try_end_94} :catchall_e6
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_94} :catch_eb

    if-nez v2, :cond_9b

    if-eqz v0, :cond_9b

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    :cond_9b
    move-object v0, v1

    goto/16 :goto_16

    :cond_9e
    const v3, 0x82ce

    goto :goto_34

    :cond_a2
    const-wide/16 v5, 0xc8

    :try_start_a4
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    iget-boolean v3, v0, Lcom/estrongs/android/pop/d/i;->d:Z

    invoke-static {v3}, Lcom/estrongs/android/pop/d/h;->c(Z)Z

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_7e

    :cond_b0
    iput v2, v0, Lcom/estrongs/android/pop/d/i;->e:I
    :try_end_b2
    .catchall {:try_start_a4 .. :try_end_b2} :catchall_e6
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b2} :catch_eb

    if-nez v2, :cond_16

    if-eqz v0, :cond_16

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    goto/16 :goto_16

    :cond_bb
    :try_start_bb
    const-string v3, "ESProc"

    const-string v4, "Still can\'t detect ESCmd process"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catchall {:try_start_bb .. :try_end_c2} :catchall_e6
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c2} :catch_eb

    if-eqz v0, :cond_c7

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    :cond_c7
    move-object v0, v1

    goto/16 :goto_16

    :catch_ca
    move-exception v0

    move-object v0, v1

    :goto_cc
    :try_start_cc
    const-string v3, "ESProc"

    const-string v4, "Can\'t start ES Cmd Process"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catchall {:try_start_cc .. :try_end_d3} :catchall_e6

    if-nez v2, :cond_da

    if-eqz v0, :cond_da

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    :cond_da
    move-object v0, v1

    goto/16 :goto_16

    :catchall_dd
    move-exception v0

    :goto_de
    if-nez v2, :cond_e5

    if-eqz v1, :cond_e5

    invoke-static {v1}, Lcom/estrongs/android/pop/d/h;->a(Lcom/estrongs/android/pop/d/i;)V

    :cond_e5
    throw v0

    :catchall_e6
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_de

    :catch_eb
    move-exception v3

    goto :goto_cc
.end method

.method private static g()Ljava/lang/String;
    .registers 11

    const/4 v5, 0x2

    const/4 v10, 0x0

    const/high16 v9, 0x4480

    const-wide/high16 v7, 0x4090

    const-string v0, "/sdcard"

    invoke-static {v0}, Lcom/estrongs/android/util/a/b;->g(Ljava/lang/String;)[J

    move-result-object v0

    aget-wide v1, v0, v10

    aget-wide v3, v0, v5

    mul-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v1, v9

    float-to-double v1, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    aget-wide v5, v0, v5

    mul-long/2addr v3, v5

    long-to-float v0, v3

    div-float/2addr v0, v9

    float-to-double v3, v0

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "T: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-double/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " A: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-double v2, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h(Z)Z
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v3, Lcom/estrongs/android/pop/d/h;->i:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    sget-object v2, Lcom/estrongs/android/pop/d/h;->d:Lcom/estrongs/android/pop/d/i;

    if-eqz v2, :cond_b

    monitor-exit v3

    :goto_a
    return v0

    :cond_b
    sget-object v2, Lcom/estrongs/android/pop/d/h;->f:Lcom/estrongs/android/pop/d/i;

    if-eqz v2, :cond_18

    sget-boolean v2, Lcom/estrongs/android/pop/d/h;->j:Z

    if-nez v2, :cond_18

    monitor-exit v3

    goto :goto_a

    :catchall_15
    move-exception v0

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    :cond_18
    if-nez p0, :cond_1d

    :try_start_1a
    monitor-exit v3

    move v0, v1

    goto :goto_a

    :cond_1d
    sget-boolean v2, Lcom/estrongs/android/pop/d/h;->j:Z

    if-eqz v2, :cond_32

    sget-object v2, Lcom/estrongs/android/pop/d/h;->f:Lcom/estrongs/android/pop/d/i;

    if-eqz v2, :cond_28

    invoke-static {}, Lcom/estrongs/android/pop/d/h;->d()V

    :cond_28
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->g(Z)Lcom/estrongs/android/pop/d/i;

    move-result-object v2

    :goto_2d
    if-nez v2, :cond_38

    monitor-exit v3

    move v0, v1

    goto :goto_a

    :cond_32
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->g(Z)Lcom/estrongs/android/pop/d/i;

    move-result-object v2

    goto :goto_2d

    :cond_38
    iget-boolean v1, v2, Lcom/estrongs/android/pop/d/i;->d:Z

    if-eqz v1, :cond_4a

    sput-object v2, Lcom/estrongs/android/pop/d/h;->d:Lcom/estrongs/android/pop/d/i;

    sget-object v1, Lcom/estrongs/android/pop/d/h;->d:Lcom/estrongs/android/pop/d/i;

    iget v1, v1, Lcom/estrongs/android/pop/d/i;->e:I

    sput v1, Lcom/estrongs/android/pop/d/h;->e:I

    :goto_44
    iget v1, v2, Lcom/estrongs/android/pop/d/i;->e:I

    sput v1, Lcom/estrongs/android/pop/d/h;->h:I

    monitor-exit v3

    goto :goto_a

    :cond_4a
    sput-object v2, Lcom/estrongs/android/pop/d/h;->f:Lcom/estrongs/android/pop/d/i;

    sget-object v1, Lcom/estrongs/android/pop/d/h;->f:Lcom/estrongs/android/pop/d/i;

    iget v1, v1, Lcom/estrongs/android/pop/d/i;->e:I

    sput v1, Lcom/estrongs/android/pop/d/h;->g:I
    :try_end_52
    .catchall {:try_start_1a .. :try_end_52} :catchall_15

    goto :goto_44
.end method
