.class final Lcom/sdgtl/mediahub/spr/customview/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/q;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/q;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->clickMyPaymentMethods(I)V

    return-void
.end method
