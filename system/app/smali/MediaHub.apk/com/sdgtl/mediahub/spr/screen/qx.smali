.class final Lcom/sdgtl/mediahub/spr/screen/qx;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const-wide/16 v7, 0x0

    const/4 v3, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x2

    if-eqz p2, :cond_3f

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f

    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.sdgtl.mediahub.spr.download.cancel_productId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "com.sdgtl.mediahub.spr.download.attr_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)I

    move-result v2

    if-ne v1, v2, :cond_3f

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0, v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;I)V

    :goto_3a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->h(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0, v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;I)V

    goto :goto_3a

    :cond_46
    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOADING_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->f(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->b()I

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)I

    move-result v1

    if-ne v0, v1, :cond_3f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->j(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PROGRESS"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v1, "current"

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v1, "total"

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "com.sdgtl.mediahub.spr.download.attr_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->E(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)J

    move-result-wide v7

    cmp-long v0, v4, v7

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;J)V

    :cond_9b
    :goto_9b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static/range {v0 .. v6}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;Ljava/lang/String;JJI)V

    goto :goto_3f

    :cond_a1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->F(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)J

    move-result-wide v7

    cmp-long v0, v4, v7

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;J)V

    goto :goto_9b

    :cond_b1
    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_CANCELED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13c

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.sdgtl.mediahub.spr.download.cause"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "com.sdgtl.mediahub.spr.download.cancel_productId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "com.sdgtl.mediahub.spr.download.attr_type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)I

    move-result v3

    if-ne v2, v3, :cond_3f

    packed-switch v1, :pswitch_data_184

    :pswitch_da
    goto/16 :goto_3f

    :pswitch_dc
    if-eqz v0, :cond_f2

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0, v5}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;I)V

    :goto_eb
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->h(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    goto/16 :goto_3f

    :cond_f2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0, v5}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;I)V

    goto :goto_eb

    :pswitch_f8
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->G(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->H(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    if-eqz v0, :cond_127

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_127

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->I(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->J(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;I)V

    :goto_120
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->h(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    goto/16 :goto_3f

    :cond_127
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->K(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->J(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;I)V

    goto :goto_120

    :cond_13c
    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_UI_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_163

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->j(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->H(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->h(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    goto/16 :goto_3f

    :cond_163
    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_UPDATE_LICENSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->j(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->u(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->z(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qx;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->h(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    goto/16 :goto_3f

    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_dc
        :pswitch_dc
        :pswitch_f8
        :pswitch_da
        :pswitch_dc
    .end packed-switch
.end method
