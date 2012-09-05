.class final Lcom/sdgtl/mediahub/spr/download/j;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/download/DownloadService;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/download/j;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/j;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/j;->a:Lcom/sdgtl/mediahub/spr/download/DownloadService;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->g(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/d/b;->b()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/d/b;->a(I)V

    goto :goto_5

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
