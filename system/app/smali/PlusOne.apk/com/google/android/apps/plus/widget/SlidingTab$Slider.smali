.class Lcom/google/android/apps/plus/widget/SlidingTab$Slider;
.super Ljava/lang/Object;
.source "SlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/widget/SlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Slider"
.end annotation


# instance fields
.field private final tab:Landroid/widget/ImageView;

.field private final target:Landroid/widget/ImageView;

.field private final text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;IIII)V
    .registers 10
    .parameter "parent"
    .parameter "iconId"
    .parameter "targetId"
    .parameter "barId"
    .parameter "tabId"

    .prologue
    const/4 v3, -0x2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0055

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 129
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/widget/SlidingTab$Slider;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/widget/SlidingTab$Slider;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getTabHeight()I
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getTabWidth()I
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method hide()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 168
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    return-void
.end method

.method layout(IIIII)V
    .registers 27
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .parameter "alignment"

    .prologue
    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 213
    .local v7, handleWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 214
    .local v6, handleHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 215
    .local v14, targetWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 216
    .local v12, targetHeight:I
    sub-int v10, p3, p1

    .line 217
    .local v10, parentWidth:I
    sub-int v9, p4, p2

    .line 218
    .local v9, parentHeight:I
    const v17, 0x3f2aaaab

    int-to-float v0, v10

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v17, v17, v14

    div-int/lit8 v18, v7, 0x2

    add-int v8, v17, v18

    .line 219
    .local v8, leftTarget:I
    const v17, 0x3eaaaaaa

    int-to-float v0, v10

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    div-int/lit8 v18, v7, 0x2

    sub-int v11, v17, v18

    .line 220
    .local v11, rightTarget:I
    sub-int v17, v6, v12

    div-int/lit8 v13, v17, 0x2

    .line 222
    .local v13, targetOffset:I
    sub-int v17, v9, v6

    div-int/lit8 v15, v17, 0x2

    .line 223
    .local v15, topLeft:I
    add-int v4, v15, v6

    .line 225
    .local v4, bottomLeft:I
    sub-int v17, v9, v6

    div-int/lit8 v16, v17, 0x2

    .line 226
    .local v16, topRight:I
    add-int v5, v16, v6

    .line 228
    .local v5, bottomRight:I
    if-nez p5, :cond_b9

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15, v7, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v17, v0

    rsub-int/lit8 v18, v10, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v15, v2, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setGravity(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    add-int v18, v15, v13

    add-int v19, v8, v14

    add-int v20, v15, v13

    add-int v20, v20, v12

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 241
    :goto_b8
    return-void

    .line 235
    :cond_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sub-int v18, v10, v7

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2, v10, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v17, v0

    add-int v18, v10, v10

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v10, v1, v2, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    add-int v18, v16, v13

    add-int v19, v11, v14

    add-int v20, v16, v13

    add-int v20, v20, v12

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/widget/ImageView;->layout(IIII)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x30

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_b8
.end method

.method reset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 195
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->setState(I)V

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0055

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    return-void
.end method

.method setHintText(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 165
    return-void
.end method

.method setState(I)V
    .registers 7
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 174
    iget-object v4, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    if-ne p1, v2, :cond_55

    move v1, v2

    :goto_7
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 175
    iget-object v4, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_57

    move v1, v2

    :goto_f
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 176
    const/4 v1, 0x2

    if-ne p1, v1, :cond_59

    .line 177
    new-array v0, v2, [I

    const v1, 0x10100a2

    aput v1, v0, v3

    .line 178
    .local v0, activeState:[I
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 179
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 181
    :cond_31
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 182
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->tab:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 184
    :cond_46
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0056

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 188
    .end local v0           #activeState:[I
    :goto_54
    return-void

    :cond_55
    move v1, v3

    .line 174
    goto :goto_7

    :cond_57
    move v1, v3

    .line 175
    goto :goto_f

    .line 186
    :cond_59
    iget-object v1, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->text:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0055

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_54
.end method

.method showTarget()V
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/SlidingTab$Slider;->target:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    return-void
.end method
