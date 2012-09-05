.class final Lcom/sdgtl/mediahub/spr/customview/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/x;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/x;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSpSearchBy:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$9(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/x;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$8(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)Landroid/widget/SearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/x;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->SEARCH_VIEW_MAX_WIDTH:I
    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$10(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setMinimumWidth(I)V

    return-void
.end method
