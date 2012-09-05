.class public Lcom/google/android/apps/plus/views/ArticleActivityPreviewView;
.super Lcom/google/android/apps/plus/views/ActivityPreviewView;
.source "ArticleActivityPreviewView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/views/ActivityPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/ActivityPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/ActivityPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method private addArticlePreviewLayout()V
    .registers 16

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ArticleActivityPreviewView;->getActivity()Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;

    .line 68
    .local v0, article:Lcom/google/android/apps/plus/network/ApiaryArticleActivity;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ArticleActivityPreviewView;->removeAllViews()V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ArticleActivityPreviewView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f030095

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 71
    .local v7, preview:Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/views/ArticleActivityPreviewView;->addView(Landroid/view/View;)V

    .line 73
    const v12, 0x7f0d0175

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/EsImageView;

    .line 74
    .local v4, iconView:Lcom/google/android/apps/plus/views/EsImageView;
    const v12, 0x7f0d0176

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 75
    .local v9, titleView:Landroid/widget/TextView;
    const v12, 0x7f0d0178

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 76
    .local v2, contentView:Landroid/widget/TextView;
    const v12, 0x7f0d0177

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/views/EsImageView;

    .line 78
    .local v6, imageView:Lcom/google/android/apps/plus/views/EsImageView;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, title:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, content:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->getUrl()Ljava/lang/String;

    move-result-object v11

    .line 83
    .local v11, url:Ljava/lang/String;
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 84
    .local v10, uri:Landroid/net/Uri;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "https://s2.googleusercontent.com/s2/favicons?domain="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, icon:Ljava/lang/String;
    const/4 v5, 0x0

    .line 87
    .local v5, image:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->getImages()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7d

    .line 88
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/ApiaryArticleActivity;->getImages()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #image:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 91
    .restart local v5       #image:Ljava/lang/String;
    :cond_7d
    if-eqz v8, :cond_c6

    const-string v12, ""

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c6

    .line 92
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_8e
    if-eqz v1, :cond_cc

    const-string v12, ""

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_cc

    .line 99
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :goto_9f
    if-eqz v3, :cond_d2

    const-string v12, ""

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d2

    .line 106
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    .line 107
    invoke-virtual {v4, v3}, Lcom/google/android/apps/plus/views/EsImageView;->setUrl(Ljava/lang/String;)V

    .line 112
    :goto_b0
    if-eqz v5, :cond_d8

    const-string v12, ""

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d8

    .line 113
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    .line 114
    invoke-virtual {v6, v5}, Lcom/google/android/apps/plus/views/EsImageView;->setUrl(Ljava/lang/String;)V

    .line 119
    :goto_c1
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 120
    return-void

    .line 95
    :cond_c6
    const/16 v12, 0x8

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8e

    .line 102
    :cond_cc
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9f

    .line 109
    :cond_d2
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    goto :goto_b0

    .line 116
    :cond_d8
    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    goto :goto_c1
.end method


# virtual methods
.method public setActivity(Lcom/google/android/apps/plus/network/ApiaryActivity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/ActivityPreviewView;->setActivity(Lcom/google/android/apps/plus/network/ApiaryActivity;)V

    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ArticleActivityPreviewView;->addArticlePreviewLayout()V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ArticleActivityPreviewView;->invalidate()V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ArticleActivityPreviewView;->requestLayout()V

    .line 59
    return-void
.end method
