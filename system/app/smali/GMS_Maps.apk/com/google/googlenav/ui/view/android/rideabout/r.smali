.class public Lcom/google/googlenav/ui/view/android/rideabout/r;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .prologue
    const/4 v0, -0x1

    .line 63
    sput v0, Lcom/google/googlenav/ui/view/android/rideabout/r;->f:I

    .line 64
    sput v0, Lcom/google/googlenav/ui/view/android/rideabout/r;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->d:I

    .line 62
    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->e:I

    .line 162
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/s;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/rideabout/s;-><init>(Lcom/google/googlenav/ui/view/android/rideabout/r;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->a:Landroid/view/View$OnClickListener;

    .line 69
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->b:Landroid/content/Context;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->c:I

    .line 71
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->h:Landroid/view/LayoutInflater;

    .line 72
    return-void
.end method

.method public static a(Landroid/content/res/Configuration;)I
    .registers 2
    .parameter

    .prologue
    .line 333
    invoke-static {p0}, Lcom/google/googlenav/ui/view/android/rideabout/r;->b(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 334
    const v0, 0x7f0b0066

    .line 336
    :goto_9
    return v0

    :cond_a
    const v0, 0x7f0b004d

    goto :goto_9
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/rideabout/r;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/TextView;)V
    .registers 3
    .parameter

    .prologue
    .line 189
    sget-object v0, Lcom/google/googlenav/android/X;->a:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(Landroid/widget/TextView;Ljava/util/regex/Pattern;)Z

    move-result v0

    .line 190
    if-nez v0, :cond_d

    .line 191
    sget-object v0, Lcom/google/googlenav/android/X;->b:Ljava/util/regex/Pattern;

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(Landroid/widget/TextView;Ljava/util/regex/Pattern;)Z

    .line 193
    :cond_d
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 270
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 271
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_15

    .line 272
    const/16 v0, 0x4d5

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_18
    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/util/regex/Pattern;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x21

    .line 204
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 205
    invoke-virtual {p2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 207
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 208
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 209
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 210
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v3, v0, v2, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 211
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v0, v2, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 213
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const/4 v0, 0x1

    .line 216
    :goto_3e
    return v0

    :cond_3f
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method public static a(Landroid/widget/ViewSwitcher;Landroid/content/res/Configuration;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 321
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/rideabout/r;->b(Landroid/content/res/Configuration;)Z

    move-result v0

    .line 322
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionLandView;

    .line 324
    if-eqz v0, :cond_e

    if-nez v1, :cond_12

    :cond_e
    if-nez v0, :cond_17

    if-nez v1, :cond_17

    .line 326
    :cond_12
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 327
    const/4 v0, 0x1

    .line 329
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static b(I)I
    .registers 5
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 102
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 103
    const/4 v1, 0x2

    aget v2, v0, v1

    const v3, 0x3f666666

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 104
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/res/Configuration;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 341
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

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
    .parameter

    .prologue
    .line 283
    sget v0, Lcom/google/googlenav/ui/view/android/rideabout/r;->f:I

    if-eq p0, v0, :cond_c

    .line 284
    invoke-static {p0}, Lcom/google/googlenav/ui/view/android/rideabout/r;->e(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/view/android/rideabout/r;->g:I

    .line 285
    sput p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->f:I

    .line 287
    :cond_c
    sget v0, Lcom/google/googlenav/ui/view/android/rideabout/r;->g:I

    return v0
.end method

.method private static d(I)F
    .registers 5
    .parameter

    .prologue
    .line 92
    const/high16 v0, 0xff

    and-int/2addr v0, p0

    .line 93
    shr-int/lit8 v0, v0, 0x10

    .line 94
    const v1, 0xff00

    and-int/2addr v1, p0

    .line 95
    shr-int/lit8 v1, v1, 0x8

    .line 96
    and-int/lit16 v2, p0, 0xff

    .line 97
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
    .parameter

    .prologue
    .line 291
    invoke-static {p0}, Lcom/google/googlenav/ui/view/android/rideabout/r;->f(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static f(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 300
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1f

    .line 304
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

    .line 306
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
    .parameter

    .prologue
    .line 78
    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    const v0, 0xffffff

    if-ne p1, v0, :cond_b

    .line 79
    :cond_8
    iget p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->c:I

    .line 88
    :cond_a
    :goto_a
    return p1

    .line 81
    :cond_b
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/rideabout/r;->d(I)F

    move-result v0

    const/high16 v1, 0x4316

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    .line 82
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->d:I

    if-eq p1, v0, :cond_21

    .line 83
    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/rideabout/r;->b(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->e:I

    .line 84
    iput p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->d:I

    .line 86
    :cond_21
    iget p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->e:I

    goto :goto_a
.end method

.method public a(Ljava/lang/String;)Landroid/view/View;
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x21

    const/4 v4, 0x0

    .line 138
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->b:Landroid/content/Context;

    const v3, 0x7f0f00dd

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 142
    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/a;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/a;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 143
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->b:Landroid/content/Context;

    const v3, 0x7f0f00da

    invoke-direct {v0, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v4, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 121
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x4d2

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 124
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->b:Landroid/content/Context;

    const v3, 0x7f0f00e1

    invoke-direct {v0, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 127
    :cond_59
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->h:Landroid/view/LayoutInflater;

    const v2, 0x7f0401bb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 133
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 134
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 243
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {p2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 259
    :goto_13
    return-object v0

    .line 247
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    invoke-static {v1, p1}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 249
    invoke-static {v1, p2}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 251
    if-eqz p3, :cond_40

    .line 252
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x595

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->b:Landroid/content/Context;

    const v3, 0x7f0f00e0

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 258
    :goto_38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 255
    :cond_40
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->b:Landroid/content/Context;

    const v3, 0x7f0f00df

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_38
.end method

.method public b(Ljava/lang/String;)Landroid/view/View;
    .registers 5
    .parameter

    .prologue
    .line 149
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 151
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->b:Landroid/content/Context;

    const v2, 0x7f0f00e2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 152
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(Landroid/widget/TextView;)V

    .line 157
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/r;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    :cond_20
    return-object v0
.end method
