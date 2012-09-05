.class final Lcom/sdgtl/mediahub/spr/download/k;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/download/DownloadService;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/download/k;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_cc

    :cond_6
    :goto_6
    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/k;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_UI_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :pswitch_16
    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->e()Z

    move-result v0

    if-eqz v0, :cond_29

    move v1, v2

    :goto_1d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/k;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_9a

    :cond_29
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/k;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/k;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/k;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v1, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/k;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-string v3, "Downloading"

    invoke-static {v1, v0, v3}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/k;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/k;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v1, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/k;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-string v3, "charge_dialog_display_y"

    invoke-static {v1, v0, v3}, Lcom/sdgtl/mediahub/spr/c/a;->c(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/download/k;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/k;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;Lcom/sdgtl/mediahub/spr/download/DownloadInfo;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->b()V

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/d/b;->a(I)V

    goto/16 :goto_6

    :cond_9a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/k;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->b(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/k;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget v3, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/k;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    const-string v4, "charge_dialog_display_y"

    invoke-static {v3, v0, v4}, Lcom/sdgtl/mediahub/spr/c/a;->c(ILjava/lang/String;Ljava/lang/String;)J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1d

    :pswitch_c5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/k;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a()V

    goto/16 :goto_6

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_16
    .end packed-switch
.end method
