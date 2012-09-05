.class public Lcom/google/android/maps/driveabout/app/al;
.super Landroid/widget/ArrayAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lu/P;IZ)V
    .registers 7

    const v0, 0x7f030027

    invoke-static {p2, p3, p4}, Lcom/google/android/maps/driveabout/app/al;->a([Lu/P;IZ)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method

.method private static a([Lu/P;IZ)[Ljava/lang/Object;
    .registers 7

    const/4 v1, 0x0

    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz p2, :cond_15

    const/4 v0, 0x1

    :goto_9
    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    :goto_c
    if-ge v1, v2, :cond_17

    aget-object v3, p0, v1

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_15
    move v0, v1

    goto :goto_9

    :cond_17
    if-eqz p2, :cond_1d

    const-string v1, "__SEARCH"

    aput-object v1, v0, v2

    :cond_1d
    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/al;->a(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/al;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/P;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/content/Context;Lu/P;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method private c(I)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/al;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/al;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/P;

    const-string v2, "\n"

    invoke-static {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/content/Context;Lu/P;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method


# virtual methods
.method public a(I)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/al;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "__SEARCH"

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/16 v5, 0x8

    const/4 v4, 0x0

    if-nez p2, :cond_15

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_15
    const v0, 0x7f0f00af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0f00b0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f00b1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/al;->a(I)Z

    move-result v3

    if-eqz v3, :cond_57

    const v3, 0x7f020100

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3f
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/al;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5b

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4f
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/al;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_57
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3f

    :cond_5b
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4f
.end method
