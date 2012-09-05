.class Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/delivery/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CatalogListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/SearchActivity;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$1900(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/delivery/Catalog;

    move-result-object v0

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/Catalog;->cards:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$1900(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/delivery/Catalog;

    move-result-object v0

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/Catalog;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_b
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 1021
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "id"

    .prologue
    .line 1026
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1031
    if-nez p2, :cond_10

    .line 1032
    iget-object v7, p0, Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030013

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1035
    :cond_10
    const v7, 0x7f0c0030

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1036
    .local v1, mIcon:Landroid/widget/ImageView;
    const v7, 0x7f0c000b

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1037
    .local v4, mTitle:Landroid/widget/TextView;
    const v7, 0x7f0c0034

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1038
    .local v3, mSecondTitle:Landroid/widget/TextView;
    const v7, 0x7f0c0035

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1040
    .local v2, mNote:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mCatalog:Lcom/sprint/w/installer/delivery/Catalog;
    invoke-static {v7}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$1900(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/delivery/Catalog;

    move-result-object v7

    iget-object v7, v7, Lcom/sprint/w/installer/delivery/Catalog;->cards:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/delivery/CatalogCard;

    .line 1041
    .local v0, cc:Lcom/sprint/w/installer/delivery/CatalogCard;
    iget-object v7, v0, Lcom/sprint/w/installer/delivery/CatalogCard;->title:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1042
    iget-object v7, v0, Lcom/sprint/w/installer/delivery/CatalogCard;->version:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    const-string v6, ""

    .line 1045
    .local v6, note:Ljava/lang/String;
    iget-object v7, v0, Lcom/sprint/w/installer/delivery/CatalogCard;->id:Ljava/lang/String;

    if-eqz v7, :cond_7e

    .line 1046
    const/4 v5, 0x0

    .line 1047
    .local v5, matchedPack:Lcom/sprint/w/installer/PackInfo;
    iget-object v7, p0, Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;
    invoke-static {v7}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$2000(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v7

    if-eqz v7, :cond_97

    iget-object v7, v0, Lcom/sprint/w/installer/delivery/CatalogCard;->id:Ljava/lang/String;

    iget-object v8, p0, Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;
    invoke-static {v8}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$2000(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_97

    .line 1048
    iget-object v7, p0, Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;
    invoke-static {v7}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$2000(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v5

    .line 1052
    :goto_71
    if-eqz v5, :cond_7e

    .line 1053
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f06001a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1067
    .end local v5           #matchedPack:Lcom/sprint/w/installer/PackInfo;
    :cond_7e
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1069
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a4

    .line 1070
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1075
    :goto_8b
    iget-object v7, v0, Lcom/sprint/w/installer/delivery/CatalogCard;->iconUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mDefaultIcon:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$1500(Lcom/sprint/w/installer/delivery/SearchActivity;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v1, v7, v8}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1077
    return-object p2

    .line 1050
    .restart local v5       #matchedPack:Lcom/sprint/w/installer/PackInfo;
    :cond_97
    iget-object v7, p0, Lcom/sprint/w/installer/delivery/SearchActivity$CatalogListAdapter;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    iget-object v7, v7, Lcom/sprint/w/installer/delivery/SearchActivity;->mInstalledPacks:Ljava/util/Map;

    iget-object v8, v0, Lcom/sprint/w/installer/delivery/CatalogCard;->id:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #matchedPack:Lcom/sprint/w/installer/PackInfo;
    check-cast v5, Lcom/sprint/w/installer/PackInfo;

    .restart local v5       #matchedPack:Lcom/sprint/w/installer/PackInfo;
    goto :goto_71

    .line 1072
    .end local v5           #matchedPack:Lcom/sprint/w/installer/PackInfo;
    :cond_a4
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8b
.end method
