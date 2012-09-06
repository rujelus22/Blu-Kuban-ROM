.class public LaR/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/view/android/bm;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Lcom/google/googlenav/ui/bw;

.field private final d:Lcom/google/googlenav/ui/wizard/ju;

.field private final e:LaR/e;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Lcom/google/googlenav/ui/view/android/bm;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/bw;LaR/e;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "parentDialog cannot be null"

    invoke-static {p2, v0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iput-object p2, p0, LaR/a;->a:Lcom/google/googlenav/ui/view/android/bm;

    .line 53
    iput-object p4, p0, LaR/a;->c:Lcom/google/googlenav/ui/bw;

    .line 54
    iput-object p1, p0, LaR/a;->b:Landroid/view/LayoutInflater;

    .line 55
    iput-object p3, p0, LaR/a;->d:Lcom/google/googlenav/ui/wizard/ju;

    .line 56
    iput-object p5, p0, LaR/a;->e:LaR/e;

    .line 57
    invoke-direct {p0}, LaR/a;->c()V

    .line 58
    return-void
.end method

.method static synthetic a(LaR/a;)Lcom/google/googlenav/ui/bw;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, LaR/a;->c:Lcom/google/googlenav/ui/bw;

    return-object v0
.end method

.method static synthetic a(LaR/a;Landroid/view/View;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, LaR/a;->a(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    new-instance v0, LaR/d;

    invoke-direct {v0, p0, p2, p3}, LaR/d;-><init>(LaR/a;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .registers 5
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, LaR/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0400f1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 128
    const v0, 0x7f1002b4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    const/16 v2, 0x3c4

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    new-instance v0, LaR/c;

    invoke-direct {v0, p0}, LaR/c;-><init>(LaR/a;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    if-eqz p2, :cond_41

    .line 149
    new-instance v2, Lcom/google/googlenav/ui/bx;

    sget v0, Lcom/google/googlenav/ui/bn;->bx:I

    invoke-direct {v2, p2, v0}, Lcom/google/googlenav/ui/bx;-><init>(Ljava/lang/String;I)V

    .line 151
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, LaR/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0400f2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 154
    iget-object v1, p0, LaR/a;->c:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v1

    check-cast v1, LT/f;

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/ImageView;LT/f;)V

    .line 155
    iget-object v1, p0, LaR/a;->c:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->b()Lah/s;

    move-result-object v1

    invoke-virtual {v1, v2}, Lah/s;->c(Lcom/google/googlenav/ui/bx;)Z

    move-result v1

    if-eqz v1, :cond_38

    if-eqz p3, :cond_38

    .line 156
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v0, p3, v1}, LaR/a;->a(Landroid/view/View;Ljava/lang/String;I)V

    .line 158
    :cond_38
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {p6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 162
    :cond_41
    return-void
.end method

.method static synthetic b(LaR/a;)Lcom/google/googlenav/ui/view/android/bm;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, LaR/a;->a:Lcom/google/googlenav/ui/view/android/bm;

    return-object v0
.end method

.method static synthetic c(LaR/a;)Lcom/google/googlenav/ui/wizard/ju;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, LaR/a;->d:Lcom/google/googlenav/ui/wizard/ju;

    return-object v0
.end method

.method private c()V
    .registers 6

    .prologue
    .line 65
    iget-object v0, p0, LaR/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0400f0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LaR/a;->f:Landroid/view/View;

    .line 66
    iget-object v0, p0, LaR/a;->f:Landroid/view/View;

    const v1, 0x7f1002b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    iget-object v1, p0, LaR/a;->a:Lcom/google/googlenav/ui/view/android/bm;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bm;->v()Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 70
    const/16 v1, 0x26a

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    :goto_2d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0}, LaR/a;->b()V

    .line 76
    return-void

    .line 72
    :cond_34
    const/16 v2, 0x26b

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2d
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, LaR/a;->f:Landroid/view/View;

    return-object v0
.end method

.method public b()V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 80
    iget-object v0, p0, LaR/a;->a:Lcom/google/googlenav/ui/view/android/bm;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bm;->v()Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->P()[Lcom/google/googlenav/aw;

    move-result-object v9

    .line 81
    iget-object v0, p0, LaR/a;->a:Lcom/google/googlenav/ui/view/android/bm;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bm;->v()Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->O()Ljava/lang/String;

    move-result-object v3

    .line 83
    iget-object v0, p0, LaR/a;->f:Landroid/view/View;

    const v1, 0x7f1002b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 84
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 86
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->J()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 87
    invoke-direct {p0, v1}, LaR/a;->a(Landroid/view/ViewGroup;)V

    .line 90
    :cond_30
    if-eqz v9, :cond_65

    .line 91
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 92
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 93
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v6

    .line 95
    iget-object v0, p0, LaR/a;->a:Lcom/google/googlenav/ui/view/android/bm;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bm;->v()Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ax()Lcom/google/googlenav/ap;

    move v7, v8

    .line 97
    :goto_48
    array-length v0, v9

    if-ge v7, v0, :cond_57

    .line 98
    aget-object v0, v9, v7

    iget-object v2, v0, Lcom/google/googlenav/aw;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, LaR/a;->a(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 97
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_48

    .line 103
    :cond_57
    iget-object v0, p0, LaR/a;->c:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->b()Lah/s;

    move-result-object v0

    new-instance v2, LaR/b;

    invoke-direct {v2, p0, v5, v6, v3}, LaR/b;-><init>(LaR/a;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v2}, Lah/s;->a(Ljava/lang/Iterable;Lah/p;)V

    .line 118
    :cond_65
    iget-object v0, p0, LaR/a;->e:LaR/e;

    iget-object v2, p0, LaR/a;->a:Lcom/google/googlenav/ui/view/android/bm;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/android/bm;->v()Lcom/google/googlenav/ai;

    move-result-object v2

    invoke-virtual {v0, v3, v2, p0}, LaR/e;->a(Ljava/lang/String;Lcom/google/googlenav/ai;LaR/a;)V

    .line 119
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 120
    return-void
.end method
