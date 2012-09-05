.class public Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;
.super Lcom/google/googlenav/ui/android/TemplateView;


# static fields
.field public static final a:I

.field private static final i:I

.field private static final j:I

.field private static final k:I

.field private static final l:I

.field private static final m:I

.field private static final n:Landroid/graphics/Rect;

.field private static final o:Landroid/graphics/RectF;


# instance fields
.field private p:I

.field private final q:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x5

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->i:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->j:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->k:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->l:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->m:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->n:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->o:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->q:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->q:Landroid/view/LayoutInflater;

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 6

    invoke-static {p2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;
    .registers 11

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->q:Landroid/view/LayoutInflater;

    const v1, 0x7f030170

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private a(Lcom/google/googlenav/bS;Z)Landroid/widget/TextView;
    .registers 8

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "placeholder"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/ui/android/ah;

    iget v2, p0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->p:I

    invoke-direct {v1, p1, p2, v2}, Lcom/google/googlenav/ui/android/ah;-><init>(Lcom/google/googlenav/bS;ZI)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Lcom/google/googlenav/bS;Z)Landroid/widget/TextView;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/bS;Z)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;)Lcom/google/googlenav/android/c;
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->l()Lcom/google/googlenav/android/c;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/bV;Z)Ljava/lang/CharSequence;
    .registers 12

    const/16 v8, 0x21

    const/4 v1, 0x0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/bV;->c()Lcom/google/googlenav/bP;

    move-result-object v0

    if-eqz v0, :cond_b1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_14
    invoke-virtual {p1}, Lcom/google/googlenav/bV;->e()I

    move-result v4

    if-ge v0, v4, :cond_40

    invoke-virtual {p1, v0}, Lcom/google/googlenav/bV;->a(I)Lcom/google/googlenav/bP;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/bP;->a()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2f

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    invoke-virtual {v4}, Lcom/google/googlenav/bP;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_ad

    const/16 v0, 0x1d9

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v0, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d00a4

    invoke-direct {v0, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v0, " "

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-char v0, Lcom/google/googlenav/ui/bw;->bq:C

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p2, :cond_84

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_84
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-string v1, "("

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v2, p1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Landroid/text/SpannableStringBuilder;Lcom/google/googlenav/bV;)V

    const-string v1, ")"

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d00a6

    invoke-direct {v1, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v1, v0, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_a8
    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_ad
    invoke-direct {p0, v2, p1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Landroid/text/SpannableStringBuilder;Lcom/google/googlenav/bV;)V

    goto :goto_a8

    :cond_b1
    invoke-direct {p0, v2, p1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Landroid/text/SpannableStringBuilder;Lcom/google/googlenav/bV;)V

    goto :goto_a8
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Lcom/google/googlenav/bV;Z)Ljava/lang/CharSequence;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/bV;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->b(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;II)V
    .registers 8

    const/16 v3, 0x21

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00a5

    invoke-direct {v0, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p1, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;Lcom/google/googlenav/bV;)V
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

    invoke-direct {p0, p1, v2, v1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Landroid/text/SpannableStringBuilder;II)V

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_32
    return-void
.end method

