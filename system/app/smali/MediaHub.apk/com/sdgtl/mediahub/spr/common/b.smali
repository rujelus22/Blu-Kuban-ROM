.class final Lcom/sdgtl/mediahub/spr/common/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/a;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/a;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/b;->a:Lcom/sdgtl/mediahub/spr/common/a;

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

    if-ne v1, v0, :cond_26

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/a;->c()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x4

    if-ne p2, v0, :cond_26

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/a;->d()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_26
    const/4 v0, 0x0

    goto :goto_d
.end method
