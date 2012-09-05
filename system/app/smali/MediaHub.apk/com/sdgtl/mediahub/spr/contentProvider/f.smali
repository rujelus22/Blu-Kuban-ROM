.class final Lcom/sdgtl/mediahub/spr/contentProvider/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/contentProvider/d;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/contentProvider/d;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/f;->a:Lcom/sdgtl/mediahub/spr/contentProvider/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/f;->a:Lcom/sdgtl/mediahub/spr/contentProvider/d;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/d;->a(Lcom/sdgtl/mediahub/spr/contentProvider/d;)Lcom/a/a/a/a/d/a;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/f;->a:Lcom/sdgtl/mediahub/spr/contentProvider/d;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/d;->a(Lcom/sdgtl/mediahub/spr/contentProvider/d;)Lcom/a/a/a/a/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/a/d/a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_12
    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/f;->a:Lcom/sdgtl/mediahub/spr/contentProvider/d;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/d;->a(Lcom/sdgtl/mediahub/spr/contentProvider/d;)Lcom/a/a/a/a/d/a;

    move-result-object v1

    if-eqz v1, :cond_a7

    invoke-static {}, Lcom/a/a/a/a/d/b;->a()Lcom/a/a/a/a/d/b;

    invoke-static {v0}, Lcom/a/a/a/a/d/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/f;->a:Lcom/sdgtl/mediahub/spr/contentProvider/d;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/d;->a(Lcom/sdgtl/mediahub/spr/contentProvider/d;)Lcom/a/a/a/a/d/a;

    move-result-object v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/f;->a:Lcom/sdgtl/mediahub/spr/contentProvider/d;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/d;->a(Lcom/sdgtl/mediahub/spr/contentProvider/d;)Lcom/a/a/a/a/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/a/a/d/a;->c(Ljava/lang/String;)V

    :goto_37
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/f;->a:Lcom/sdgtl/mediahub/spr/contentProvider/d;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/d;->a(Lcom/sdgtl/mediahub/spr/contentProvider/d;)Lcom/a/a/a/a/d/a;

    move-result-object v0

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/f;->a:Lcom/sdgtl/mediahub/spr/contentProvider/d;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/d;->a(Lcom/sdgtl/mediahub/spr/contentProvider/d;)Lcom/a/a/a/a/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/a/d/a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_4a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/f;->a:Lcom/sdgtl/mediahub/spr/contentProvider/d;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/d;->b(Lcom/sdgtl/mediahub/spr/contentProvider/d;)V

    goto :goto_14

    :cond_50
    :try_start_50
    invoke-static {}, Lcom/a/a/a/a/d/b;->a()Lcom/a/a/a/a/d/b;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/f;->a:Lcom/sdgtl/mediahub/spr/contentProvider/d;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/d;->c(Lcom/sdgtl/mediahub/spr/contentProvider/d;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/contentProvider/f;->a:Lcom/sdgtl/mediahub/spr/contentProvider/d;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/contentProvider/d;->d(Lcom/sdgtl/mediahub/spr/contentProvider/d;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/a/a/d/b;->a(Ljava/lang/String;JLandroid/os/Handler;)Z

    move-result v1

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/f;->a:Lcom/sdgtl/mediahub/spr/contentProvider/d;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/d;->a(Lcom/sdgtl/mediahub/spr/contentProvider/d;)Lcom/a/a/a/a/d/a;

    move-result-object v1

    if-eqz v1, :cond_7c

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/f;->a:Lcom/sdgtl/mediahub/spr/contentProvider/d;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/d;->a(Lcom/sdgtl/mediahub/spr/contentProvider/d;)Lcom/a/a/a/a/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/a/a/d/a;->c(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_76} :catch_77
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_76} :catch_82

    goto :goto_37

    :catch_77
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    :cond_7c
    :try_start_7c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/f;->a:Lcom/sdgtl/mediahub/spr/contentProvider/d;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/d;->b(Lcom/sdgtl/mediahub/spr/contentProvider/d;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_81} :catch_77
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_81} :catch_82

    goto :goto_14

    :catch_82
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_37

    :cond_87
    :try_start_87
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/f;->a:Lcom/sdgtl/mediahub/spr/contentProvider/d;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/d;->a(Lcom/sdgtl/mediahub/spr/contentProvider/d;)Lcom/a/a/a/a/d/a;

    move-result-object v1

    if-eqz v1, :cond_99

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/contentProvider/f;->a:Lcom/sdgtl/mediahub/spr/contentProvider/d;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/d;->a(Lcom/sdgtl/mediahub/spr/contentProvider/d;)Lcom/a/a/a/a/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/a/a/d/a;->b(Ljava/lang/String;)V

    goto :goto_37

    :cond_99
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/f;->a:Lcom/sdgtl/mediahub/spr/contentProvider/d;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/d;->b(Lcom/sdgtl/mediahub/spr/contentProvider/d;)V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_9e} :catch_77
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_9e} :catch_82

    goto/16 :goto_14

    :cond_a0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/f;->a:Lcom/sdgtl/mediahub/spr/contentProvider/d;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/d;->b(Lcom/sdgtl/mediahub/spr/contentProvider/d;)V

    goto/16 :goto_14

    :cond_a7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/contentProvider/f;->a:Lcom/sdgtl/mediahub/spr/contentProvider/d;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/d;->b(Lcom/sdgtl/mediahub/spr/contentProvider/d;)V

    goto/16 :goto_14
.end method
