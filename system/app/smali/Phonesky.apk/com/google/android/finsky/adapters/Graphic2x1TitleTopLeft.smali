.class public Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;
.super Ljava/lang/Object;
.source "Graphic2x1TitleTopLeft.java"

# interfaces
.implements Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;
    }
.end annotation


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContainerDoc:Lcom/google/android/finsky/api/model/Document;

.field private final mCurrentPageUrl:Ljava/lang/String;

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V
    .registers 5
    .parameter "navigationManager"
    .parameter "bitmapLoader"
    .parameter "doc"
    .parameter "currentPageUrl"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 48
    iput-object p2, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 49
    iput-object p3, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mContainerDoc:Lcom/google/android/finsky/api/model/Document;

    .line 50
    iput-object p4, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mCurrentPageUrl:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/ViewGroup;Z)V
    .registers 11
    .parameter "group"
    .parameter "showCorpusStrip"

    .prologue
    const/4 v7, 0x0

    .line 70
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2e

    .line 71
    new-instance v2, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;

    invoke-direct {v2, v7}, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;-><init>(Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$1;)V

    .line 72
    .local v2, holder:Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;
    const v4, 0x7f080120

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v2, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 73
    const v4, 0x7f080017

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;->title:Landroid/widget/TextView;

    .line 74
    const v4, 0x7f080011

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;->accessibilityOverlay:Landroid/view/View;

    .line 75
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 78
    .end local v2           #holder:Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;
    :cond_2e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;

    .line 80
    .restart local v2       #holder:Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;
    iget-object v4, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mContainerDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v5, v2, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getPromoBitmapUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, imageUrl:Ljava/lang/String;
    if-eqz v3, :cond_62

    .line 83
    new-instance v1, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$1;

    invoke-direct {v1, p0, v2}, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$1;-><init>(Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;)V

    .line 94
    .local v1, handler:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;
    iget-object v4, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v4, v3, v7, v1}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v0

    .line 95
    .local v0, container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_62

    .line 96
    iget-object v4, v2, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;->imageView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    .end local v0           #container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .end local v1           #handler:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;
    :cond_62
    iget-object v4, v2, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mContainerDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v4, v2, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;->accessibilityOverlay:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mContainerDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v4, v2, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft$ViewHolder;->accessibilityOverlay:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v6, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mContainerDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v7, p0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;->mCurrentPageUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method public getCellHeight()I
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public getCellWidth()I
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x2

    return v0
.end method

.method public getGridItemType()Lcom/google/android/finsky/adapters/UnevenGridItemType;
    .registers 2

    .prologue
    .line 107
    sget-object v0, Lcom/google/android/finsky/adapters/UnevenGridItemType;->GRAPHIC_2x1_TITLE_TOP_LEFT:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    return-object v0
.end method

.method public getLayoutId()I
    .registers 2

    .prologue
    .line 65
    const v0, 0x7f04009e

    return v0
.end method
