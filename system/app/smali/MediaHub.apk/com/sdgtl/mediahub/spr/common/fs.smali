.class final Lcom/sdgtl/mediahub/spr/common/fs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/fs;->a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 v2, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_67

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_67

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fs;->a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;->a(Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;)Lcom/sdgtl/mediahub/spr/download/a;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fs;->a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;->a(Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->f()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fs;->a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;->a(Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->g()V

    :cond_29
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fs;->a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;->finish()V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->a()Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v0

    if-nez v0, :cond_5d

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fs;->a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fs;->a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_5a

    const-class v0, Lcom/sdgtl/mediahub/spr/screen/land/MyMediaLand;

    :goto_45
    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v1

    :goto_49
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "app_destory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fs;->a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;

    invoke-virtual {v1, v0}, Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    :goto_59
    return v0

    :cond_5a
    const-class v0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    goto :goto_45

    :cond_5d
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fs;->a:Lcom/sdgtl/mediahub/spr/common/ShowCurrentTime;

    const-class v3, Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_49

    :cond_67
    const/4 v0, 0x0

    goto :goto_59
.end method
