.class public Lcom/vlingo/client/settings/ImagePreference;
.super Landroid/preference/Preference;
.source "ImagePreference.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private imageView:Landroid/widget/ImageView;

.field private visibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/settings/ImagePreference;->visibility:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/settings/ImagePreference;->bitmap:Landroid/graphics/Bitmap;

    .line 27
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/vlingo/client/settings/ImagePreference;->setWidgetLayoutResource(I)V

    .line 28
    return-void
.end method

.method private updateUI()V
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vlingo/client/settings/ImagePreference;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    .line 44
    iget-object v0, p0, Lcom/vlingo/client/settings/ImagePreference;->imageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/vlingo/client/settings/ImagePreference;->visibility:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/vlingo/client/settings/ImagePreference;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vlingo/client/settings/ImagePreference;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 47
    :cond_12
    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vlingo/client/settings/ImagePreference;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .parameter "parent"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0f00e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vlingo/client/settings/ImagePreference;->imageView:Landroid/widget/ImageView;

    .line 33
    invoke-direct {p0}, Lcom/vlingo/client/settings/ImagePreference;->updateUI()V

    .line 34
    return-object v0
.end method

.method public setImageViewBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "bitmap"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vlingo/client/settings/ImagePreference;->bitmap:Landroid/graphics/Bitmap;

    .line 56
    invoke-direct {p0}, Lcom/vlingo/client/settings/ImagePreference;->updateUI()V

    .line 57
    return-void
.end method

.method public setImageViewVisibility(I)V
    .registers 2
    .parameter "vis"

    .prologue
    .line 50
    iput p1, p0, Lcom/vlingo/client/settings/ImagePreference;->visibility:I

    .line 51
    invoke-direct {p0}, Lcom/vlingo/client/settings/ImagePreference;->updateUI()V

    .line 52
    return-void
.end method
