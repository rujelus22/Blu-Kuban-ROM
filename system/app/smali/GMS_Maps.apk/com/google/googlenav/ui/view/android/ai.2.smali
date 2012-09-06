.class Lcom/google/googlenav/ui/view/android/aI;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/aD;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/android/aD;Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aI;->a:Lcom/google/googlenav/ui/view/android/aD;

    .line 247
    const v0, 0x7f04006e

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 248
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 253
    if-eqz p2, :cond_7b

    .line 254
    check-cast p2, Landroid/widget/LinearLayout;

    .line 259
    :goto_5
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/aI;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/at;

    .line 261
    invoke-virtual {v0}, Lcom/google/googlenav/at;->a()Lcom/google/googlenav/ar;

    move-result-object v2

    .line 263
    if-eqz v2, :cond_88

    .line 264
    invoke-virtual {v2}, Lcom/google/googlenav/ar;->b()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 268
    :goto_16
    const v1, 0x7f100190

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 269
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/aI;->a:Lcom/google/googlenav/ui/view/android/aD;

    sget-object v4, Lcom/google/googlenav/ui/aV;->bc:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v4}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/google/googlenav/ui/view/android/aD;->a(Lcom/google/googlenav/ui/view/android/aD;Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 272
    const v1, 0x7f100191

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 273
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aI;->a:Lcom/google/googlenav/ui/view/android/aD;

    invoke-virtual {v0}, Lcom/google/googlenav/at;->b()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/google/googlenav/ui/view/android/aD;->a(Lcom/google/googlenav/ui/view/android/aD;Landroid/widget/TextView;Lcom/google/googlenav/ui/aW;)V

    .line 276
    const v1, 0x7f100192

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 277
    const/16 v2, 0x2c4

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/aV;->bb:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 280
    const v1, 0x7f10018f

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 281
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aI;->a:Lcom/google/googlenav/ui/view/android/aD;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/android/aD;->c(Lcom/google/googlenav/ui/view/android/aD;)Lah/s;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/aI;->a:Lcom/google/googlenav/ui/view/android/aD;

    invoke-static {v3, v0}, Lcom/google/googlenav/ui/view/android/aD;->a(Lcom/google/googlenav/ui/view/android/aD;Lcom/google/googlenav/at;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v2, v0}, Lah/s;->a(Lcom/google/googlenav/ui/bx;)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 282
    if-eqz v0, :cond_7a

    .line 283
    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 286
    :cond_7a
    return-object p2

    .line 256
    :cond_7b
    const v0, 0x7f04006e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object p2, v0

    goto/16 :goto_5

    :cond_88
    move-object v2, v1

    goto :goto_16
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/aI;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/at;

    invoke-virtual {v0}, Lcom/google/googlenav/at;->a()Lcom/google/googlenav/ar;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/google/googlenav/ar;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method
