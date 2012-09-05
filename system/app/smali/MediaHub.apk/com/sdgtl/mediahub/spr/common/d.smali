.class final Lcom/sdgtl/mediahub/spr/common/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private final synthetic a:Landroid/os/Handler;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/d;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/common/d;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 v3, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/d;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/d;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/a;->e()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/d;->b:Landroid/content/Context;

    const-string v1, "download_option"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return v3
.end method
