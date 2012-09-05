.class final Lcom/sdgtl/mediahub/spr/screen/du;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    const-wide/16 v8, 0x0

    const-wide/16 v3, -0x1

    const/4 v2, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setDownloadingTotalSize(J)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0, v6}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOADING_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->j(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2a

    const-string v1, "total"

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "current"

    invoke-virtual {v0, v3, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "PROGRESS"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v7, :cond_76

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)I

    move-result v5

    if-ne v5, v7, :cond_76

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setDownloadingTotalSize(J)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->notifyDataSetChanged()V

    goto :goto_2a

    :cond_76
    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->y(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-le v5, v0, :cond_84

    const/16 v5, 0x64

    if-lt v0, v5, :cond_2a

    :cond_84
    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)I

    move-result v5

    if-eqz v5, :cond_94

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)I

    move-result v5

    if-ne v5, v7, :cond_2a

    :cond_94
    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setDownloadingTotalSize(J)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->notifyDataSetChanged()V

    const-wide/32 v1, 0x200000

    cmp-long v1, v3, v1

    if-lez v1, :cond_2a

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;I)V

    goto/16 :goto_2a

    :cond_b4
    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_CANCELED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->setDownloadingTotalSize(J)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0, v6}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V

    goto/16 :goto_2a

    :cond_d1
    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_UI_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->j(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0, v6}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->z(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2a

    :cond_fb
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->z(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/du;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0, v6}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->c(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V

    goto/16 :goto_2a
.end method
