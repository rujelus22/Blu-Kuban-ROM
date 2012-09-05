.class Lcom/cooliris/media/HudLayer$ResolverAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HudLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/HudLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolverAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/cooliris/media/HudLayer;


# direct methods
.method public constructor <init>(Lcom/cooliris/media/HudLayer;Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 590
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$ResolverAdapter;->this$0:Lcom/cooliris/media/HudLayer;

    .line 591
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 592
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/cooliris/media/HudLayer$ResolverAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 593
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 600
    if-nez p2, :cond_e

    .line 601
    iget-object v5, p0, Lcom/cooliris/media/HudLayer$ResolverAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget-object v6, Lcom/cooliris/app/Res;->layout:Lcom/cooliris/media/R$layout;

    const v6, 0x7f030017

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 603
    :cond_e
    sget-object v5, Lcom/cooliris/app/Res;->id:Lcom/cooliris/media/R$id;

    const v5, 0x7f080032

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 604
    .local v3, text:Landroid/widget/TextView;
    sget-object v5, Lcom/cooliris/app/Res;->id:Lcom/cooliris/media/R$id;

    const v5, 0x7f080033

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 605
    .local v4, text2:Landroid/widget/TextView;
    sget-object v5, Lcom/cooliris/app/Res;->id:Lcom/cooliris/media/R$id;

    const v5, 0x7f080031

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 607
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/cooliris/media/HudLayer$ResolverAdapter;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/cooliris/media/HudLayer;->access$000(Lcom/cooliris/media/HudLayer;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 608
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0, p1}, Lcom/cooliris/media/HudLayer$ResolverAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 609
    .local v1, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 611
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 613
    return-object p2
.end method
