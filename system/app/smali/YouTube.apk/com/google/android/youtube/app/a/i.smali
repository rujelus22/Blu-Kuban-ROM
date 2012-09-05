.class public final Lcom/google/android/youtube/app/a/i;
.super Lcom/google/android/youtube/app/a/q;
.source "SourceFile"


# instance fields
.field private b:I

.field private c:[Landroid/graphics/Bitmap;

.field private d:[Lcom/google/android/youtube/app/ui/StackButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/app/ui/j;ZZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/app/a/q;-><init>(Landroid/content/Context;Lcom/google/android/youtube/app/ui/j;Z)V

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/youtube/app/a/i;->b:I

    .line 36
    iget v0, p0, Lcom/google/android/youtube/app/a/i;->b:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/youtube/app/a/i;->c:[Landroid/graphics/Bitmap;

    .line 37
    iget v0, p0, Lcom/google/android/youtube/app/a/i;->b:I

    new-array v0, v0, [Lcom/google/android/youtube/app/ui/StackButton;

    iput-object v0, p0, Lcom/google/android/youtube/app/a/i;->d:[Lcom/google/android/youtube/app/ui/StackButton;

    .line 38
    return-void
.end method

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
    invoke-virtual {p0, p3}, Lcom/google/android/youtube/app/ui/StackButton;->a(I)V

    .line 109
    :cond_5
    :goto_5
    return-void

    .line 104
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/ui/StackButton;->a(Landroid/graphics/Bitmap;)V

    .line 105
    if-eqz p2, :cond_5

    .line 106
    invoke-virtual {p0, p2}, Lcom/google/android/youtube/app/ui/StackButton;->b(I)V

    goto :goto_5
.end method

.method private b(I)V
    .registers 6
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/a/i;->d:[Lcom/google/android/youtube/app/ui/StackButton;

    aget-object v0, v0, p1

    .line 80
    packed-switch p1, :pswitch_data_54

    .line 96
    :goto_7
    return-void

    .line 82
    :pswitch_8
    iget-object v1, p0, Lcom/google/android/youtube/app/a/i;->a:Landroid/content/res/Resources;

    const v2, 0x7f0a011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->a(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/google/android/youtube/app/a/i;->c:[Landroid/graphics/Bitmap;

    aget-object v1, v1, p1

    const v2, 0x7f0200b0

    const v3, 0x7f0200af

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/app/a/i;->a(Lcom/google/android/youtube/app/ui/StackButton;Landroid/graphics/Bitmap;II)V

    goto :goto_7

    .line 87
    :pswitch_22
    iget-object v1, p0, Lcom/google/android/youtube/app/a/i;->a:Landroid/content/res/Resources;

    const v2, 0x7f0a011c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->a(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/google/android/youtube/app/a/i;->c:[Landroid/graphics/Bitmap;

    aget-object v1, v1, p1

    const v2, 0x7f0200aa

    const v3, 0x7f0200a9

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/app/a/i;->a(Lcom/google/android/youtube/app/ui/StackButton;Landroid/graphics/Bitmap;II)V

    goto :goto_7

    .line 92
    :pswitch_3c
    iget-object v1, p0, Lcom/google/android/youtube/app/a/i;->a:Landroid/content/res/Resources;

    const v2, 0x7f0a018b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/StackButton;->a(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/google/android/youtube/app/a/i;->c:[Landroid/graphics/Bitmap;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    const v3, 0x7f020058

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/app/a/i;->a(Lcom/google/android/youtube/app/ui/StackButton;Landroid/graphics/Bitmap;II)V

    goto :goto_7

    .line 80
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_8
        :pswitch_22
        :pswitch_3c
    .end packed-switch
.end method


# virtual methods
.method public final a(I)Lcom/google/android/youtube/core/model/Playlist;
    .registers 3
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/youtube/app/a/i;->b:I

    if-ge p1, v0, :cond_6

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_5
    return-object v0

    :cond_6
    iget v0, p0, Lcom/google/android/youtube/app/a/i;->b:I

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/google/android/youtube/app/a/q;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    goto :goto_5
.end method

.method public final a(ILandroid/graphics/Bitmap;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/app/a/i;->c:[Landroid/graphics/Bitmap;

    aput-object p2, v0, p1

    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/a/i;->d:[Lcom/google/android/youtube/app/ui/StackButton;

    aget-object v0, v0, p1

    if-eqz v0, :cond_d

    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/a/i;->b(I)V

    .line 76
    :cond_d
    return-void
.end method

.method public final getCount()I
    .registers 3

    .prologue
    .line 42
    invoke-super {p0}, Lcom/google/android/youtube/app/a/q;->getCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/youtube/app/a/i;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/a/i;->a(I)Lcom/google/android/youtube/core/model/Playlist;

    move-result-object v0

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 55
    iget v0, p0, Lcom/google/android/youtube/app/a/i;->b:I

    if-lt p1, v0, :cond_16

    .line 56
    iget v0, p0, Lcom/google/android/youtube/app/a/i;->b:I

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/google/android/youtube/app/a/q;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/youtube/app/a/i;->a(Lcom/google/android/youtube/core/model/Playlist;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    :goto_15
    return-object v0

    .line 58
    :cond_16
    invoke-virtual {p0, p2, p3}, Lcom/google/android/youtube/app/a/i;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/a/r;

    .line 60
    iget-object v2, p0, Lcom/google/android/youtube/app/a/i;->d:[Lcom/google/android/youtube/app/ui/StackButton;

    iget-object v3, v0, Lcom/google/android/youtube/app/a/r;->a:Lcom/google/android/youtube/app/ui/StackButton;

    aput-object v3, v2, p1

    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/a/i;->b(I)V

    .line 62
    iget-object v2, v0, Lcom/google/android/youtube/app/a/r;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v2, v0, Lcom/google/android/youtube/app/a/r;->a:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v2, v4}, Lcom/google/android/youtube/app/ui/StackButton;->setVisibility(I)V

    .line 65
    iget-object v0, v0, Lcom/google/android/youtube/app/a/r;->a:Lcom/google/android/youtube/app/ui/StackButton;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/StackButton;->c()Landroid/view/View;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 67
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v1

    .line 68
    goto :goto_15
.end method
