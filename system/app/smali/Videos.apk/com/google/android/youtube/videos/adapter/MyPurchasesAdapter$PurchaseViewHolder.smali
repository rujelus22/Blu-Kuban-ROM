.class Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;
.super Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;
.source "MyPurchasesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PurchaseViewHolder"
.end annotation


# instance fields
.field private final downloadStatus:Landroid/widget/TextView;

.field private final expires:Landroid/widget/TextView;

.field private final offline:Lcom/google/android/youtube/core/ui/CheckedImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/ui/MovieViewHelper$MovieViewHolder;-><init>(Landroid/view/View;)V

    .line 313
    const v0, 0x7f0d0029

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->expires:Landroid/widget/TextView;

    .line 314
    const v0, 0x7f0d002a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->downloadStatus:Landroid/widget/TextView;

    .line 315
    const v0, 0x7f0d002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/ui/CheckedImageView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->offline:Lcom/google/android/youtube/core/ui/CheckedImageView;

    .line 316
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->expires:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->downloadStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;)Lcom/google/android/youtube/core/ui/CheckedImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$PurchaseViewHolder;->offline:Lcom/google/android/youtube/core/ui/CheckedImageView;

    return-object v0
.end method
