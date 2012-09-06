.class public Lcom/google/android/maps/driveabout/app/ak;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lo/P;IZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    const v0, 0x7f040033

    invoke-static {p2, p3, p4}, Lcom/google/android/maps/driveabout/app/ak;->a([Lo/P;IZ)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method private static a([Lo/P;IZ)[Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 99
    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 100
    if-eqz p2, :cond_15

    const/4 v0, 0x1

    :goto_9
    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 101
    :goto_c
    if-ge v1, v2, :cond_17

    .line 102
    aget-object v3, p0, v1

    aput-object v3, v0, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_15
    move v0, v1

    .line 100
    goto :goto_9

    .line 104
    :cond_17
    if-eqz p2, :cond_1d

    .line 105
    const-string v1, "__SEARCH"

    aput-object v1, v0, v2

    .line 107
    :cond_1d
    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/ak;->a(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 78
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ak;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0096

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ak;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/ak;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/P;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/content/Context;Lo/P;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method private c(I)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/ak;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ak;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/ak;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/P;

    const-string v2, "\n"

    invoke-static {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/content/Context;Lo/P;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method


# virtual methods
.method public a(I)Z
    .registers 4
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/ak;->getItem(I)Ljava/lang/Object;

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
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 39
    if-nez p2, :cond_15

    .line 40
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ak;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 41
    const v1, 0x7f040033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 43
    :cond_15
    const v0, 0x7f1000df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 44
    const v1, 0x7f1000e0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 46
    const v2, 0x7f1000e1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/ak;->a(I)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 49
    const v3, 0x7f020123

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    :goto_3f
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/ak;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_5b

    .line 56
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 57
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :goto_4f
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/ak;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-object p2

    .line 52
    :cond_57
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3f

    .line 60
    :cond_5b
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 61
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4f
.end method
