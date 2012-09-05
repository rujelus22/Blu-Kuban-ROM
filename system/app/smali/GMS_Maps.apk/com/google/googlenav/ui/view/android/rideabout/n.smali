.class public Lcom/google/googlenav/ui/view/android/rideabout/n;
.super Ljava/lang/Object;


# static fields
.field private static f:I

.field private static g:I


# instance fields
.field final a:Landroid/view/View$OnClickListener;

.field private final b:Landroid/content/Context;

.field private final c:I

.field private d:I

.field private e:I

.field private final h:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/google/googlenav/ui/view/android/rideabout/n;->f:I

    sput v0, Lcom/google/googlenav/ui/view/android/rideabout/n;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->d:I

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->e:I

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/o;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/rideabout/o;-><init>(Lcom/google/googlenav/ui/view/android/rideabout/n;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->a:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->c:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->h:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static a(Landroid/content/res/Configuration;)I
    .registers 2

    invoke-static {p0}, Lcom/google/googlenav/ui/view/android/rideabout/n;->b(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f09005c

    :goto_9
    return v0

    :cond_a
    const v0, 0x7f09004c

    goto :goto_9
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/rideabout/n;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a()Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/TextView;)V
    .registers 3

    sget-object v0, Lcom/google/googlenav/android/ab;->a:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Landroid/widget/TextView;Ljava/util/regex/Pattern;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/google/googlenav/android/ab;->b:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Landroid/widget/TextView;Ljava/util/regex/Pattern;)Z

    :cond_d
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_15

    const/16 v0, 0x3ea

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/util/regex/Pattern;)Z
    .registers 10

    const/16 v6, 0x21

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v3, v0, v2, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v0, v2, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    :goto_3e
    return v0

    :cond_3f
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method public static a(Landroid/widget/ViewSwitcher;Landroid/content/res/Configuration;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/rideabout/n;->b(Landroid/content/res/Configuration;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionLandView;

    if-eqz v0, :cond_15

    if-nez v1, :cond_19

    :cond_15
    if-nez v0, :cond_1e

    if-nez v1, :cond_1e

    :cond_19
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->showNext()V

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static b(I)I
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3f666666

    mul-float/2addr v2, v3

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/res/Configuration;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-nez v1, :cond_f

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static c(I)I
    .registers 2

    sget v0, Lcom/google/googlenav/ui/view/android/rideabout/n;->f:I

    if-eq p0, v0, :cond_c

    invoke-static {p0}, Lcom/google/googlenav/ui/view/android/rideabout/n;->e(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/view/android/rideabout/n;->g:I

    sput p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->f:I

    :cond_c
    sget v0, Lcom/google/googlenav/ui/view/android/rideabout/n;->g:I

    return v0
.end method

.method private static d(I)F
    .registers 5

    const/high16 v0, 0xff

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v2, p0, 0xff

    int-to-float v0, v0

    const v3, 0x3e991687

    mul-float/2addr v0, v3

    int-to-float v1, v1

    const v3, 0x3f1645a2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    int-to-float v1, v2

    const v2, 0x3de978d5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private static e(I)I
    .registers 2

    invoke-static {p0}, Lcom/google/googlenav/ui/view/android/rideabout/n;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static f(I)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    const v0, 0xffffff

    if-ne p1, v0, :cond_b

    :cond_8
    iget p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->c:I

    :cond_a
    :goto_a
    return p1

    :cond_b
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/rideabout/n;->d(I)F

    move-result v0

    const/high16 v1, 0x4316

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->d:I

    if-eq p1, v0, :cond_21

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/rideabout/n;->b(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->e:I

    iput p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->d:I

    :cond_21
    iget p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->e:I

    goto :goto_a
.end method

.method public a(Ljava/lang/String;)Landroid/view/View;
    .registers 8

    const/16 v5, 0x21

    const/4 v4, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->b:Landroid/content/Context;

    const v3, 0x7f0d00c5

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/a;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/a;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 10

    const/16 v6, 0x21

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->b:Landroid/content/Context;

    const v3, 0x7f0d00c2

    invoke-direct {v0, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v4, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3e8

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->b:Landroid/content/Context;

    const v3, 0x7f0d00c9

    invoke-direct {v0, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_59
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->h:Landroid/view/LayoutInflater;

    const v2, 0x7f030170

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .registers 8

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {p2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_13
    return-object v0

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, p1}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-static {v1, p2}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    if-eqz p3, :cond_40

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4a1

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->b:Landroid/content/Context;

    const v3, 0x7f0d00c8

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    :cond_40
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->b:Landroid/content/Context;

    const v3, 0x7f0d00c7

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_38
.end method

.method public b(Ljava/lang/String;)Landroid/view/View;
    .registers 5

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->b:Landroid/content/Context;

    const v2, 0x7f0d00ca

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/n;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_20
    return-object v0
.end method
