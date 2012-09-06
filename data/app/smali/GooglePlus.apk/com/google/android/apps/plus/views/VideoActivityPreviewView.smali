.class public Lcom/google/android/apps/plus/views/VideoActivityPreviewView;
.super Lcom/google/android/apps/plus/views/ActivityPreviewView;
.source "VideoActivityPreviewView.java"


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

.method private addVideoPreviewLayout()V
    .registers 12

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/VideoActivityPreviewView;->getActivity()Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;

    .line 67
    .local v5, video:Lcom/google/android/apps/plus/network/ApiaryVideoActivity;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/VideoActivityPreviewView;->removeAllViews()V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/VideoActivityPreviewView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0300cc

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, preview:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/VideoActivityPreviewView;->addView(Landroid/view/View;)V

    .line 72
    const v6, 0x7f090250

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 73
    .local v4, titleView:Landroid/widget/TextView;
    const v6, 0x7f090251

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/EsImageView;

    .line 75
    .local v1, imageView:Lcom/google/android/apps/plus/views/EsImageView;
    invoke-virtual {v5}, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, title:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/google/android/apps/plus/network/ApiaryVideoActivity;->getImage()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, image:Ljava/lang/String;
    if-eqz v3, :cond_5d

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 79
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_49
    if-eqz v0, :cond_61

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_61

    .line 86
    invoke-virtual {v1, v9}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    .line 87
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/EsImageView;->setUrl(Ljava/lang/String;)V

    .line 92
    :goto_59
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 93
    return-void

    .line 82
    :cond_5d
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_49

    .line 89
    :cond_61
    invoke-virtual {v1, v10}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    goto :goto_59
.end method


# virtual methods
.method public setActivity(Lcom/google/android/apps/plus/network/ApiaryActivity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/ActivityPreviewView;->setActivity(Lcom/google/android/apps/plus/network/ApiaryActivity;)V

    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/VideoActivityPreviewView;->addVideoPreviewLayout()V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/VideoActivityPreviewView;->invalidate()V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/VideoActivityPreviewView;->requestLayout()V

    .line 58
    return-void
.end method
