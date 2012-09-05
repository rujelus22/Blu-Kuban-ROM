.class final Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;
.super Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;
.source "MyDownloadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/MyDownloadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewHolder"
.end annotation


# instance fields
.field public final price:Landroid/widget/TextView;

.field public final ratingBar:Landroid/widget/RatingBar;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "convertView"

    .prologue
    .line 776
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 777
    const v0, 0x7f08012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;->ratingBar:Landroid/widget/RatingBar;

    .line 778
    const v0, 0x7f080015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$ViewHolder;->price:Landroid/widget/TextView;

    .line 780
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 781
    return-void
.end method
