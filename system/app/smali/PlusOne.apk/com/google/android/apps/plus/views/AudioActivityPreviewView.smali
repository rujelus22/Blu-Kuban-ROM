.class public Lcom/google/android/apps/plus/views/AudioActivityPreviewView;
.super Lcom/google/android/apps/plus/views/ActivityPreviewView;
.source "AudioActivityPreviewView.java"


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

.method private addAudioPreviewLayout()V
    .registers 16

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudioActivityPreviewView;->getActivity()Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;

    .line 67
    .local v5, music:Lcom/google/android/apps/plus/network/ApiaryAudioActivity;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudioActivityPreviewView;->removeAllViews()V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudioActivityPreviewView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030096

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 70
    .local v6, preview:Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/views/AudioActivityPreviewView;->addView(Landroid/view/View;)V

    .line 72
    const v10, 0x7f0d016f

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/views/EsImageView;

    .line 73
    .local v4, imageView:Lcom/google/android/apps/plus/views/EsImageView;
    const v10, 0x7f0d0170

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 74
    .local v2, headerView:Landroid/widget/TextView;
    const v10, 0x7f0d0171

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 75
    .local v7, subheader1View:Landroid/widget/TextView;
    const v10, 0x7f0d0172

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 77
    .local v8, subheader2View:Landroid/widget/TextView;
    invoke-virtual {v5}, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, artist:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;->getTrackName()Ljava/lang/String;

    move-result-object v9

    .line 79
    .local v9, track:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, album:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/google/android/apps/plus/network/ApiaryAudioActivity;->getImage()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, image:Ljava/lang/String;
    if-eqz v9, :cond_c6

    .line 83
    if-eqz v9, :cond_b4

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b4

    .line 84
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :goto_63
    if-eqz v1, :cond_ba

    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ba

    .line 91
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_78
    if-eqz v0, :cond_c0

    const-string v10, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c0

    .line 98
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudioActivityPreviewView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f07012c

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_9e
    if-eqz v3, :cond_f9

    const-string v10, ""

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f9

    .line 124
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    .line 125
    invoke-virtual {v4, v3}, Lcom/google/android/apps/plus/views/EsImageView;->setUrl(Ljava/lang/String;)V

    .line 130
    :goto_af
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 131
    return-void

    .line 87
    :cond_b4
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_63

    .line 94
    :cond_ba
    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_78

    .line 102
    :cond_c0
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9e

    .line 107
    :cond_c6
    if-eqz v0, :cond_ed

    const-string v10, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ed

    .line 108
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_d7
    if-eqz v1, :cond_f3

    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f3

    .line 115
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9e

    .line 111
    :cond_ed
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d7

    .line 118
    :cond_f3
    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9e

    .line 127
    :cond_f9
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/google/android/apps/plus/views/EsImageView;->setVisibility(I)V

    goto :goto_af
.end method


# virtual methods
.method public setActivity(Lcom/google/android/apps/plus/network/ApiaryActivity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/ActivityPreviewView;->setActivity(Lcom/google/android/apps/plus/network/ApiaryActivity;)V

    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/AudioActivityPreviewView;->addAudioPreviewLayout()V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudioActivityPreviewView;->invalidate()V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/AudioActivityPreviewView;->requestLayout()V

    .line 58
    return-void
.end method
