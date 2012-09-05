.class public Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;
.super Ljava/lang/Object;
.source "MovieViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/ui/MovieViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MovieViewHolder"
.end annotation


# instance fields
.field private final actors:Landroid/widget/TextView;

.field private final directors:Landroid/widget/TextView;

.field private final genres:Landroid/widget/TextView;

.field public final poster:Landroid/widget/ImageView;

.field private final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const v0, 0x7f0d000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->title:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0d0012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->poster:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f0d0013

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->genres:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0d0015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->actors:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0d0014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->directors:Landroid/widget/TextView;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->genres:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->directors:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;->actors:Landroid/widget/TextView;

    return-object v0
.end method
