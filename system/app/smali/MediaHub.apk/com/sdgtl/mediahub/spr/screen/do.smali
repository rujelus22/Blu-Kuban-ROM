.class final Lcom/sdgtl/mediahub/spr/screen/do;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/do;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    const v5, 0x7f0a00d5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/do;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/do;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const-string v1, "key_update_db_yn"

    const-string v2, "update_db_y"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/do;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->y()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/do;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->z()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_4d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/do;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->k(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/do;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-virtual {v1, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/do;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->c(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/do;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_FINISH_REFRESH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_4d
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/do;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->k(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/do;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-virtual {v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/do;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0, v1, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a
.end method
