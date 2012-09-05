.class final Lcom/sdgtl/mediahub/spr/common/cb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/os/Handler;

.field private final synthetic b:Landroid/widget/CheckBox;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/widget/CheckBox;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/cb;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/common/cb;->b:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/common/cb;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/cb;->a:Landroid/os/Handler;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/cb;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/cb;->c:Landroid/content/Context;

    const-string v1, "download_option"

    sget-object v2, Lcom/sdgtl/mediahub/spr/common/a;->b:Lcom/sdgtl/mediahub/spr/common/ce;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/common/ce;->a()Lcom/sdgtl/mediahub/spr/common/eb;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/eb;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/a;->b:Lcom/sdgtl/mediahub/spr/common/ce;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/common/ce;->a()Lcom/sdgtl/mediahub/spr/common/eb;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/eb;->a:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/cb;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/a;->e()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_39
    return-void

    :cond_3a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/cb;->c:Landroid/content/Context;

    const-string v1, "download_option"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method
