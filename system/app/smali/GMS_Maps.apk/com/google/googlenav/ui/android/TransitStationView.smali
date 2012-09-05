.class public Lcom/google/googlenav/ui/android/TransitStationView;
.super Landroid/widget/LinearLayout;


# static fields
.field private static final a:I

.field protected static final b:I

.field private static final f:I

.field private static final g:I

.field private static final h:Landroid/graphics/Rect;

.field private static final i:Landroid/graphics/RectF;


# instance fields
.field protected c:I

.field protected final d:Landroid/view/LayoutInflater;

.field protected e:Lcom/google/googlenav/bN;

.field private j:Lcom/google/googlenav/ui/p;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TransitStationView;->a:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TransitStationView;->b:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TransitStationView;->f:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TransitStationView;->g:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TransitStationView;->h:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TransitStationView;->i:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TransitStationView;->d:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TransitStationView;->d:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/googlenav/bS;ZI)Landroid/widget/TextView;
    .registers 9

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "placeholder"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/ui/android/al;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/googlenav/ui/android/al;-><init>(Lcom/google/googlenav/bS;ZI)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method static synthetic a(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/google/googlenav/ui/android/TransitStationView;->b(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/text/SpannableStringBuilder;II)V
    .registers 8

    const/16 v3, 0x21

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TransitStationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00a5

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p1, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private b(Lcom/google/googlenav/bN;)I
    .registers 7

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_3
    invoke-virtual {p1}, Lcom/google/googlenav/bN;->i()I

    move-result v3

    if-ge v0, v3, :cond_38

    invoke-virtual {p1, v0}, Lcom/google/googlenav/bN;->b(I)Lcom/google/googlenav/bS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bS;->d()Z

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual {v3}, Lcom/google/googlenav/bS;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1, v1}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    if-le v3, v2, :cond_26

    move v2, v3

    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_29
    invoke-virtual {v3}, Lcom/google/googlenav/bS;->f()I

    move-result v3

    const/high16 v4, -0x100

    if-ne v3, v4, :cond_26

    sget v3, Lcom/google/googlenav/ui/android/TransitStationView;->g:I

    if-le v3, v2, :cond_26

    sget v2, Lcom/google/googlenav/ui/android/TransitStationView;->g:I

    goto :goto_26

    :cond_38
    if-eqz v2, :cond_40

    sget v0, Lcom/google/googlenav/ui/android/TransitStationView;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    :goto_3f
    return v0

    :cond_40
    sget v0, Lcom/google/googlenav/ui/android/TransitStationView;->f:I

    goto :goto_3f
.end method

