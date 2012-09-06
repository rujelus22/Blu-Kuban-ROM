.class final Lcom/google/android/youtube/app/adapter/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/adapter/az;
.implements Lcom/google/android/youtube/app/adapter/k;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;

.field private final b:Landroid/view/View;

.field private final c:Lcom/google/android/youtube/app/adapter/i;

.field private d:Landroid/widget/ImageView;

.field private final e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/bz;->a:Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/bz;->b:Landroid/view/View;

    .line 77
    invoke-static {p1}, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;->a(Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;)Lcom/google/android/youtube/app/adapter/by;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/youtube/app/adapter/by;->a(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/android/youtube/app/adapter/az;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/i;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bz;->c:Lcom/google/android/youtube/app/adapter/i;

    .line 79
    const v0, 0x7f08008a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bz;->d:Landroid/widget/ImageView;

    .line 80
    const v0, 0x7f080058

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bz;->e:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bz;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_32

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bz;->c:Lcom/google/android/youtube/app/adapter/i;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/adapter/i;->a(Lcom/google/android/youtube/app/adapter/k;)V

    .line 84
    :cond_32
    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)Landroid/view/View;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 66
    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bz;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bz;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bz;->c:Lcom/google/android/youtube/app/adapter/i;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/app/adapter/i;->a(ILjava/lang/Object;)Landroid/view/View;

    invoke-static {p2}, Lcom/google/android/youtube/app/adapter/VideoThumbnailRendererFactory;->a(Lcom/google/android/youtube/core/model/Video;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bz;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bz;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bz;->b:Landroid/view/View;

    return-object v0

    :cond_24
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bz;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bz;->b:Landroid/view/View;

    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bz;->d:Landroid/widget/ImageView;

    :cond_3b
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bz;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_21
.end method

.method public final a()V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bz;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    return-void
.end method
