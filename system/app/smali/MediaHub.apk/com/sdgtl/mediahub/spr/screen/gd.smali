.class final Lcom/sdgtl/mediahub/spr/screen/gd;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

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

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)I

    move-result v2

    if-ne v1, v2, :cond_3f

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;I)V

    :goto_3a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->m(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;I)V

    goto :goto_3a

    :cond_46
    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOADING_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e9

    const-string v0, "MediaHubAPP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mDownloadReceiver - mDownloadHelper.getDownloadingP*****tI*() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->j(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubAPP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mDownloadReceiver - mProductId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->j(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->b()I

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)I

    move-result v1

    if-ne v0, v1, :cond_3f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->o(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Z

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

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->F(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)J

    move-result-wide v7

    cmp-long v0, v4, v7

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;J)V

    :cond_d2
    :goto_d2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static/range {v0 .. v6}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;Ljava/lang/String;JJI)V

    goto/16 :goto_3f

    :cond_d9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->G(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)J

    move-result-wide v7

    cmp-long v0, v4, v7

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;J)V

    goto :goto_d2

    :cond_e9
    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_CANCELED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_174

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

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->s(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)I

    move-result v3

    if-ne v2, v3, :cond_3f

    packed-switch v1, :pswitch_data_1bc

    :pswitch_117
    goto/16 :goto_3f

    :pswitch_119
    if-eqz v0, :cond_12f

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;I)V

    :goto_128
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->m(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    goto/16 :goto_3f

    :cond_12f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;I)V

    goto :goto_128

    :pswitch_135
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->H(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    if-eqz v0, :cond_15f

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->I(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->J(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;I)V

    :goto_158
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->m(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    goto/16 :goto_3f

    :cond_15f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->K(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->J(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;I)V

    goto :goto_158

    :cond_174
    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_UI_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->o(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->s(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->m(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    goto/16 :goto_3f

    :cond_19b
    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_UPDATE_LICENSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->o(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->u(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->x(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gd;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->m(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    goto/16 :goto_3f

    :pswitch_data_1bc
    .packed-switch 0x0
        :pswitch_119
        :pswitch_119
        :pswitch_135
        :pswitch_117
        :pswitch_119
    .end packed-switch
.end method
