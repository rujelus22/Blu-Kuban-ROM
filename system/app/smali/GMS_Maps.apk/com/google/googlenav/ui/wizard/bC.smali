.class public Lcom/google/googlenav/ui/wizard/bC;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field private final a:[Lcom/google/googlenav/au;

.field private final b:I

.field private final c:Z

.field private final d:Lcom/google/googlenav/android/ac;

.field private final k:Lcom/google/googlenav/ui/wizard/hM;

.field private l:Ljava/util/Timer;

.field private final m:Landroid/view/animation/Animation;

.field private final n:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>([Lcom/google/googlenav/au;IZLcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/ui/p;)V
    .registers 9

    const v0, 0x1030009

    invoke-direct {p0, p6, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bC;->m:Landroid/view/animation/Animation;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bC;->n:Landroid/view/animation/Animation;

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bC;->a:[Lcom/google/googlenav/au;

    iput p2, p0, Lcom/google/googlenav/ui/wizard/bC;->b:I

    iput-boolean p3, p0, Lcom/google/googlenav/ui/wizard/bC;->c:Z

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/bC;->d:Lcom/google/googlenav/android/ac;

    iput-object p5, p0, Lcom/google/googlenav/ui/wizard/bC;->k:Lcom/google/googlenav/ui/wizard/hM;

    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bC;->h()V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bC;->m:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_12
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bC;->l:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bC;->l:Ljava/util/Timer;

    new-instance v1, Lcom/google/googlenav/ui/wizard/bG;

    invoke-direct {v1, p0, p1}, Lcom/google/googlenav/ui/wizard/bG;-><init>(Lcom/google/googlenav/ui/wizard/bC;Landroid/view/View;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/bC;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/bC;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/bC;)[Lcom/google/googlenav/au;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bC;->a:[Lcom/google/googlenav/au;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/bC;)Lcom/google/googlenav/ui/wizard/hM;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bC;->k:Lcom/google/googlenav/ui/wizard/hM;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bC;->d:Lcom/google/googlenav/android/ac;

    new-instance v2, Lcom/google/googlenav/ui/wizard/bH;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/wizard/bH;-><init>(Lcom/google/googlenav/ui/wizard/bC;Landroid/view/View;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/bC;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/bC;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/bC;)Landroid/view/animation/Animation;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bC;->n:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 11

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bC;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030107

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v0, 0x7f0f02f2

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Gallery;

    const v0, 0x7f0f005b

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0f0006

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v0, 0x7f0f02f1

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v0, 0x7f0f02f3

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v0, Lcom/google/googlenav/ui/wizard/bI;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bC;->a:[Lcom/google/googlenav/au;

    iget-object v8, p0, Lcom/google/googlenav/ui/wizard/bC;->d:Lcom/google/googlenav/android/ac;

    iget-boolean v9, p0, Lcom/google/googlenav/ui/wizard/bC;->c:Z

    invoke-direct {v0, v6, v1, v8, v9}, Lcom/google/googlenav/ui/wizard/bI;-><init>(Landroid/widget/Gallery;[Lcom/google/googlenav/au;Lcom/google/googlenav/android/ac;Z)V

    invoke-virtual {v6, v0}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bC;->b:I

    if-lez v0, :cond_56

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bC;->b:I

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bC;->a:[Lcom/google/googlenav/au;

    array-length v1, v1

    if-ge v0, v1, :cond_56

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bC;->b:I

    invoke-virtual {v6, v0}, Landroid/widget/Gallery;->setSelection(I)V

    :cond_56
    new-instance v0, Lcom/google/googlenav/ui/wizard/bD;

    invoke-direct {v0, p0, v3}, Lcom/google/googlenav/ui/wizard/bD;-><init>(Lcom/google/googlenav/ui/wizard/bC;Landroid/widget/TextView;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/googlenav/ui/wizard/bE;

    invoke-direct {v0, p0, v2}, Lcom/google/googlenav/ui/wizard/bE;-><init>(Lcom/google/googlenav/ui/wizard/bC;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/google/googlenav/ui/wizard/bF;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/bF;-><init>(Lcom/google/googlenav/ui/wizard/bC;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v6, v0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object v7
.end method

.method public h()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bC;->l:Ljava/util/Timer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bC;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bC;->l:Ljava/util/Timer;

    :cond_c
    return-void
.end method
