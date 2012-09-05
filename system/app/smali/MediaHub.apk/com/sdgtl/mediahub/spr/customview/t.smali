.class final Lcom/sdgtl/mediahub/spr/customview/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

.field private final synthetic b:Lcom/sdgtl/mediahub/spr/ar;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;Lcom/sdgtl/mediahub/spr/ar;)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/t;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/customview/t;->b:Lcom/sdgtl/mediahub/spr/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/t;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    check-cast p1, Landroid/widget/TextView;

    #calls: Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->setSelectedTabItem(Landroid/widget/TextView;)V
    invoke-static {v0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$2(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;Landroid/widget/TextView;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/t;->b:Lcom/sdgtl/mediahub/spr/ar;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->k:Lcom/sdgtl/mediahub/spr/ar;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/t;->b:Lcom/sdgtl/mediahub/spr/ar;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->n:Lcom/sdgtl/mediahub/spr/ar;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/t;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    check-cast p1, Landroid/widget/TextView;

    #calls: Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->setUnFocusedTabItem(Landroid/widget/TextView;)V
    invoke-static {v0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$3(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;Landroid/widget/TextView;)V

    goto :goto_9
.end method
