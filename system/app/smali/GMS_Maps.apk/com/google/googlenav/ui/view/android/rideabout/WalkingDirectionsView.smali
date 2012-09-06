.class public Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/android/rideabout/f;


# instance fields
.field final a:Landroid/view/View$OnClickListener;

.field private final b:Lad/w;

.field private final c:Lad/m;

.field private final d:Lad/t;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:Z

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/TableLayout;

.field private k:Lcom/google/googlenav/ui/view/android/rideabout/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lad/w;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x2

    const/4 v1, 0x1

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/t;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/rideabout/t;-><init>(Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a:Landroid/view/View$OnClickListener;

    .line 74
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lad/w;

    .line 75
    invoke-virtual {p2, p3}, Lad/w;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lad/m;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c:Lad/m;

    .line 76
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c:Lad/m;

    invoke-virtual {v0}, Lad/m;->m()Lad/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lad/t;

    .line 77
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c:Lad/m;

    invoke-virtual {v0}, Lad/m;->y()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->f:I

    .line 78
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->e:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->f()I

    move-result v0

    if-le v0, v1, :cond_57

    move v0, v1

    :goto_33
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->g:Z

    .line 80
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->setOrientation(I)V

    .line 82
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d()V

    .line 83
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->e()V

    .line 84
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->g()V

    .line 85
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->e:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 86
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->setVisibility(I)V

    .line 88
    :cond_56
    return-void

    .line 79
    :cond_57
    const/4 v0, 0x0

    goto :goto_33
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;)Lad/t;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lad/t;

    return-object v0
.end method

.method private a(ILad/t;)Landroid/view/View;
    .registers 11
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0f00e5

    .line 240
    new-instance v0, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 241
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 242
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 243
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

    .line 244
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 245
    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a(Lad/t;)Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 249
    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 250
    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 182
    invoke-static {p1}, Lcom/google/googlenav/ui/bi;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lad/t;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 261
    const-string v0, "%s (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lad/t;->B()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lad/t;->t()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lad/w;

    invoke-virtual {v4}, Lad/w;->av()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/o;->a(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;)Lcom/google/googlenav/ui/view/android/rideabout/g;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->k:Lcom/google/googlenav/ui/view/android/rideabout/g;

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 192
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

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lad/w;

    invoke-virtual {v1}, Lad/w;->av()I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/googlenav/ui/o;->a(II)Ljava/lang/String;

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

    .prologue
    const/16 v3, 0x8

    .line 91
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040070

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    .line 92
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f1001a3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lad/t;

    invoke-virtual {v0}, Lad/t;->L()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 95
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    :cond_2f
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->g:Z

    if-nez v0, :cond_45

    .line 98
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f1001a2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :goto_3f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->addView(Landroid/view/View;)V

    .line 103
    return-void

    .line 100
    :cond_45
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f1001a1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3f
.end method

.method private e()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 106
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    .line 107
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    const v1, 0x7f1000b9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lad/t;

    invoke-virtual {v0}, Lad/t;->L()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 110
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    :cond_2f
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->g:Z

    if-nez v0, :cond_45

    .line 113
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    const v1, 0x7f1000b8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :goto_3f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->addView(Landroid/view/View;)V

    .line 119
    return-void

    .line 115
    :cond_45
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    const v1, 0x7f1000b7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3f
.end method

.method private f()I
    .registers 5

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->f:I

    :goto_3
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lad/w;

    invoke-virtual {v2}, Lad/w;->ae()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 131
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lad/w;

    invoke-virtual {v2, v0}, Lad/w;->n(I)Lad/t;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Lad/t;->C()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_19

    .line 137
    :cond_18
    return v1

    .line 135
    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private g()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 200
    new-instance v0, Landroid/widget/TableLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    .line 201
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    new-instance v1, Landroid/widget/TableLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    invoke-virtual {v0, v4, v4}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    .line 204
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    invoke-virtual {v0, v4, v4}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    .line 207
    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->f:I

    move v0, v1

    .line 208
    :goto_26
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lad/w;

    invoke-virtual {v2}, Lad/w;->ae()I

    move-result v2

    if-ge v0, v2, :cond_3b

    .line 209
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lad/w;

    invoke-virtual {v2, v0}, Lad/w;->n(I)Lad/t;

    move-result-object v2

    .line 210
    invoke-virtual {v2}, Lad/t;->C()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5d

    .line 215
    :cond_3b
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i()I

    move-result v1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j()I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/TableLayout;->setPadding(IIII)V

    .line 217
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lad/t;

    invoke-virtual {v0}, Lad/t;->L()Z

    move-result v0

    if-nez v0, :cond_57

    .line 218
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 220
    :cond_57
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->addView(Landroid/view/View;)V

    .line 221
    return-void

    .line 213
    :cond_5d
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4, v2}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a(ILad/t;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method private h()Landroid/view/LayoutInflater;
    .registers 3

    .prologue
    .line 267
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

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020466

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0060

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

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 149
    .line 151
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c:Lad/m;

    invoke-virtual {v0}, Lad/m;->r()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c:Lad/m;

    invoke-virtual {v0}, Lad/m;->n()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 152
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c:Lad/m;

    check-cast v0, Lad/a;

    .line 153
    invoke-virtual {v0}, Lad/a;->j()I

    move-result v2

    .line 154
    invoke-virtual {v0}, Lad/a;->i()I

    move-result v1

    .line 166
    :cond_1d
    if-nez v1, :cond_52

    .line 167
    if-nez v2, :cond_4d

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->g:Z

    if-nez v0, :cond_4d

    .line 168
    const-string v0, ""

    .line 172
    :goto_27
    return-object v0

    .line 157
    :cond_28
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->f:I

    move v2, v1

    :goto_2b
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lad/w;

    invoke-virtual {v3}, Lad/w;->ae()I

    move-result v3

    if-ge v0, v3, :cond_1d

    .line 158
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lad/w;

    invoke-virtual {v3, v0}, Lad/w;->n(I)Lad/t;

    move-result-object v3

    .line 159
    invoke-virtual {v3}, Lad/t;->C()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1d

    .line 162
    invoke-virtual {v3}, Lad/t;->v()I

    move-result v4

    add-int/2addr v2, v4

    .line 163
    invoke-virtual {v3}, Lad/t;->t()I

    move-result v3

    add-int/2addr v1, v3

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 170
    :cond_4d
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 172
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

    .prologue
    const/16 v2, 0x8

    .line 296
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lad/t;

    invoke-virtual {v0}, Lad/t;->N()V

    .line 297
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 300
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 285
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->g:Z

    if-nez v0, :cond_6

    .line 292
    :goto_5
    return-void

    .line 288
    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lad/t;

    invoke-virtual {v0}, Lad/t;->M()V

    .line 289
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto :goto_5
.end method

.method public setExpansionStateListener(Lcom/google/googlenav/ui/view/android/rideabout/g;)V
    .registers 2
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->k:Lcom/google/googlenav/ui/view/android/rideabout/g;

    .line 314
    return-void
.end method
