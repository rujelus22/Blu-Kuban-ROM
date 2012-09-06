.class public Lcom/google/android/maps/rideabout/view/NavigationView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/rideabout/view/j;


# instance fields
.field private a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

.field private b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/ViewFlipper;

.field private e:Landroid/widget/ViewFlipper;

.field private f:I

.field private final g:Lad/w;

.field private final h:LaP/d;

.field private final i:Lcom/google/googlenav/ui/g;

.field private final j:Lcom/google/googlenav/ui/p;

.field private k:Landroid/widget/ImageView;

.field private l:Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;

.field private m:Z

.field private n:Landroid/widget/ViewSwitcher;

.field private volatile o:Z

.field private p:Lcom/google/android/maps/rideabout/view/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lad/w;LaP/d;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/p;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54
    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->m:Z

    .line 66
    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->o:Z

    .line 72
    iput-object p2, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->g:Lad/w;

    .line 73
    iput-object p3, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->h:LaP/d;

    .line 74
    iput-object p4, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->i:Lcom/google/googlenav/ui/g;

    .line 75
    iput-object p5, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->j:Lcom/google/googlenav/ui/p;

    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/NavigationView;->a(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/view/NavigationView;)Lcom/google/googlenav/ui/g;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->i:Lcom/google/googlenav/ui/g;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 11
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 80
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 82
    const v1, 0x7f0401d2

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    const v0, 0x7f100451

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->n:Landroid/widget/ViewSwitcher;

    .line 84
    const v0, 0x7f100456

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    .line 85
    const v0, 0x7f100459

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    .line 86
    const v0, 0x7f10045c

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    .line 87
    const v0, 0x7f100458

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->c:Landroid/widget/LinearLayout;

    .line 88
    const v0, 0x7f10045a

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    .line 89
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->g:Lad/w;

    iget-object v3, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->h:LaP/d;

    iget-object v4, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->i:Lcom/google/googlenav/ui/g;

    iget-object v5, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->j:Lcom/google/googlenav/ui/p;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;-><init>(Landroid/content/Context;Lad/w;LaP/d;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/p;Z)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    .line 91
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->setLineSchematicView(Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;)V

    .line 92
    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->f:I

    .line 93
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->c()I

    move-result v1

    iget v2, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->f:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 94
    const v0, 0x7f10024e

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->k:Landroid/widget/ImageView;

    .line 95
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 96
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->k:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    :goto_9e
    const v0, 0x7f10044c

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->l:Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;

    .line 110
    return-void

    .line 98
    :cond_aa
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/maps/rideabout/view/k;

    invoke-direct {v1, p0}, Lcom/google/android/maps/rideabout/view/k;-><init>(Lcom/google/android/maps/rideabout/view/NavigationView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9e
.end method

.method private a(Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;Lcom/google/android/maps/rideabout/view/l;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 303
    invoke-virtual {p1, p2}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->setBackgroundChangeListener(Lcom/google/android/maps/rideabout/view/l;)V

    .line 304
    return-void
.end method

.method private k()Lcom/google/android/maps/rideabout/view/i;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->n:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/i;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 165
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 167
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 169
    return-void
.end method

.method public a(LaP/a;)V
    .registers 7
    .parameter

    .prologue
    .line 188
    if-eqz p1, :cond_18

    .line 189
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v2}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v3, p1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(LaP/a;)I

    move-result v3

    iget v4, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->f:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 192
    :cond_18
    return-void
.end method

.method public a(LaP/a;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 135
    iget-boolean v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->o:Z

    if-ne v1, v0, :cond_9

    .line 137
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->o:Z

    move p2, v0

    .line 139
    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b(LaP/a;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 140
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->a()V

    .line 149
    :goto_14
    return-void

    .line 142
    :cond_15
    if-eqz p2, :cond_24

    .line 143
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/rideabout/view/NavigationView;->c(LaP/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->a(I)V

    .line 147
    :goto_20
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->j()V

    goto :goto_14

    .line 145
    :cond_24
    invoke-virtual {p0, p1}, Lcom/google/android/maps/rideabout/view/NavigationView;->a(LaP/a;)V

    goto :goto_20
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 8
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->n:Landroid/widget/ViewSwitcher;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(Landroid/widget/ViewSwitcher;Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 270
    const v0, 0x7f100454

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 271
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 273
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/rideabout/r;->a(Landroid/content/res/Configuration;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 278
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->h()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->p:Lcom/google/android/maps/rideabout/view/c;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/i;->a(Lcom/google/android/maps/rideabout/view/c;)V

    .line 280
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->k()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/i;->d()V

    .line 281
    invoke-static {}, Lcom/google/googlenav/ui/view/android/cc;->a()Lcom/google/googlenav/ui/view/android/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/cc;->b()V

    .line 283
    :cond_48
    return-void
.end method

.method public a(Lcom/google/android/maps/rideabout/view/c;)V
    .registers 3
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->p:Lcom/google/android/maps/rideabout/view/c;

    .line 115
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->a(Lcom/google/android/maps/rideabout/view/c;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/i;)V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->h()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/maps/rideabout/view/i;->a(Lcom/google/android/maps/rideabout/view/c;)V

    .line 118
    return-void
.end method

.method public a(I)Z
    .registers 4
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public b()I
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 4
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->scrollTo(II)V

    .line 227
    return-void
.end method

.method public b(LaP/a;)V
    .registers 3
    .parameter

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/google/android/maps/rideabout/view/NavigationView;->c(LaP/a;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->b(I)V

    .line 197
    return-void
.end method

.method public b(Lcom/google/android/maps/rideabout/view/c;)V
    .registers 3
    .parameter

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->p:Lcom/google/android/maps/rideabout/view/c;

    .line 123
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->a()V

    .line 124
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->b(Lcom/google/googlenav/ui/view/android/rideabout/i;)V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->h()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/i;->d()V

    .line 126
    return-void
.end method

.method public c(LaP/a;)I
    .registers 4
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->a(LaP/a;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->b()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->c()Z

    move-result v0

    return v0
.end method

.method public d()V
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->d()V

    .line 222
    return-void
.end method

.method public d(LaP/a;)V
    .registers 3
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/DirectionsLineSchematicView;->c(LaP/a;)V

    .line 131
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->m:Z

    .line 160
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->j()V

    .line 161
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->m:Z

    .line 154
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->j()V

    .line 155
    return-void
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public h()Lcom/google/android/maps/rideabout/view/i;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->n:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/i;

    return-object v0
.end method

.method public i()Lcom/google/android/maps/rideabout/view/h;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->l:Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;

    return-object v0
.end method

.method public j()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 173
    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->m:Z

    if-eqz v0, :cond_1c

    .line 174
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 176
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 184
    :goto_1b
    return-void

    .line 179
    :cond_1c
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 181
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto :goto_1b
.end method

.method public setActionBarCustomHeader(Landroid/widget/ViewSwitcher;Lcom/google/android/maps/rideabout/view/l;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 288
    const v0, 0x7f100451

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_e

    .line 290
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :cond_e
    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->n:Landroid/widget/ViewSwitcher;

    .line 293
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->h()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;

    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/rideabout/view/NavigationView;->a(Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;Lcom/google/android/maps/rideabout/view/l;)V

    .line 295
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->k()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;

    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/rideabout/view/NavigationView;->a(Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;Lcom/google/android/maps/rideabout/view/l;)V

    .line 297
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->h()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->p:Lcom/google/android/maps/rideabout/view/c;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/i;->a(Lcom/google/android/maps/rideabout/view/c;)V

    .line 298
    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->k()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/i;->d()V

    .line 299
    return-void
.end method

.method public setLocationMarkerVisibleOnScreen(LaP/a;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 255
    if-eqz p1, :cond_7

    .line 256
    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->a(LaP/a;Z)V

    .line 261
    :goto_6
    return-void

    .line 259
    :cond_7
    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->o:Z

    goto :goto_6
.end method