.method private a(Lcom/google/googlenav/bN;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->b(Lcom/google/googlenav/bN;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->c(Lcom/google/googlenav/bN;)V

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->d(Lcom/google/googlenav/bN;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/bN;LaY/i;)V
    .registers 9

    const v5, 0x7f0f03e5

    const v4, 0x7f0f03e4

    const/16 v3, 0x8

    const/4 v1, 0x0

    const v0, 0x7f0f03e6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->l()I

    move-result v2

    if-lez v2, :cond_55

    const/16 v2, 0x27d

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0f03e3

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :goto_39
    invoke-virtual {p1}, Lcom/google/googlenav/bN;->l()I

    move-result v2

    if-ge v1, v2, :cond_64

    invoke-virtual {p1, v1}, Lcom/google/googlenav/bN;->d(I)Lcom/google/googlenav/bN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/bN;->g()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08001d

    new-instance v5, Lcom/google/googlenav/ui/android/ag;

    invoke-direct {v5, p0, v2, p2}, Lcom/google/googlenav/ui/android/ag;-><init>(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Lcom/google/googlenav/bN;LaY/i;)V

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_55
    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v5}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_39

    :cond_64
    return-void
.end method

.method private a(Lcom/google/googlenav/bR;Landroid/widget/LinearLayout;)V
    .registers 8

    const/4 v4, -0x2

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget v1, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->k:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f02038b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v3, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->j:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/google/googlenav/bR;->a()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f080006

    invoke-direct {p0, v1, v0, v2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/bR;->b()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f080001

    invoke-direct {p0, v1, v0, v2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Landroid/view/ViewGroup;Ljava/lang/String;I)Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/bR;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7c

    invoke-virtual {p1}, Lcom/google/googlenav/bR;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f080028

    new-instance v3, Lcom/google/googlenav/ui/android/af;

    invoke-direct {v3, p0, p1}, Lcom/google/googlenav/ui/android/af;-><init>(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Lcom/google/googlenav/bR;)V

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Landroid/view/ViewGroup;Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/widget/TextView;

    :cond_7c
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;)I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->p:I

    return v0
.end method

.method private static b(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->n:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v4, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    move-object v1, p1

    :goto_f
    sget-object v2, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->n:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sget v3, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->i:I

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

    sget-object v3, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->n:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_f

    :cond_40
    return-object v1
.end method

.method private b(Lcom/google/googlenav/bN;)V
    .registers 9

    const v6, 0x7f0f03d6

    const/16 v5, 0x8

    const/4 v2, 0x0

    const v0, 0x7f0f03d4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f03d5

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->j()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_30

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2f
    return-void

    :cond_30
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v3, 0x36

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v2

    :goto_47
    invoke-virtual {p1}, Lcom/google/googlenav/bN;->j()I

    move-result v2

    if-ge v0, v2, :cond_2f

    invoke-virtual {p1, v0}, Lcom/google/googlenav/bN;->c(I)Lcom/google/googlenav/bR;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/bR;Landroid/widget/LinearLayout;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_47
.end method

.method private c(Lcom/google/googlenav/bN;)V
    .registers 11

    const v8, 0x7f0f03de

    const v7, 0x7f0f03dd

    const v6, 0x7f0f03d7

    const/16 v5, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->i()I

    move-result v0

    invoke-static {v0}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    move v0, v1

    :goto_15
    invoke-virtual {p1}, Lcom/google/googlenav/bN;->i()I

    move-result v3

    if-ge v0, v3, :cond_2b

    invoke-virtual {p1, v0}, Lcom/google/googlenav/bN;->b(I)Lcom/google/googlenav/bS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bS;->a()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2b
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const v0, 0x7f0f03dc

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/SelfMeasuredListView;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b1

    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v8}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0f03da

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x4d4

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-char v5, Lcom/google/googlenav/ui/bw;->bq:C

    invoke-static {v5}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(ILjava/lang/String;)V

    const v3, 0x7f0f03db

    const/16 v4, 0x1d7

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(ILjava/lang/String;)V

    const/16 v3, 0x1ef

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7, v3}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(ILjava/lang/String;)V

    new-instance v3, Lcom/google/googlenav/ui/android/aj;

    invoke-direct {v3, p0, v2}, Lcom/google/googlenav/ui/android/aj;-><init>(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setSelector(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setDividerHeight(I)V

    :goto_b0
    return-void

    :cond_b1
    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v8}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v7}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    goto :goto_b0
.end method

