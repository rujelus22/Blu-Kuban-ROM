.class final Lcom/sdgtl/mediahub/spr/screen/hr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/hr;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hr;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)I

    move-result v0

    if-eq v0, p2, :cond_12

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hr;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-virtual {v0, p2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->setResult(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hr;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->finish()V

    :cond_12
    return-void
.end method
