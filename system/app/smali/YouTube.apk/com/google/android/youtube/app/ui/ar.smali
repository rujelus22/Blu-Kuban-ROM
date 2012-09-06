.class final Lcom/google/android/youtube/app/ui/ar;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Ljava/util/List;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Ljava/util/List;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 294
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ar;->a:Landroid/view/LayoutInflater;

    .line 295
    iput-object p2, p0, Lcom/google/android/youtube/app/ui/ar;->b:Ljava/util/List;

    .line 296
    iput p3, p0, Lcom/google/android/youtube/app/ui/ar;->c:I

    .line 297
    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ar;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ar;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 308
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    if-nez p2, :cond_1d

    .line 313
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ar;->a:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/google/android/youtube/app/ui/ar;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 315
    :goto_b
    check-cast v0, Landroid/widget/TextView;

    .line 316
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ar;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    return-object v0

    :cond_1d
    move-object v0, p2

    goto :goto_b
.end method
