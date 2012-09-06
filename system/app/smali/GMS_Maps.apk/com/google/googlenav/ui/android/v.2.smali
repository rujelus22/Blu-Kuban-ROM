.class Lcom/google/googlenav/ui/android/V;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/FloorPickerView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/FloorPickerView;Landroid/content/Context;Ln/w;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    .line 158
    const/4 v0, -0x1

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 160
    invoke-virtual {p3}, Ln/w;->d()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 161
    new-instance v0, Lcom/google/googlenav/ui/android/W;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/android/W;-><init>(Ln/x;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/V;->add(Ljava/lang/Object;)V

    .line 164
    :cond_15
    invoke-virtual {p3}, Ln/w;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/x;

    .line 165
    new-instance v2, Lcom/google/googlenav/ui/android/W;

    invoke-direct {v2, v0}, Lcom/google/googlenav/ui/android/W;-><init>(Ln/x;)V

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/android/V;->add(Ljava/lang/Object;)V

    goto :goto_1d

    .line 167
    :cond_32
    return-void
.end method

.method private a(I)I
    .registers 5
    .parameter

    .prologue
    .line 240
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/FloorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private a(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 230
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/V;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 231
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x2

    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/android/V;->a(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    invoke-direct {p0, v5}, Lcom/google/googlenav/ui/android/V;->a(I)I

    move-result v1

    invoke-direct {p0, v5}, Lcom/google/googlenav/ui/android/V;->a(I)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 233
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 235
    return-object v0
.end method

.method private a(Landroid/widget/RelativeLayout;)Landroid/widget/TextView;
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 216
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/V;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 217
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 218
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 219
    const/4 v1, 0x2

    const/high16 v2, 0x4190

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 220
    iget-object v1, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Lcom/google/googlenav/ui/android/FloorPickerView;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 222
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x24

    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/android/V;->a(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 224
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 225
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    return-object v0
.end method

.method private a(Landroid/view/View;ILcom/google/googlenav/ui/android/X;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->b(Lcom/google/googlenav/ui/android/FloorPickerView;)I

    move-result v0

    if-ne p2, v0, :cond_60

    .line 249
    iget-object v0, p3, Lcom/google/googlenav/ui/android/X;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v3}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Lcom/google/googlenav/ui/android/FloorPickerView;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    iget-object v0, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Lcom/google/googlenav/ui/android/FloorPickerView;)Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0201ad

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 266
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->c(Lcom/google/googlenav/ui/android/FloorPickerView;)I

    move-result v0

    if-ne p2, v0, :cond_80

    .line 267
    iget-object v0, p3, Lcom/google/googlenav/ui/android/X;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    :goto_3d
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/android/V;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/W;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/W;->a()Ln/x;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_86

    iget-object v3, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v3}, Lcom/google/googlenav/ui/android/FloorPickerView;->d(Lcom/google/googlenav/ui/android/FloorPickerView;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Ln/x;->a()Ln/B;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    move v0, v1

    .line 279
    :goto_5a
    iget-object v1, p3, Lcom/google/googlenav/ui/android/X;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 280
    return-void

    .line 256
    :cond_60
    iget-object v0, p3, Lcom/google/googlenav/ui/android/X;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v3}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Lcom/google/googlenav/ui/android/FloorPickerView;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_30

    .line 269
    :cond_80
    iget-object v0, p3, Lcom/google/googlenav/ui/android/X;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3d

    :cond_86
    move v0, v2

    goto :goto_5a
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x2

    .line 183
    move-object v0, p2

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 184
    if-nez p2, :cond_86

    .line 185
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/V;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 186
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x2c

    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/android/V;->a(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v0

    .line 189
    :goto_1f
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/X;

    .line 190
    if-nez v0, :cond_84

    .line 191
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/android/V;->a(Landroid/widget/RelativeLayout;)Landroid/widget/TextView;

    move-result-object v2

    .line 193
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/V;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 194
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 196
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 197
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 198
    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v3, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v3}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Lcom/google/googlenav/ui/android/FloorPickerView;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/android/V;->a(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v3

    .line 202
    iget-object v4, p0, Lcom/google/googlenav/ui/android/V;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v4}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Lcom/google/googlenav/ui/android/FloorPickerView;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/google/googlenav/ui/android/V;->a(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v4

    .line 205
    new-instance v0, Lcom/google/googlenav/ui/android/X;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/googlenav/ui/android/X;-><init>(Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    .line 206
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    .line 208
    :goto_71
    iget-object v3, v2, Lcom/google/googlenav/ui/android/X;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/V;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/W;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/W;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-direct {p0, v1, p1, v2}, Lcom/google/googlenav/ui/android/V;->a(Landroid/view/View;ILcom/google/googlenav/ui/android/X;)V

    .line 212
    return-object v1

    :cond_84
    move-object v2, v0

    goto :goto_71

    :cond_86
    move-object v1, v0

    goto :goto_1f
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method
