.class final Lcom/sdgtl/mediahub/spr/customview/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/y;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/y;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$8(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    :cond_19
    return v2
.end method
