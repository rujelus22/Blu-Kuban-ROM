.class final Lcom/mobfox/video/sdk/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/ay;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 10

    const/4 v7, 0x3

    const/4 v6, 0x1

    const-string v0, "MOBFOX"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "MOBFOX"

    const-string v1, "###########TRACKING END VIDEO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v0, p0, Lcom/mobfox/video/sdk/ay;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->i(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    iget-object v2, v0, Lcom/mobfox/video/sdk/cs;->B:Ljava/util/Vector;

    const/4 v0, 0x0

    move v1, v0

    :goto_1b
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_76

    iget-object v0, p0, Lcom/mobfox/video/sdk/ay;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->j(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)I

    move-result v0

    if-ne v0, v6, :cond_65

    iget-object v0, p0, Lcom/mobfox/video/sdk/ay;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->k(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/cl;->a()I

    move-result v0

    if-ne v0, v6, :cond_65

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mobfox/video/sdk/ay;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    const-class v2, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "MOBFOX_RICH_AD_DATA"

    iget-object v2, p0, Lcom/mobfox/video/sdk/ay;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v2}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->k(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/cl;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "MOBFOX_RICH_AD_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_4f
    iget-object v1, p0, Lcom/mobfox/video/sdk/ay;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-virtual {v1, v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/ay;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    iget-object v1, p0, Lcom/mobfox/video/sdk/ay;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v1}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->l(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/mobfox/video/sdk/ay;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v2}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->m(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->a(Landroid/app/Activity;II)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_65} :catch_b3

    :cond_65
    :goto_65
    iget-object v0, p0, Lcom/mobfox/video/sdk/ay;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->n(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/ay;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->setResult(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/ay;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->finish()V

    return-void

    :cond_76
    const-string v0, "MOBFOX"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_98

    const-string v3, "MOBFOX"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "Track url:"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    new-instance v3, Lcom/mobfox/video/sdk/cm;

    invoke-direct {v3}, Lcom/mobfox/video/sdk/cm;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/mobfox/video/sdk/cm;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/mobfox/video/sdk/cm;->b:J

    invoke-static {v3}, Lcom/mobfox/video/sdk/co;->a(Lcom/mobfox/video/sdk/cm;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1b

    :catch_b3
    move-exception v0

    const-string v1, "MOBFOX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot start MobFox Rich Ad activity:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_65
.end method
