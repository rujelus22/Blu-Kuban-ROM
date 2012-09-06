.class public Lcom/google/googlenav/ui/android/TransitStationView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final a:Landroid/graphics/Rect;

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field private static final i:Landroid/graphics/RectF;


# instance fields
.field protected f:I

.field protected final g:Landroid/view/LayoutInflater;

.field protected h:Lcom/google/googlenav/ca;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TransitStationView;->b:I

    .line 56
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TransitStationView;->c:I

    .line 59
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TransitStationView;->d:I

    .line 62
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TransitStationView;->e:I

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TransitStationView;->a:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TransitStationView;->i:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 90
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TransitStationView;->g:Landroid/view/LayoutInflater;

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TransitStationView;->g:Landroid/view/LayoutInflater;

    .line 96
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/googlenav/cn;ZI)Landroid/widget/TextView;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "placeholder"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 169
    new-instance v1, Lcom/google/googlenav/ui/android/aA;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/googlenav/ui/android/aA;-><init>(Lcom/google/googlenav/cn;ZI)V

    .line 171
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 172
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-object v1
.end method

.method static synthetic a(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/google/googlenav/ui/android/TransitStationView;->b(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/text/SpannableStringBuilder;II)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x21

    .line 492
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TransitStationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f00bb

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 494
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p1, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 496
    return-void
.end method

.method private b(Lcom/google/googlenav/ca;)I
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 117
    move v0, v1

    move v2, v1

    .line 120
    :goto_3
    invoke-virtual {p1}, Lcom/google/googlenav/ca;->k()I

    move-result v3

    if-ge v0, v3, :cond_38

    .line 121
    invoke-virtual {p1, v0}, Lcom/google/googlenav/ca;->a(I)Lcom/google/googlenav/cn;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Lcom/google/googlenav/cn;->c()Z

    move-result v4

    if-nez v4, :cond_29

    .line 123
    invoke-virtual {v3}, Lcom/google/googlenav/cn;->h()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/widget/TextView;

    move-result-object v3

    .line 124
    invoke-virtual {v3, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 125
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 126
    if-le v3, v2, :cond_26

    move v2, v3

    .line 120
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 129
    :cond_29
    invoke-virtual {v3}, Lcom/google/googlenav/cn;->l()I

    move-result v3

    const/high16 v4, -0x100

    if-ne v3, v4, :cond_26

    sget v3, Lcom/google/googlenav/ui/android/TransitStationView;->e:I

    if-le v3, v2, :cond_26

    .line 131
    sget v2, Lcom/google/googlenav/ui/android/TransitStationView;->e:I

    goto :goto_26

    .line 134
    :cond_38
    if-eqz v2, :cond_40

    .line 137
    sget v0, Lcom/google/googlenav/ui/android/TransitStationView;->b:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    .line 143
    :goto_3f
    return v0

    .line 141
    :cond_40
    sget v0, Lcom/google/googlenav/ui/android/TransitStationView;->d:I

    goto :goto_3f
.end method

.method private static b(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lcom/google/googlenav/ui/android/TransitStationView;->a:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v4, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    move-object v1, p1

    .line 270
    :goto_f
    sget-object v2, Lcom/google/googlenav/ui/android/TransitStationView;->a:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sget v3, Lcom/google/googlenav/ui/android/TransitStationView;->b:I

    sub-int v3, p2, v3

    if-le v2, v3, :cond_40

    if-lez v0, :cond_40

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Lcom/google/googlenav/ui/android/TransitStationView;->a:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_f

    .line 274
    :cond_40
    return-object v1
.end method

.method static synthetic g()Landroid/graphics/RectF;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/googlenav/ui/android/TransitStationView;->i:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic h()Landroid/graphics/Rect;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/googlenav/ui/android/TransitStationView;->a:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/cn;Z)Landroid/widget/TextView;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TransitStationView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/android/TransitStationView;->f:I

    invoke-static {v0, p1, p2, v1}, Lcom/google/googlenav/ui/android/TransitStationView;->a(Landroid/content/Context;Lcom/google/googlenav/cn;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 157
    return-object v0
.end method

.method protected a(ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/TransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 179
    invoke-static {p2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    return-void
.end method

.method protected a(Landroid/text/SpannableStringBuilder;Lcom/google/googlenav/cp;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 474
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Lcom/google/googlenav/cp;->d()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 475
    invoke-virtual {p2, v0}, Lcom/google/googlenav/cp;->a(I)Lcom/google/googlenav/cd;

    move-result-object v1

    .line 476
    if-lez v0, :cond_12

    .line 477
    const-string v2, " "

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 479
    :cond_12
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 480
    invoke-virtual {v1}, Lcom/google/googlenav/cd;->d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bi;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 481
    invoke-virtual {v1}, Lcom/google/googlenav/cd;->e()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2f

    .line 483
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-direct {p0, p1, v2, v1}, Lcom/google/googlenav/ui/android/TransitStationView;->a(Landroid/text/SpannableStringBuilder;II)V

    .line 474
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 486
    :cond_32
    return-void
.end method

.method protected a(Lcom/google/googlenav/ca;)V
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v1, 0x0

    .line 187
    invoke-virtual {p1}, Lcom/google/googlenav/ca;->k()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 189
    invoke-virtual {p1}, Lcom/google/googlenav/ca;->k()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v4

    move v0, v1

    move v2, v1

    .line 193
    :goto_15
    invoke-virtual {p1}, Lcom/google/googlenav/ca;->k()I

    move-result v5

    if-ge v0, v5, :cond_37

    .line 194
    invoke-virtual {p1, v0}, Lcom/google/googlenav/ca;->a(I)Lcom/google/googlenav/cn;

    move-result-object v5

    .line 195
    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/android/TransitStationView;->a(Lcom/google/googlenav/cn;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 196
    const/4 v2, 0x1

    .line 193
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 200
    :cond_29
    invoke-virtual {v5}, Lcom/google/googlenav/cn;->c()Z

    move-result v6

    if-nez v6, :cond_33

    .line 201
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 203
    :cond_33
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 207
    :cond_37
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_43

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_46

    .line 208
    :cond_43
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TransitStationView;->c()V

    .line 211
    :cond_46
    const v0, 0x7f1002f9

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/SelfMeasuredListView;

    .line 212
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_ae

    .line 215
    new-instance v5, Lcom/google/googlenav/ui/android/aB;

    sget v6, Lcom/google/googlenav/ui/android/TransitStationView;->b:I

    invoke-direct {v5, p0, v4, v6}, Lcom/google/googlenav/ui/android/aB;-><init>(Lcom/google/googlenav/ui/android/TransitStationView;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 216
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    .line 217
    const v4, 0x106000d

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setSelector(I)V

    .line 218
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setDividerHeight(I)V

    .line 223
    :goto_6b
    const v0, 0x7f1002fa

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;

    .line 224
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b2

    .line 227
    new-instance v4, Lcom/google/googlenav/ui/android/aB;

    invoke-direct {v4, p0, v3, v1}, Lcom/google/googlenav/ui/android/aB;-><init>(Lcom/google/googlenav/ui/android/TransitStationView;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setStretchMode(I)V

    .line 229
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setNumColumns(I)V

    .line 230
    iget v3, p0, Lcom/google/googlenav/ui/android/TransitStationView;->f:I

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setColumnWidth(I)V

    .line 231
    sget v3, Lcom/google/googlenav/ui/android/TransitStationView;->c:I

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setVerticalSpacing(I)V

    .line 232
    sget v3, Lcom/google/googlenav/ui/android/TransitStationView;->c:I

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setHorizontalSpacing(I)V

    .line 233
    const/high16 v3, 0x7f09

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setSelector(I)V

    .line 234
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setVisibility(I)V

    .line 235
    sget v3, Lcom/google/googlenav/ui/android/TransitStationView;->b:I

    sget v4, Lcom/google/googlenav/ui/android/TransitStationView;->b:I

    invoke-virtual {v0, v1, v3, v1, v4}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setPadding(IIII)V

    .line 240
    :goto_a8
    if-eqz v2, :cond_ad

    .line 241
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TransitStationView;->f()V

    .line 243
    :cond_ad
    return-void

    .line 220
    :cond_ae
    invoke-virtual {v0, v7}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    goto :goto_6b

    .line 237
    :cond_b2
    invoke-virtual {v0, v7}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setVisibility(I)V

    goto :goto_a8
.end method

.method protected a(Lcom/google/googlenav/cn;)Z
    .registers 3
    .parameter

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method protected c()V
    .registers 1

    .prologue
    .line 259
    return-void
.end method

.method protected f()V
    .registers 1

    .prologue
    .line 247
    return-void
.end method

.method protected setTransitStation(Lcom/google/googlenav/ca;Lcom/google/googlenav/ui/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/googlenav/ui/android/TransitStationView;->h:Lcom/google/googlenav/ca;

    .line 105
    iget-object v0, p0, Lcom/google/googlenav/ui/android/TransitStationView;->h:Lcom/google/googlenav/ca;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/TransitStationView;->b(Lcom/google/googlenav/ca;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/TransitStationView;->f:I

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TransitStationView;->setWillNotDraw(Z)V

    .line 110
    return-void
.end method
