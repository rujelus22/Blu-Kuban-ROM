.class public Lcom/google/android/maps/driveabout/app/RouteSelectorView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private final a:[Lcom/google/android/maps/driveabout/app/dl;

.field private b:Lcom/google/android/maps/driveabout/app/dl;

.field private c:Lcom/google/android/maps/driveabout/app/dA;

.field private d:Lu/x;

.field private e:[Lu/x;

.field private f:I

.field private g:Lcom/google/android/maps/driveabout/app/dk;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/dl;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/dl;

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/dl;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/dl;

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/RouteSelectorView;)Lcom/google/android/maps/driveabout/app/dk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->g:Lcom/google/android/maps/driveabout/app/dk;

    return-object v0
.end method

.method static a(Landroid/content/Context;Lu/x;II)Ljava/lang/String;
    .registers 11

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-lez p2, :cond_b

    add-int/lit8 p2, p2, -0x1

    :cond_b
    :goto_b
    invoke-virtual {p1}, Lu/x;->k()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p2, v2, :cond_53

    invoke-virtual {p1, p2}, Lu/x;->a(I)Lu/I;

    move-result-object v2

    invoke-virtual {v2}, Lu/I;->w()Lu/K;

    move-result-object v4

    if-eqz v4, :cond_50

    invoke-virtual {v4}, Lu/K;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_50

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2}, Lu/x;->a(I)Lu/I;

    move-result-object v2

    invoke-virtual {v2}, Lu/I;->e()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v5, v2, v0

    if-lez v5, :cond_37

    invoke-virtual {v4}, Lu/K;->b()Ljava/lang/String;

    move-result-object v1

    move v0, v2

    :cond_37
    int-to-float v5, p3

    const/high16 v6, 0x3e80

    mul-float/2addr v5, v6

    cmpl-float v2, v2, v5

    if-lez v2, :cond_50

    invoke-virtual {v4}, Lu/K;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    invoke-virtual {v4}, Lu/K;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_53
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_66

    const v0, 0x7f0b0081

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    :cond_65
    :goto_65
    return-object v1

    :cond_66
    if-nez v1, :cond_65

    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_65
.end method

.method private a(Landroid/content/Context;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/maps/driveabout/app/dA;->a()Lcom/google/android/maps/driveabout/app/dA;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->c:Lcom/google/android/maps/driveabout/app/dA;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03003e

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/dl;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dl;

    const v2, 0x7f0f0101

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/google/android/maps/driveabout/app/dl;-><init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;ZLcom/google/android/maps/driveabout/app/dj;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/dl;

    new-instance v1, Lcom/google/android/maps/driveabout/app/dl;

    const v2, 0x7f0f0102

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/google/android/maps/driveabout/app/dl;-><init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;ZLcom/google/android/maps/driveabout/app/dj;)V

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/dl;

    const/4 v1, 0x2

    new-instance v2, Lcom/google/android/maps/driveabout/app/dl;

    const v3, 0x7f0f0103

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/google/android/maps/driveabout/app/dl;-><init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;ZLcom/google/android/maps/driveabout/app/dj;)V

    aput-object v2, v0, v1

    new-instance v0, Lcom/google/android/maps/driveabout/app/dl;

    const v1, 0x7f0f0100

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1, v6, v5}, Lcom/google/android/maps/driveabout/app/dl;-><init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;ZLcom/google/android/maps/driveabout/app/dj;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/dl;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/dl;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/dl;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/RouteSelectorView;)Lcom/google/android/maps/driveabout/app/dA;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->c:Lcom/google/android/maps/driveabout/app/dA;

    return-object v0
.end method


# virtual methods
.method public a(III)V
    .registers 8

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->f:I

    if-eq p1, v0, :cond_16

    iput p1, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->f:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/dl;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->d:Lu/x;

    invoke-static {v1, v2, p1, p2}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(Landroid/content/Context;Lu/x;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dl;->a(Ljava/lang/String;)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/dl;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->d:Lu/x;

    invoke-virtual {v1}, Lu/x;->q()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/google/android/maps/driveabout/app/dl;->a(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/dl;

    invoke-virtual {v0, p3, v3}, Lcom/google/android/maps/driveabout/app/dl;->a(IZ)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/dl;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/dl;->a(I)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/dk;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->g:Lcom/google/android/maps/driveabout/app/dk;

    return-void
.end method

.method public a(Lu/x;[Lu/x;)V
    .registers 10

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->d:Lu/x;

    if-ne v0, p1, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->e:[Lu/x;

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_11
    return-void

    :cond_12
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->d:Lu/x;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->e:[Lu/x;

    array-length v0, p2

    if-le v0, v3, :cond_57

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/dl;

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/app/dl;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/dl;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/app/dl;->a(I)V

    move v0, v1

    :goto_29
    array-length v2, p2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_51

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/dl;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/google/android/maps/driveabout/app/dl;->a(I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/dl;

    aget-object v2, v2, v0

    aget-object v4, p2, v0

    invoke-virtual {v2, v4}, Lcom/google/android/maps/driveabout/app/dl;->a(Lu/x;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/dl;

    aget-object v4, v2, v0

    aget-object v2, p2, v0

    if-ne p1, v2, :cond_4f

    move v2, v3

    :goto_49
    invoke-virtual {v4, v2}, Lcom/google/android/maps/driveabout/app/dl;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_4f
    move v2, v1

    goto :goto_49

    :cond_51
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/dl;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/app/dl;->a(I)V

    goto :goto_11

    :cond_57
    move v0, v1

    :goto_58
    if-ge v0, v6, :cond_64

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/dl;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Lcom/google/android/maps/driveabout/app/dl;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    :cond_64
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/dl;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/dl;->a(Lu/x;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/dl;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dl;->a(I)V

    goto :goto_11
.end method
