.class public Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ReviewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/ReviewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field author:Landroid/widget/TextView;

.field ratingBar:Landroid/widget/RatingBar;

.field ratingImage:Landroid/widget/ImageView;

.field reviewDate:Landroid/widget/TextView;

.field reviewText:Landroid/widget/TextView;

.field source:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "convertView"

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    const v0, 0x7f080173

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 295
    const v0, 0x7f080176

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->author:Landroid/widget/TextView;

    .line 296
    const v0, 0x7f080177

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->source:Landroid/widget/TextView;

    .line 297
    const v0, 0x7f080179

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewText:Landroid/widget/TextView;

    .line 298
    const v0, 0x7f080178

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->reviewDate:Landroid/widget/TextView;

    .line 299
    const v0, 0x7f080175

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->ratingBar:Landroid/widget/RatingBar;

    .line 300
    const v0, 0x7f080172

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/ReviewsAdapter$ViewHolder;->ratingImage:Landroid/widget/ImageView;

    .line 302
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 303
    return-void
.end method
