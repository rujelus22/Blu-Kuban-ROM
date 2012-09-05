.class public Lcom/google/android/apps/plus/views/VideoActivityPreviewView;
.super Lcom/google/android/apps/plus/views/ActivityPreviewView;
.source "VideoActivityPreviewView.java"


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

.method private addVideoPreviewLayout()V
    .registers 16

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/VideoActivityPreviewView;->getActivity()Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;

    .line 68
    .local v9, video:Lcom/google/android/apps/plus/network/ApiaryVideoActivity;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/VideoActivityPreviewView;->removeAllViews()V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/VideoActivityPreviewView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030099

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 71
    .local v4, preview:Landroid/view/View;
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/VideoActivityPreviewView;->addView(Landroid/view/View;)V

    .line 73
    const v10, 0x7f0d017f

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/EsImageView;

    .line 74
    .local v1, iconView:Lcom/google/android/apps/plus/views/EsImageView;
    const v10, 0x7f0d0180

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 75
    .local v6, titleView:Landroid/widget/TextView;
    const v10, 0x7f0d0181

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/views/EsImageView;

    .line 77
    .local v3, imageView:Lcom/google/android/apps/plus/views/EsImageView;
    invoke-virtual {v9}, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, title:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, url:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 81
    .local v7, uri:Landroid/net/Uri;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "https://s2.googleusercontent.com/s2/favicons?domain="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, icon:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;->getImage()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, image:Ljava/lang/String;
    if-eqz v5, :cond_95

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_95

    .line 86
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_71
    if-eqz v0, :cond_99

    const-string v10, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_99

    .line 93
    invoke-virtual {v1, v13}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    .line 94
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/EsImageView;->setUrl(Ljava/lang/String;)V

    .line 99
    :goto_81
    if-eqz v2, :cond_9d

    const-string v10, ""

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9d

    .line 100
    invoke-virtual {v3, v13}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    .line 101
    invoke-virtual {v3, v2}, Lcom/google/android/apps/plus/views/EsImageView;->setUrl(Ljava/lang/String;)V

    .line 106
    :goto_91
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-void

    .line 89
    :cond_95
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_71

    .line 96
    :cond_99
    invoke-virtual {v1, v14}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    goto :goto_81

    .line 103
    :cond_9d
    invoke-virtual {v3, v14}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    goto :goto_91
.end method


# virtual methods
.method public setActivity(Lcom/google/android/apps/plus/network/ApiaryActivity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/ActivityPreviewView;->setActivity(Lcom/google/android/apps/plus/network/ApiaryActivity;)V

    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/VideoActivityPreviewView;->addVideoPreviewLayout()V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/VideoActivityPreviewView;->invalidate()V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/VideoActivityPreviewView;->requestLayout()V

    .line 59
    return-void
.end method
