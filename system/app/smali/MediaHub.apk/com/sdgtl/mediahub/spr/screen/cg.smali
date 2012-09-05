.class final Lcom/sdgtl/mediahub/spr/screen/cg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/cg;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/cg;->a:Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyDevicesManaging;->removeDialog(I)V

    :cond_e
    const/4 v0, 0x1

    return v0
.end method
