.class Lcom/sprint/w/installer/delivery/CatalogViewer$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CatalogViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/delivery/CatalogViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/CatalogViewer;)V
    .registers 2
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$ListAdapter;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$ListAdapter;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogViewer;->catalog:Lcom/sprint/w/installer/delivery/Catalog;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->access$100(Lcom/sprint/w/installer/delivery/CatalogViewer;)Lcom/sprint/w/installer/delivery/Catalog;

    move-result-object v0

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/Catalog;->cards:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$ListAdapter;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogViewer;->catalog:Lcom/sprint/w/installer/delivery/Catalog;
    invoke-static {v0}, Lcom/sprint/w/installer/delivery/CatalogViewer;->access$100(Lcom/sprint/w/installer/delivery/CatalogViewer;)Lcom/sprint/w/installer/delivery/Catalog;

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
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "id"

    .prologue
    .line 130
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 135
    move-object v2, p2

    check-cast v2, Lcom/sprint/w/installer/delivery/CatalogViewer$ItemView;

    .line 136
    .local v2, v:Lcom/sprint/w/installer/delivery/CatalogViewer$ItemView;
    if-nez v2, :cond_e

    .line 137
    new-instance v2, Lcom/sprint/w/installer/delivery/CatalogViewer$ItemView;

    .end local v2           #v:Lcom/sprint/w/installer/delivery/CatalogViewer$ItemView;
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$ListAdapter;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    iget-object v4, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$ListAdapter;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    invoke-direct {v2, v3, v4}, Lcom/sprint/w/installer/delivery/CatalogViewer$ItemView;-><init>(Lcom/sprint/w/installer/delivery/CatalogViewer;Landroid/content/Context;)V

    .line 139
    .restart local v2       #v:Lcom/sprint/w/installer/delivery/CatalogViewer$ItemView;
    :cond_e
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$ListAdapter;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogViewer;->catalog:Lcom/sprint/w/installer/delivery/Catalog;
    invoke-static {v3}, Lcom/sprint/w/installer/delivery/CatalogViewer;->access$100(Lcom/sprint/w/installer/delivery/CatalogViewer;)Lcom/sprint/w/installer/delivery/Catalog;

    move-result-object v3

    iget-object v3, v3, Lcom/sprint/w/installer/delivery/Catalog;->cards:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/delivery/CatalogCard;

    .line 140
    .local v0, cc:Lcom/sprint/w/installer/delivery/CatalogCard;
    iget-object v3, v2, Lcom/sprint/w/installer/delivery/CatalogViewer$ItemView;->mTitle:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/sprint/w/installer/delivery/CatalogCard;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const-string v1, ""

    .line 142
    .local v1, secondTitle:Ljava/lang/String;
    iget-object v3, v0, Lcom/sprint/w/installer/delivery/CatalogCard;->id:Ljava/lang/String;

    if-eqz v3, :cond_4f

    iget-object v3, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$ListAdapter;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogViewer;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;
    invoke-static {v3}, Lcom/sprint/w/installer/delivery/CatalogViewer;->access$700(Lcom/sprint/w/installer/delivery/CatalogViewer;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v3

    if-eqz v3, :cond_4f

    iget-object v3, v0, Lcom/sprint/w/installer/delivery/CatalogCard;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$ListAdapter;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogViewer;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;
    invoke-static {v4}, Lcom/sprint/w/installer/delivery/CatalogViewer;->access$700(Lcom/sprint/w/installer/delivery/CatalogViewer;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 143
    iget v3, v0, Lcom/sprint/w/installer/delivery/CatalogCard;->versionCode:I

    iget-object v4, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$ListAdapter;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogViewer;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;
    invoke-static {v4}, Lcom/sprint/w/installer/delivery/CatalogViewer;->access$700(Lcom/sprint/w/installer/delivery/CatalogViewer;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v4

    iget v4, v4, Lcom/sprint/w/installer/PackInfo;->versionCode:I

    if-gt v3, v4, :cond_62

    .line 144
    const-string v1, "Currently installed"

    .line 149
    :cond_4f
    :goto_4f
    iget-object v3, v2, Lcom/sprint/w/installer/delivery/CatalogViewer$ItemView;->mSecondTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v3, v2, Lcom/sprint/w/installer/delivery/CatalogViewer$ItemView;->mIcon:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/sprint/w/installer/delivery/CatalogCard;->iconUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/sprint/w/installer/delivery/CatalogViewer$ListAdapter;->this$0:Lcom/sprint/w/installer/delivery/CatalogViewer;

    #getter for: Lcom/sprint/w/installer/delivery/CatalogViewer;->mDefaultIcon:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/sprint/w/installer/delivery/CatalogViewer;->access$800(Lcom/sprint/w/installer/delivery/CatalogViewer;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 152
    return-object v2

    .line 146
    :cond_62
    const-string v1, "Update available"

    goto :goto_4f
.end method
