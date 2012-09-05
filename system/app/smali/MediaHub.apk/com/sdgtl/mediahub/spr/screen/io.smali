.class final Lcom/sdgtl/mediahub/spr/screen/io;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPage;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPage;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/io;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/io;)Lcom/sdgtl/mediahub/spr/screen/MyPage;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/io;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    if-eqz p2, :cond_3a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    const-string v1, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_CANCELED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.sdgtl.mediahub.spr.download.cause"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "com.sdgtl.mediahub.spr.download.cancel_productId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/io;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->b(Lcom/sdgtl/mediahub/spr/screen/MyPage;)I

    move-result v2

    if-ne v0, v2, :cond_2b

    packed-switch v1, :pswitch_data_4a

    :cond_2b
    :goto_2b
    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/io;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->e(Lcom/sdgtl/mediahub/spr/screen/MyPage;)Lcom/sdgtl/mediahub/spr/screen/iu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/iu;->notifyDataSetChanged()V

    :cond_3a
    return-void

    :pswitch_3b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ip;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ip;-><init>(Lcom/sdgtl/mediahub/spr/screen/io;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2b

    nop

    :pswitch_data_4a
    .packed-switch 0x2
        :pswitch_3b
    .end packed-switch
.end method
