.class public Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/google/googlenav/ui/view/android/rideabout/f;


# instance fields
.field final a:Landroid/view/View$OnClickListener;

.field private final b:Lau/v;

.field private final c:Lau/m;

.field private final d:Lau/s;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:Z

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/TableLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lau/v;I)V
    .registers 7

    const/4 v2, -0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/p;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/rideabout/p;-><init>(Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lau/v;

    invoke-virtual {p2, p3}, Lau/v;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lau/m;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c:Lau/m;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c:Lau/m;

    invoke-virtual {v0}, Lau/m;->m()Lau/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lau/s;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c:Lau/m;

    invoke-virtual {v0}, Lau/m;->y()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->f()I

    move-result v0

    if-le v0, v1, :cond_57

    move v0, v1

    :goto_33
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->g:Z

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->setOrientation(I)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->e()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->g()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->e:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->setVisibility(I)V

    :cond_56
    return-void

    :cond_57
    const/4 v0, 0x0

    goto :goto_33
.end method

.method private a(ILau/s;)Landroid/view/View;
    .registers 11

    const v7, 0x7f0d00cd

    new-instance v0, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "%2d. "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a(Lau/s;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;)Lau/s;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lau/s;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/google/googlenav/ui/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lau/s;)Ljava/lang/String;
    .registers 7

    const-string v0, "%s (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lau/s;->B()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lau/s;->t()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lau/v;

    invoke-virtual {v4}, Lau/v;->ax()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/w;->a(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lau/v;

    invoke-virtual {v1}, Lau/v;->ax()I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/googlenav/ui/w;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private d()V
    .registers 5

    const/16 v3, 0x8

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0175

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lau/s;

    invoke-virtual {v0}, Lau/s;->L()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2f
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->g:Z

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0174

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->addView(Landroid/view/View;)V

    return-void

    :cond_45
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0173

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3f
.end method

.method private e()V
    .registers 5

    const/16 v3, 0x8

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    const v1, 0x7f0f008a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lau/s;

    invoke-virtual {v0}, Lau/s;->L()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2f
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->g:Z

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0089

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->addView(Landroid/view/View;)V

    return-void

    :cond_45
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0088

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3f
.end method

.method private f()I
    .registers 5

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->f:I

    :goto_3
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lau/v;

    invoke-virtual {v2}, Lau/v;->ag()I

    move-result v2

    if-ge v0, v2, :cond_18

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lau/v;

    invoke-virtual {v2, v0}, Lau/v;->n(I)Lau/s;

    move-result-object v2

    invoke-virtual {v2}, Lau/s;->C()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_19

    :cond_18
    return v1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private g()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Landroid/widget/TableLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    new-instance v1, Landroid/widget/TableLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    invoke-virtual {v0, v4, v4}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    invoke-virtual {v0, v4, v4}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->f:I

    move v0, v1

    :goto_26
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lau/v;

    invoke-virtual {v2}, Lau/v;->ag()I

    move-result v2

    if-ge v0, v2, :cond_3b

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lau/v;

    invoke-virtual {v2, v0}, Lau/v;->n(I)Lau/s;

    move-result-object v2

    invoke-virtual {v2}, Lau/s;->C()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5d

    :cond_3b
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i()I

    move-result v1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j()I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/TableLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lau/s;

    invoke-virtual {v0}, Lau/s;->L()Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setVisibility(I)V

    :cond_57
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->addView(Landroid/view/View;)V

    return-void

    :cond_5d
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4, v2}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a(ILau/s;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method private h()Landroid/view/LayoutInflater;
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private i()I
    .registers 5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203c3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method private j()I
    .registers 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c:Lau/m;

    invoke-virtual {v0}, Lau/m;->r()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c:Lau/m;

    invoke-virtual {v0}, Lau/m;->n()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c:Lau/m;

    check-cast v0, Lau/a;

    invoke-virtual {v0}, Lau/a;->j()I

    move-result v2

    invoke-virtual {v0}, Lau/a;->i()I

    move-result v1

    :cond_1d
    if-nez v1, :cond_52

    if-nez v2, :cond_4d

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->g:Z

    if-nez v0, :cond_4d

    const-string v0, ""

    :goto_27
    return-object v0

    :cond_28
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->f:I

    move v2, v1

    :goto_2b
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lau/v;

    invoke-virtual {v3}, Lau/v;->ag()I

    move-result v3

    if-ge v0, v3, :cond_1d

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lau/v;

    invoke-virtual {v3, v0}, Lau/v;->n(I)Lau/s;

    move-result-object v3

    invoke-virtual {v3}, Lau/s;->C()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1d

    invoke-virtual {v3}, Lau/s;->v()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v3}, Lau/s;->t()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_4d
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method

.method public b()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->g:Z

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lau/s;

    invoke-virtual {v0}, Lau/s;->M()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto :goto_5
.end method

.method public c()V
    .registers 4

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lau/s;

    invoke-virtual {v0}, Lau/s;->N()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    return-void
.end method
