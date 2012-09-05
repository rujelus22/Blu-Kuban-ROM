.class public Lcom/google/android/maps/driveabout/app/dA;
.super Ljava/lang/Object;


# static fields
.field private static final a:I

.field private static b:Lcom/google/android/maps/driveabout/app/dA;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/maps/driveabout/app/aJ;

.field private final e:C

.field private final f:C

.field private final g:Ljava/util/HashSet;

.field private final h:Ljava/util/HashSet;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Lu/K;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "%1$s"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/android/maps/driveabout/app/dA;->a:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    new-instance v0, Lcom/google/android/maps/driveabout/app/aJ;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/app/aJ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dA;->d:Lcom/google/android/maps/driveabout/app/aJ;

    const v0, 0x7f0b00ab

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dA;->a(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dA;->h:Ljava/util/HashSet;

    const v0, 0x7f0b00ac

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dA;->a(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dA;->g:Ljava/util/HashSet;

    const v0, 0x7f0b0026

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/google/android/maps/driveabout/app/dA;->e:C

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/google/android/maps/driveabout/app/dA;->f:C

    return-void
.end method

.method private a(Ljava/lang/String;I)I
    .registers 6

    const/16 v0, 0x20

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_19

    if-le v0, p2, :cond_19

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dA;->h:Ljava/util/HashSet;

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    add-int/lit8 v0, v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, -0x1

    goto :goto_18
.end method

.method private a(IIIF)Landroid/text/Spannable;
    .registers 14

    const v8, 0x7f080053

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v7, 0x21

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_be

    const/4 v0, 0x2

    :goto_c
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dA;->d:Lcom/google/android/maps/driveabout/app/aJ;

    invoke-virtual {v3, p1, p2, v1, v0}, Lcom/google/android/maps/driveabout/app/aJ;->a(IIZI)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move v0, v2

    :goto_18
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_5b

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_2c

    iget-char v6, p0, Lcom/google/android/maps/driveabout/app/dA;->e:C

    if-ne v5, v6, :cond_c1

    :cond_2c
    if-lez v0, :cond_5b

    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_3a

    new-instance v5, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v5}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-virtual {v4, v5, v2, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3a
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v6, 0x3f19999a

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v4, v5, v2, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    and-int/lit8 v5, p3, 0x2

    if-eqz v5, :cond_5b

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4, v5, v2, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    :goto_5f
    if-le v2, v0, :cond_b3

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_71

    iget-char v6, p0, Lcom/google/android/maps/driveabout/app/dA;->f:C

    if-ne v5, v6, :cond_c5

    :cond_71
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_b3

    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_87

    new-instance v5, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v5}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_87
    const/high16 v5, 0x3f80

    cmpl-float v5, p4, v5

    if-eqz v5, :cond_99

    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v5, p4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_99
    and-int/lit8 v5, p3, 0x2

    if-eqz v5, :cond_b3

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v5, v2, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_b3
    if-ge v0, v2, :cond_bd

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4, v3, v0, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_bd
    return-object v4

    :cond_be
    move v0, v1

    goto/16 :goto_c

    :cond_c1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_18

    :cond_c5
    add-int/lit8 v2, v2, -0x1

    goto :goto_5f
.end method

.method public static a(Landroid/content/Context;I)Landroid/text/Spannable;
    .registers 7

    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;IIZ)Landroid/text/Spannable;
    .registers 6

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/high16 v1, 0x3fc0

    invoke-static {p0, v0, p2, v1, p3}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .registers 5

    const v0, 0x7f02012a

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/text/Spannable;
    .registers 11

    const/16 v5, 0x21

    const/4 v4, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_21

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_21
    if-eqz p2, :cond_39

    const-string v1, "  "

    invoke-virtual {v0, v4, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Lcom/google/android/maps/driveabout/app/dn;

    invoke-direct {v2, v1, p3}, Lcom/google/android/maps/driveabout/app/dn;-><init>(Landroid/graphics/drawable/Drawable;F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v4, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_39
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;
    .registers 5

    const/4 v0, 0x0

    const/high16 v1, 0x3fc0

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/Spannable;
    .registers 16

    const/16 v8, 0x21

    const/4 v7, 0x1

    const v6, 0x3f19999a

    const-string v0, "%1$s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    sget v0, Lcom/google/android/maps/driveabout/app/dA;->a:I

    add-int v1, v3, v0

    const-string v0, "%2$s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    sget v0, Lcom/google/android/maps/driveabout/app/dA;->a:I

    add-int/2addr v0, v2

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-ge v3, v2, :cond_5e

    move v9, v2

    move v2, v1

    move v1, v9

    :goto_23
    if-eqz p4, :cond_3d

    if-lez v3, :cond_2b

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/text/Spannable;IIF)V

    :cond_2b
    if-ge v2, v1, :cond_30

    invoke-direct {p0, v4, v2, v1, v6}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/text/Spannable;IIF)V

    :cond_30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {p0, v4, v0, v5, v6}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/text/Spannable;IIF)V

    :cond_3d
    invoke-virtual {v4, v1, v0, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v0, v1, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v4, v3, v2, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v4, v0, v3, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v4

    :cond_5e
    move-object v9, p2

    move-object p2, p3

    move-object p3, v9

    move v10, v1

    move v1, v3

    move v3, v2

    move v2, v0

    move v0, v10

    goto :goto_23
.end method

.method private static a(Lu/K;Landroid/graphics/drawable/Drawable;)Landroid/text/Spannable;
    .registers 8

    const/16 v5, 0x21

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lu/K;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/dn;

    const v2, 0x3f99999a

    invoke-direct {v1, p1, v2}, Lcom/google/android/maps/driveabout/app/dn;-><init>(Landroid/graphics/drawable/Drawable;F)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0}, Lu/K;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p0}, Lu/K;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const/high16 v4, 0x3f40

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_50
    return-object v0
