.class public final Lcom/google/android/youtube/app/a/h;
.super Lcom/google/android/youtube/app/a/l;
.source "SourceFile"


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/app/ui/ToolbarHelper;IZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    const v1, 0x7f040037

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/youtube/app/a/l;-><init>(Landroid/content/Context;Lcom/google/android/youtube/app/ui/ToolbarHelper;I)V

    .line 30
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/youtube/app/a/h;->b:I

    .line 31
    return-void
.end method


# virtual methods
.method public final getCount()I
    .registers 3

    .prologue
    .line 35
    invoke-super {p0}, Lcom/google/android/youtube/app/a/l;->getCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/youtube/app/a/h;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 19
    iget v0, p0, Lcom/google/android/youtube/app/a/h;->b:I

    if-ge p1, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget v0, p0, Lcom/google/android/youtube/app/a/h;->b:I

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/google/android/youtube/app/a/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    goto :goto_5
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/youtube/app/a/h;->b:I

    if-lt p1, v0, :cond_13

    .line 49
    iget v0, p0, Lcom/google/android/youtube/app/a/h;->b:I

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/google/android/youtube/app/a/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/youtube/app/a/h;->a(Lcom/google/android/youtube/core/model/Playlist;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 65
    :goto_12
    return-object v0

    .line 51
    :cond_13
    invoke-virtual {p0, p2, p3}, Lcom/google/android/youtube/app/a/h;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/a/m;

    .line 53
    if-nez p1, :cond_44

    .line 54
    iget-object v2, v0, Lcom/google/android/youtube/app/a/m;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/youtube/app/a/h;->a:Landroid/content/res/Resources;

    const v4, 0x7f0a011d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v2, v0, Lcom/google/android/youtube/app/a/m;->e:Landroid/widget/ImageView;

    const v3, 0x7f02005a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    :cond_35
    :goto_35
    iget-object v2, v0, Lcom/google/android/youtube/app/a/m;->d:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v0, v0, Lcom/google/android/youtube/app/a/m;->e:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v0, v1

    .line 65
    goto :goto_12

    .line 56
    :cond_44
    const/4 v2, 0x1

    if-ne p1, v2, :cond_5e

    .line 57
    iget-object v2, v0, Lcom/google/android/youtube/app/a/m;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/youtube/app/a/h;->a:Landroid/content/res/Resources;

    const v4, 0x7f0a011c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v2, v0, Lcom/google/android/youtube/app/a/m;->e:Landroid/widget/ImageView;

    const v3, 0x7f020059

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_35

    .line 59
    :cond_5e
    const/4 v2, 0x2

    if-ne p1, v2, :cond_35

    .line 60
    iget-object v2, v0, Lcom/google/android/youtube/app/a/m;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/youtube/app/a/h;->a:Landroid/content/res/Resources;

    const v4, 0x7f0a018b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v2, v0, Lcom/google/android/youtube/app/a/m;->e:Landroid/widget/ImageView;

    const v3, 0x7f020058

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_35
.end method
