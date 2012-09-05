.class final Lcom/sdgtl/mediahub/spr/common/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private final synthetic a:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/bd;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 v3, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_14

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/bd;->a:Landroid/os/Handler;

    if-eqz v0, :cond_14

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/bd;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/a;->e()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_14
    return v3
.end method
