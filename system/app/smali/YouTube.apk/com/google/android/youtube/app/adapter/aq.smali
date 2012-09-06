.class public final Lcom/google/android/youtube/app/adapter/aq;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 28
    const v0, 0x7f040048

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/aq;->a:Landroid/view/LayoutInflater;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/adapter/aq;->b:Z

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/MusicVideo;)V
    .registers 3
    .parameter

    .prologue
    .line 52
    iget-object v0, p1, Lcom/google/android/youtube/core/model/MusicVideo;->trackId:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/aq;->c:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/aq;->notifyDataSetChanged()V

    .line 54
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 36
    if-nez p2, :cond_42

    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/aq;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f040048

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 38
    new-instance v0, Lcom/google/android/youtube/app/adapter/ar;

    invoke-direct {v0, p2}, Lcom/google/android/youtube/app/adapter/ar;-><init>(Landroid/view/View;)V

    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 43
    :goto_15
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/aq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/MusicVideo;

    .line 44
    iget-object v4, v1, Lcom/google/android/youtube/app/adapter/ar;->a:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/google/android/youtube/app/adapter/aq;->b:Z

    if-eqz v2, :cond_4a

    iget-object v2, v0, Lcom/google/android/youtube/core/model/MusicVideo;->trackName:Ljava/lang/String;

    :goto_23
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v2, v1, Lcom/google/android/youtube/app/adapter/ar;->b:Landroid/widget/TextView;

    iget v4, v0, Lcom/google/android/youtube/core/model/MusicVideo;->duration:I

    invoke-static {v4}, Lcom/google/android/youtube/core/utils/Util;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, v1, Lcom/google/android/youtube/app/adapter/ar;->c:Landroid/view/View;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/MusicVideo;->trackId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/aq;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    move v0, v3

    :goto_3e
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    return-object p2

    .line 41
    :cond_42
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/ar;

    move-object v1, v0

    goto :goto_15

    .line 44
    :cond_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/google/android/youtube/core/model/MusicVideo;->artistName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/google/android/youtube/core/model/MusicVideo;->trackName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_23

    .line 46
    :cond_66
    const/16 v0, 0x8

    goto :goto_3e
.end method
