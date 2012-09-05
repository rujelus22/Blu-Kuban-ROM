.class Lcom/sprint/w/installer/psi/PsiPackDetails$10;
.super Ljava/lang/Object;
.source "PsiPackDetails.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/psi/PsiPackDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 817
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$10;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "v"
    .parameter "pos"
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
    .line 820
    .local p1, av:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$10;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v2, v2, Lcom/sprint/w/installer/psi/PsiPackDetails;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;

    .line 821
    .local v1, item:Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;
    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_20

    .line 830
    .end local v1           #item:Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;
    :goto_11
    return-void

    .restart local v1       #item:Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;
    :pswitch_12
    move-object v0, v1

    .line 823
    check-cast v0, Lcom/sprint/w/installer/psi/PsiPackDetails$ClickableTwoLiner;

    .line 824
    .local v0, ctl:Lcom/sprint/w/installer/psi/PsiPackDetails$ClickableTwoLiner;
    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/PsiPackDetails$ClickableTwoLiner;->clicked()V

    goto :goto_11

    .line 827
    .end local v0           #ctl:Lcom/sprint/w/installer/psi/PsiPackDetails$ClickableTwoLiner;
    :pswitch_19
    check-cast v1, Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoItem;

    .end local v1           #item:Lcom/sprint/w/installer/psi/PsiPackDetails$ListItem;
    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/PsiPackDetails$PlayVideoItem;->play()V

    goto :goto_11

    .line 821
    nop

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_12
        :pswitch_19
    .end packed-switch
.end method
