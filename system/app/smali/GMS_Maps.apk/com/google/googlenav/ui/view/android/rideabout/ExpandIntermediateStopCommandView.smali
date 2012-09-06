.class public Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/android/rideabout/f;


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field final b:Landroid/view/View$OnClickListener;

.field private final c:Lad/t;

.field private final d:Ljava/util/List;

.field private final e:Z

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lad/t;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x2

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/e;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/rideabout/e;-><init>(Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->b:Landroid/view/View$OnClickListener;

    .line 65
    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c:Lad/t;

    .line 66
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->d:Ljava/util/List;

    .line 67
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->setTag(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p3}, Lad/t;->O()[Lad/u;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_30

    const/4 v0, 0x1

    :goto_1c
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->e:Z

    .line 69
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->g()V

    .line 71
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->h()V

    .line 72
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->a()V

    .line 73
    return-void

    .line 68
    :cond_30
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;)Lad/t;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c:Lad/t;

    return-object v0
.end method

.method private e()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 76
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 77
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 79
    :cond_19
    return-void
.end method

.method private f()V
    .registers 4

    .prologue
    .line 82
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1b

    .line 83
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 85
    :cond_1b
    return-void
.end method

.method private g()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 97
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->k()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040070

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->f:Landroid/widget/LinearLayout;

    .line 98
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->f:Landroid/widget/LinearLayout;

    const v1, 0x7f1001a3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c:Lad/t;

    invoke-virtual {v1}, Lad/t;->L()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 101
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    :cond_31
    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->e:Z

    if-eqz v1, :cond_4a

    .line 104
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->f:Landroid/widget/LinearLayout;

    const v2, 0x7f1001a2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    :goto_44
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->addView(Landroid/view/View;)V

    .line 110
    return-void

    .line 107
    :cond_4a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->f:Landroid/widget/LinearLayout;

    const v1, 0x7f1001a1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_44
.end method

.method private h()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 113
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->k()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->g:Landroid/widget/LinearLayout;

    .line 114
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->g:Landroid/widget/LinearLayout;

    const v1, 0x7f1000b9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c:Lad/t;

    invoke-virtual {v1}, Lad/t;->L()Z

    move-result v1

    if-nez v1, :cond_31

    .line 117
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    :cond_31
    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->e:Z

    if-eqz v1, :cond_4a

    .line 120
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->g:Landroid/widget/LinearLayout;

    const v2, 0x7f1000b8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 121
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    :goto_44
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->addView(Landroid/view/View;)V

    .line 126
    return-void

    .line 123
    :cond_4a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->g:Landroid/widget/LinearLayout;

    const v1, 0x7f1000b7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_44
.end method

.method private i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c:Lad/t;

    invoke-virtual {v0}, Lad/t;->v()I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .registers 5

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c:Lad/t;

    invoke-virtual {v0}, Lad/t;->O()[Lad/u;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 141
    const/16 v1, 0x4d1

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k()Landroid/view/LayoutInflater;
    .registers 3

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c:Lad/t;

    invoke-virtual {v0}, Lad/t;->L()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 90
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->e()V

    .line 94
    :goto_b
    return-void

    .line 92
    :cond_c
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->f()V

    goto :goto_b
.end method

.method b()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c:Lad/t;

    invoke-virtual {v0}, Lad/t;->M()V

    .line 152
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->e()V

    .line 155
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->c:Lad/t;

    invoke-virtual {v0}, Lad/t;->N()V

    .line 160
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;->f()V

    .line 163
    return-void
.end method

.method public setExpansionStateListener(Lcom/google/googlenav/ui/view/android/rideabout/g;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    return-void
.end method
