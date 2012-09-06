.class public Lcom/google/googlenav/ui/view/dialog/cK;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/android/bi;


# instance fields
.field private final a:LaM/bH;

.field private b:Ljava/util/List;

.field private c:Landroid/widget/Spinner;

.field private d:Lcom/google/googlenav/ui/view/android/TransitLineView;

.field private e:Lcom/google/googlenav/ui/view/android/TransitLineView;


# direct methods
.method public constructor <init>(LaM/bH;)V
    .registers 3
    .parameter

    .prologue
    .line 53
    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/cK;->p()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 54
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cK;->a:LaM/bH;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/cK;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cK;->b:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 70
    const v0, 0x7f100264

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cK;->c:Landroid/widget/Spinner;

    .line 72
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cK;->a:LaM/bH;

    invoke-virtual {v0}, LaM/bH;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bO;

    .line 73
    invoke-virtual {v0}, Lcom/google/googlenav/bO;->j()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cK;->b:Ljava/util/List;

    .line 74
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/cK;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/cK;->b:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/view/dialog/cK;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 76
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 77
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cK;->c:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 78
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cK;->c:Landroid/widget/Spinner;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/cM;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/view/dialog/cM;-><init>(Lcom/google/googlenav/ui/view/dialog/cK;Lcom/google/googlenav/ui/view/dialog/cL;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 79
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cK;->c:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/cK;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/cK;->b(I)V

    return-void
.end method

.method private a(Ljava/util/List;)[Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 83
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bS;

    .line 86
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lcom/google/googlenav/bS;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_c

    .line 88
    :cond_22
    return-object v3
.end method

.method private b(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 140
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cK;->a:LaM/bH;

    invoke-virtual {v0}, LaM/bH;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bO;

    .line 141
    invoke-virtual {v0, p1, v4}, Lcom/google/googlenav/bO;->a(II)V

    .line 142
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cK;->a:LaM/bH;

    invoke-virtual {v1}, LaM/bH;->b()V

    .line 144
    invoke-virtual {v0}, Lcom/google/googlenav/bO;->l()[Lcom/google/googlenav/ui/view/android/bj;

    move-result-object v1

    .line 145
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/googlenav/ui/view/android/bj;

    aget-object v3, v1, v4

    aput-object v3, v2, v4

    .line 146
    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/cK;->e:Lcom/google/googlenav/ui/view/android/TransitLineView;

    invoke-virtual {v0}, Lcom/google/googlenav/bO;->k()Lcom/google/googlenav/bT;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/googlenav/bT;->a([Lcom/google/googlenav/ui/view/android/bj;)[[Lcom/google/googlenav/bP;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/googlenav/ui/view/android/TransitLineView;->a([Lcom/google/googlenav/ui/view/android/bj;[[Lcom/google/googlenav/bP;)V

    .line 148
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/cK;->d:Lcom/google/googlenav/ui/view/android/TransitLineView;

    invoke-virtual {v0}, Lcom/google/googlenav/bO;->k()Lcom/google/googlenav/bT;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bT;->a([Lcom/google/googlenav/ui/view/android/bj;)[[Lcom/google/googlenav/bP;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/google/googlenav/ui/view/android/TransitLineView;->a([Lcom/google/googlenav/ui/view/android/bj;[[Lcom/google/googlenav/bP;)V

    .line 150
    return-void
.end method

.method private b(Landroid/view/View;)V
    .registers 12
    .parameter

    .prologue
    const v9, 0x7f100445

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 116
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cK;->a:LaM/bH;

    invoke-virtual {v0}, LaM/bH;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bO;

    .line 117
    invoke-virtual {v0}, Lcom/google/googlenav/bO;->l()[Lcom/google/googlenav/ui/view/android/bj;

    move-result-object v6

    .line 118
    invoke-virtual {v0}, Lcom/google/googlenav/bO;->k()Lcom/google/googlenav/bT;

    move-result-object v7

    .line 120
    invoke-virtual {v0}, Lcom/google/googlenav/bO;->m()I

    move-result v3

    .line 121
    const v0, 0x7f100449

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/TransitLineView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cK;->e:Lcom/google/googlenav/ui/view/android/TransitLineView;

    .line 122
    new-array v2, v5, [Lcom/google/googlenav/ui/view/android/bj;

    aget-object v0, v6, v8

    aput-object v0, v2, v8

    .line 123
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cK;->e:Lcom/google/googlenav/ui/view/android/TransitLineView;

    invoke-virtual {v7, v2}, Lcom/google/googlenav/bT;->a([Lcom/google/googlenav/ui/view/android/bj;)[[Lcom/google/googlenav/bP;

    move-result-object v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/TransitLineView;->a(Lcom/google/googlenav/ui/view/android/bi;[Lcom/google/googlenav/ui/view/android/bj;I[[Lcom/google/googlenav/bP;Z)V

    .line 125
    const v0, 0x7f100448

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/TransitLineView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cK;->d:Lcom/google/googlenav/ui/view/android/TransitLineView;

    .line 126
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cK;->d:Lcom/google/googlenav/ui/view/android/TransitLineView;

    invoke-virtual {v7, v6}, Lcom/google/googlenav/bT;->a([Lcom/google/googlenav/ui/view/android/bj;)[[Lcom/google/googlenav/bP;

    move-result-object v4

    move-object v1, p0

    move-object v2, v6

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/TransitLineView;->a(Lcom/google/googlenav/ui/view/android/bi;[Lcom/google/googlenav/ui/view/android/bj;I[[Lcom/google/googlenav/bP;Z)V

    .line 129
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cK;->d:Lcom/google/googlenav/ui/view/android/TransitLineView;

    invoke-virtual {v0, v9}, Lcom/google/googlenav/ui/view/android/TransitLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 130
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cK;->e:Lcom/google/googlenav/ui/view/android/TransitLineView;

    invoke-virtual {v1, v9}, Lcom/google/googlenav/ui/view/android/TransitLineView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 133
    new-instance v2, Lcom/google/googlenav/ui/view/dialog/cN;

    invoke-direct {v2, v0, v1}, Lcom/google/googlenav/ui/view/dialog/cN;-><init>(Landroid/widget/ScrollView;Landroid/widget/ScrollView;)V

    .line 135
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    return-void
.end method


# virtual methods
.method protected N_()V
    .registers 2

    .prologue
    .line 177
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_e

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/cK;->requestWindowFeature(I)Z

    .line 180
    :cond_e
    return-void
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/cK;->b(I)V

    .line 155
    return-void
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 3
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cK;->a:LaM/bH;

    invoke-virtual {v0}, LaM/bH;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bO;

    .line 94
    invoke-virtual {v0}, Lcom/google/googlenav/bO;->h()LaM/bG;

    move-result-object v0

    invoke-virtual {v0}, LaM/bG;->a()Lcom/google/googlenav/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/cn;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 96
    return-void
.end method

.method public a(ILandroid/view/MenuItem;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 108
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f1004ca

    if-ne v1, v2, :cond_12

    .line 109
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cK;->g:Lcom/google/googlenav/ui/g;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 112
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cK;->a:LaM/bH;

    invoke-virtual {v0}, LaM/bH;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bO;

    .line 61
    invoke-virtual {v0}, Lcom/google/googlenav/bO;->h()LaM/bG;

    move-result-object v0

    invoke-virtual {v0}, LaM/bG;->a()Lcom/google/googlenav/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/cn;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/cK;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/cK;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401cc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 64
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/cK;->a(Landroid/view/View;)V

    .line 65
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/cK;->b(Landroid/view/View;)V

    .line 66
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 100
    const v0, 0x7f1004ca

    const/16 v1, 0x508

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 102
    const v1, 0x7f02025b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 103
    const/4 v0, 0x1

    return v0
.end method
