.class final Lcom/sdgtl/mediahub/spr/customview/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/w;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/w;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$8(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/w;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSpSearchBy:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$9(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)Landroid/widget/Spinner;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/w;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$8(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setMinimumWidth(I)V

    :goto_25
    return v0

    :cond_26
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/w;->a:Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->access$8(Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;)Landroid/widget/SearchView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    const/4 v0, 0x1

    goto :goto_25
.end method
