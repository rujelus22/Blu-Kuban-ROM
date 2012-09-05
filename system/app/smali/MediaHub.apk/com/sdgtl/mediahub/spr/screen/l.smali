.class final Lcom/sdgtl/mediahub/spr/screen/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/Help;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/Help;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/l;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x1

    const/16 v1, 0x52

    if-ne p2, v1, :cond_e

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_e

    :goto_d
    return v0

    :cond_e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_21

    const/4 v0, 0x4

    if-ne p2, v0, :cond_21

    if-eqz p1, :cond_21

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/l;->a:Lcom/sdgtl/mediahub/spr/screen/Help;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/Help;->finish()V

    :cond_21
    const/4 v0, 0x0

    goto :goto_d
.end method
