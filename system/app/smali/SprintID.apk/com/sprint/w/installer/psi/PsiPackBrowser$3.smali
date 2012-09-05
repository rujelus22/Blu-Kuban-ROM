.class Lcom/sprint/w/installer/psi/PsiPackBrowser$3;
.super Ljava/lang/Object;
.source "PsiPackBrowser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/psi/PsiPackBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$3;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, av:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$3;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iget-object v1, v1, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFeaturedPacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/psi/ServicePack;

    .line 282
    .local v0, pack:Lcom/sprint/w/installer/psi/ServicePack;
    if-eqz v0, :cond_1f

    .line 283
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$3;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iget-object v1, v1, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFeaturedTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$3;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iget-object v1, v1, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFeaturedTitle:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 286
    :cond_1f
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, av:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
