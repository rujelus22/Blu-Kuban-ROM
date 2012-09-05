.class public Lcom/google/android/maps/driveabout/app/eG;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    const-string v1, "android:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-class v1, Landroid/R$id;

    const-string v2, "android:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_15
    :try_start_15
    invoke-virtual {v1, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_1d} :catch_24
    .catch Ljava/lang/NoSuchFieldException; {:try_start_15 .. :try_end_1d} :catch_22

    move-result v0

    :goto_1e
    return v0

    :cond_1f
    const-class v1, Lcom/google/android/apps/maps/a;

    goto :goto_15

    :catch_22
    move-exception v1

    goto :goto_1e

    :catch_24
    move-exception v1

    goto :goto_1e
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;
    .registers 5

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;[Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    goto :goto_a
.end method

.method public static a(Landroid/app/Dialog;Ljava/lang/String;)Landroid/view/View;
    .registers 5

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/eG;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;[Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    goto :goto_a
.end method

.method private static a(Landroid/view/View;[Ljava/lang/String;I)Landroid/view/View;
    .registers 6

    move-object v1, p0

    :goto_1
    array-length v0, p1

    if-ge p2, v0, :cond_6

    if-nez v1, :cond_7

    :cond_6
    return-object v1

    :cond_7
    aget-object v0, p1, p2

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/eG;->b(Ljava/lang/String;)I

    move-result v2

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_25

    if-ltz v2, :cond_25

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_25

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_22
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_25
    aget-object v0, p1, p2

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/eG;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_22
.end method

.method public static a(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    instance-of v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    if-gtz p1, :cond_1f

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_1f
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/bg;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bg;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_d
.end method

.method public static a(Landroid/view/View;IZ)V
    .registers 4

    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    instance-of v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c(I)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    if-lez p1, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_e
.end method

.method private static a(Landroid/text/Spanned;Landroid/text/Spanned;)Z
    .registers 8

    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v2, Ljava/lang/Object;

    invoke-interface {p0, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v3, Ljava/lang/Object;

    invoke-interface {p1, v1, v0, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    array-length v0, v2

    array-length v4, v3

    if-eq v0, v4, :cond_1a

    :cond_19
    :goto_19
    return v1

    :cond_1a
    move v0, v1

    :goto_1b
    array-length v4, v2

    if-ge v0, v4, :cond_5f

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    aget-object v4, v2, v0

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    aget-object v5, v3, v0

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_19

    aget-object v4, v2, v0

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    aget-object v5, v3, v0

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-ne v4, v5, :cond_19

    aget-object v4, v2, v0

    instance-of v4, v4, Landroid/text/style/ReplacementSpan;

    if-eqz v4, :cond_5c

    aget-object v4, v2, v0

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_5f
    const/4 v1, 0x1

    goto :goto_19
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/eG;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    goto :goto_b
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    instance-of v2, p0, Landroid/text/Spanned;

    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_2d

    if-eqz v3, :cond_2d

    check-cast p0, Landroid/text/Spanned;

    check-cast p1, Landroid/text/Spanned;

    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/text/Spanned;Landroid/text/Spanned;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2b
    move v0, v1

    goto :goto_4

    :cond_2d
    if-nez v2, :cond_2b

    if-nez v3, :cond_2b

    goto :goto_4
.end method

.method private static b(Ljava/lang/String;)I
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, -0x1

    goto :goto_4
.end method

.method public static b(Landroid/view/View;I)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/eG;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public static c(Landroid/view/View;I)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v1, p1, :cond_f

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    return-void
.end method

.method public static d(Landroid/view/View;I)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v1, p1, :cond_f

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    return-void
.end method

.method public static e(Landroid/view/View;I)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v1, p1, :cond_f

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    return-void
.end method
