.class public LuP;
.super Ljava/lang/Object;
.source "ColorPallete.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/app/Activity;

.field private a:Landroid/view/View$OnClickListener;

.field a:Landroid/view/ViewGroup;

.field private a:Landroid/widget/RadioButton;

.field private a:Landroid/widget/RadioGroup;

.field private a:Ljava/lang/String;

.field private a:LuT;

.field private final a:Z

.field private final b:Landroid/view/View$OnClickListener;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#000000"

    aput-object v1, v0, v3

    const-string v1, "#434343"

    aput-object v1, v0, v4

    const-string v1, "#666666"

    aput-object v1, v0, v5

    const-string v1, "#999999"

    aput-object v1, v0, v6

    const-string v1, "#b7b7b7"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "#cccccc"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "#d9d9d9"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "#efefef"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#f3f3f3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "#ffffff"

    aput-object v2, v0, v1

    sput-object v0, LuP;->a:[Ljava/lang/String;

    .line 67
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#980000"

    aput-object v1, v0, v3

    const-string v1, "#f00"

    aput-object v1, v0, v4

    const-string v1, "#f90"

    aput-object v1, v0, v5

    const-string v1, "#ff0"

    aput-object v1, v0, v6

    const-string v1, "#0f0"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "#0ff"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "#4a86e8"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "#00f"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#90f"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "#f0f"

    aput-object v2, v0, v1

    sput-object v0, LuP;->b:[Ljava/lang/String;

    .line 75
    const/16 v0, 0x3c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#e6b8af"

    aput-object v1, v0, v3

    const-string v1, "#f4cccc"

    aput-object v1, v0, v4

    const-string v1, "#fce5cd"

    aput-object v1, v0, v5

    const-string v1, "#fff2cc"

    aput-object v1, v0, v6

    const-string v1, "#d9ead3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "#d0e0e3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "#c9daf8"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "#cfe2f3"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#d9d2e9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "#ead1dc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "#dd7e6b"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "#ea9999"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "#f9cb9c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "#ffe599"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "#b6d7a8"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "#a2c4c9"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "#a4c2f4"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "#9fc5e8"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "#b4a7d6"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "#d5a6bd"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "#cc4125"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "#e06666"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "#f6b26b"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "#ffd966"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "#93c47d"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "#76a5af"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#6d9eeb"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "#6fa8dc"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "#8e7cc3"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "#c27ba0"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "#a61c00"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "#cc0000"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "#e69138"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "#f1c232"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "#6aa84f"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "#45818e"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "#3c78d8"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "#3d85c6"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "#674ea7"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "#a64d79"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "#85200c"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "#990000"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "#b45f06"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "#bf9000"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "#38761d"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "#134f5c"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "#1155cc"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "#0b5394"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "#351c75"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "#741b47"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "#5b0f00"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "#660000"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "#783f04"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "#7f6000"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "#274e13"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "#0c343d"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "#1c4587"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "#073763"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "#20124d"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "#4c1130"

    aput-object v2, v0, v1

    sput-object v0, LuP;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, LuQ;

    invoke-direct {v0, p0}, LuQ;-><init>(LuP;)V

    iput-object v0, p0, LuP;->b:Landroid/view/View$OnClickListener;

    .line 126
    iput-object p1, p0, LuP;->a:Landroid/app/Activity;

    .line 127
    iput-boolean p2, p0, LuP;->a:Z

    .line 128
    return-void
.end method

.method static synthetic a(LuP;)Landroid/view/View$OnClickListener;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, LuP;->a:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;Z)Landroid/view/View;
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 296
    invoke-static {p2}, LuP;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 299
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 300
    const/high16 v3, -0x100

    if-ne v1, v3, :cond_a3

    .line 302
    sget v3, Luo;->color_cell_background_black:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    :goto_19
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 308
    new-array v4, v10, [I

    const v5, 0x101009c

    aput v5, v4, v9

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    new-array v6, v11, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v6, v9

    iget-object v7, p0, LuP;->a:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Luo;->big_square_selected:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 313
    new-array v4, v9, [I

    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 315
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 318
    if-eqz p3, :cond_51

    .line 319
    sget v0, Luo;->big_square_selected:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    :cond_51
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 322
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_5d

    .line 323
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 326
    :cond_5d
    iget-object v0, p0, LuP;->a:Landroid/app/Activity;

    sget v2, Lus;->color_describer:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    div-int/lit16 v2, v2, 0xff

    .line 328
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    div-int/lit16 v3, v3, 0xff

    .line 329
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    div-int/lit16 v1, v1, 0xff

    .line 330
    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4}, Ljava/util/Formatter;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v11

    invoke-virtual {v4, v0, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 333
    return-object p1

    .line 304
    :cond_a3
    sget v3, Luo;->big_square:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_19
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 286
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_51

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 291
    :cond_51
    return-object p0
.end method

.method static synthetic a(LuP;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, LuP;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 211
    sget-object v0, LuP;->a:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, LuP;->a([Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 212
    invoke-direct {p0, p1}, LuP;->b(Landroid/view/ViewGroup;)V

    .line 213
    sget-object v0, LuP;->b:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, LuP;->a([Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 214
    invoke-direct {p0, p1}, LuP;->b(Landroid/view/ViewGroup;)V

    move v0, v1

    .line 215
    :goto_12
    sget-object v2, LuP;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_37

    .line 218
    sget-object v2, LuP;->c:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v0

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 219
    new-array v4, v3, [Ljava/lang/String;

    move v2, v1

    .line 220
    :goto_24
    if-ge v2, v3, :cond_31

    .line 221
    sget-object v5, LuP;->c:[Ljava/lang/String;

    add-int v6, v0, v2

    aget-object v5, v5, v6

    aput-object v5, v4, v2

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 223
    :cond_31
    invoke-direct {p0, v4, p1}, LuP;->a([Ljava/lang/String;Landroid/view/ViewGroup;)V

    .line 215
    add-int/lit8 v0, v0, 0xa

    goto :goto_12

    .line 225
    :cond_37
    return-void
.end method

.method private a([Ljava/lang/String;Landroid/view/ViewGroup;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 232
    iget-object v0, p0, LuP;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Luq;->color_pallete_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 234
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v2, v3

    .line 235
    :goto_14
    array-length v1, p1

    if-ge v2, v1, :cond_2f

    .line 236
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 237
    iget-object v4, p0, LuP;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 239
    aget-object v4, p1, v2

    invoke-direct {p0, v1, v4, v3}, LuP;->a(Landroid/widget/ImageView;Ljava/lang/String;Z)Landroid/view/View;

    .line 235
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_14

    .line 241
    :cond_2f
    return-void
.end method

.method static synthetic b(LuP;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, LuP;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/view/ViewGroup;)V
    .registers 4
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, LuP;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Luq;->color_pallete_row_divider:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 229
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, LuP;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 263
    iget-object v0, p0, LuP;->a:Landroid/widget/RadioButton;

    if-eqz v0, :cond_f

    .line 264
    iget-object v0, p0, LuP;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 265
    iget-object v0, p0, LuP;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->requestFocus()Z

    .line 267
    :cond_f
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, LuP;->a:Landroid/view/View$OnClickListener;

    .line 357
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 177
    sget v0, Lup;->color_grid_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, LuP;->a:Landroid/view/ViewGroup;

    .line 178
    sget v0, Lup;->color_mode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, LuP;->a:Landroid/widget/RadioGroup;

    .line 179
    sget v0, Lup;->text_color:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, LuP;->a:Landroid/widget/RadioButton;

    .line 180
    iget-boolean v0, p0, LuP;->a:Z

    if-eqz v0, :cond_34

    .line 181
    sget v0, Lup;->back_to_keyboard:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 182
    new-instance v1, LuR;

    invoke-direct {v1, p0}, LuR;-><init>(LuP;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :cond_34
    iget-object v0, p0, LuP;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 194
    iget-object v0, p0, LuP;->c:Ljava/lang/String;

    iput-object v0, p0, LuP;->a:Ljava/lang/String;

    .line 196
    iget-object v0, p0, LuP;->a:Landroid/widget/RadioGroup;

    new-instance v1, LuS;

    invoke-direct {v1, p0}, LuS;-><init>(LuP;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 207
    iget-object v0, p0, LuP;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, LuP;->a(Landroid/view/ViewGroup;)V

    .line 208
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, LuP;->c:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public a(LuT;)V
    .registers 2
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, LuP;->a:LuT;

    .line 169
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, LuP;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 340
    iget-object v0, p0, LuP;->a:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_13

    .line 341
    iget-object v0, p0, LuP;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 342
    sget v1, Lup;->text_color:I

    if-ne v0, v1, :cond_14

    .line 343
    iget-object v0, p0, LuP;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, LuP;->d(Ljava/lang/String;)V

    .line 348
    :cond_13
    :goto_13
    return-void

    .line 344
    :cond_14
    sget v1, Lup;->text_highlight:I

    if-ne v0, v1, :cond_13

    .line 345
    iget-object v0, p0, LuP;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, LuP;->d(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, LuP;->b:Ljava/lang/String;

    .line 160
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, LuP;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 249
    iput-object p1, p0, LuP;->c:Ljava/lang/String;

    .line 253
    :goto_a
    invoke-virtual {p0, p1}, LuP;->d(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, LuP;->a:LuT;

    if-eqz v0, :cond_16

    .line 255
    iget-object v0, p0, LuP;->a:LuT;

    invoke-interface {v0}, LuT;->a()V

    .line 257
    :cond_16
    return-void

    .line 251
    :cond_17
    iput-object p1, p0, LuP;->b:Ljava/lang/String;

    goto :goto_a
.end method

.method public d(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, LuP;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, LuP;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 274
    if-eqz v0, :cond_12

    .line 275
    iget-object v1, p0, LuP;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, LuP;->a(Landroid/widget/ImageView;Ljava/lang/String;Z)Landroid/view/View;

    .line 278
    :cond_12
    iget-object v0, p0, LuP;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 279
    if-eqz v0, :cond_20

    .line 280
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, LuP;->a(Landroid/widget/ImageView;Ljava/lang/String;Z)Landroid/view/View;

    .line 282
    :cond_20
    iput-object p1, p0, LuP;->a:Ljava/lang/String;

    .line 283
    return-void
.end method
