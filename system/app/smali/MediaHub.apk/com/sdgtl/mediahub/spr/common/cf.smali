.class final Lcom/sdgtl/mediahub/spr/common/cf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/ce;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/ce;I)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/cf;->a:Lcom/sdgtl/mediahub/spr/common/ce;

    iput p2, p0, Lcom/sdgtl/mediahub/spr/common/cf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/cf;->a:Lcom/sdgtl/mediahub/spr/common/ce;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/common/cf;->b:I

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/ce;->a(I)V

    return-void
.end method
