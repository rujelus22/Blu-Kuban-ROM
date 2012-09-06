.class final Lcom/mobfox/video/sdk/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;


# direct methods
.method constructor <init>(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/am;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 9

    const/4 v6, 0x3

    const-string v0, "MOBFOX"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "MOBFOX"

    const-string v1, "###########TRACKING SKIP VIDEO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/mobfox/video/sdk/am;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->i(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)Lcom/mobfox/video/sdk/cs;

    move-result-object v0

    iget-object v2, v0, Lcom/mobfox/video/sdk/cs;->G:Ljava/util/Vector;

    const/4 v0, 0x0

    move v1, v0

    :goto_1a
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_31

    iget-object v0, p0, Lcom/mobfox/video/sdk/am;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-static {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->n(Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/am;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->setResult(I)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/am;->a:Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/MobFoxRichMediaActivity;->finish()V

    return-void

    :cond_31
    const-string v0, "MOBFOX"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_53

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

    :cond_53
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

    goto :goto_1a
.end method
