.class final Lcom/sdgtl/mediahub/spr/common/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/h;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/h;->a:Landroid/os/Handler;

    if-eqz v0, :cond_22

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/a;->a:Lcom/sdgtl/mediahub/spr/common/ch;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/common/ch;->a()Lcom/sdgtl/mediahub/spr/common/eb;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/eb;->d:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/h;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/a;->e()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_22
    return-void
.end method