.method private static b(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lcom/google/googlenav/ui/android/TransitStationView;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v4, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    move-object v1, p1

    :goto_f
    sget-object v2, Lcom/google/googlenav/ui/android/TransitStationView;->h:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sget v3, Lcom/google/googlenav/ui/android/TransitStationView;->a:I

    sub-int v3, p2, v3

    if-le v2, v3, :cond_40

    if-lez v0, :cond_40

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

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Lcom/google/googlenav/ui/android/TransitStationView;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_f

    :cond_40
    return-object v1
.end method

.method static synthetic e()I
    .registers 1

    sget v0, Lcom/google/googlenav/ui/android/TransitStationView;->f:I

    return v0
.end method

.method static synthetic f()Landroid/graphics/RectF;
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/android/TransitStationView;->i:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic g()Landroid/graphics/Rect;
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/android/TransitStationView;->h:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method protected G_()V
    .registers 1

    return-void
.end method

.method protected a(Lcom/google/googlenav/bS;Z)Landroid/widget/TextView;
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TransitStationView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/android/TransitStationView;->c:I

    invoke-static {v0, p1, p2, v1}, Lcom/google/googlenav/ui/android/TransitStationView;->a(Landroid/content/Context;Lcom/google/googlenav/bS;ZI)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILjava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/TransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected a(Landroid/text/SpannableStringBuilder;Lcom/google/googlenav/bV;)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Lcom/google/googlenav/bV;->e()I

    move-result v1

    if-ge v0, v1, :cond_32

    invoke-virtual {p2, v0}, Lcom/google/googlenav/bV;->a(I)Lcom/google/googlenav/bP;

    move-result-object v1

    if-lez v0, :cond_12

    const-string v2, " "

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_12
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/googlenav/bP;->d()Lam/b;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bq;->b(Lam/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Lcom/google/googlenav/bP;->e()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2f

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-direct {p0, p1, v2, v1}, Lcom/google/googlenav/ui/android/TransitStationView;->a(Landroid/text/SpannableStringBuilder;II)V

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_32
    return-void
.end method

.method protected a(Lcom/google/googlenav/bN;)V
    .registers 10

    const/16 v7, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->i()I

    move-result v0

    invoke-static {v0}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->i()I

    move-result v0

    invoke-static {v0}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v4

    move v0, v1

    move v2, v1

    :goto_15
    invoke-virtual {p1}, Lcom/google/googlenav/bN;->i()I

    move-result v5

    if-ge v0, v5, :cond_37

    invoke-virtual {p1, v0}, Lcom/google/googlenav/bN;->b(I)Lcom/google/googlenav/bS;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/android/TransitStationView;->a(Lcom/google/googlenav/bS;)Z

    move-result v6

    if-eqz v6, :cond_29

    const/4 v2, 0x1

    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_29
    invoke-virtual {v5}, Lcom/google/googlenav/bS;->d()Z

    move-result v6

    if-nez v6, :cond_33

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_33
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_37
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_43

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_46

    :cond_43
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TransitStationView;->b()V

    :cond_46
    const v0, 0x7f0f0278

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/SelfMeasuredListView;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_ae

    new-instance v5, Lcom/google/googlenav/ui/android/am;

    sget v6, Lcom/google/googlenav/ui/android/TransitStationView;->a:I

    invoke-direct {v5, p0, v4, v6}, Lcom/google/googlenav/ui/android/am;-><init>(Lcom/google/googlenav/ui/android/TransitStationView;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    const v4, 0x106000d

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setSelector(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setDividerHeight(I)V

    :goto_6b
    const v0, 0x7f0f0279

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b2

    new-instance v4, Lcom/google/googlenav/ui/android/am;

    invoke-direct {v4, p0, v3, v1}, Lcom/google/googlenav/ui/android/am;-><init>(Lcom/google/googlenav/ui/android/TransitStationView;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setStretchMode(I)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setNumColumns(I)V

    iget v3, p0, Lcom/google/googlenav/ui/android/TransitStationView;->c:I

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setColumnWidth(I)V

    sget v3, Lcom/google/googlenav/ui/android/TransitStationView;->b:I

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setVerticalSpacing(I)V

    sget v3, Lcom/google/googlenav/ui/android/TransitStationView;->b:I

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setHorizontalSpacing(I)V

    const/high16 v3, 0x7f08

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setSelector(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setVisibility(I)V

    sget v3, Lcom/google/googlenav/ui/android/TransitStationView;->a:I

    sget v4, Lcom/google/googlenav/ui/android/TransitStationView;->a:I

    invoke-virtual {v0, v1, v3, v1, v4}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setPadding(IIII)V

    :goto_a8
    if-eqz v2, :cond_ad

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TransitStationView;->G_()V

    :cond_ad
    return-void

    :cond_ae
    invoke-virtual {v0, v7}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    goto :goto_6b

    :cond_b2
    invoke-virtual {v0, v7}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setVisibility(I)V

    goto :goto_a8
.end method

.method protected a(Lcom/google/googlenav/bN;Lcom/google/googlenav/ui/p;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/android/TransitStationView;->e:Lcom/google/googlenav/bN;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/TransitStationView;->j:Lcom/google/googlenav/ui/p;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TransitStationView;->e:Lcom/google/googlenav/bN;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/TransitStationView;->b(Lcom/google/googlenav/bN;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/TransitStationView;->c:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TransitStationView;->setWillNotDraw(Z)V

    return-void
.end method

.method protected a(Lcom/google/googlenav/bS;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .registers 1

    return-void
.end method
