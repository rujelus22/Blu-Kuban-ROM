.class public Lcom/estrongs/android/pop/fs/e;
.super Ljava/io/PipedOutputStream;


# instance fields
.field private a:Lcom/estrongs/android/util/l;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/io/PipedOutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/fs/e;->a:Lcom/estrongs/android/util/l;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/e;->a:Lcom/estrongs/android/util/l;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/e;->a:Lcom/estrongs/android/util/l;

    iget-object v0, v0, Lcom/estrongs/android/util/l;->c:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/e;->a:Lcom/estrongs/android/util/l;

    iget-object v0, v0, Lcom/estrongs/android/util/l;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_18

    :cond_14
    :goto_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/fs/e;->a:Lcom/estrongs/android/util/l;

    return-void

    :catch_18
    move-exception v0

    goto :goto_14
.end method

.method public a(Lcom/estrongs/android/util/l;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/fs/e;->a:Lcom/estrongs/android/util/l;

    return-void
.end method

.method public close()V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/e;->a:Lcom/estrongs/android/util/l;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/e;->a:Lcom/estrongs/android/util/l;

    invoke-virtual {v0}, Lcom/estrongs/android/util/l;->c()V

    :cond_9
    invoke-super {p0}, Ljava/io/PipedOutputStream;->close()V

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/e;->a:Lcom/estrongs/android/util/l;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/e;->a:Lcom/estrongs/android/util/l;

    invoke-virtual {v0}, Lcom/estrongs/android/util/l;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_24
    iget-object v0, p0, Lcom/estrongs/android/pop/fs/e;->a:Lcom/estrongs/android/util/l;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/estrongs/android/pop/fs/e;->a:Lcom/estrongs/android/util/l;

    iget-object v0, v0, Lcom/estrongs/android/util/l;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    new-instance v2, Lcom/estrongs/android/util/u;

    invoke-direct {v2}, Lcom/estrongs/android/util/u;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/fs/e;->a:Lcom/estrongs/android/util/l;

    iget-object v1, v1, Lcom/estrongs/android/util/l;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcom/estrongs/android/util/u;->b:I

    :try_start_3f
    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v3

    iget v4, v2, Lcom/estrongs/android/util/u;->b:I

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/estrongs/android/util/t;->a(ILjava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/estrongs/android/util/u;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, v2, Lcom/estrongs/android/util/u;->g:I

    invoke-static {}, Lcom/estrongs/android/util/t;->a()Lcom/estrongs/android/util/t;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/util/t;->a(Lcom/estrongs/android/util/u;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_77} :catch_78

    :cond_77
    :goto_77
    return-void

    :catch_78
    move-exception v0

    goto :goto_77
.end method
