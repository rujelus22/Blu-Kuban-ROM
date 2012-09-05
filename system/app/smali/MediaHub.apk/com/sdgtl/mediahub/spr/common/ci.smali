.class final Lcom/sdgtl/mediahub/spr/common/ci;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/ch;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/ch;I)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/ci;->a:Lcom/sdgtl/mediahub/spr/common/ch;

    iput p2, p0, Lcom/sdgtl/mediahub/spr/common/ci;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ci;->a:Lcom/sdgtl/mediahub/spr/common/ch;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/common/ci;->b:I

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/ch;->a(I)V

    return-void
.end method
