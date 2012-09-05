.class public Lcom/sdgtl/mediahub/spr/common/NotificationDummy;
.super Landroid/app/Activity;


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, v0}, Lcom/sdgtl/mediahub/spr/common/NotificationDummy;->overridePendingTransition(II)V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 5

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/NotificationDummy;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9e

    const-string v1, "product_id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sdgtl/mediahub/spr/common/NotificationDummy;->a:I

    const-string v1, "parent_product_id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sdgtl/mediahub/spr/common/NotificationDummy;->b:I

    const-string v1, "download_finish"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/common/NotificationDummy;->c:Z

    new-instance v1, Landroid/content/Intent;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_a2

    const-class v0, Lcom/sdgtl/mediahub/spr/screen/land/MyMediaLand;

    :goto_32
    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x2000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "fromNotification"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "download_finish"

    iget-boolean v2, p0, Lcom/sdgtl/mediahub/spr/common/NotificationDummy;->c:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "product_id"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/common/NotificationDummy;->a:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "parent_product_id"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/common/NotificationDummy;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/common/NotificationDummy;->startActivity(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_96

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a()Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    move-result-object v0

    if-eqz v0, :cond_7c

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a()Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->b()Z

    move-result v0

    if-eqz v0, :cond_a5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "close_detail_view"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/NotificationDummy;->sendBroadcast(Landroid/content/Intent;)V

    :cond_7c
    :goto_7c
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a()Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    move-result-object v0

    if-eqz v0, :cond_96

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a()Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->b()Z

    move-result v0

    if-eqz v0, :cond_ad

    new-instance v0, Landroid/content/Intent;

    const-string v1, "close_detail_view"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/common/NotificationDummy;->sendBroadcast(Landroid/content/Intent;)V

    :cond_96
    :goto_96
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/NotificationDummy;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_9e
    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/NotificationDummy;->finish()V

    return-void

    :cond_a2
    const-class v0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    goto :goto_32

    :cond_a5
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a()Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->finish()V

    goto :goto_7c

    :cond_ad
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a()Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->finish()V

    goto :goto_96
.end method
