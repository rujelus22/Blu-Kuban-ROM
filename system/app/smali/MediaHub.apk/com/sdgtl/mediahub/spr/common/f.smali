.class final Lcom/sdgtl/mediahub/spr/common/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/a;->a:Lcom/sdgtl/mediahub/spr/common/ch;

    invoke-virtual {v0, p3}, Lcom/sdgtl/mediahub/spr/common/ch;->a(I)V

    return-void
.end method
