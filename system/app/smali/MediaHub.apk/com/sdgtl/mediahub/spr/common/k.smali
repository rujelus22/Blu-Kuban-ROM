.class final Lcom/sdgtl/mediahub/spr/common/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:[Ljava/lang/CharSequence;

.field private final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>([Ljava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/k;->a:[Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/common/k;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/k;->a:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/k;->b:Landroid/os/Handler;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/a;->e()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
