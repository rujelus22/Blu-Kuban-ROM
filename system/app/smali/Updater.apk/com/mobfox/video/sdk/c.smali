.class final Lcom/mobfox/video/sdk/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/b;

.field private final synthetic b:Lcom/mobfox/video/sdk/cf;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/b;Lcom/mobfox/video/sdk/cf;)V
    .registers 3

    iput-object p1, p0, Lcom/mobfox/video/sdk/c;->a:Lcom/mobfox/video/sdk/b;

    iput-object p2, p0, Lcom/mobfox/video/sdk/c;->b:Lcom/mobfox/video/sdk/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    const/4 v9, 0x3

    const/4 v8, 0x0

    const-string v0, "MOBFOX"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "MOBFOX"

    const-string v1, "MobFox CacheManager start downloading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v0, p0, Lcom/mobfox/video/sdk/c;->a:Lcom/mobfox/video/sdk/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mobfox/video/sdk/b;->d:Z

    iget-object v0, p0, Lcom/mobfox/video/sdk/c;->a:Lcom/mobfox/video/sdk/b;

    iput-boolean v8, v0, Lcom/mobfox/video/sdk/b;->e:Z

    iget-object v0, p0, Lcom/mobfox/video/sdk/c;->a:Lcom/mobfox/video/sdk/b;

    iget-object v0, v0, Lcom/mobfox/video/sdk/b;->j:Lcom/mobfox/video/sdk/i;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/i;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mobfox/video/sdk/cr;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_43

    new-instance v0, Lcom/mobfox/video/sdk/ch;

    invoke-direct {v0}, Lcom/mobfox/video/sdk/ch;-><init>()V

    :try_start_2d
    iget-object v0, p0, Lcom/mobfox/video/sdk/c;->b:Lcom/mobfox/video/sdk/cf;

    invoke-static {v0}, Lcom/mobfox/video/sdk/ch;->a(Lcom/mobfox/video/sdk/cf;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_40
    .catch Lcom/mobfox/video/sdk/cg; {:try_start_2d .. :try_end_40} :catch_90

    move-result v0

    if-nez v0, :cond_74

    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/mobfox/video/sdk/c;->a:Lcom/mobfox/video/sdk/b;

    iput-boolean v8, v0, Lcom/mobfox/video/sdk/b;->d:Z

    const-string v0, "MOBFOX"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_56

    const-string v0, "MOBFOX"

    const-string v1, "MobFox CacheManager download Thread finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    iget-object v0, p0, Lcom/mobfox/video/sdk/c;->a:Lcom/mobfox/video/sdk/b;

    new-instance v1, Lcom/mobfox/video/sdk/d;

    iget-object v2, p0, Lcom/mobfox/video/sdk/c;->b:Lcom/mobfox/video/sdk/cf;

    invoke-direct {v1, p0, v2}, Lcom/mobfox/video/sdk/d;-><init>(Lcom/mobfox/video/sdk/c;Lcom/mobfox/video/sdk/cf;)V

    iput-object v1, v0, Lcom/mobfox/video/sdk/b;->k:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/mobfox/video/sdk/c;->a:Lcom/mobfox/video/sdk/b;

    iget-object v0, v0, Lcom/mobfox/video/sdk/b;->j:Lcom/mobfox/video/sdk/i;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/i;->d()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/video/sdk/c;->a:Lcom/mobfox/video/sdk/b;

    iget-object v1, v1, Lcom/mobfox/video/sdk/b;->k:Ljava/lang/Runnable;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_74
    :try_start_74
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v4, p0, Lcom/mobfox/video/sdk/c;->a:Lcom/mobfox/video/sdk/b;

    iget-object v5, p0, Lcom/mobfox/video/sdk/c;->b:Lcom/mobfox/video/sdk/cf;

    invoke-virtual {v5}, Lcom/mobfox/video/sdk/cf;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v5, v0, v6, v7}, Lcom/mobfox/video/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_8f
    .catch Lcom/mobfox/video/sdk/cg; {:try_start_74 .. :try_end_8f} :catch_90

    goto :goto_3d

    :catch_90
    move-exception v0

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cg;->printStackTrace()V

    goto :goto_43
.end method
