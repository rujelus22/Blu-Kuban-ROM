.class public Lcom/google/googlenav/ui/view/android/bm;
.super Lcom/google/googlenav/ui/view/android/bE;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/googlenav/L;

.field protected final b:Lcom/google/googlenav/ui/wizard/ju;

.field private q:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

.field private r:Landroid/support/v4/view/ViewPager;

.field private s:Lcom/google/googlenav/ui/ba;

.field private t:LaR/a;

.field private u:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ai;LaM/m;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-virtual {p2}, LaM/m;->ba()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->l()Lcom/google/googlenav/L;

    move-result-object v0

    invoke-virtual {p2}, LaM/m;->ba()Lcom/google/googlenav/ui/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/googlenav/ui/view/android/bm;-><init>(Lcom/google/googlenav/ai;LaM/m;Lcom/google/googlenav/L;Lcom/google/googlenav/ui/wizard/ju;)V

    .line 87
    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ai;LaM/m;Lcom/google/googlenav/L;Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bE;-><init>(Lcom/google/googlenav/ai;LaM/m;)V

    .line 93
    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/bm;->a:Lcom/google/googlenav/L;

    .line 94
    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/bm;->b:Lcom/google/googlenav/ui/wizard/ju;

    .line 95
    return-void
.end method

.method private J()Lcom/google/googlenav/ui/ba;
    .registers 8

    .prologue
    .line 208
    new-instance v0, Lcom/google/googlenav/ui/view/android/bp;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bm;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bm;->q:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bm;->r:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/android/bp;-><init>(Lcom/google/googlenav/ui/view/android/bm;Landroid/content/Context;Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;Landroid/support/v4/view/ViewPager;Landroid/view/LayoutInflater;Lcom/google/googlenav/ui/bc;)V

    return-object v0
.end method

.method private K()Landroid/view/View;
    .registers 8

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ef

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 234
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bm;->m()Ljava/util/List;

    move-result-object v2

    .line 237
    const v0, 0x7f100026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 238
    new-instance v3, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bm;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/bm;->d:LaM/m;

    const/16 v6, 0x24

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    iput-object v3, p0, Lcom/google/googlenav/ui/view/android/bm;->m:Lcom/google/googlenav/ui/view/android/L;

    .line 239
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bm;->m:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 240
    new-instance v2, Lcom/google/googlenav/ui/view/android/bI;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/android/bI;-><init>(Lcom/google/googlenav/ui/view/android/bE;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 241
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 242
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 244
    return-object v1
.end method

.method private L()Landroid/view/View;
    .registers 7

    .prologue
    .line 248
    new-instance v5, LaR/e;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->q:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bm;->a:Lcom/google/googlenav/L;

    invoke-direct {v5, v0, v1, v2}, LaR/e;-><init>(Landroid/widget/TabHost;ILcom/google/googlenav/L;)V

    .line 250
    new-instance v0, LaR/a;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bm;->b:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bm;->e:Lcom/google/googlenav/ui/bw;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, LaR/a;-><init>(Landroid/view/LayoutInflater;Lcom/google/googlenav/ui/view/android/bm;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/bw;LaR/e;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->t:LaR/a;

    .line 252
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->t:LaR/a;

    invoke-virtual {v0}, LaR/a;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private M()V
    .registers 5

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->d:LaM/m;

    const/16 v1, 0x578

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v1, v2, v3}, LaM/m;->a(IILjava/lang/Object;)Z

    .line 438
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bm;->u:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bm;->u:Z

    .line 439
    return-void

    .line 438
    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private N()V
    .registers 3

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->d:LaM/m;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v1}, LaM/m;->g(Lcom/google/googlenav/ai;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bm;->u:Z

    .line 455
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 456
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->q:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    if-eqz v0, :cond_3b

    .line 457
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->q:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    const v1, 0x7f1002ae

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 458
    if-eqz v0, :cond_3b

    .line 459
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-static {v1}, LaM/m;->f(Lcom/google/googlenav/ai;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 460
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-boolean v1, p0, Lcom/google/googlenav/ui/view/android/bm;->u:Z

    if-eqz v1, :cond_3c

    const v1, 0x7f020260

    :goto_38
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 469
    :cond_3b
    :goto_3b
    return-void

    .line 461
    :cond_3c
    const v1, 0x7f02025f

    goto :goto_38

    .line 464
    :cond_40
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3b
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/bm;)V
    .registers 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bm;->M()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/bm;)Z
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bm;->u:Z

    return v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/bm;)Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;
    .registers 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->q:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    return-object v0
