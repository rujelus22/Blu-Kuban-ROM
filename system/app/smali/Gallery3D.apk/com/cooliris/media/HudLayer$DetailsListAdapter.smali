.class Lcom/cooliris/media/HudLayer$DetailsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HudLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/HudLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailsListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/cooliris/media/DetailMode$DetailsItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/HudLayer;


# direct methods
.method public constructor <init>(Lcom/cooliris/media/HudLayer;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/DetailMode$DetailsItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2657
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/DetailMode$DetailsItem;>;"
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$DetailsListAdapter;->this$0:Lcom/cooliris/media/HudLayer;

    .line 2658
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2659
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 2663
    move-object v3, p2

    .line 2664
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/cooliris/media/HudLayer$DetailsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/DetailMode$DetailsItem;

    .line 2665
    .local v1, ti:Lcom/cooliris/media/DetailMode$DetailsItem;
    if-nez v3, :cond_2b

    .line 2666
    iget-object v5, p0, Lcom/cooliris/media/HudLayer$DetailsListAdapter;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 2668
    .local v4, vi:Landroid/view/LayoutInflater;
    invoke-virtual {v1}, Lcom/cooliris/media/DetailMode$DetailsItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_54

    invoke-virtual {v1}, Lcom/cooliris/media/DetailMode$DetailsItem;->getSummary()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_54

    .line 2669
    const v5, 0x7f030005

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2677
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_2b
    :goto_2b
    if-eqz v1, :cond_53

    if-eqz v3, :cond_53

    .line 2678
    const v5, 0x7f080012

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2679
    .local v2, title:Landroid/widget/TextView;
    const v5, 0x7f080013

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2681
    .local v0, summary:Landroid/widget/TextView;
    if-eqz v2, :cond_4a

    .line 2682
    invoke-virtual {v1}, Lcom/cooliris/media/DetailMode$DetailsItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2684
    :cond_4a
    if-eqz v0, :cond_53

    .line 2685
    invoke-virtual {v1}, Lcom/cooliris/media/DetailMode$DetailsItem;->getSummary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2689
    .end local v0           #summary:Landroid/widget/TextView;
    .end local v2           #title:Landroid/widget/TextView;
    :cond_53
    return-object v3

    .line 2670
    .restart local v4       #vi:Landroid/view/LayoutInflater;
    :cond_54
    invoke-virtual {v1}, Lcom/cooliris/media/DetailMode$DetailsItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_62

    .line 2671
    const v5, 0x7f030006

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_2b

    .line 2673
    :cond_62
    invoke-static {}, Lcom/cooliris/media/HudLayer;->access$1900()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Detail item is null "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method