.method private d(Lcom/google/googlenav/bN;)V
    .registers 10

    const v7, 0x7f0f03e2

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->i()I

    move-result v0

    invoke-static {v0}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    move v0, v1

    :goto_10
    invoke-virtual {p1}, Lcom/google/googlenav/bN;->i()I

    move-result v3

    if-ge v0, v3, :cond_26

    invoke-virtual {p1, v0}, Lcom/google/googlenav/bN;->b(I)Lcom/google/googlenav/bS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bS;->h()I

    move-result v4

    if-lez v4, :cond_23

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_26
    const v0, 0x7f0f03e1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/SelfMeasuredListView;

    const v3, 0x7f0f03df

    const/16 v4, 0x4d5

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(ILjava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_63

    new-instance v3, Lcom/google/googlenav/ui/android/ak;

    invoke-direct {v3, p0, v2}, Lcom/google/googlenav/ui/android/ak;-><init>(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVerticalFadingEdgeEnabled(Z)V

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setSelector(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setDividerHeight(I)V

    :cond_62
    :goto_62
    return-void

    :cond_63
    const v1, 0x7f0f03e0

    const/16 v2, 0x408

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(ILjava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->i()I

    move-result v0

    if-ge v0, v5, :cond_62

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->l()I

    move-result v0

    if-ge v0, v5, :cond_62

    invoke-virtual {p0, v7}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_62
.end method

.method private e(Lcom/google/googlenav/bN;)I
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

    sget v3, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->m:I

    if-le v3, v2, :cond_26

    sget v2, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->m:I

    goto :goto_26

    :cond_38
    if-eqz v2, :cond_40

    sget v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->i:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    :goto_3f
    return v0

    :cond_40
    sget v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->l:I

    goto :goto_3f
.end method

.method static synthetic f()I
    .registers 1

    sget v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->l:I

    return v0
.end method

.method private f(Lcom/google/googlenav/bN;)V
    .registers 9

    const/16 v6, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->i()I

    move-result v0

    invoke-static {v0}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/bN;->i()I

    move-result v0

    invoke-static {v0}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v3

    move v0, v1

    :goto_14
    invoke-virtual {p1}, Lcom/google/googlenav/bN;->i()I

    move-result v4

    if-ge v0, v4, :cond_2e

    invoke-virtual {p1, v0}, Lcom/google/googlenav/bN;->b(I)Lcom/google/googlenav/bS;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/bS;->d()Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_2a
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_2e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3a

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_46

    :cond_3a
    const v0, 0x7f0f03e3

    const/16 v4, 0x4d3

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(ILjava/lang/String;)V

    :cond_46
    const v0, 0x7f0f0278

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/SelfMeasuredListView;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a9

    new-instance v4, Lcom/google/googlenav/ui/android/ai;

    sget v5, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->i:I

    invoke-direct {v4, p0, v3, v5}, Lcom/google/googlenav/ui/android/ai;-><init>(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    const v3, 0x106000d

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setSelector(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setDividerHeight(I)V

    :goto_6b
    const v0, 0x7f0f0279

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_ad

    new-instance v3, Lcom/google/googlenav/ui/android/ai;

    invoke-direct {v3, p0, v2, v1}, Lcom/google/googlenav/ui/android/ai;-><init>(Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setStretchMode(I)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setNumColumns(I)V

    iget v2, p0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->p:I

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setColumnWidth(I)V

    sget v2, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->k:I

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setVerticalSpacing(I)V

    sget v2, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->k:I

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setHorizontalSpacing(I)V

    const/high16 v2, 0x7f08

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setSelector(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setVisibility(I)V

    sget v2, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->i:I

    sget v3, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->i:I

    invoke-virtual {v0, v1, v2, v1, v3}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setPadding(IIII)V

    :goto_a8
    return-void

    :cond_a9
    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/android/SelfMeasuredListView;->setVisibility(I)V

    goto :goto_6b

    :cond_ad
    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/android/SelfMeasuredGridView;->setVisibility(I)V

    goto :goto_a8
.end method

.method static synthetic g()Landroid/graphics/RectF;
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->o:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic h()Landroid/graphics/Rect;
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->n:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic i()I
    .registers 1

    sget v0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->k:I

    return v0
.end method

.method private j()Lcom/google/googlenav/ui/bu;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->b()Lcom/google/googlenav/ui/bl;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bu;

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->j()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/bu;->a:Lcom/google/googlenav/bN;

    invoke-virtual {v0}, Lcom/google/googlenav/bN;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l()Lcom/google/googlenav/android/c;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/AndroidGmmApplication;

    invoke-virtual {v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a()Lcom/google/googlenav/android/b;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/bV;)Ljava/lang/CharSequence;
    .registers 11

    const/4 v0, 0x0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v1, v0

    :goto_7
    const/4 v3, 0x3

    if-ge v0, v3, :cond_4d

    invoke-virtual {p1}, Lcom/google/googlenav/bV;->e()I

    move-result v3

    if-ge v1, v3, :cond_4d

    invoke-virtual {p1, v1}, Lcom/google/googlenav/bV;->a(I)Lcom/google/googlenav/bP;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bP;->a()Z

    move-result v4

    if-eqz v4, :cond_4a

    if-lez v0, :cond_21

    const-string v4, ", "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_21
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/googlenav/bP;->c()J

    move-result-wide v5

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d00a4

    invoke-direct {v3, v5, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4d
    invoke-static {v2}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/ui/android/TemplateView;->a()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->j()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/ui/bu;->a:Lcom/google/googlenav/bN;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/bN;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/bl;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    const/16 v0, 0x54

    const-string v1, "ts"

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->j()Lcom/google/googlenav/ui/bu;

    move-result-object v1

    iget-object v2, v1, Lcom/google/googlenav/ui/bu;->a:Lcom/google/googlenav/bN;

    const v0, 0x7f0f022e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->e(Lcom/google/googlenav/bN;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->p:I

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/bN;)V

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->f(Lcom/google/googlenav/bN;)V

    iget-object v0, v1, Lcom/google/googlenav/ui/bu;->b:LaY/m;

    invoke-direct {p0, v2, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->a(Lcom/google/googlenav/bN;LaY/i;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->setWillNotDraw(Z)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/TemplateViewRealtimeScheduleTransitStation;->j()Lcom/google/googlenav/ui/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bu;->o()V

    return-void
.end method
