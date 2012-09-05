.class Lcom/sprint/w/installer/PackSwitcherLoader$2;
.super Ljava/lang/Object;
.source "PackSwitcherLoader.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackSwitcherLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackSwitcherLoader;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackSwitcherLoader;)V
    .registers 2
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$2;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

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
    .line 738
    .local p1, av:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$2;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mPackList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$400(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/PackInfo;

    .line 739
    .local v0, pack:Lcom/sprint/w/installer/PackInfo;
    if-eqz v0, :cond_23

    .line 740
    iget-object v1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$2;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mPackTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$900(Lcom/sprint/w/installer/PackSwitcherLoader;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/sprint/w/installer/PackInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v1, p0, Lcom/sprint/w/installer/PackSwitcherLoader$2;->this$0:Lcom/sprint/w/installer/PackSwitcherLoader;

    #getter for: Lcom/sprint/w/installer/PackSwitcherLoader;->mPackTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->access$900(Lcom/sprint/w/installer/PackSwitcherLoader;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 743
    :cond_23
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
    .line 747
    .local p1, av:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
