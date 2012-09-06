.class public Lcom/google/android/apps/plus/views/ArticleActivityPreviewView;
.super Lcom/google/android/apps/plus/views/ActivityPreviewView;
.source "ArticleActivityPreviewView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/views/ActivityPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/ActivityPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/ActivityPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method private addArticlePreviewLayout()V
    .registers 16

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ArticleActivityPreviewView;->getActivity()Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;

    .line 67
    .local v0, article:Lcom/google/android/apps/plus/network/ApiaryArticleActivity;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ArticleActivityPreviewView;->removeAllViews()V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ArticleActivityPreviewView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f0300c8

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 70
    .local v7, preview:Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/views/ArticleActivityPreviewView;->addView(Landroid/view/View;)V

    .line 72
    const v10, 0x7f090246

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/EsImageView;

    .line 73
    .local v4, iconView:Lcom/google/android/apps/plus/views/EsImageView;
    const v10, 0x7f090247

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 74
    .local v9, titleView:Landroid/widget/TextView;
    const v10, 0x7f090249

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 75
    .local v2, contentView:Landroid/widget/TextView;
    const v10, 0x7f090248

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/views/EsImageView;

    .line 77
    .local v6, imageView:Lcom/google/android/apps/plus/views/EsImageView;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, title:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, content:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->getFavIconUrl()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, icon:Ljava/lang/String;
    const/4 v5, 0x0

    .line 82
    .local v5, image:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->getImages()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_64

    .line 83
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->getImages()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #image:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 86
    .restart local v5       #image:Ljava/lang/String;
    :cond_64
    if-eqz v8, :cond_a8

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a8

    .line 87
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_74
    if-eqz v1, :cond_ac

    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ac

    .line 94
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_84
    if-eqz v3, :cond_b0

    const-string v10, ""

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b0

    .line 101
    invoke-virtual {v4, v13}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    .line 102
    invoke-virtual {v4, v3}, Lcom/google/android/apps/plus/views/EsImageView;->setUrl(Ljava/lang/String;)V

    .line 107
    :goto_94
    if-eqz v5, :cond_b4

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b4

    .line 108
    invoke-virtual {v6, v13}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    .line 109
    invoke-virtual {v6, v5}, Lcom/google/android/apps/plus/views/EsImageView;->setUrl(Ljava/lang/String;)V

    .line 114
    :goto_a4
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 115
    return-void

    .line 90
    :cond_a8
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_74

    .line 97
    :cond_ac
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_84

    .line 104
    :cond_b0
    invoke-virtual {v4, v14}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    goto :goto_94

    .line 111
    :cond_b4
    invoke-virtual {v6, v14}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    goto :goto_a4
.end method


# virtual methods
.method public setActivity(Lcom/google/android/apps/plus/network/ApiaryActivity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/ActivityPreviewView;->setActivity(Lcom/google/android/apps/plus/network/ApiaryActivity;)V

    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ArticleActivityPreviewView;->addArticlePreviewLayout()V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ArticleActivityPreviewView;->invalidate()V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ArticleActivityPreviewView;->requestLayout()V

    .line 58
    return-void
.end method
