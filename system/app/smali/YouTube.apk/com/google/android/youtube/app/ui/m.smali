.class final Lcom/google/android/youtube/app/ui/m;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/j;

.field private final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/j;)V
    .registers 3
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/m;->a:Lcom/google/android/youtube/app/ui/j;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/m;->b:Ljava/util/Map;

    .line 212
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/m;->getCount()I

    move-result v0

    .line 228
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/m;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/app/ui/n;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p0, p1, p2, v4}, Lcom/google/android/youtube/app/ui/n;-><init>(Lcom/google/android/youtube/app/ui/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/m;->notifyDataSetChanged()V

    .line 230
    return v0
.end method

.method public final getCount()I
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/m;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/m;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 223
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 236
    if-nez p2, :cond_2c

    .line 237
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/m;->a:Lcom/google/android/youtube/app/ui/j;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/j;->c(Lcom/google/android/youtube/app/ui/j;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040012

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 238
    new-instance v0, Lcom/google/android/youtube/app/ui/o;

    invoke-direct {v0, p0, p2}, Lcom/google/android/youtube/app/ui/o;-><init>(Lcom/google/android/youtube/app/ui/m;Landroid/view/View;)V

    .line 239
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 243
    :goto_1c
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/m;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/n;

    .line 244
    if-nez v0, :cond_34

    move-object p2, v2

    .line 274
    :cond_2b
    :goto_2b
    return-object p2

    .line 241
    :cond_2c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/o;

    move-object v1, v0

    goto :goto_1c

    .line 247
    :cond_34
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/o;->a:Landroid/widget/TextView;

    if-eqz v3, :cond_4c

    .line 248
    iget-object v3, v0, Lcom/google/android/youtube/app/ui/n;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7d

    .line 249
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/o;->a:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/google/android/youtube/app/ui/n;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/o;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    :cond_4c
    :goto_4c
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/o;->b:Landroid/widget/TextView;

    if-eqz v3, :cond_64

    .line 257
    iget-object v3, v0, Lcom/google/android/youtube/app/ui/n;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_88

    .line 258
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/o;->b:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/google/android/youtube/app/ui/n;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/o;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    :cond_64
    :goto_64
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/o;->c:Landroid/widget/ImageView;

    if-eqz v3, :cond_2b

    .line 266
    iget-object v3, v0, Lcom/google/android/youtube/app/ui/n;->c:Ljava/lang/Integer;

    if-eqz v3, :cond_93

    .line 267
    iget-object v2, v1, Lcom/google/android/youtube/app/ui/o;->c:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/n;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    iget-object v0, v1, Lcom/google/android/youtube/app/ui/o;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2b

    .line 252
    :cond_7d
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/o;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/o;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4c

    .line 261
    :cond_88
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/o;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/o;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_64

    .line 270
    :cond_93
    iget-object v0, v1, Lcom/google/android/youtube/app/ui/o;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 271
    iget-object v0, v1, Lcom/google/android/youtube/app/ui/o;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2b
.end method
