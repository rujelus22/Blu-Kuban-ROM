.class public Lcom/google/android/apps/plus/views/PhotoActivityPreviewView;
.super Lcom/google/android/apps/plus/views/ActivityPreviewView;
.source "PhotoActivityPreviewView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/views/ActivityPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/ActivityPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/ActivityPreviewView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method private addPhotoPreviewLayout()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoActivityPreviewView;->getActivity()Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/network/ApiaryPhotoActivity;

    .line 66
    .local v2, photo:Lcom/google/android/apps/plus/network/ApiaryPhotoActivity;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoActivityPreviewView;->removeAllViews()V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoActivityPreviewView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030097

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 69
    .local v3, preview:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/views/PhotoActivityPreviewView;->addView(Landroid/view/View;)V

    .line 71
    const v4, 0x7f0d017a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/EsImageView;

    .line 73
    .local v1, imageView:Lcom/google/android/apps/plus/views/EsImageView;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/network/ApiaryPhotoActivity;->getImage()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, image:Ljava/lang/String;
    if-eqz v0, :cond_3e

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 76
    invoke-virtual {v1, v7}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    .line 77
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/EsImageView;->setUrl(Ljava/lang/String;)V

    .line 82
    :goto_3a
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 83
    return-void

    .line 79
    :cond_3e
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    goto :goto_3a
.end method


# virtual methods
.method public setActivity(Lcom/google/android/apps/plus/network/ApiaryActivity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/ActivityPreviewView;->setActivity(Lcom/google/android/apps/plus/network/ApiaryActivity;)V

    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoActivityPreviewView;->addPhotoPreviewLayout()V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoActivityPreviewView;->invalidate()V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoActivityPreviewView;->requestLayout()V

    .line 57
    return-void
.end method
