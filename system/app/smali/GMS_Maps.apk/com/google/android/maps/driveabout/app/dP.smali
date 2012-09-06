.class public Lcom/google/android/maps/driveabout/app/dp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static b:Lcom/google/android/maps/driveabout/app/dp;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/maps/driveabout/app/aH;

.field private final e:C

.field private final f:C

.field private final g:Ljava/util/HashSet;

.field private final h:Ljava/util/HashSet;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Lo/K;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const-string v0, "%1$s"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/android/maps/driveabout/app/dp;->a:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    .line 136
    new-instance v0, Lcom/google/android/maps/driveabout/app/aH;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/app/aH;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dp;->d:Lcom/google/android/maps/driveabout/app/aH;

    .line 138
    const v0, 0x7f0d00b9

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dp;->a(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dp;->h:Ljava/util/HashSet;

    .line 139
    const v0, 0x7f0d00ba

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dp;->a(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dp;->g:Ljava/util/HashSet;

    .line 141
    const v0, 0x7f0d0026

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/google/android/maps/driveabout/app/dp;->e:C

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/google/android/maps/driveabout/app/dp;->f:C

    .line 145
    return-void
.end method

.method private a(Ljava/lang/String;I)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1177
    const/16 v0, 0x20

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1178
    if-lez v0, :cond_19

    if-le v0, p2, :cond_19

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dp;->h:Ljava/util/HashSet;

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1180
    add-int/lit8 v0, v0, 0x1

    .line 1182
    :goto_18
    return v0

    :cond_19
    const/4 v0, -0x1

    goto :goto_18
.end method

.method private a(IIIF)Landroid/text/Spannable;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f09007a

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v7, 0x21

    .line 178
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_be

    const/4 v0, 0x2

    .line 181
    :goto_c
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dp;->d:Lcom/google/android/maps/driveabout/app/aH;

    invoke-virtual {v3, p1, p2, v1, v0}, Lcom/google/android/maps/driveabout/app/aH;->a(IIZI)Ljava/lang/String;

    move-result-object v3

    .line 184
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move v0, v2

    .line 190
    :goto_18
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_5b

    .line 191
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 192
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_2c

    iget-char v6, p0, Lcom/google/android/maps/driveabout/app/dp;->e:C

    if-ne v5, v6, :cond_c1

    .line 193
    :cond_2c
    if-lez v0, :cond_5b

    .line 194
    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_3a

    .line 195
    new-instance v5, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v5}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-virtual {v4, v5, v2, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 198
    :cond_3a
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v6, 0x3f19999a

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v4, v5, v2, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 200
    and-int/lit8 v5, p3, 0x2

    if-eqz v5, :cond_5b

    .line 201
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4, v5, v2, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 211
    :cond_5b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    :goto_5f
    if-le v2, v0, :cond_b3

    .line 213
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 214
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_71

    iget-char v6, p0, Lcom/google/android/maps/driveabout/app/dp;->f:C

    if-ne v5, v6, :cond_c5

    .line 215
    :cond_71
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_b3

    .line 216
    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_87

    .line 217
    new-instance v5, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v5}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 221
    :cond_87
    const/high16 v5, 0x3f80

    cmpl-float v5, p4, v5

    if-eqz v5, :cond_99

    .line 222
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v5, p4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 226
    :cond_99
    and-int/lit8 v5, p3, 0x2

    if-eqz v5, :cond_b3

    .line 227
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v5, v2, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 239
    :cond_b3
    if-ge v0, v2, :cond_bd

    .line 240
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4, v3, v0, v2, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 243
    :cond_bd
    return-object v4

    :cond_be
    move v0, v1

    .line 178
    goto/16 :goto_c

    .line 190
    :cond_c1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_18

    .line 212
    :cond_c5
    add-int/lit8 v2, v2, -0x1

    goto :goto_5f
.end method

.method public static a(Landroid/content/Context;I)Landroid/text/Spannable;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1048
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1050
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1053
    return-object v0
.end method

.method public static a(Landroid/content/Context;IIZ)Landroid/text/Spannable;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1066
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/high16 v1, 0x3fc0

    invoke-static {p0, v0, p2, v1, p3}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1133
    const v0, 0x7f02014b

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/text/Spannable;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x21

    const/4 v4, 0x0

    .line 1091
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1092
    if-eqz p4, :cond_21

    .line 1093
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1097
    :cond_21
    if-eqz p2, :cond_39

    .line 1098
    const-string v1, "  "

    invoke-virtual {v0, v4, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1099
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1100
    new-instance v2, Lcom/google/android/maps/driveabout/app/db;

    invoke-direct {v2, v1, p3}, Lcom/google/android/maps/driveabout/app/db;-><init>(Landroid/graphics/drawable/Drawable;F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v4, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1103
    :cond_39
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1077
    const/4 v0, 0x0

    const/high16 v1, 0x3fc0

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/Spannable;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x21

    const/4 v7, 0x1

    const v6, 0x3f19999a

    .line 889
    const-string v0, "%1$s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 890
    sget v0, Lcom/google/android/maps/driveabout/app/dp;->a:I

    add-int v1, v3, v0

    .line 891
    const-string v0, "%2$s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 892
    sget v0, Lcom/google/android/maps/driveabout/app/dp;->a:I

    add-int/2addr v0, v2

    .line 894
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 900
    if-ge v3, v2, :cond_5e

    move v9, v2

    move v2, v1

    move v1, v9

    .line 916
    :goto_23
    if-eqz p4, :cond_3d

    .line 918
    if-lez v3, :cond_2b

    .line 919
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v3, v6}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/text/Spannable;IIF)V

    .line 921
    :cond_2b
    if-ge v2, v1, :cond_30

    .line 922
    invoke-direct {p0, v4, v2, v1, v6}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/text/Spannable;IIF)V

    .line 925
    :cond_30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_3d

    .line 926
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {p0, v4, v0, v5, v6}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/text/Spannable;IIF)V

    .line 932
    :cond_3d
    invoke-virtual {v4, v1, v0, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 933
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v0, v1, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 936
    invoke-virtual {v4, v3, v2, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 937
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v4, v0, v3, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 940
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

    .line 913
    goto :goto_23
.end method

.method private static a(Lo/K;Landroid/graphics/drawable/Drawable;)Landroid/text/Spannable;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x21

    .line 542
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lo/K;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 544
    new-instance v1, Lcom/google/android/maps/driveabout/app/db;

    const v2, 0x3f99999a

    invoke-direct {v1, p1, v2}, Lcom/google/android/maps/driveabout/app/db;-><init>(Landroid/graphics/drawable/Drawable;F)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 546
    invoke-virtual {p0}, Lo/K;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 547
    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 551
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 552
    invoke-virtual {p0}, Lo/K;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 553
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 554
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const/high16 v4, 0x3f40

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 556
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 559
    :cond_50
    return-object v0
.end method

.method public static a()Lcom/google/android/maps/driveabout/app/dp;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lcom/google/android/maps/driveabout/app/dp;->b:Lcom/google/android/maps/driveabout/app/dp;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lo/P;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 966
    invoke-virtual {p1}, Lo/P;->e()Ljava/lang/String;

    move-result-object v0

    .line 967
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 974
    :goto_a
    return-object v0

    .line 970
    :cond_b
    invoke-virtual {p1}, Lo/P;->d()Lo/Q;

    move-result-object v0

    .line 971
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lo/Q;->a()I

    move-result v1

    if-lez v1, :cond_1d

    .line 972
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/Q;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 974
    :cond_1d
    const v0, 0x7f0d0097

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static a(Landroid/content/Context;Lo/P;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1002
    invoke-virtual {p1}, Lo/P;->d()Lo/Q;

    move-result-object v2

    .line 1003
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lo/Q;->a()I

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v1

    .line 1032
    :cond_e
    :goto_e
    return-object v0

    .line 1008
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1009
    const/4 v0, 0x0

    :goto_15
    invoke-virtual {v2}, Lo/Q;->a()I

    move-result v4

    if-ge v0, v4, :cond_2a

    .line 1010
    if-lez v0, :cond_20

    .line 1011
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    :cond_20
    invoke-virtual {v2, v0}, Lo/Q;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1015
    :cond_2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1021
    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/content/Context;Lo/P;)Ljava/lang/String;

    move-result-object v2

    .line 1022
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1023
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_44

    move-object v0, v1

    .line 1024
    goto :goto_e

    .line 1026
    :cond_44
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1027
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 1028
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 9
    .parameter

    .prologue
    .line 663
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    .line 701
    :goto_7
    return-object p0

    .line 668
    :cond_8
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 669
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/K;

    .line 670
    invoke-virtual {v0}, Lo/K;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Lo/K;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 671
    invoke-virtual {v0}, Lo/K;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 675
    :cond_31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 676
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 677
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 678
    :cond_3f
    :goto_3f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 679
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/K;

    .line 680
    invoke-virtual {v0}, Lo/K;->d()Ljava/lang/String;

    move-result-object v1

    .line 681
    if-eqz v1, :cond_76

    .line 682
    invoke-virtual {v0}, Lo/K;->e()Ljava/lang/String;

    move-result-object v6

    .line 683
    if-nez v6, :cond_5d

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3f

    .line 688
    :cond_5d
    if-eqz v6, :cond_70

    .line 689
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 691
    :cond_70
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 696
    :cond_76
    invoke-virtual {v0}, Lo/K;->b()Ljava/lang/String;

    move-result-object v1

    .line 697
    if-eqz v1, :cond_3f

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 698
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_86
    move-object p0, v2

    .line 701
    goto :goto_7
.end method

.method private a(I)Ljava/util/HashSet;
    .registers 7
    .parameter

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1218
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1219
    array-length v3, v1

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v3, :cond_21

    aget-object v4, v1, v0

    .line 1220
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1219
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1222
    :cond_21
    return-object v2
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    sget-object v0, Lcom/google/android/maps/driveabout/app/dp;->b:Lcom/google/android/maps/driveabout/app/dp;

    if-nez v0, :cond_b

    .line 120
    new-instance v0, Lcom/google/android/maps/driveabout/app/dp;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/dp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/dp;->b:Lcom/google/android/maps/driveabout/app/dp;

    .line 122
    :cond_b
    return-void
.end method

.method private a(Landroid/text/Spannable;IIF)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x21

    .line 441
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, p4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 443
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 446
    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;)V
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 480
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Lo/K;

    invoke-virtual {p1, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    move v1, v0

    .line 481
    :goto_c
    array-length v0, v2

    if-ge v1, v0, :cond_2d

    .line 482
    aget-object v0, v2, v1

    check-cast v0, Lo/K;

    .line 484
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 486
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 481
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 488
    :cond_2d
    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;Lo/I;Lo/K;I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lo/K;->f()Z

    move-result v0

    if-nez v0, :cond_23

    .line 395
    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    invoke-static {v0, p2}, Lo/k;->a(Landroid/content/Context;Lo/I;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_23

    .line 397
    const-string v1, "  "

    invoke-virtual {p1, p4, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 398
    new-instance v1, Lcom/google/android/maps/driveabout/app/db;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/db;-><init>(Landroid/graphics/drawable/Drawable;F)V

    add-int/lit8 v0, p4, 0x1

    const/16 v2, 0x21

    invoke-virtual {p1, v1, p4, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 403
    :cond_23
    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;Lr/ae;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 450
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Lo/K;

    invoke-virtual {p1, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    move v1, v0

    .line 451
    :goto_c
    array-length v0, v3

    if-ge v1, v0, :cond_67

    .line 452
    aget-object v0, v3, v1

    check-cast v0, Lo/K;

    .line 454
    const/4 v2, 0x0

    .line 455
    invoke-virtual {v0}, Lo/K;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 457
    invoke-static {}, Lr/af;->d()Lr/af;

    move-result-object v4

    .line 458
    if-eqz v4, :cond_3b

    .line 459
    invoke-virtual {v0}, Lo/K;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lr/af;->a(Ljava/lang/String;Lr/ae;)Lr/ac;

    move-result-object v4

    .line 461
    if-eqz v4, :cond_3b

    invoke-virtual {v4}, Lr/ac;->b()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v4}, Lr/ac;->c()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3b

    .line 463
    invoke-virtual {v4}, Lr/ac;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 467
    :cond_3b
    if-eqz v2, :cond_53

    .line 468
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/dp;->a(Lo/K;Landroid/graphics/drawable/Drawable;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {p1, v4, v5, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 475
    :goto_4c
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 451
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 471
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

    .line 477
    :cond_67
    return-void
.end method

.method private b(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    .line 1159
    const/4 v0, 0x0

    .line 1161
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/dp;->a(Ljava/lang/String;I)I

    move-result v1

    .line 1162
    if-gez v1, :cond_8

    .line 1167
    return v0

    :cond_8
    move v0, v1

    .line 1166
    goto :goto_1
.end method

.method private b(Ljava/lang/String;I)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1208
    const/16 v0, 0x20

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 1209
    if-lez v0, :cond_1d

    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dp;->g:Ljava/util/HashSet;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1213
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, -0x1

    goto :goto_1c
.end method

.method public static b(Landroid/content/Context;)Landroid/text/Spannable;
    .registers 7
    .parameter

    .prologue
    const/16 v5, 0x21

    .line 1110
    const v0, 0x7f0d00e3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1111
    new-instance v1, Landroid/text/SpannableString;

    const v2, 0x7f0d00d1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1113
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1116
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1117
    const-string v3, "%2$s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1118
    sget v3, Lcom/google/android/maps/driveabout/app/dp;->a:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v0, v3, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1122
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%1$s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1123
    sget v3, Lcom/google/android/maps/driveabout/app/dp;->a:I

    add-int/2addr v3, v1

    const-string v4, " "

    invoke-virtual {v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1124
    new-instance v3, Lcom/google/android/maps/driveabout/app/db;

    const/high16 v4, 0x3f80

    invoke-direct {v3, v0, v4}, Lcom/google/android/maps/driveabout/app/db;-><init>(Landroid/graphics/drawable/Drawable;F)V

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v2, v3, v1, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1126
    return-object v2
.end method

.method public static b(Landroid/content/Context;Lo/P;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 987
    const v0, 0x7f0d000a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/content/Context;Lo/P;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lo/K;)Z
    .registers 3
    .parameter

    .prologue
    .line 598
    invoke-virtual {p1}, Lo/K;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lo/K;->f()Z

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
    .parameter

    .prologue
    .line 1190
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1192
    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/dp;->b(Ljava/lang/String;I)I

    move-result v1

    .line 1193
    if-gez v1, :cond_b

    .line 1198
    return v0

    :cond_b
    move v0, v1

    .line 1197
    goto :goto_4
.end method


# virtual methods
.method a(Lo/K;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 610
    monitor-enter p0

    .line 615
    :try_start_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dp;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dp;->j:Lo/K;

    if-ne v0, p1, :cond_e

    .line 616
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dp;->i:Landroid/graphics/drawable/Drawable;

    monitor-exit p0

    .line 658
    :goto_d
    return-object v0

    .line 618
    :cond_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_7c

    .line 621
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 623
    const v1, 0x7f040038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 627
    invoke-virtual {p1}, Lo/K;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    invoke-virtual {p1}, Lo/K;->g()Lo/I;

    move-result-object v1

    invoke-virtual {v1}, Lo/I;->c()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7f

    .line 631
    const v1, 0x7f0200fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 639
    :goto_3b
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 642
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 645
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 648
    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 649
    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 650
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 652
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 653
    monitor-enter p0

    .line 655
    :try_start_73
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dp;->i:Landroid/graphics/drawable/Drawable;

    .line 656
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dp;->j:Lo/K;

    .line 657
    monitor-exit p0

    goto :goto_d

    :catchall_79
    move-exception v0

    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_79

    throw v0

    .line 618
    :catchall_7c
    move-exception v0

    :try_start_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v0

    .line 632
    :cond_7f
    invoke-virtual {p1}, Lo/K;->g()Lo/I;

    move-result-object v1

    invoke-virtual {v1}, Lo/I;->c()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_91

    .line 633
    const v1, 0x7f0200ff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3b

    .line 635
    :cond_91
    const v1, 0x7f020100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3b
.end method

.method public a(II)Landroid/text/Spannable;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    const v1, 0x7f0d000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 258
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/google/android/maps/driveabout/app/dp;->a(IIIF)Landroid/text/Spannable;

    move-result-object v2

    .line 260
    const-string v3, "%1$s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 263
    sget v3, Lcom/google/android/maps/driveabout/app/dp;->a:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v0, v3, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 265
    return-object v1
.end method

.method public a(III)Landroid/text/Spannable;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 948
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 949
    new-instance v1, Landroid/text/SpannableString;

    const-string v2, " "

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 950
    new-instance v2, Landroid/text/style/ScaleXSpan;

    const/high16 v3, 0x4080

    invoke-direct {v2, v3}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-interface {v1, v2, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 952
    invoke-virtual {p0, p1, p3, v5}, Lcom/google/android/maps/driveabout/app/dp;->a(IIZ)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 953
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 954
    invoke-virtual {p0, p2, v5}, Lcom/google/android/maps/driveabout/app/dp;->a(IZ)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 956
    return-object v0
.end method

.method public a(IIZ)Landroid/text/Spannable;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    if-eqz p3, :cond_b

    const/4 v0, 0x1

    :goto_3
    const v1, 0x3f19999a

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/maps/driveabout/app/dp;->a(IIIF)Landroid/text/Spannable;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x2

    goto :goto_3
.end method

.method public a(ILo/I;I)Landroid/text/Spannable;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 518
    if-gtz p1, :cond_8

    .line 519
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/google/android/maps/driveabout/app/dp;->b(Lo/I;Lr/ae;)Landroid/text/Spannable;

    move-result-object v0

    .line 529
    :goto_7
    return-object v0

    .line 521
    :cond_8
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    const v2, 0x7f0d002c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 523
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%1$s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 524
    const-string v2, "%1$s"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v3, 0x1

    invoke-virtual {p0, p1, p3, v3}, Lcom/google/android/maps/driveabout/app/dp;->a(IIZ)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 526
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2$s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 527
    const-string v2, "%2$s"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p2}, Lo/I;->o()Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 528
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_7
.end method

.method public a(IZ)Landroid/text/Spannable;
    .registers 11
    .parameter
    .parameter

    .prologue
    const v4, 0x15180

    const v7, 0x3f19999a

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 835
    add-int/lit8 v1, p1, 0x1e

    .line 837
    div-int v2, v1, v4

    .line 838
    rem-int v4, v1, v4

    .line 839
    div-int/lit16 v1, v4, 0xe10

    .line 840
    rem-int/lit16 v4, v4, 0xe10

    .line 841
    div-int/lit8 v4, v4, 0x3c

    .line 843
    if-lez v2, :cond_38

    .line 845
    const/16 v5, 0x1e

    if-le v4, v5, :cond_b6

    .line 846
    add-int/lit8 v1, v1, 0x1

    .line 847
    const/16 v4, 0x18

    if-ne v1, v4, :cond_b6

    .line 849
    add-int/lit8 v1, v2, 0x1

    .line 852
    :goto_22
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    const v4, 0x7f0d0028

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 853
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/android/maps/driveabout/app/dp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/Spannable;

    move-result-object v0

    .line 883
    :goto_37
    return-object v0

    .line 854
    :cond_38
    if-gtz v1, :cond_3c

    if-eqz p2, :cond_74

    .line 855
    :cond_3c
    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    if-eqz p2, :cond_70

    const v2, 0x7f0d002b

    :goto_43
    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 859
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 860
    if-eqz p2, :cond_64

    const/16 v6, 0xa

    if-ge v4, v6, :cond_64

    .line 861
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x30

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 863
    :cond_64
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_6b

    move v0, v3

    :cond_6b
    invoke-direct {p0, v5, v1, v2, v0}, Lcom/google/android/maps/driveabout/app/dp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_37

    .line 855
    :cond_70
    const v2, 0x7f0d0029

    goto :goto_43

    .line 866
    :cond_74
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    const v2, 0x7f0d002a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 867
    const-string v1, "%1$s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 868
    sget v1, Lcom/google/android/maps/driveabout/app/dp;->a:I

    add-int v6, v5, v1

    .line 870
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 871
    if-lez v5, :cond_91

    .line 872
    invoke-direct {p0, v1, v0, v5, v7}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/text/Spannable;IIF)V

    .line 874
    :cond_91
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_9e

    .line 875
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v1, v6, v0, v7}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/text/Spannable;IIF)V

    .line 879
    :cond_9e
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 880
    invoke-virtual {v1, v5, v6, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 881
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v5

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v5, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v1

    .line 883
    goto :goto_37

    :cond_b6
    move v0, v1

    move v1, v2

    goto/16 :goto_22
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .registers 3
    .parameter

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Landroid/text/Spannable;
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const v4, 0x3f19999a

    .line 413
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 414
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/dp;->b(Ljava/lang/String;)I

    move-result v1

    .line 415
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/dp;->c(Ljava/lang/String;)I

    move-result v0

    .line 416
    if-gt v0, v1, :cond_18

    .line 420
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v2

    .line 424
    :cond_18
    if-lez v1, :cond_1d

    .line 425
    invoke-direct {p0, v3, v2, v1, v4}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/text/Spannable;IIF)V

    .line 429
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 430
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v3, v0, v2, v4}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/text/Spannable;IIF)V

    .line 434
    :cond_2a
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-interface {v3, v2, v1, v0, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 436
    return-object v3
.end method

.method public a(Lo/I;IILr/ae;)Landroid/text/Spannable;
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 320
    div-float/2addr v3, v4

    const v4, 0x3f19999a

    mul-float v5, v3, v4

    .line 323
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/android/maps/driveabout/app/dp;->a(IIIF)Landroid/text/Spannable;

    move-result-object v6

    .line 327
    invoke-virtual/range {p1 .. p1}, Lo/I;->w()Lo/K;

    move-result-object v3

    if-eqz v3, :cond_112

    const/4 v3, 0x1

    .line 328
    :goto_36
    const/4 v4, 0x0

    .line 329
    invoke-virtual/range {p1 .. p1}, Lo/I;->x()Lo/K;

    move-result-object v7

    if-eqz v7, :cond_115

    if-eqz v3, :cond_49

    invoke-virtual/range {p1 .. p1}, Lo/I;->w()Lo/K;

    move-result-object v7

    invoke-virtual {v7}, Lo/K;->d()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_115

    .line 331
    :cond_49
    invoke-virtual/range {p1 .. p1}, Lo/I;->x()Lo/K;

    move-result-object v3

    .line 337
    :goto_4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    const v7, 0x7f0d001b

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 339
    const-string v7, "%1$s"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 340
    const-string v8, "%2$s"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 341
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 344
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 345
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 346
    sget v12, Lcom/google/android/maps/driveabout/app/dp;->a:I

    add-int/2addr v12, v10

    .line 347
    sget v13, Lcom/google/android/maps/driveabout/app/dp;->a:I

    add-int/2addr v13, v11

    .line 348
    if-lez v10, :cond_a2

    .line 349
    new-instance v14, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v14, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v15, 0x0

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v9, v14, v15, v10, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 351
    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f09007a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-direct {v14, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v15, 0x0

    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v9, v14, v15, v10, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 355
    :cond_a2
    if-le v11, v12, :cond_c7

    .line 356
    new-instance v10, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v10, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v14, 0x21

    invoke-virtual {v9, v10, v12, v11, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 358
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f09007a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-direct {v10, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v14, 0x21

    invoke-virtual {v9, v10, v12, v11, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 363
    :cond_c7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v13, v10, :cond_f8

    .line 364
    new-instance v10, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v10, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v11, 0x21

    invoke-virtual {v9, v10, v13, v5, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 367
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09007a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v5, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v10, 0x21

    invoke-virtual {v9, v5, v13, v4, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 373
    :cond_f8
    if-nez v3, :cond_11d

    const-string v4, ""

    .line 376
    :goto_fc
    if-le v8, v7, :cond_126

    .line 377
    sget v5, Lcom/google/android/maps/driveabout/app/dp;->a:I

    add-int/2addr v5, v8

    invoke-virtual {v9, v8, v5, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 379
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v3, v8}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/text/SpannableStringBuilder;Lo/I;Lo/K;I)V

    .line 380
    sget v3, Lcom/google/android/maps/driveabout/app/dp;->a:I

    add-int/2addr v3, v7

    invoke-virtual {v9, v7, v3, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 389
    :goto_111
    return-object v9

    .line 327
    :cond_112
    const/4 v3, 0x0

    goto/16 :goto_36

    .line 332
    :cond_115
    if-eqz v3, :cond_13a

    .line 333
    invoke-virtual/range {p1 .. p1}, Lo/I;->w()Lo/K;

    move-result-object v3

    goto/16 :goto_4d

    .line 373
    :cond_11d
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Lcom/google/android/maps/driveabout/app/dp;->a(Lo/K;Lr/ae;)Landroid/text/Spannable;

    move-result-object v4

    goto :goto_fc

    .line 383
    :cond_126
    sget v5, Lcom/google/android/maps/driveabout/app/dp;->a:I

    add-int/2addr v5, v7

    invoke-virtual {v9, v7, v5, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 385
    sget v5, Lcom/google/android/maps/driveabout/app/dp;->a:I

    add-int/2addr v5, v8

    invoke-virtual {v9, v8, v5, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 387
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v3, v8}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/text/SpannableStringBuilder;Lo/I;Lo/K;I)V

    goto :goto_111

    :cond_13a
    move-object v3, v4

    goto/16 :goto_4d
.end method

.method public a(Lo/I;Lr/ae;)Landroid/text/Spannable;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-virtual {p1}, Lo/I;->w()Lo/K;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/maps/driveabout/app/dp;->a(Lo/K;Lr/ae;)Landroid/text/Spannable;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    const v2, 0x7f0d0019

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 288
    const-string v2, "%1$s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 289
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 290
    sget v1, Lcom/google/android/maps/driveabout/app/dp;->a:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v2, v1, v0}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 292
    return-object v3
.end method

.method a(Lo/K;Lr/ae;)Landroid/text/Spannable;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 573
    const/4 v0, 0x0

    .line 574
    invoke-virtual {p1}, Lo/K;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 576
    invoke-static {}, Lr/af;->d()Lr/af;

    move-result-object v1

    .line 577
    if-eqz v1, :cond_28

    .line 578
    invoke-virtual {p1}, Lo/K;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lr/af;->a(Ljava/lang/String;Lr/ae;)Lr/ac;

    move-result-object v1

    .line 580
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lr/ac;->b()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v1}, Lr/ac;->c()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_28

    .line 582
    invoke-virtual {v1}, Lr/ac;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 589
    :cond_28
    :goto_28
    if-eqz v0, :cond_3a

    .line 590
    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/app/dp;->a(Lo/K;Landroid/graphics/drawable/Drawable;)Landroid/text/Spannable;

    move-result-object v0

    .line 592
    :goto_2e
    return-object v0

    .line 585
    :cond_2f
    invoke-virtual {p1}, Lo/K;->f()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 587
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/dp;->a(Lo/K;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_28

    .line 592
    :cond_3a
    invoke-virtual {p1}, Lo/K;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/dp;->a(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_2e
.end method

.method public a(Lo/L;)Landroid/text/Spannable;
    .registers 7
    .parameter

    .prologue
    .line 1144
    invoke-virtual {p1}, Lo/L;->b()Ljava/lang/String;

    move-result-object v1

    .line 1145
    invoke-virtual {p1}, Lo/L;->a()I

    move-result v0

    .line 1146
    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    const/4 v2, 0x3

    if-eq v0, v2, :cond_15

    const/16 v2, 0x9

    if-eq v0, v2, :cond_15

    const/4 v2, 0x4

    if-ne v0, v2, :cond_20

    .line 1150
    :cond_15
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/text/Spannable;

    move-result-object v0

    .line 1152
    :goto_1f
    return-object v0

    :cond_20
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1f
.end method

.method public a(J)Ljava/lang/CharSequence;
    .registers 14
    .parameter

    .prologue
    const v10, 0xef01

    const v9, 0xef00

    const/16 v8, 0x21

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1233
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 1235
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_51

    .line 1236
    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 1245
    :goto_1a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8a

    .line 1251
    const/4 v5, -0x1

    move v1, v2

    move v3, v2

    .line 1253
    :goto_25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_e4

    .line 1254
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1256
    const/16 v7, 0x27

    if-ne v6, v7, :cond_36

    .line 1257
    if-nez v3, :cond_54

    move v3, v4

    .line 1259
    :cond_36
    :goto_36
    if-nez v3, :cond_56

    const/16 v7, 0x61

    if-ne v6, v7, :cond_56

    move v3, v1

    .line 1266
    :goto_3d
    if-ltz v3, :cond_8a

    move v1, v3

    .line 1270
    :goto_40
    if-lez v1, :cond_59

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 1271
    add-int/lit8 v1, v1, -0x1

    goto :goto_40

    .line 1241
    :cond_51
    const-string v0, "HH:mm"

    goto :goto_1a

    :cond_54
    move v3, v2

    .line 1257
    goto :goto_36

    .line 1253
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1273
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

    .line 1278
    :cond_8a
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1279
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1280
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1282
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1283
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1284
    if-ltz v3, :cond_d7

    if-le v0, v3, :cond_d7

    .line 1285
    const v5, 0x3f19999a

    invoke-direct {p0, v1, v3, v0, v5}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/text/Spannable;IIF)V

    .line 1286
    if-lez v3, :cond_b8

    .line 1287
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v5, v2, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1291
    :cond_b8
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_cc

    .line 1292
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v0, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1296
    :cond_cc
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1297
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v3, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1304
    :goto_d6
    return-object v1

    .line 1299
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

.method public a(Ljava/util/Collection;IILandroid/text/TextPaint;ILr/ae;)Ljava/lang/CharSequence;
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 721
    const v1, 0x7f0d0007

    move/from16 v0, p5

    if-eq v0, v1, :cond_e

    const v1, 0x7f0d0008

    move/from16 v0, p5

    if-ne v0, v1, :cond_bd

    .line 722
    :cond_e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 727
    :goto_16
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 731
    const-string v2, "%1$s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 732
    sget v3, Lcom/google/android/maps/driveabout/app/dp;->a:I

    add-int/2addr v3, v2

    .line 734
    if-lez v2, :cond_2d

    .line 735
    const/4 v4, 0x0

    const v5, 0x3f19999a

    invoke-direct {p0, v9, v4, v2, v5}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/text/Spannable;IIF)V

    .line 737
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3d

    .line 738
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const v4, 0x3f19999a

    invoke-direct {p0, v9, v3, v1, v4}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/text/Spannable;IIF)V

    .line 741
    :cond_3d
    const-string v1, ""

    invoke-virtual {v9, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 745
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    const v3, 0x7f0d0009

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 747
    const-string v6, " "

    .line 749
    const v1, 0x7f0d0009

    move/from16 v0, p5

    if-ne v0, v1, :cond_14f

    .line 750
    const/4 v1, 0x0

    invoke-virtual {v9, v1, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 751
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v9, v1, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 755
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, v2

    .line 758
    :goto_79
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 759
    const/4 v4, 0x0

    .line 760
    const/4 v3, 0x0

    .line 763
    const/4 v2, 0x0

    move v5, v4

    move v4, v3

    move v3, v1

    .line 764
    :goto_83
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_147

    move/from16 v0, p2

    if-ge v5, v0, :cond_147

    .line 765
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/K;

    .line 766
    move-object/from16 v0, p6

    invoke-virtual {p0, v1, v0}, Lcom/google/android/maps/driveabout/app/dp;->a(Lo/K;Lr/ae;)Landroid/text/Spannable;

    move-result-object v8

    .line 768
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v11

    move/from16 v0, p2

    if-gt v11, v0, :cond_c1

    .line 770
    invoke-virtual {v9, v3, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 771
    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v2

    add-int/2addr v2, v3

    .line 772
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14b

    .line 773
    const-string v3, "\n"

    invoke-virtual {v9, v2, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 774
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    move v4, v5

    :goto_b8
    move v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v1

    .line 820
    goto :goto_83

    .line 724
    :cond_bd
    const-string v1, "%1$s"

    goto/16 :goto_16

    .line 776
    :cond_c1
    if-nez v2, :cond_ce

    .line 777
    invoke-virtual {v9, v3, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 778
    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v2

    add-int/2addr v2, v3

    move v3, v4

    move v4, v5

    goto :goto_b8

    .line 785
    :cond_ce
    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/dp;->b(Lo/K;)Z

    move-result v11

    if-eqz v11, :cond_da

    invoke-virtual {v2}, Lo/K;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_149

    :cond_da
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/app/dp;->b(Lo/K;)Z

    move-result v2

    if-nez v2, :cond_149

    move-object v2, v7

    .line 792
    :goto_e1
    invoke-virtual {v9, v3, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 793
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    add-int/2addr v11, v3

    .line 794
    invoke-virtual {v9, v11, v8}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 795
    invoke-interface {v8}, Landroid/text/Spannable;->length()I

    move-result v8

    add-int/2addr v8, v11

    .line 797
    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    move-object/from16 v0, p4

    invoke-static {v9, v4, v11, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v11

    move/from16 v0, p3

    int-to-float v12, v0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_124

    .line 801
    add-int/lit8 v4, p2, -0x1

    if-ge v5, v4, :cond_11f

    .line 802
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v3

    const-string v11, "\n"

    invoke-virtual {v9, v3, v4, v11}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 804
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int v2, v8, v2

    .line 805
    add-int/lit8 v5, v5, 0x1

    .line 806
    add-int/lit8 v4, v3, 0x1

    move v3, v4

    move v4, v5

    goto :goto_b8

    .line 808
    :cond_11f
    invoke-virtual {v9, v3, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-object v1, v9

    .line 821
    :goto_123
    return-object v1

    .line 811
    :cond_124
    if-eq v2, v6, :cond_142

    .line 812
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    iget-object v12, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09007a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, v3

    const/16 v12, 0x21

    invoke-virtual {v9, v11, v3, v2, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_142
    move v2, v8

    move v3, v4

    move v4, v5

    goto/16 :goto_b8

    :cond_147
    move-object v1, v9

    .line 821
    goto :goto_123

    :cond_149
    move-object v2, v6

    goto :goto_e1

    :cond_14b
    move v3, v4

    move v4, v5

    goto/16 :goto_b8

    :cond_14f
    move v1, v2

    goto/16 :goto_79
.end method

.method public a(Lo/P;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dp;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/content/Context;Lo/P;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lo/I;Lr/ae;)Landroid/text/Spannable;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 500
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Lo/I;->o()Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 502
    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/text/SpannableStringBuilder;Lr/ae;)V

    .line 503
    return-object v0
.end method
