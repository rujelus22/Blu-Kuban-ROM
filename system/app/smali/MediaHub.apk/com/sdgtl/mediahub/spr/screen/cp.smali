.class final Lcom/sdgtl/mediahub/spr/screen/cp;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/cp;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cp;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cp;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->e(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cp;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/cp;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const v2, 0x7f0a01a5

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method