.end method


# virtual methods
.method protected a(ILandroid/view/MenuItem;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 391
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 392
    sparse-switch v0, :sswitch_data_3c

    .line 405
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bE;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 394
    :sswitch_d
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bm;->M()V

    .line 395
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bm;->u:Z

    if-eqz v0, :cond_1c

    const v0, 0x7f020260

    :goto_17
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v1

    .line 396
    goto :goto_c

    .line 395
    :cond_1c
    const v0, 0x7f02025f

    goto :goto_17

    .line 398
    :sswitch_20
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bm;->M()V

    move v0, v1

    .line 399
    goto :goto_c

    .line 401
    :sswitch_25
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bm;->d:LaM/m;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bS()Z

    move-result v0

    if-eqz v0, :cond_38

    const/16 v0, 0x843

    :goto_31
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, LaM/m;->a(IILjava/lang/Object;)Z

    move v0, v1

    .line 403
    goto :goto_c

    .line 401
    :cond_38
    const/16 v0, 0x834

    goto :goto_31

    .line 392
    nop

    :sswitch_data_3c
    .sparse-switch
        0x7f1001dc -> :sswitch_25
        0x7f10031b -> :sswitch_d
        0x7f1004d3 -> :sswitch_20
    .end sparse-switch
.end method

.method public a(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    .line 377
    const v0, 0x7f1004d3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 379
    if-eqz v1, :cond_1c

    .line 380
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->d:LaM/m;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v2}, LaM/m;->g(Lcom/google/googlenav/ai;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v0, 0x43b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_19
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 383
    :cond_1c
    const v0, 0x7f1001dc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 384
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bS()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/16 v0, 0x70

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_31
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 386
    const/4 v0, 0x1

    return v0

    .line 380
    :cond_36
    const/16 v0, 0x581

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 384
    :cond_3d
    const/16 v0, 0x9b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_31
.end method

.method public c()Landroid/view/View;
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x8

    .line 99
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    if-nez v1, :cond_8

    .line 171
    :goto_7
    return-object v0

    .line 103
    :cond_8
    invoke-static {}, Lcom/google/googlenav/aC;->a()Lcom/google/googlenav/aC;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/aC;->c(Lcom/google/googlenav/ai;)Z

    .line 104
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-static {v1}, LaM/aR;->f(Lcom/google/googlenav/ai;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400ed

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 107
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/bm;->a(Landroid/view/View;)V

    .line 108
    const v0, 0x1020012

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->q:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    .line 110
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->d:LaM/m;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v2}, LaM/m;->g(Lcom/google/googlenav/ai;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bm;->u:Z

    .line 113
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-nez v0, :cond_de

    .line 114
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->q:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    const v2, 0x7f10001e

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->q:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    const v2, 0x7f1002af

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->J()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 120
    new-instance v2, Lcom/google/googlenav/ui/view/android/bn;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/android/bn;-><init>(Lcom/google/googlenav/ui/view/android/bm;)V

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ai;->o(I)V

    .line 134
    :goto_79
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->q:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    const v2, 0x7f1002ae

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 135
    new-instance v2, Lcom/google/googlenav/ui/view/android/bo;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/ui/view/android/bo;-><init>(Lcom/google/googlenav/ui/view/android/bm;Landroid/widget/ImageView;)V

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bm;->N()V

    .line 153
    :cond_8f
    :goto_8f
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->q:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->setup()V

    .line 155
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->q:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    const v2, 0x7f1002b0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->r:Landroid/support/v4/view/ViewPager;

    .line 159
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bm;->J()Lcom/google/googlenav/ui/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->s:Lcom/google/googlenav/ui/ba;

    .line 160
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->s:Lcom/google/googlenav/ui/ba;

    const/16 v2, 0x3dd

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bm;->K()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/ui/ba;->a(ILandroid/view/View;)V

    .line 161
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->s:Lcom/google/googlenav/ui/ba;

    const/16 v2, 0x3de

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bm;->L()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/ui/ba;->a(ILandroid/view/View;)V

    .line 165
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ce()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 167
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->s:Lcom/google/googlenav/ui/ba;

    const/16 v2, 0x3df

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bm;->n()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/ui/ba;->a(ILandroid/view/View;)V

    .line 170
    :cond_d4
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bm;->l()V

    move-object v0, v1

    .line 171
    goto/16 :goto_7

    .line 131
    :cond_da
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_79

    .line 145
    :cond_de
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 147
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->q:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    const v2, 0x7f1002ad

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_8f

    .line 149
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8f
.end method

.method public i()V
    .registers 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/bE;->i()V

    .line 177
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->t:LaR/a;

    if-eqz v0, :cond_c

    .line 178
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->t:LaR/a;

    invoke-virtual {v0}, LaR/a;->b()V

    .line 183
    :cond_c
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bm;->N()V

    .line 184
    return-void
.end method

.method protected j()Z
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->d:LaM/m;

    invoke-virtual {v0}, LaM/m;->h()V

    .line 412
    const/4 v0, 0x1

    return v0
.end method

.method protected l()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 191
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->n:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 192
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bm;->o:Z

    if-eqz v0, :cond_16

    .line 193
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->q:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->setVisibility(I)V

    .line 200
    :cond_15
    :goto_15
    return-void

    .line 196
    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->q:Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/InstrumentableTabHost;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15
.end method

.method protected m()Ljava/util/List;
    .registers 10

    .prologue
    .line 257
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v6

    .line 258
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bm;->o:Z

    if-eqz v0, :cond_a

    move-object v0, v6

    .line 316
    :goto_9
    return-object v0

    .line 264
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->f()Ljava/lang/Object;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bm;->d:LaM/m;

    invoke-virtual {v2}, LaM/m;->br()Ljava/util/Hashtable;

    move-result-object v2

    invoke-static {v1, v2, v0}, LaM/aR;->a(Lcom/google/googlenav/ai;Ljava/util/Hashtable;Ljava/lang/Object;)LaM/aP;

    move-result-object v7

    .line 269
    new-instance v0, LaQ/N;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bm;->e:Lcom/google/googlenav/ui/bw;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bm;->d:LaM/m;

    invoke-virtual {v4}, LaM/m;->be()Lcom/google/googlenav/ui/a;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, LaQ/N;-><init>(ILcom/google/googlenav/ui/bw;Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/view/c;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bm;->o()Z

    move-result v5

    .line 274
    invoke-virtual {p0, v6, v5}, Lcom/google/googlenav/ui/view/android/bm;->a(Ljava/util/List;Z)V

    .line 275
    invoke-virtual {p0, v7, v6, v5}, Lcom/google/googlenav/ui/view/android/bm;->a(LaM/aP;Ljava/util/List;Z)V

    .line 276
    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/view/android/bm;->d(Ljava/util/List;)V

    .line 277
    invoke-virtual {p0, v6, v7}, Lcom/google/googlenav/ui/view/android/bm;->a(Ljava/util/List;LaM/aP;)V

    .line 278
    new-instance v0, LaQ/P;

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bm;->d:LaM/m;

    invoke-direct {v0, v1, v2, v7, v3}, LaQ/P;-><init>(ILcom/google/googlenav/ai;LaM/aP;LaM/i;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v0, LaQ/bm;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bm;->e:Lcom/google/googlenav/ui/bw;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bm;->d:LaM/m;

    iget-object v8, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v4, v8}, LaM/m;->d(Lcom/google/googlenav/ai;)Z

    move-result v4

    invoke-direct/range {v0 .. v5}, LaQ/bm;-><init>(ILcom/google/googlenav/ui/bw;Lcom/google/googlenav/ai;ZZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v0, LaQ/I;

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-direct {v0, v1, v2}, LaQ/I;-><init>(ILcom/google/googlenav/ai;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {p0, v6, v7, v5}, Lcom/google/googlenav/ui/view/android/bm;->a(Ljava/util/List;LaM/aP;Z)V

    .line 286
    invoke-virtual {p0, v6, v7, v5}, Lcom/google/googlenav/ui/view/android/bm;->b(Ljava/util/List;LaM/aP;Z)V

    .line 287
    invoke-virtual {p0, v6, v7, v5}, Lcom/google/googlenav/ui/view/android/bm;->c(Ljava/util/List;LaM/aP;Z)V

    .line 289
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bm;->G()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 290
    invoke-virtual {p0, v7}, Lcom/google/googlenav/ui/view/android/bm;->a(LaM/aP;)LaQ/H;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_84
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bm;->F()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 294
    new-instance v0, LaQ/aX;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v5}, LaQ/aX;-><init>(Lcom/google/googlenav/ai;IZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_96
    invoke-virtual {p0, v6}, Lcom/google/googlenav/ui/view/android/bm;->a(Ljava/util/List;)V

    .line 300
    new-instance v0, LaQ/al;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-direct {v0, v1, v2, v5}, LaQ/al;-><init>(ILcom/google/googlenav/ai;Z)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->d:LaM/m;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v0, v1}, LaM/m;->b(Lcom/google/googlenav/ai;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 305
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bm;->d:LaM/m;

    check-cast v3, LaM/bj;

    .line 306
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-virtual {v3, v0}, LaM/bj;->l(Lcom/google/googlenav/ai;)I

    move-result v2

    .line 307
    invoke-virtual {v3}, LaM/bj;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    const/16 v1, 0x578

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x13

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/g;->a(Lcom/google/googlenav/ai;Ljava/lang/String;ILaM/bj;IZ)Lcom/google/googlenav/ui/view/android/g;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_d4

    .line 312
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d4
    move-object v0, v6

    .line 316
    goto/16 :goto_9
.end method

.method n()Landroid/view/View;
    .registers 4

    .prologue
    .line 320
    new-instance v0, LaR/h;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bm;->a:Lcom/google/googlenav/L;

    invoke-direct {v0, v1, v2}, LaR/h;-><init>(Lcom/google/googlenav/ai;Lcom/google/googlenav/L;)V

    .line 321
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, LaR/h;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected o()Z
    .registers 2

    .prologue
    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 331
    sget-object v0, Lcom/google/googlenav/ui/view/android/bm;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 332
    const v1, 0x7f110009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 334
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 336
    const v0, 0x7f1002bb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 337
    const/16 v1, 0x3c4

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 338
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->J()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 339
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 340
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->o(I)V

    .line 343
    :cond_3f
    const v0, 0x7f10031b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 344
    if-eqz v1, :cond_5d

    .line 345
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-static {v0}, LaM/m;->f(Lcom/google/googlenav/ai;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 346
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bm;->u:Z

    if-eqz v0, :cond_8f

    const v0, 0x7f020260

    :goto_57
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 347
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 354
    :cond_5d
    :goto_5d
    const v0, 0x7f1004d3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_6f

    .line 357
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-static {v1}, LaM/m;->f(Lcom/google/googlenav/ai;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 360
    :cond_6f
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/bm;->b(Landroid/view/Menu;)V

    .line 361
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/bm;->c(Landroid/view/Menu;)V

    .line 363
    const v0, 0x7f1001dc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    invoke-static {v1}, LaM/m;->e(Lcom/google/googlenav/ai;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 366
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/bm;->e(Landroid/view/Menu;)V

    .line 367
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/bm;->f(Landroid/view/Menu;)V

    .line 368
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/bm;->g(Landroid/view/Menu;)V

    .line 370
    return v2

    .line 346
    :cond_8f
    const v0, 0x7f02025f

    goto :goto_57

    .line 349
    :cond_93
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5d
.end method

.method public v()Lcom/google/googlenav/ai;
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bm;->c:Lcom/google/googlenav/ai;

    return-object v0
.end method
