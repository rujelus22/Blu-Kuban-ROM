.class Lcom/sprint/w/installer/psi/PsiPackBrowser$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "PsiPackBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/psi/PsiPackBrowser;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "context"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$ImageAdapter;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 300
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 301
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020014

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$ImageAdapter;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 302
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$ImageAdapter;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iget-object v0, v0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFeaturedPacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 309
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 313
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 318
    if-nez p2, :cond_2c

    .line 319
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 324
    .local v0, image:Landroid/widget/ImageView;
    :goto_e
    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$ImageAdapter;->this$0:Lcom/sprint/w/installer/psi/PsiPackBrowser;

    iget-object v2, v2, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFeaturedPacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/w/installer/psi/ServicePack;

    .line 325
    .local v1, sp:Lcom/sprint/w/installer/psi/ServicePack;
    if-eqz v1, :cond_2b

    .line 326
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 327
    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/ServicePack;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser$ImageAdapter;->mDefaultIcon:Landroid/graphics/Bitmap;

    new-instance v4, Lcom/sprint/w/installer/util/ImageReflectionCreator;

    invoke-direct {v4, v0}, Lcom/sprint/w/installer/util/ImageReflectionCreator;-><init>(Landroid/widget/ImageView;)V

    invoke-static {v0, v2, v3, v4}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    .line 329
    :cond_2b
    return-object v0

    .end local v0           #image:Landroid/widget/ImageView;
    .end local v1           #sp:Lcom/sprint/w/installer/psi/ServicePack;
    :cond_2c
    move-object v0, p2

    .line 321
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0       #image:Landroid/widget/ImageView;
    goto :goto_e
.end method
