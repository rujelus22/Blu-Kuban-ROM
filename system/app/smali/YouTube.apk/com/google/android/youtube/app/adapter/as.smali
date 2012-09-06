.class public Lcom/google/android/youtube/app/adapter/as;
.super Lcom/google/android/youtube/core/a/a;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/content/res/Resources;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Lcom/google/android/youtube/app/ui/ToolbarHelper;

.field private final d:I

.field private final e:Ljava/util/Map;

.field private final f:Landroid/graphics/Bitmap;

.field private final h:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x0

    const v1, 0x7f04005d

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/youtube/app/adapter/as;-><init>(Landroid/content/Context;Lcom/google/android/youtube/app/ui/ToolbarHelper;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/app/ui/ToolbarHelper;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/youtube/core/a/a;-><init>()V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/as;->b:Landroid/view/LayoutInflater;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/as;->a:Landroid/content/res/Resources;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/as;->e:Ljava/util/Map;

    .line 50
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/as;->c:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    .line 51
    iput p3, p0, Lcom/google/android/youtube/app/adapter/as;->d:I

    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/as;->a:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cf;->a(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/as;->h:Landroid/graphics/Bitmap;

    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/as;->a:Landroid/content/res/Resources;

    const v1, 0x7f0200d0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/as;->f:Landroid/graphics/Bitmap;

    .line 56
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 83
    if-nez p1, :cond_13

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/as;->b:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/google/android/youtube/app/adapter/as;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 85
    new-instance v0, Lcom/google/android/youtube/app/adapter/at;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/app/adapter/at;-><init>(Landroid/view/View;)V

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    :cond_13
    return-object p1
.end method

.method protected final a(Lcom/google/android/youtube/core/model/Playlist;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 92
    invoke-virtual {p0, p2, p3}, Lcom/google/android/youtube/app/adapter/as;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 93
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/at;

    .line 94
    iget-object v1, v0, Lcom/google/android/youtube/app/adapter/at;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_17

    .line 95
    iget-object v1, v0, Lcom/google/android/youtube/app/adapter/at;->e:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    :cond_17
    iget-object v1, v0, Lcom/google/android/youtube/app/adapter/at;->a:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, v0, Lcom/google/android/youtube/app/adapter/at;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_3c

    .line 100
    iget-object v1, v0, Lcom/google/android/youtube/app/adapter/at;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/as;->a:Landroid/content/res/Resources;

    const v4, 0x7f0e000b

    iget v5, p1, Lcom/google/android/youtube/core/model/Playlist;->size:I

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p1, Lcom/google/android/youtube/core/model/Playlist;->size:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_3c
    iget-object v1, v0, Lcom/google/android/youtube/app/adapter/at;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_5c

    .line 105
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/as;->e:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 106
    if-eqz v1, :cond_5c

    .line 107
    iget-object v4, v0, Lcom/google/android/youtube/app/adapter/at;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/as;->f:Landroid/graphics/Bitmap;

    if-ne v1, v2, :cond_72

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_54
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 109
    iget-object v2, v0, Lcom/google/android/youtube/app/adapter/at;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    :cond_5c
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/as;->c:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    if-eqz v1, :cond_71

    .line 114
    iget-object v1, v0, Lcom/google/android/youtube/app/adapter/at;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 115
    iget-object v1, v0, Lcom/google/android/youtube/app/adapter/at;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/as;->c:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/at;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/youtube/app/ui/ToolbarHelper;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 119
    :cond_71
    return-object v3

    .line 107
    :cond_72
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_54
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/as;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 79
    invoke-super {p0}, Lcom/google/android/youtube/core/a/a;->a()V

    .line 80
    return-void
.end method

.method protected final synthetic a(ILjava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 31
    check-cast p2, Lcom/google/android/youtube/core/model/Playlist;

    const-string v0, "playlist can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/as;->e:Ljava/util/Map;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/as;->h:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/a/a;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/as;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 128
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/as;->e:Ljava/util/Map;

    if-eqz p2, :cond_13

    :goto_c
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/as;->notifyDataSetChanged()V

    .line 131
    :cond_12
    return-void

    .line 128
    :cond_13
    iget-object p2, p0, Lcom/google/android/youtube/app/adapter/as;->f:Landroid/graphics/Bitmap;

    goto :goto_c
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/google/android/youtube/core/model/Playlist;

    const-string v0, "playlist can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/as;->e:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/as;->h:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/google/android/youtube/core/a/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/as;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/youtube/app/adapter/as;->a(Lcom/google/android/youtube/core/model/Playlist;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