.end method

.method public static a()Lcom/google/android/maps/driveabout/app/dA;
    .registers 1

    sget-object v0, Lcom/google/android/maps/driveabout/app/dA;->b:Lcom/google/android/maps/driveabout/app/dA;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lu/P;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lu/P;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p1}, Lu/P;->d()Lu/Q;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lu/Q;->a()I

    move-result v1

    if-lez v1, :cond_1d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu/Q;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_1d
    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static a(Landroid/content/Context;Lu/P;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Lu/P;->d()Lu/Q;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lu/Q;->a()I

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v1

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_15
    invoke-virtual {v2}, Lu/Q;->a()I

    move-result v4

    if-ge v0, v4, :cond_2a

    if-lez v0, :cond_20

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    invoke-virtual {v2, v0}, Lu/Q;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/content/Context;Lu/P;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_44

    move-object v0, v1

    goto :goto_e

    :cond_44
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 9

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    :goto_7
    return-object p0

    :cond_8
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/K;

    invoke-virtual {v0}, Lu/K;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Lu/K;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Lu/K;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3f
    :goto_3f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/K;

    invoke-virtual {v0}, Lu/K;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_76

    invoke-virtual {v0}, Lu/K;->e()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5d

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3f

    :cond_5d
    if-eqz v6, :cond_70

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_70
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    :cond_76
    invoke-virtual {v0}, Lu/K;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_86
    move-object p0, v2

    goto :goto_7
.end method

.method private a(I)Ljava/util/HashSet;
    .registers 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v3, :cond_21

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_21
    return-object v2
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcom/google/android/maps/driveabout/app/dA;->b:Lcom/google/android/maps/driveabout/app/dA;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/maps/driveabout/app/dA;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dA;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/dA;->b:Lcom/google/android/maps/driveabout/app/dA;

    :cond_b
    return-void
.end method

.method private a(Landroid/text/Spannable;IIF)V
    .registers 9

    const/16 v3, 0x21

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, p4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;)V
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Lu/K;

    invoke-virtual {p1, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    move v1, v0

    :goto_c
    array-length v0, v2

    if-ge v1, v0, :cond_2d

    aget-object v0, v2, v1

    check-cast v0, Lu/K;

    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_2d
    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;Lu/I;Lu/K;I)V
    .registers 8

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lu/K;->f()Z

    move-result v0

    if-nez v0, :cond_23

    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    invoke-static {v0, p2}, Lu/k;->a(Landroid/content/Context;Lu/I;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_23

    const-string v1, "  "

    invoke-virtual {p1, p4, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dn;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/dn;-><init>(Landroid/graphics/drawable/Drawable;F)V

    add-int/lit8 v0, p4, 0x1

    const/16 v2, 0x21

    invoke-virtual {p1, v1, p4, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_23
    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;Lx/af;)V
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Lu/K;

    invoke-virtual {p1, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    move v1, v0

    :goto_c
    array-length v0, v3

    if-ge v1, v0, :cond_67

    aget-object v0, v3, v1

    check-cast v0, Lu/K;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lu/K;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3b

    invoke-static {}, Lx/ag;->c()Lx/ag;

    move-result-object v4

    if-eqz v4, :cond_3b

    invoke-virtual {v0}, Lu/K;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lx/ag;->a(Ljava/lang/String;Lx/af;)Lx/ad;

    move-result-object v4

    if-eqz v4, :cond_3b

    invoke-virtual {v4}, Lx/ad;->b()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v4}, Lx/ad;->c()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3b

    invoke-virtual {v4}, Lx/ad;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_3b
    if-eqz v2, :cond_53

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/dA;->a(Lu/K;Landroid/graphics/drawable/Drawable;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {p1, v4, v5, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_4c
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_53
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4c

    :cond_67
    return-void
.end method

.method private b(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/dA;->a(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_8

    return v0

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;I)I
    .registers 6

    const/16 v0, 0x20

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    if-lez v0, :cond_1d

    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dA;->g:Ljava/util/HashSet;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, -0x1

    goto :goto_1c
.end method

.method public static b(Landroid/content/Context;)Landroid/text/Spannable;
    .registers 7

    const/16 v5, 0x21

    const v0, 0x7f0b00d7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    const v2, 0x7f0b00c3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, "%2$s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    sget v3, Lcom/google/android/maps/driveabout/app/dA;->a:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v0, v3, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%1$s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    sget v3, Lcom/google/android/maps/driveabout/app/dA;->a:I

    add-int/2addr v3, v1

    const-string v4, " "

    invoke-virtual {v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v3, Lcom/google/android/maps/driveabout/app/dn;

    const/high16 v4, 0x3f80

    invoke-direct {v3, v0, v4}, Lcom/google/android/maps/driveabout/app/dn;-><init>(Landroid/graphics/drawable/Drawable;F)V

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v2, v3, v1, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method public static b(Landroid/content/Context;Lu/P;)Ljava/lang/String;
    .registers 3

    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/content/Context;Lu/P;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lu/K;)Z
    .registers 3

    invoke-virtual {p1}, Lu/K;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lu/K;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private c(Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/dA;->b(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_b

    return v0

    :cond_b
    move v0, v1

    goto :goto_4
.end method


# virtual methods
.method a(Lu/K;)Landroid/graphics/drawable/Drawable;
    .registers 7

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dA;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dA;->j:Lu/K;

    if-ne v0, p1, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dA;->i:Landroid/graphics/drawable/Drawable;

    monitor-exit p0

    :goto_d
    return-object v0

    :cond_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_7c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lu/K;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lu/K;->g()Lu/I;

    move-result-object v1

    invoke-virtual {v1}, Lu/I;->c()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7f

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_3b
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    monitor-enter p0

    :try_start_73
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dA;->i:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dA;->j:Lu/K;

    monitor-exit p0

    goto :goto_d

    :catchall_79
    move-exception v0

    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_79

    throw v0

    :catchall_7c
    move-exception v0

    :try_start_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v0

    :cond_7f
    invoke-virtual {p1}, Lu/K;->g()Lu/I;

    move-result-object v1

    invoke-virtual {v1}, Lu/I;->c()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_91

    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3b

    :cond_91
    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3b
.end method

.method public a(II)Landroid/text/Spannable;
    .registers 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/google/android/maps/driveabout/app/dA;->a(IIIF)Landroid/text/Spannable;

    move-result-object v2

    const-string v3, "%1$s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    sget v3, Lcom/google/android/maps/driveabout/app/dA;->a:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v0, v3, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v1
.end method

.method public a(III)Landroid/text/Spannable;
    .registers 10

    const/4 v5, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Landroid/text/SpannableString;

    const-string v2, " "

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ScaleXSpan;

    const/high16 v3, 0x4080

    invoke-direct {v2, v3}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-interface {v1, v2, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, p1, p3, v5}, Lcom/google/android/maps/driveabout/app/dA;->a(IIZ)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, p2, v5}, Lcom/google/android/maps/driveabout/app/dA;->a(IZ)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public a(IIZ)Landroid/text/Spannable;
    .registers 6

    if-eqz p3, :cond_b

    const/4 v0, 0x1

    :goto_3
    const v1, 0x3f19999a

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/maps/driveabout/app/dA;->a(IIIF)Landroid/text/Spannable;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x2

    goto :goto_3
.end method

.method public a(ILu/I;I)Landroid/text/Spannable;
    .registers 8

    if-gtz p1, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/maps/driveabout/app/dA;->b(Lu/I;Lx/af;)Landroid/text/Spannable;

    move-result-object v0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    const v2, 0x7f0b002c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%1$s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "%1$s"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v3, 0x1

    invoke-virtual {p0, p1, p3, v3}, Lcom/google/android/maps/driveabout/app/dA;->a(IIZ)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2$s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "%2$s"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p2}, Lu/I;->o()Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_7
.end method

.method public a(IZ)Landroid/text/Spannable;
    .registers 11

    const v4, 0x15180

    const v7, 0x3f19999a

    const/4 v3, 0x1

    const/4 v0, 0x0

    add-int/lit8 v1, p1, 0x1e

    div-int v2, v1, v4

    rem-int v4, v1, v4

    div-int/lit16 v1, v4, 0xe10

    rem-int/lit16 v4, v4, 0xe10

    div-int/lit8 v5, v4, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    if-lez v2, :cond_3a

    const/16 v4, 0x1e

    if-le v5, v4, :cond_b8

    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x18

    if-ne v1, v4, :cond_b8

    add-int/lit8 v1, v2, 0x1

    :goto_24
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    const v4, 0x7f0b0028

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/android/maps/driveabout/app/dA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/Spannable;

    move-result-object v0

    :goto_39
    return-object v0

    :cond_3a
    if-gtz v1, :cond_3e

    if-eqz p2, :cond_76

    :cond_3e
    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    if-eqz p2, :cond_72

    const v2, 0x7f0b002b

    :goto_45
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_66

    const/16 v6, 0xa

    if-ge v5, v6, :cond_66

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_66
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_6d

    move v0, v3

    :cond_6d
    invoke-direct {p0, v4, v1, v2, v0}, Lcom/google/android/maps/driveabout/app/dA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_39

    :cond_72
    const v2, 0x7f0b0029

    goto :goto_45

    :cond_76
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "%1$s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    sget v1, Lcom/google/android/maps/driveabout/app/dA;->a:I

    add-int v6, v4, v1

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-lez v4, :cond_93

    invoke-direct {p0, v1, v0, v4, v7}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/text/Spannable;IIF)V

    :cond_93
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_a0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v1, v6, v0, v7}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/text/Spannable;IIF)V

    :cond_a0
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v6, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v1

    goto :goto_39

    :cond_b8
    move v0, v1

    move v1, v2

    goto/16 :goto_24
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Landroid/text/Spannable;
    .registers 7

    const/4 v2, 0x0

    const v4, 0x3f19999a

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/dA;->b(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/dA;->c(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v2

    :cond_18
    if-lez v1, :cond_1d

    invoke-direct {p0, v3, v2, v1, v4}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/text/Spannable;IIF)V

    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v3, v0, v2, v4}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/text/Spannable;IIF)V

    :cond_2a
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-interface {v3, v2, v1, v0, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object v3
.end method

.method public a(Lu/I;IILx/af;)Landroid/text/Spannable;
    .registers 22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v3, v4

    const v4, 0x3f19999a

    mul-float v5, v3, v4

    const/4 v3, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/android/maps/driveabout/app/dA;->a(IIIF)Landroid/text/Spannable;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lu/I;->w()Lu/K;

    move-result-object v3

    if-eqz v3, :cond_112

    const/4 v3, 0x1

    :goto_36
    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lu/I;->x()Lu/K;

    move-result-object v7

    if-eqz v7, :cond_115

    if-eqz v3, :cond_49

    invoke-virtual/range {p1 .. p1}, Lu/I;->w()Lu/K;

    move-result-object v7

    invoke-virtual {v7}, Lu/K;->d()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_115

    :cond_49
    invoke-virtual/range {p1 .. p1}, Lu/I;->x()Lu/K;

    move-result-object v3

    :goto_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    const v7, 0x7f0b001b

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "%1$s"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v8, "%2$s"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v11

    sget v12, Lcom/google/android/maps/driveabout/app/dA;->a:I

    add-int/2addr v12, v10

    sget v13, Lcom/google/android/maps/driveabout/app/dA;->a:I

    add-int/2addr v13, v11

    if-lez v10, :cond_a2

    new-instance v14, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v14, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v15, 0x0

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v9, v14, v15, v10, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080053

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-direct {v14, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v15, 0x0

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v9, v14, v15, v10, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_a2
    if-le v11, v12, :cond_c7

    new-instance v10, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v10, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v14, 0x21

    invoke-virtual {v9, v10, v12, v11, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080053

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-direct {v10, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v14, 0x21

    invoke-virtual {v9, v10, v12, v11, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_c7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v13, v10, :cond_f8

    new-instance v10, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v10, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v11, 0x21

    invoke-virtual {v9, v10, v13, v5, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080053

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v5, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v10, 0x21

    invoke-virtual {v9, v5, v13, v4, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_f8
    if-nez v3, :cond_11d

    const-string v4, ""

    :goto_fc
    if-le v8, v7, :cond_126

    sget v5, Lcom/google/android/maps/driveabout/app/dA;->a:I

    add-int/2addr v5, v8

    invoke-virtual {v9, v8, v5, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v3, v8}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/text/SpannableStringBuilder;Lu/I;Lu/K;I)V

    sget v3, Lcom/google/android/maps/driveabout/app/dA;->a:I

    add-int/2addr v3, v7

    invoke-virtual {v9, v7, v3, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_111
    return-object v9

    :cond_112
    const/4 v3, 0x0

    goto/16 :goto_36

    :cond_115
    if-eqz v3, :cond_13a

    invoke-virtual/range {p1 .. p1}, Lu/I;->w()Lu/K;

    move-result-object v3

    goto/16 :goto_4d

    :cond_11d
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Lcom/google/android/maps/driveabout/app/dA;->a(Lu/K;Lx/af;)Landroid/text/Spannable;

    move-result-object v4

    goto :goto_fc

    :cond_126
    sget v5, Lcom/google/android/maps/driveabout/app/dA;->a:I

    add-int/2addr v5, v7

    invoke-virtual {v9, v7, v5, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget v5, Lcom/google/android/maps/driveabout/app/dA;->a:I

    add-int/2addr v5, v8

    invoke-virtual {v9, v8, v5, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v3, v8}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/text/SpannableStringBuilder;Lu/I;Lu/K;I)V

    goto :goto_111

    :cond_13a
    move-object v3, v4

    goto/16 :goto_4d
.end method

.method public a(Lu/I;Lx/af;)Landroid/text/Spannable;
    .registers 7

    invoke-virtual {p1}, Lu/I;->w()Lu/K;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/maps/driveabout/app/dA;->a(Lu/K;Lx/af;)Landroid/text/Spannable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    const v2, 0x7f0b0019

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%1$s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    sget v1, Lcom/google/android/maps/driveabout/app/dA;->a:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v2, v1, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v3
.end method

.method a(Lu/K;Lx/af;)Landroid/text/Spannable;
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Lu/K;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-static {}, Lx/ag;->c()Lx/ag;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {p1}, Lu/K;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lx/ag;->a(Ljava/lang/String;Lx/af;)Lx/ad;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lx/ad;->b()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v1}, Lx/ad;->c()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_28

    invoke-virtual {v1}, Lx/ad;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_28
    :goto_28
    if-eqz v0, :cond_3a

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/app/dA;->a(Lu/K;Landroid/graphics/drawable/Drawable;)Landroid/text/Spannable;

    move-result-object v0

    :goto_2e
    return-object v0

    :cond_2f
    invoke-virtual {p1}, Lu/K;->f()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/dA;->a(Lu/K;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_28

    :cond_3a
    invoke-virtual {p1}, Lu/K;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dA;->a(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_2e
.end method

.method public a(Lu/L;)Landroid/text/Spannable;
    .registers 7

    invoke-virtual {p1}, Lu/L;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lu/L;->a()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    const/4 v2, 0x3

    if-eq v0, v2, :cond_15

    const/16 v2, 0x9

    if-eq v0, v2, :cond_15

    const/4 v2, 0x4

    if-ne v0, v2, :cond_20

    :cond_15
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/text/Spannable;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1f
.end method

.method public a(J)Ljava/lang/CharSequence;
    .registers 14

    const v10, 0xef01

    const v9, 0xef00

    const/16 v8, 0x21

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_51

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8a

    const/4 v5, -0x1

    move v1, v2

    move v3, v2

    :goto_25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_e4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x27

    if-ne v6, v7, :cond_36

    if-nez v3, :cond_54

    move v3, v4

    :cond_36
    :goto_36
    if-nez v3, :cond_56

    const/16 v7, 0x61

    if-ne v6, v7, :cond_56

    move v3, v1

    :goto_3d
    if-ltz v3, :cond_8a

    move v1, v3

    :goto_40
    if-lez v1, :cond_59

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_59

    add-int/lit8 v1, v1, -0x1

    goto :goto_40

    :cond_51
    const-string v0, "HH:mm"

    goto :goto_1a

    :cond_54
    move v3, v2

    goto :goto_36

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "a"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8a
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v3, :cond_d7

    if-le v0, v3, :cond_d7

    const v5, 0x3f19999a

    invoke-direct {p0, v1, v3, v0, v5}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/text/Spannable;IIF)V

    if-lez v3, :cond_b8

    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v5, v2, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_b8
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_cc

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v0, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_cc
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v3, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :goto_d6
    return-object v1

    :cond_d7
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_d6

    :cond_e4
    move v3, v5

    goto/16 :goto_3d
.end method

.method public a(Ljava/util/Collection;IILandroid/text/TextPaint;ILx/af;)Ljava/lang/CharSequence;
    .registers 21

    const v1, 0x7f0b0007

    move/from16 v0, p5

    if-eq v0, v1, :cond_e

    const v1, 0x7f0b0008

    move/from16 v0, p5

    if-ne v0, v1, :cond_c2

    :cond_e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_16
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v2, "%1$s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/google/android/maps/driveabout/app/dA;->a:I

    add-int/2addr v3, v2

    if-lez v2, :cond_2d

    const/4 v4, 0x0

    const v5, 0x3f19999a

    invoke-direct {p0, v9, v4, v2, v5}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/text/Spannable;IIF)V

    :cond_2d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const v4, 0x3f19999a

    invoke-direct {p0, v9, v3, v1, v4}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/text/Spannable;IIF)V

    :cond_3d
    const-string v1, ""

    invoke-virtual {v9, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    const v4, 0x7f0b0009

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v6, " "

    const v1, 0x7f0b0009

    move/from16 v0, p5

    if-ne v0, v1, :cond_154

    const/4 v1, 0x0

    invoke-virtual {v9, v1, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/16 v8, 0x21

    invoke-virtual {v9, v1, v4, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, v2

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, v3

    :goto_7e
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v5, v4

    move v4, v3

    move v3, v1

    :goto_88
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14c

    move/from16 v0, p2

    if-ge v5, v0, :cond_14c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/K;

    move-object/from16 v0, p6

    invoke-virtual {p0, v1, v0}, Lcom/google/android/maps/driveabout/app/dA;->a(Lu/K;Lx/af;)Landroid/text/Spannable;

    move-result-object v8

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v11

    move/from16 v0, p2

    if-gt v11, v0, :cond_c6

    invoke-virtual {v9, v3, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_150

    const-string v3, "\n"

    invoke-virtual {v9, v2, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    move v4, v5

    :goto_bd
    move v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v1

    goto :goto_88

    :cond_c2
    const-string v1, "%1$s"

    goto/16 :goto_16

    :cond_c6
    if-nez v2, :cond_d3

    invoke-virtual {v9, v3, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v2

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto :goto_bd

    :cond_d3
    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/dA;->b(Lu/K;)Z

    move-result v11

    if-eqz v11, :cond_df

    invoke-virtual {v2}, Lu/K;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14e

    :cond_df
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/app/dA;->b(Lu/K;)Z

    move-result v2

    if-nez v2, :cond_14e

    move-object v2, v7

    :goto_e6
    invoke-virtual {v9, v3, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {v9, v11, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v8

    add-int/2addr v8, v11

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    move-object/from16 v0, p4

    invoke-static {v9, v4, v11, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v11

    move/from16 v0, p3

    int-to-float v12, v0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_129

    add-int/lit8 v4, p2, -0x1

    if-ge v5, v4, :cond_124

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v3

    const-string v11, "\n"

    invoke-virtual {v9, v3, v4, v11}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int v2, v8, v2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v3, 0x1

    move v3, v4

    move v4, v5

    goto :goto_bd

    :cond_124
    invoke-virtual {v9, v3, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-object v1, v9

    :goto_128
    return-object v1

    :cond_129
    if-eq v2, v6, :cond_147

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    iget-object v12, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080053

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, v3

    const/16 v12, 0x21

    invoke-virtual {v9, v11, v3, v2, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_147
    move v2, v8

    move v3, v4

    move v4, v5

    goto/16 :goto_bd

    :cond_14c
    move-object v1, v9

    goto :goto_128

    :cond_14e
    move-object v2, v6

    goto :goto_e6

    :cond_150
    move v3, v4

    move v4, v5

    goto/16 :goto_bd

    :cond_154
    move v1, v2

    goto/16 :goto_7e
.end method

.method public a(Lu/P;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dA;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/content/Context;Lu/P;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lu/I;Lx/af;)Landroid/text/Spannable;
    .registers 5

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Lu/I;->o()Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/text/SpannableStringBuilder;Lx/af;)V

    return-object v0
.end method
