.class final Lcom/a/a/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/a/a/c;

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Lcom/a/a/a;


# direct methods
.method constructor <init>(Lcom/a/a/a;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/a/a/c;)V
    .registers 7

    iput-object p1, p0, Lcom/a/a/b;->f:Lcom/a/a/a;

    iput-object p2, p0, Lcom/a/a/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/a/a/b;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/a/a/b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/a/a/b;->d:Lcom/a/a/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/a/a/b;->f:Lcom/a/a/a;

    iget-object v0, v0, Lcom/a/a/a;->a:Lcom/a/a/e;

    iget-object v1, p0, Lcom/a/a/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/b;->b:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/a/a/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/a/a/e;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/b;->d:Lcom/a/a/c;

    invoke-interface {v1, v0}, Lcom/a/a/c;->a(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_13} :catch_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_22

    :goto_13
    return-void

    :catch_14
    move-exception v0

    iget-object v1, p0, Lcom/a/a/b;->d:Lcom/a/a/c;

    invoke-interface {v1, v0}, Lcom/a/a/c;->a(Ljava/io/FileNotFoundException;)V

    goto :goto_13

    :catch_1b
    move-exception v0

    iget-object v1, p0, Lcom/a/a/b;->d:Lcom/a/a/c;

    invoke-interface {v1, v0}, Lcom/a/a/c;->a(Ljava/net/MalformedURLException;)V

    goto :goto_13

    :catch_22
    move-exception v0

    iget-object v1, p0, Lcom/a/a/b;->d:Lcom/a/a/c;

    invoke-interface {v1, v0}, Lcom/a/a/c;->a(Ljava/io/IOException;)V

    goto :goto_13
.end method
