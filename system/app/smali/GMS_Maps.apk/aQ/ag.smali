.class public LaQ/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:Lcom/google/googlenav/cn;

.field private b:Z

.field private final c:I

.field private final d:Z

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/cn;ZII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, LaQ/ag;->b:Z

    .line 75
    iput-object p1, p0, LaQ/ag;->a:Lcom/google/googlenav/cn;

    .line 76
    iput-boolean p2, p0, LaQ/ag;->d:Z

    .line 77
    iput p3, p0, LaQ/ag;->c:I

    .line 78
    iput p4, p0, LaQ/ag;->e:I

    .line 79
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 458
    const v0, 0x7f04016b

    const/4 v1, 0x0

    invoke-static {v0, v1, v7}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 459
    const v0, 0x7f1003dc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 460
    const v1, 0x7f1003da

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 461
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 462
    const/16 v4, 0x20a

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v7

    invoke-static {v4, v5}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 464
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    const v5, 0x7f0f011e

    invoke-direct {v4, p1, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 466
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    new-instance v0, LaQ/ai;

    invoke-direct {v0, p0, v1}, LaQ/ai;-><init>(LaQ/ag;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 473
    return-object v2
.end method

.method static synthetic a(LaQ/ag;LaQ/ak;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, LaQ/ag;->a(LaQ/ak;)V

    return-void
.end method

.method private a(LaQ/ak;)V
    .registers 3
    .parameter

    .prologue
    .line 162
    iget-boolean v0, p0, LaQ/ag;->b:Z

    if-eqz v0, :cond_8

    .line 163
    invoke-direct {p0, p1}, LaQ/ag;->b(LaQ/ak;)V

    .line 167
    :goto_7
    return-void

    .line 165
    :cond_8
    invoke-direct {p0, p1}, LaQ/ag;->c(LaQ/ak;)V

    goto :goto_7
.end method

.method private a(Landroid/content/Context;Lcom/google/googlenav/cp;Lcom/google/googlenav/ui/android/aj;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0f011e

    const/16 v5, 0x21

    .line 393
    invoke-virtual {p3}, Lcom/google/googlenav/ui/android/aj;->b()I

    move-result v1

    .line 400
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p2}, Lcom/google/googlenav/cp;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    :goto_17
    const/16 v2, 0x4af

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/googlenav/ui/android/aj;->a(Ljava/lang/CharSequence;)Lcom/google/googlenav/ui/android/aj;

    .line 404
    invoke-virtual {p3}, Lcom/google/googlenav/ui/android/aj;->b()I

    move-result v0

    .line 405
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v2, p1, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, v2, v1, v0, v5}, Lcom/google/googlenav/ui/android/aj;->a(Ljava/lang/Object;III)V

    .line 407
    invoke-virtual {p2}, Lcom/google/googlenav/cp;->b()Lcom/google/googlenav/cd;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 408
    invoke-direct {p0, p1, p3, p2}, LaQ/ag;->a(Landroid/content/Context;Lcom/google/googlenav/ui/android/aj;Lcom/google/googlenav/cp;)V

    .line 417
    :goto_3f
    return-void

    .line 400
    :cond_40
    invoke-virtual {p2}, Lcom/google/googlenav/cp;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 410
    :cond_45
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Lcom/google/googlenav/ui/android/aj;->a(Ljava/lang/CharSequence;)Lcom/google/googlenav/ui/android/aj;

    .line 411
    invoke-virtual {p3}, Lcom/google/googlenav/ui/android/aj;->b()I

    move-result v0

    .line 412
    invoke-direct {p0, p1, p3, p2}, LaQ/ag;->b(Landroid/content/Context;Lcom/google/googlenav/ui/android/aj;Lcom/google/googlenav/cp;)V

    .line 413
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v1, p1, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3}, Lcom/google/googlenav/ui/android/aj;->b()I

    move-result v2

    invoke-virtual {p3, v1, v0, v2, v5}, Lcom/google/googlenav/ui/android/aj;->a(Ljava/lang/Object;III)V

    goto :goto_3f
.end method

.method private a(Landroid/content/Context;Lcom/google/googlenav/ui/android/aj;II)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x21

    .line 506
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v1, 0x7f0f0120

    invoke-direct {v0, p1, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0, p3, p4, v2}, Lcom/google/googlenav/ui/android/aj;->a(Ljava/lang/Object;III)V

    .line 508
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p2, v0, p3, p4, v2}, Lcom/google/googlenav/ui/android/aj;->a(Ljava/lang/Object;III)V

    .line 510
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/googlenav/ui/android/aj;Lcom/google/googlenav/cp;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 421
    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    .line 424
    :goto_7
    const/4 v3, 0x3

    if-ge v0, v3, :cond_37

    invoke-virtual {p3}, Lcom/google/googlenav/cp;->d()I

    move-result v3

    if-ge v1, v3, :cond_37

    .line 425
    invoke-virtual {p3, v1}, Lcom/google/googlenav/cp;->a(I)Lcom/google/googlenav/cd;

    move-result-object v3

    .line 428
    invoke-virtual {v3}, Lcom/google/googlenav/cd;->a()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 429
    if-lez v0, :cond_21

    .line 430
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :cond_21
    add-int/lit8 v0, v0, 0x1

    .line 433
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 434
    invoke-virtual {v3}, Lcom/google/googlenav/cd;->c()J

    move-result-wide v3

    .line 435
    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 438
    :cond_37
    if-lez v0, :cond_66

    .line 439
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, LaQ/ag;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/android/aj;->a(Landroid/view/View;)Lcom/google/googlenav/ui/android/aj;

    .line 441
    invoke-virtual {p2}, Lcom/google/googlenav/ui/android/aj;->b()I

    move-result v0

    .line 443
    const-string v1, "("

    invoke-virtual {p2, v1}, Lcom/google/googlenav/ui/android/aj;->a(Ljava/lang/CharSequence;)Lcom/google/googlenav/ui/android/aj;

    .line 444
    invoke-direct {p0, p1, p2, p3}, LaQ/ag;->b(Landroid/content/Context;Lcom/google/googlenav/ui/android/aj;Lcom/google/googlenav/cp;)V

    .line 445
    const-string v1, ")"

    invoke-virtual {p2, v1}, Lcom/google/googlenav/ui/android/aj;->a(Ljava/lang/CharSequence;)Lcom/google/googlenav/ui/android/aj;

    .line 446
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0f011f

    invoke-direct {v1, p1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Lcom/google/googlenav/ui/android/aj;->b()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p2, v1, v0, v2, v3}, Lcom/google/googlenav/ui/android/aj;->a(Ljava/lang/Object;III)V

    .line 449
    :cond_66
    return-void
