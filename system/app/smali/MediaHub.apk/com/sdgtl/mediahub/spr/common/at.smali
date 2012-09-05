.class final Lcom/sdgtl/mediahub/spr/common/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private final synthetic a:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/at;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_10

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/at;->a:Landroid/os/Handler;

    if-eqz v0, :cond_10

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/at;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_10
    return v1
.end method
