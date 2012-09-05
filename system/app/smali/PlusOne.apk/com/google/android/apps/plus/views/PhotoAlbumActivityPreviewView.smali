.class public Lcom/google/android/apps/plus/views/PhotoAlbumActivityPreviewView;
.super Lcom/google/android/apps/plus/views/ActivityPreviewView;
.source "PhotoAlbumActivityPreviewView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/views/ActivityPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/ActivityPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/ActivityPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method private addPhotoAlbumPreviewLayout()V
    .registers 16

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoAlbumActivityPreviewView;->getActivity()Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;

    .line 70
    .local v8, photo:Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoAlbumActivityPreviewView;->removeAllViews()V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoAlbumActivityPreviewView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f030098

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 73
    .local v9, preview:Landroid/view/View;
    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/views/PhotoAlbumActivityPreviewView;->addView(Landroid/view/View;)V

    .line 75
    const v12, 0x7f0d017b

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 76
    .local v11, titleView:Landroid/widget/TextView;
    const/4 v12, 0x3

    new-array v4, v12, [Lcom/google/android/apps/plus/views/EsImageView;

    const/4 v13, 0x0

    const v12, 0x7f0d017c

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/plus/views/EsImageView;

    aput-object v12, v4, v13

    const/4 v13, 0x1

    const v12, 0x7f0d017d

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/plus/views/EsImageView;

    aput-object v12, v4, v13

    const/4 v13, 0x2

    const v12, 0x7f0d017e

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/plus/views/EsImageView;

    aput-object v12, v4, v13

    .line 82
    .local v4, imageViews:[Lcom/google/android/apps/plus/views/EsImageView;
    invoke-virtual {v8}, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->getImages()Ljava/util/List;

    move-result-object v5

    .line 83
    .local v5, images:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v8}, Lcom/google/android/apps/plus/network/ApiaryPhotoAlbumActivity;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    .line 85
    .local v10, title:Ljava/lang/String;
    if-eqz v10, :cond_7e

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7e

    .line 86
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_65
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 94
    .local v6, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    move-object v0, v4

    .local v0, arr$:[Lcom/google/android/apps/plus/views/EsImageView;
    array-length v7, v0

    .local v7, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6c
    if-ge v1, v7, :cond_9a

    aget-object v3, v0, v1

    .line 95
    .local v3, imageView:Lcom/google/android/apps/plus/views/EsImageView;
    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    .line 96
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_84

    .line 94
    :cond_7b
    :goto_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 89
    .end local v0           #arr$:[Lcom/google/android/apps/plus/views/EsImageView;
    .end local v1           #i$:I
    .end local v3           #imageView:Lcom/google/android/apps/plus/views/EsImageView;
    .end local v6           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7           #len$:I
    :cond_7e
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_65

    .line 99
    .restart local v0       #arr$:[Lcom/google/android/apps/plus/views/EsImageView;
    .restart local v1       #i$:I
    .restart local v3       #imageView:Lcom/google/android/apps/plus/views/EsImageView;
    .restart local v6       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7       #len$:I
    :cond_84
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    .local v2, image:Ljava/lang/String;
    const-string v12, ""

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7b

    .line 101
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    .line 102
    invoke-virtual {v3, v2}, Lcom/google/android/apps/plus/views/EsImageView;->setUrl(Ljava/lang/String;)V

    goto :goto_7b

    .line 106
    .end local v2           #image:Ljava/lang/String;
    .end local v3           #imageView:Lcom/google/android/apps/plus/views/EsImageView;
    :cond_9a
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-void
.end method


# virtual methods
.method public setActivity(Lcom/google/android/apps/plus/network/ApiaryActivity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/ActivityPreviewView;->setActivity(Lcom/google/android/apps/plus/network/ApiaryActivity;)V

    .line 58
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoAlbumActivityPreviewView;->addPhotoAlbumPreviewLayout()V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoAlbumActivityPreviewView;->invalidate()V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoAlbumActivityPreviewView;->requestLayout()V

    .line 61
    return-void
.end method