.end method

.method public static a(Landroid/widget/TextView;ILcom/google/googlenav/cn;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 259
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "placeholder"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 260
    new-instance v1, LaQ/aj;

    invoke-direct {v1, p2, p1}, LaQ/aj;-><init>(Lcom/google/googlenav/cn;I)V

    .line 261
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 262
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    return-void
.end method

.method static synthetic a(LaQ/ag;)Z
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, LaQ/ag;->b:Z

    return v0
.end method

.method static synthetic a(LaQ/ag;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, LaQ/ag;->b:Z

    return p1
.end method

.method static synthetic b(LaQ/ag;)I
    .registers 2
    .parameter

    .prologue
    .line 55
    iget v0, p0, LaQ/ag;->e:I

    return v0
.end method

.method private b(LaQ/ak;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 170
    invoke-static {p1}, LaQ/ak;->a(LaQ/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    invoke-static {p1}, LaQ/ak;->i(LaQ/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    invoke-static {p1}, LaQ/ak;->j(LaQ/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    invoke-static {p1}, LaQ/ak;->k(LaQ/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    return-void
.end method

.method private b(Landroid/content/Context;Lcom/google/googlenav/ui/android/aj;Lcom/google/googlenav/cp;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    .line 482
    invoke-virtual {p3}, Lcom/google/googlenav/cp;->d()I

    move-result v0

    if-nez v0, :cond_11

    .line 483
    const/16 v0, 0x4bb

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/android/aj;->a(Ljava/lang/CharSequence;)Lcom/google/googlenav/ui/android/aj;

    .line 499
    :cond_10
    return-void

    .line 485
    :cond_11
    invoke-virtual {p3}, Lcom/google/googlenav/cp;->d()I

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 486
    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v1, :cond_10

    .line 487
    invoke-virtual {p3, v0}, Lcom/google/googlenav/cp;->a(I)Lcom/google/googlenav/cd;

    move-result-object v2

    .line 488
    if-lez v0, :cond_27

    .line 489
    const-string v3, " "

    invoke-virtual {p2, v3}, Lcom/google/googlenav/ui/android/aj;->a(Ljava/lang/CharSequence;)Lcom/google/googlenav/ui/android/aj;

    .line 491
    :cond_27
    invoke-virtual {p2}, Lcom/google/googlenav/ui/android/aj;->b()I

    move-result v3

    .line 492
    invoke-virtual {v2}, Lcom/google/googlenav/cd;->d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlenav/ui/bi;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/googlenav/ui/android/aj;->a(Ljava/lang/CharSequence;)Lcom/google/googlenav/ui/android/aj;

    .line 493
    invoke-virtual {v2}, Lcom/google/googlenav/cd;->e()I

    move-result v2

    if-ne v2, v5, :cond_43

    .line 495
    invoke-virtual {p2}, Lcom/google/googlenav/ui/android/aj;->b()I

    move-result v2

    invoke-direct {p0, p1, p2, v3, v2}, LaQ/ag;->a(Landroid/content/Context;Lcom/google/googlenav/ui/android/aj;II)V

    .line 486
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method

.method private c(LaQ/ak;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 180
    invoke-static {p1}, LaQ/ak;->i(LaQ/ak;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    invoke-static {p1}, LaQ/ak;->j(LaQ/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    invoke-static {p1}, LaQ/ak;->k(LaQ/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 98
    new-instance v1, LaQ/ak;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaQ/ak;-><init>(LaQ/ah;)V

    .line 99
    const v0, 0x7f10046a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, LaQ/ak;->a(LaQ/ak;Landroid/view/View;)Landroid/view/View;

    .line 100
    const v0, 0x7f10046c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, LaQ/ak;->a(LaQ/ak;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 101
    const v0, 0x7f100033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/ak;->a(LaQ/ak;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 102
    const v0, 0x7f10046b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/ak;->b(LaQ/ak;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 103
    const v0, 0x7f100240

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, LaQ/ak;->b(LaQ/ak;Landroid/view/View;)Landroid/view/View;

    .line 104
    const v0, 0x7f1001b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, LaQ/ak;->c(LaQ/ak;Landroid/view/View;)Landroid/view/View;

    .line 105
    const v0, 0x7f100468

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, LaQ/ak;->d(LaQ/ak;Landroid/view/View;)Landroid/view/View;

    .line 106
    const v0, 0x7f100467

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, LaQ/ak;->e(LaQ/ak;Landroid/view/View;)Landroid/view/View;

    .line 107
    const v0, 0x7f10046d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/ak;->c(LaQ/ak;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 108
    const v0, 0x7f10046f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaQ/ak;->d(LaQ/ak;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 109
    const v0, 0x7f100470

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/MultipleTextLineLayout;

    invoke-static {v1, v0}, LaQ/ak;->a(LaQ/ak;Lcom/google/googlenav/ui/android/MultipleTextLineLayout;)Lcom/google/googlenav/ui/android/MultipleTextLineLayout;

    .line 110
    const v0, 0x7f100472

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/MultipleTextLineLayout;

    invoke-static {v1, v0}, LaQ/ak;->b(LaQ/ak;Lcom/google/googlenav/ui/android/MultipleTextLineLayout;)Lcom/google/googlenav/ui/android/MultipleTextLineLayout;

    .line 111
    const v0, 0x7f10046e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, LaQ/ak;->f(LaQ/ak;Landroid/view/View;)Landroid/view/View;

    .line 112
    const v0, 0x7f100471

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, LaQ/ak;->g(LaQ/ak;Landroid/view/View;)Landroid/view/View;

    .line 113
    const v0, 0x7f100473

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, LaQ/ak;->h(LaQ/ak;Landroid/view/View;)Landroid/view/View;

    .line 114
    const v0, 0x7f1002a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, LaQ/ak;->i(LaQ/ak;Landroid/view/View;)Landroid/view/View;

    .line 115
    const v0, 0x7f10002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, LaQ/ak;->j(LaQ/ak;Landroid/view/View;)Landroid/view/View;

    .line 116
    return-object v1
.end method

.method public a(Lcom/google/googlenav/cn;LaQ/ak;Lcom/google/googlenav/ui/g;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-static {p2}, LaQ/ak;->l(LaQ/ak;)Landroid/widget/TextView;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 189
    invoke-virtual {p1}, Lcom/google/googlenav/cn;->j()J

    move-result-wide v3

    .line 190
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_65

    .line 192
    invoke-static {p2}, LaQ/ak;->m(LaQ/ak;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/view/dialog/bh;->a(J)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    invoke-static {p2}, LaQ/ak;->m(LaQ/ak;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    invoke-static {p2}, LaQ/ak;->n(LaQ/ak;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    :goto_2e
    invoke-virtual {p1}, Lcom/google/googlenav/cn;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {p1}, Lcom/google/googlenav/cn;->d()I

    move-result v1

    if-nez v1, :cond_9d

    .line 208
    invoke-static {p2}, LaQ/ak;->o(LaQ/ak;)Lcom/google/googlenav/ui/android/MultipleTextLineLayout;

    move-result-object v1

    .line 209
    new-instance v3, Lcom/google/googlenav/ui/android/aj;

    invoke-direct {v3, v2}, Lcom/google/googlenav/ui/android/aj;-><init>(Landroid/content/Context;)V

    .line 210
    const/16 v4, 0x4bc

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/android/aj;->a(Ljava/lang/CharSequence;)Lcom/google/googlenav/ui/android/aj;

    .line 211
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    const v5, 0x7f0f011e

    invoke-direct {v4, v2, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3}, Lcom/google/googlenav/ui/android/aj;->b()I

    move-result v2

    const/16 v5, 0x21

    invoke-virtual {v3, v4, v0, v2, v5}, Lcom/google/googlenav/ui/android/aj;->a(Ljava/lang/Object;III)V

    .line 213
    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/MultipleTextLineLayout;->removeAllViews()V

    .line 214
    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/android/MultipleTextLineLayout;->a(Lcom/google/googlenav/ui/android/aj;)V

    .line 255
    :goto_64
    return-void

    .line 197
    :cond_65
    invoke-static {p2}, LaQ/ak;->m(LaQ/ak;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlenav/cn;->i()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/view/dialog/bh;->a(J)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    invoke-static {p2}, LaQ/ak;->n(LaQ/ak;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {p2}, LaQ/ak;->n(LaQ/ak;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v3, v4, p1}, LaQ/ag;->a(Landroid/widget/TextView;ILcom/google/googlenav/cn;)V

    .line 201
    invoke-static {p2}, LaQ/ak;->m(LaQ/ak;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    invoke-static {p2}, LaQ/ak;->n(LaQ/ak;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2e

    .line 232
    :cond_9d
    invoke-static {p2}, LaQ/ak;->o(LaQ/ak;)Lcom/google/googlenav/ui/android/MultipleTextLineLayout;

    move-result-object v1

    .line 233
    new-instance v3, Lcom/google/googlenav/ui/android/aj;

    invoke-direct {v3, v2}, Lcom/google/googlenav/ui/android/aj;-><init>(Landroid/content/Context;)V

    .line 234
    :goto_a6
    invoke-virtual {p1}, Lcom/google/googlenav/cn;->d()I

    move-result v4

    if-ge v0, v4, :cond_c3

    .line 235
    invoke-virtual {p1, v0}, Lcom/google/googlenav/cn;->a(I)Lcom/google/googlenav/cp;

    move-result-object v4

    .line 236
    invoke-direct {p0, v2, v4, v3}, LaQ/ag;->a(Landroid/content/Context;Lcom/google/googlenav/cp;Lcom/google/googlenav/ui/android/aj;)V

    .line 237
    invoke-virtual {p1}, Lcom/google/googlenav/cn;->d()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_c0

    .line 238
    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/android/aj;->a(Ljava/lang/CharSequence;)Lcom/google/googlenav/ui/android/aj;

    .line 234
    :cond_c0
    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    .line 241
    :cond_c3
    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/MultipleTextLineLayout;->removeAllViews()V

    .line 242
    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/android/MultipleTextLineLayout;->a(Lcom/google/googlenav/ui/android/aj;)V

    goto :goto_64
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 121
    check-cast p2, LaQ/ak;

    .line 123
    invoke-static {p2}, LaQ/ak;->a(LaQ/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    invoke-static {p2}, LaQ/ak;->b(LaQ/ak;)Lcom/google/googlenav/ui/android/MultipleTextLineLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/MultipleTextLineLayout;->setVisibility(I)V

    .line 125
    invoke-static {p2}, LaQ/ak;->c(LaQ/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-static {p2}, LaQ/ak;->d(LaQ/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    invoke-direct {p0, p2}, LaQ/ag;->a(LaQ/ak;)V

    .line 129
    iget-boolean v0, p0, LaQ/ag;->d:Z

    if-eqz v0, :cond_4f

    .line 130
    invoke-static {p2}, LaQ/ak;->e(LaQ/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    invoke-static {p2}, LaQ/ak;->f(LaQ/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    invoke-static {p2}, LaQ/ak;->g(LaQ/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    :goto_3d
    invoke-static {p2}, LaQ/ak;->h(LaQ/ak;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LaQ/ah;

    invoke-direct {v1, p0, p2}, LaQ/ah;-><init>(LaQ/ag;LaQ/ak;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, LaQ/ag;->a:Lcom/google/googlenav/cn;

    invoke-virtual {p0, v0, p2, p1}, LaQ/ag;->a(Lcom/google/googlenav/cn;LaQ/ak;Lcom/google/googlenav/ui/g;)V

    .line 159
    return-void

    .line 134
    :cond_4f
    invoke-static {p2}, LaQ/ak;->e(LaQ/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-static {p2}, LaQ/ak;->f(LaQ/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    invoke-static {p2}, LaQ/ak;->g(LaQ/ak;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3d
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, LaQ/ag;->c:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 83
    const v0, 0x7f0401d7

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 513
    iget-object v0, p0, LaQ/ag;->a:Lcom/google/googlenav/cn;

    invoke-virtual {v0}, Lcom/google/googlenav/cn;->a()Z

    move-result v0

    return v0
.end method
