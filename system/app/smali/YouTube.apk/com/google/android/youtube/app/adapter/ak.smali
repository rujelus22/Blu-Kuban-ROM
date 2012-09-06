.class public final Lcom/google/android/youtube/app/adapter/ak;
.super Lcom/google/android/youtube/app/adapter/bj;
.source "SourceFile"


# instance fields
.field private b:I

.field private c:[Landroid/graphics/Bitmap;

.field private d:[Lcom/google/android/youtube/app/ui/StackButton;


# direct methods
.method private static a(Lcom/google/android/youtube/app/ui/StackButton;Landroid/graphics/Bitmap;II)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    if-nez p1, :cond_6

    .line 102
    invoke-virtual {p0, p3}, Lcom/google/android/youtube/app/ui/StackButton;->setThumbnail(I)V

    .line 109
    :cond_5
    :goto_5
    return-void

    .line 104
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/ui/StackButton;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 105
    if-eqz p2, :cond_5

    .line 106
    invoke-virtual {p0, p2}, Lcom/google/android/youtube/app/ui/StackButton;->setBadge(I)V

    goto :goto_5
.end method


# virtual methods
.method public final getCount()I
    .registers 3

    .prologue
    .line 42
    invoke-super {p0}, Lcom/google/android/youtube/app/adapter/bj;->getCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/youtube/app/adapter/ak;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/google/android/youtube/app/adapter/ak;->b:I

    if-ge p1, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget v0, p0, Lcom/google/android/youtube/app/adapter/ak;->b:I

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/google/android/youtube/app/adapter/bj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    goto :goto_5
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 55
    iget v0, p0, Lcom/google/android/youtube/app/adapter/ak;->b:I

    if-lt p1, v0, :cond_16

    .line 56
    iget v0, p0, Lcom/google/android/youtube/app/adapter/ak;->b:I

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/google/android/youtube/app/adapter/bj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/youtube/app/adapter/ak;->a(Lcom/google/android/youtube/core/model/Playlist;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    :goto_15
    return-object v0

    .line 58
    :cond_16
    invoke-virtual {p0, p2, p3}, Lcom/google/android/youtube/app/adapter/ak;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/bk;

    .line 60
    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/ak;->d:[Lcom/google/android/youtube/app/ui/StackButton;

    iget-object v3, v0, Lcom/google/android/youtube/app/adapter/bk;->a:Lcom/google/android/youtube/app/ui/StackButton;

    aput-object v3, v2, p1

    .line 61
    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/ak;->d:[Lcom/google/android/youtube/app/ui/StackButton;

    aget-object v2, v2, p1

    packed-switch p1, :pswitch_data_90

    .line 62
    :goto_2d
    iget-object v2, v0, Lcom/google/android/youtube/app/adapter/bk;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v2, v0, Lcom/google/android/youtube/app/adapter/bk;->a:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v2, v6}, Lcom/google/android/youtube/app/ui/StackButton;->setVisibility(I)V

    .line 65
    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/bk;->a:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/StackButton;->b()Landroid/view/View;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 67
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v1

    .line 68
    goto :goto_15

    .line 61
    :pswitch_45
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/ak;->a:Landroid/content/res/Resources;

    const v4, 0x7f0b016e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/ui/StackButton;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/ak;->c:[Landroid/graphics/Bitmap;

    aget-object v3, v3, p1

    const v4, 0x7f0200fc

    const v5, 0x7f0200fb

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/youtube/app/adapter/ak;->a(Lcom/google/android/youtube/app/ui/StackButton;Landroid/graphics/Bitmap;II)V

    goto :goto_2d

    :pswitch_5f
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/ak;->a:Landroid/content/res/Resources;

    const v4, 0x7f0b016d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/ui/StackButton;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/ak;->c:[Landroid/graphics/Bitmap;

    aget-object v3, v3, p1

    const v4, 0x7f0200f7

    const v5, 0x7f0200f6

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/youtube/app/adapter/ak;->a(Lcom/google/android/youtube/app/ui/StackButton;Landroid/graphics/Bitmap;II)V

    goto :goto_2d

    :pswitch_79
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/ak;->a:Landroid/content/res/Resources;

    const v4, 0x7f0b01e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/ui/StackButton;->setText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/ak;->c:[Landroid/graphics/Bitmap;

    aget-object v3, v3, p1

    const v4, 0x7f020098

    invoke-static {v2, v3, v6, v4}, Lcom/google/android/youtube/app/adapter/ak;->a(Lcom/google/android/youtube/app/ui/StackButton;Landroid/graphics/Bitmap;II)V

    goto :goto_2d

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_45
        :pswitch_5f
        :pswitch_79
    .end packed-switch
.end method
