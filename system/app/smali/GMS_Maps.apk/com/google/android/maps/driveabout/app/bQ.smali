.class Lcom/google/android/maps/driveabout/app/bQ;
.super Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/bs;)V
    .registers 14

    const-wide/16 v9, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f030029

    invoke-direct {p0, p1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/bs;->b()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/bs;->i()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_51

    new-instance v5, Landroid/text/SpannableStringBuilder;

    aget-object v6, v4, v0

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_45

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    const v7, 0x7f0d000d

    invoke-direct {v6, p1, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_45
    cmp-long v4, v2, v9

    if-nez v4, :cond_65

    :goto_49
    new-instance v4, Lcom/google/android/maps/driveabout/app/bR;

    invoke-direct {v4, v5, v0}, Lcom/google/android/maps/driveabout/app/bR;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0, v4}, Lcom/google/android/maps/driveabout/app/bQ;->add(Ljava/lang/Object;)V

    :cond_51
    cmp-long v0, v2, v9

    if-eqz v0, :cond_64

    new-instance v0, Lcom/google/android/maps/driveabout/app/bR;

    const v2, 0x7f0b00cb

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/bQ;->a(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/android/maps/driveabout/app/bR;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bQ;->add(Ljava/lang/Object;)V

    :cond_64
    return-void

    :cond_65
    move v0, v1

    goto :goto_49
.end method

.method private a(I)Ljava/lang/CharSequence;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bQ;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00bb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bQ;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d000c

    invoke-direct {v0, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method


# virtual methods
.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    if-nez p2, :cond_23

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bQ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_12
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/bQ;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/app/bR;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bR;->a()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_23
    move-object v1, p2

    goto :goto_12
.end method
