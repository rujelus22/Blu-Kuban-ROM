.class final Lcom/darekxan/extweaks/app/o;
.super Ljava/lang/Thread;
.source "ShellProvider.java"


# static fields
.field private static synthetic g:[I


# instance fields
.field a:Ljava/io/BufferedReader;

.field final synthetic b:Lcom/darekxan/extweaks/app/n;

.field private c:Ljava/lang/Process;

.field private d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/io/DataOutputStream;

.field private f:Ljava/io/DataInputStream;


# direct methods
.method constructor <init>(Lcom/darekxan/extweaks/app/n;Ljava/util/concurrent/BlockingQueue;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lcom/darekxan/extweaks/app/o;->b:Lcom/darekxan/extweaks/app/n;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/darekxan/extweaks/app/o;->d:Ljava/util/concurrent/BlockingQueue;

    .line 42
    return-void
.end method

.method private a(Lcom/darekxan/extweaks/h;)V
    .registers 6
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    :try_start_1
    invoke-static {}, Lcom/darekxan/extweaks/app/o;->a()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/darekxan/extweaks/h;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7a

    .line 54
    :goto_e
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/darekxan/extweaks/app/o;->c:Ljava/lang/Process;

    .line 57
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/darekxan/extweaks/app/o;->c:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/darekxan/extweaks/app/o;->e:Ljava/io/DataOutputStream;

    .line 58
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/darekxan/extweaks/app/o;->c:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/darekxan/extweaks/app/o;->f:Ljava/io/DataInputStream;

    .line 59
    new-instance v0, Ljava/io/BufferedReader;

    .line 60
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/darekxan/extweaks/app/o;->f:Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 59
    iput-object v0, p0, Lcom/darekxan/extweaks/app/o;->a:Ljava/io/BufferedReader;

    .line 67
    :goto_40
    return-void

    .line 49
    :pswitch_41
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sh"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4e} :catch_4f

    goto :goto_e

    .line 62
    :catch_4f
    move-exception v0

    .line 63
    const-string v1, "ShellProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldnt start shell process"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40

    .line 52
    :pswitch_6c
    :try_start_6c
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "su"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_79} :catch_4f

    goto :goto_e

    .line 47
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_41
    .end packed-switch
.end method

.method private static synthetic a()[I
    .registers 3

    .prologue
    .line 24
    sget-object v0, Lcom/darekxan/extweaks/app/o;->g:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/darekxan/extweaks/h;->values()[Lcom/darekxan/extweaks/h;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/darekxan/extweaks/h;->b:Lcom/darekxan/extweaks/h;

    invoke-virtual {v1}, Lcom/darekxan/extweaks/h;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23

    :goto_15
    :try_start_15
    sget-object v1, Lcom/darekxan/extweaks/h;->a:Lcom/darekxan/extweaks/h;

    invoke-virtual {v1}, Lcom/darekxan/extweaks/h;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21

    :goto_1e
    sput-object v0, Lcom/darekxan/extweaks/app/o;->g:[I

    goto :goto_4

    :catch_21
    move-exception v1

    goto :goto_1e

    :catch_23
    move-exception v1

    goto :goto_15
.end method

.method private b(Lcom/darekxan/extweaks/h;)Z
    .registers 4
    .parameter

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/darekxan/extweaks/app/o;->c:Ljava/lang/Process;

    if-nez v0, :cond_e

    .line 141
    const-string v0, "ShellThread"

    .line 142
    const-string v1, "No active shell process, initializing..."

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0, p1}, Lcom/darekxan/extweaks/app/o;->a(Lcom/darekxan/extweaks/h;)V

    .line 146
    :cond_e
    iget-object v0, p0, Lcom/darekxan/extweaks/app/o;->c:Ljava/lang/Process;

    if-eqz v0, :cond_17

    .line 147
    iget-object v0, p0, Lcom/darekxan/extweaks/app/o;->c:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    .line 148
    :cond_17
    invoke-direct {p0, p1}, Lcom/darekxan/extweaks/app/o;->a(Lcom/darekxan/extweaks/h;)V

    .line 150
    const-string v0, "ShellThread"

    .line 151
    const-string v1, "No active shell process, initializing..."

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/darekxan/extweaks/app/o;->c:Ljava/lang/Process;

    if-eqz v0, :cond_2a

    .line 153
    iget-object v0, p0, Lcom/darekxan/extweaks/app/o;->c:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I
    :try_end_2a
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_2a} :catch_2c

    .line 160
    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0

    .line 157
    :catch_2c
    move-exception v0

    const-string v0, "ShellThread"

    const-string v1, "Shell process running..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x1

    goto :goto_2b
.end method


# virtual methods
.method protected final finalize()V
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/darekxan/extweaks/app/o;->c:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 28
    invoke-virtual {p0}, Lcom/darekxan/extweaks/app/o;->interrupt()V

    .line 29
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 30
    return-void
.end method

.method public final run()V
    .registers 4

    .prologue
    .line 73
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/darekxan/extweaks/app/o;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/darekxan/extweaks/app/o;->b:Lcom/darekxan/extweaks/app/n;

    invoke-static {v1}, Lcom/darekxan/extweaks/app/n;->a(Lcom/darekxan/extweaks/app/n;)Lcom/darekxan/extweaks/h;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/darekxan/extweaks/app/o;->b(Lcom/darekxan/extweaks/h;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 92
    const-string v1, "TERM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 93
    iget-object v0, p0, Lcom/darekxan/extweaks/app/o;->e:Ljava/io/DataOutputStream;

    const-string v1, "exit \n"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/darekxan/extweaks/app/o;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 95
    iget-object v0, p0, Lcom/darekxan/extweaks/app/o;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 96
    iget-object v0, p0, Lcom/darekxan/extweaks/app/o;->f:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 97
    iget-object v0, p0, Lcom/darekxan/extweaks/app/o;->a:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 98
    iget-object v0, p0, Lcom/darekxan/extweaks/app/o;->c:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 134
    :goto_3c
    return-void

    .line 103
    :cond_3d
    iget-object v1, p0, Lcom/darekxan/extweaks/app/o;->e:Ljava/io/DataOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\necho \"s1UZA1BJt9rWWGF1tYFh\" \n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/darekxan/extweaks/app/o;->e:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    :cond_5f
    :goto_5f
    iget-object v1, p0, Lcom/darekxan/extweaks/app/o;->a:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6f

    .line 110
    const-string v2, "s1UZA1BJt9rWWGF1tYFh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 109
    if-eqz v2, :cond_89

    .line 119
    :cond_6f
    iget-object v1, p0, Lcom/darekxan/extweaks/app/o;->b:Lcom/darekxan/extweaks/app/n;

    invoke-static {v1}, Lcom/darekxan/extweaks/app/n;->b(Lcom/darekxan/extweaks/app/n;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7c} :catch_7d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7c} :catch_a8

    goto :goto_0

    .line 127
    :catch_7d
    move-exception v0

    .line 128
    const-string v1, "ShellProvider"

    const-string v2, "init?"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    .line 111
    :cond_89
    :try_start_89
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_a7} :catch_7d
    .catch Ljava/lang/InterruptedException; {:try_start_89 .. :try_end_a7} :catch_a8

    goto :goto_5f

    .line 130
    :catch_a8
    move-exception v0

    .line 131
    const-string v1, "ShellProvider"

    const-string v2, "waited enough?"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3c

    .line 122
    :cond_b4
    :try_start_b4
    iget-object v0, p0, Lcom/darekxan/extweaks/app/o;->b:Lcom/darekxan/extweaks/app/n;

    invoke-static {v0}, Lcom/darekxan/extweaks/app/n;->b(Lcom/darekxan/extweaks/app/n;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    const-string v1, "nosu"

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_bf} :catch_7d
    .catch Ljava/lang/InterruptedException; {:try_start_b4 .. :try_end_bf} :catch_a8

    goto/16 :goto_0
.end method
