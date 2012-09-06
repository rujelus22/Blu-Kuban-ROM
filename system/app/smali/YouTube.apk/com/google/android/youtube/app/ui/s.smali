.class final Lcom/google/android/youtube/app/ui/s;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/p;

.field private final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/p;)V
    .registers 3
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/s;->a:Lcom/google/android/youtube/app/ui/p;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/s;->b:Ljava/util/Map;

    .line 214
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/s;->getCount()I

    move-result v0

    .line 230
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/s;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/app/ui/t;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, p0, p1, p2, v4}, Lcom/google/android/youtube/app/ui/t;-><init>(Lcom/google/android/youtube/app/ui/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/s;->notifyDataSetChanged()V

    .line 232
    return v0
.end method

.method public final getCount()I
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/s;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/s;->b:Ljava/util/Map;

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
    .line 225
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

    .line 238
    if-nez p2, :cond_36

    .line 239
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/s;->a:Lcom/google/android/youtube/app/ui/p;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/p;->c(Lcom/google/android/youtube/app/ui/p;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->c()Z

    move-result v0

    if-eqz v0, :cond_32

    const v0, 0x7f040072

    :goto_15
    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 241
    new-instance v0, Lcom/google/android/youtube/app/ui/u;

    invoke-direct {v0, p0, p2}, Lcom/google/android/youtube/app/ui/u;-><init>(Lcom/google/android/youtube/app/ui/s;Landroid/view/View;)V

    .line 242
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 246
    :goto_22
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/s;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/t;

    .line 247
    if-nez v0, :cond_3e

    move-object p2, v2

    .line 277
    :cond_31
    :goto_31
    return-object p2

    .line 239
    :cond_32
    const v0, 0x7f040020

    goto :goto_15

    .line 244
    :cond_36
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/u;

    move-object v1, v0

    goto :goto_22

    .line 250
    :cond_3e
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/u;->a:Landroid/widget/TextView;

    if-eqz v3, :cond_56

    .line 251
    iget-object v3, v0, Lcom/google/android/youtube/app/ui/t;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_87

    .line 252
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/u;->a:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/google/android/youtube/app/ui/t;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/u;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    :cond_56
    :goto_56
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/u;->b:Landroid/widget/TextView;

    if-eqz v3, :cond_6e

    .line 260
    iget-object v3, v0, Lcom/google/android/youtube/app/ui/t;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_92

    .line 261
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/u;->b:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/google/android/youtube/app/ui/t;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/u;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    :cond_6e
    :goto_6e
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/u;->c:Landroid/widget/ImageView;

    if-eqz v3, :cond_31

    .line 269
    iget-object v3, v0, Lcom/google/android/youtube/app/ui/t;->c:Ljava/lang/Integer;

    if-eqz v3, :cond_9d

    .line 270
    iget-object v2, v1, Lcom/google/android/youtube/app/ui/u;->c:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/t;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    iget-object v0, v1, Lcom/google/android/youtube/app/ui/u;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_31

    .line 255
    :cond_87
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/u;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/u;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_56

    .line 264
    :cond_92
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/u;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v3, v1, Lcom/google/android/youtube/app/ui/u;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6e

    .line 273
    :cond_9d
    iget-object v0, v1, Lcom/google/android/youtube/app/ui/u;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 274
    iget-object v0, v1, Lcom/google/android/youtube/app/ui/u;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_31
.end method
