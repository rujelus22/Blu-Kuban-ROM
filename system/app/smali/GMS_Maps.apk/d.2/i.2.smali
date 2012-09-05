.class Ld/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ld/h;


# direct methods
.method constructor <init>(Ld/h;)V
    .registers 2

    iput-object p1, p0, Ld/i;->a:Ld/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Ld/i;->a:Ld/h;

    invoke-static {v0}, Ld/h;->e(Ld/h;)Ld/r;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Ld/i;->a:Ld/h;

    invoke-static {v0}, Ld/h;->f(Ld/h;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ld/j;

    invoke-direct {v1, p0}, Ld/j;-><init>(Ld/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    iget-object v0, p0, Ld/i;->a:Ld/h;

    invoke-static {v0}, Ld/h;->d(Ld/h;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Ld/i;->a:Ld/h;

    invoke-static {v0}, Ld/h;->g(Ld/h;)Z

    :cond_23
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Ld/i;->a:Ld/h;

    invoke-static {v2}, Ld/h;->a(Ld/h;)[B

    move-result-object v2

    if-nez v2, :cond_19

    iget-object v2, p0, Ld/i;->a:Ld/h;

    iget-object v3, p0, Ld/i;->a:Ld/h;

    invoke-static {v3}, Ld/h;->b(Ld/h;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ld/Z;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v2, v3}, Ld/h;->a(Ld/h;[B)[B
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_19} :catch_49
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_19} :catch_60

    :cond_19
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Ld/i;->a:Ld/h;

    invoke-static {v3}, Ld/h;->c(Ld/h;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_80

    iget-object v0, p0, Ld/i;->a:Ld/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to list files in directory:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ld/i;->a:Ld/h;

    invoke-static {v2}, Ld/h;->c(Ld/h;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld/h;->a(Ld/h;Ljava/lang/String;)V

    :goto_48
    return-void

    :catch_49
    move-exception v2

    iget-object v2, p0, Ld/i;->a:Ld/h;

    const-string v3, "Key %s does not exist."

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Ld/i;->a:Ld/h;

    invoke-static {v4}, Ld/h;->b(Ld/h;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ld/h;->a(Ld/h;Ljava/lang/String;)V

    goto :goto_48

    :catch_60
    move-exception v0

    iget-object v0, p0, Ld/i;->a:Ld/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read cipher key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ld/i;->a:Ld/h;

    invoke-static {v2}, Ld/h;->b(Ld/h;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld/h;->a(Ld/h;Ljava/lang/String;)V

    goto :goto_48

    :cond_80
    array-length v4, v3

    if-nez v4, :cond_87

    invoke-direct {p0}, Ld/i;->a()V

    goto :goto_48

    :cond_87
    invoke-static {}, Ld/ai;->a()Ld/ai;

    move-result-object v4

    invoke-virtual {v4, v2}, Ld/ai;->c(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_b0

    iget-object v0, p0, Ld/i;->a:Ld/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ld/i;->a:Ld/h;

    invoke-static {v2}, Ld/h;->c(Ld/h;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is locked."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld/h;->a(Ld/h;Ljava/lang/String;)V

    goto :goto_48

    :cond_b0
    :try_start_b0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ld/aq;->a(Ljava/lang/String;)Ld/aq;

    move-result-object v4

    invoke-virtual {v4}, Ld/aq;->a()I

    move-result v5

    if-eqz v5, :cond_c4

    invoke-virtual {v4}, Ld/aq;->b()I

    move-result v4

    if-nez v4, :cond_f5

    :cond_c4
    iget-object v0, p0, Ld/i;->a:Ld/h;

    invoke-static {v0}, Ld/h;->d(Ld/h;)Z

    move-result v0

    if-eqz v0, :cond_d1

    iget-object v0, p0, Ld/i;->a:Ld/h;

    invoke-static {v0, v2}, Ld/h;->a(Ld/h;Ljava/io/File;)Z

    :cond_d1
    invoke-direct {p0}, Ld/i;->a()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_d4} :catch_d6

    goto/16 :goto_48

    :catch_d6
    move-exception v0

    iget-object v1, p0, Ld/i;->a:Ld/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load SessionSummary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ld/h;->a(Ld/h;Ljava/lang/String;)V

    goto/16 :goto_48

    :cond_f5
    iget-object v2, p0, Ld/i;->a:Ld/h;

    invoke-static {v2, v3}, Ld/h;->a(Ld/h;[Ljava/lang/String;)Ld/l;

    move-result-object v2

    invoke-virtual {v2}, Ld/l;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_10a

    invoke-direct {p0}, Ld/i;->a()V

    goto/16 :goto_48

    :cond_10a
    iget-object v3, p0, Ld/i;->a:Ld/h;

    invoke-virtual {v2}, Ld/l;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12e

    :goto_112
    invoke-static {v3, v0}, Ld/h;->a(Ld/h;Z)Z

    invoke-static {}, Ld/ai;->a()Ld/ai;

    move-result-object v0

    iget-object v1, p0, Ld/i;->a:Ld/h;

    invoke-static {v1}, Ld/h;->c(Ld/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_130

    iget-object v0, p0, Ld/i;->a:Ld/h;

    const-string v1, "Failed to lock working directory."

    invoke-static {v0, v1}, Ld/h;->a(Ld/h;Ljava/lang/String;)V

    goto/16 :goto_48

    :cond_12e
    move v0, v1

    goto :goto_112

    :cond_130
    :try_start_130
    iget-object v0, p0, Ld/i;->a:Ld/h;

    invoke-static {v0, v2}, Ld/h;->a(Ld/h;Ld/l;)V
    :try_end_135
    .catchall {:try_start_130 .. :try_end_135} :catchall_144

    invoke-static {}, Ld/ai;->a()Ld/ai;

    move-result-object v0

    iget-object v1, p0, Ld/i;->a:Ld/h;

    invoke-static {v1}, Ld/h;->c(Ld/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld/ai;->b(Ljava/lang/String;)V

    goto/16 :goto_48

    :catchall_144
    move-exception v0

    invoke-static {}, Ld/ai;->a()Ld/ai;

    move-result-object v1

    iget-object v2, p0, Ld/i;->a:Ld/h;

    invoke-static {v2}, Ld/h;->c(Ld/h;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ld/ai;->b(Ljava/lang/String;)V

    throw v0
.end method
