.class final Lcom/sdgtl/mediahub/spr/customview/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/customview/HefeGallery;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/k;->a:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/k;->a:Lcom/sdgtl/mediahub/spr/customview/HefeGallery;

    invoke-virtual {v0, p3, p2}, Lcom/sdgtl/mediahub/spr/customview/HefeGallery;->updateItemSelected(ILandroid/view/View;)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    return-void
.end method
