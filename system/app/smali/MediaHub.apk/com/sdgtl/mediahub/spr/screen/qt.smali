.class final Lcom/sdgtl/mediahub/spr/screen/qt;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/qt;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    :goto_5
    return-void

    :pswitch_6
    const-string v0, "Network Error - Retry selected"

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;)I

    goto :goto_5

    :pswitch_c
    const-string v0, "Network Error - Cancel selected"

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;)I

    goto :goto_5

    :pswitch_12
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qt;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qt;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->k(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qt;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "close_detail_view"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    :cond_30
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qt;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->finish()V

    goto :goto_5

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_c
        :pswitch_12
        :pswitch_6
    .end packed-switch
.end method