.class final Lcom/sdgtl/mediahub/spr/screen/qp;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/qp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->z(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    const-string v1, "02"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->h(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->i(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    goto :goto_5

    :pswitch_1d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_6
    .end packed-switch
.end method
