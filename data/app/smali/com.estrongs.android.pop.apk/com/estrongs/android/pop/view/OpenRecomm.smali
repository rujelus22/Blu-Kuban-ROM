.class public Lcom/estrongs/android/pop/view/OpenRecomm;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/estrongs/android/pop/view/RecommendListView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/ImageView;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/content/Intent;

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:J

.field private s:I

.field private t:I

.field private u:I

.field private v:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->j:Z

    iput-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->m:Landroid/content/Intent;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->n:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->o:Z

    iput v2, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->p:I

    iput v2, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->q:I

    const-wide/32 v0, 0x278d00

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->r:J

    iput v2, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->s:I

    iput v2, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->t:I

    iput v2, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->u:I

    new-instance v0, Lcom/estrongs/android/pop/view/io;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/io;-><init>(Lcom/estrongs/android/pop/view/OpenRecomm;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->v:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/OpenRecomm;)Lcom/estrongs/android/pop/view/RecommendListView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->c:Lcom/estrongs/android/pop/view/RecommendListView;

    return-object v0
.end method

.method private a()V
    .registers 11

    const/high16 v9, 0x3f00

    const v0, 0x7f07019c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/OpenRecomm;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    const/high16 v3, 0x41c8

    mul-float/2addr v3, v1

    add-float/2addr v3, v9

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->s:I

    if-nez v0, :cond_77

    const v0, 0x7f07019d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v0, 0x7f0701a6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v0, 0x4270

    mul-float/2addr v0, v1

    add-float/2addr v0, v9

    float-to-int v7, v0

    iget v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->p:I

    iget v8, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->q:I

    if-le v0, v8, :cond_9c

    iget v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->p:I

    :goto_5e
    add-int/2addr v5, v6

    mul-int v6, v0, v7

    add-int/2addr v5, v6

    int-to-float v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v9

    float-to-int v0, v0

    add-int/2addr v0, v5

    iput v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->s:I

    const/high16 v0, 0x41e0

    mul-float/2addr v0, v1

    add-float/2addr v0, v9

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->t:I

    const/high16 v0, 0x41c0

    mul-float/2addr v0, v1

    add-float/2addr v0, v9

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->u:I

    :cond_77
    iget v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->s:I

    iget v5, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->t:I

    add-int/2addr v0, v5

    if-le v2, v0, :cond_9f

    iget v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->s:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_82
    mul-int/lit8 v0, v3, 0x2

    div-int/lit8 v0, v0, 0x3

    const/high16 v2, 0x43a0

    mul-float/2addr v2, v1

    add-float/2addr v2, v9

    float-to-int v2, v2

    if-le v3, v2, :cond_a6

    const/high16 v2, 0x4394

    mul-float/2addr v1, v2

    add-float/2addr v1, v9

    float-to-int v1, v1

    if-le v0, v1, :cond_a6

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_96
    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_9c
    iget v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->q:I

    goto :goto_5e

    :cond_9f
    iget v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->t:I

    sub-int v0, v2, v0

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_82

    :cond_a6
    iget v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->u:I

    sub-int v0, v3, v0

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_96
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/OpenRecomm;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->j:Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->m:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/view/OpenRecomm;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/view/OpenRecomm;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/view/OpenRecomm;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->e:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/OpenRecomm;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/view/OpenRecomm;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/OpenRecomm;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->setContentView(I)V

    const v0, 0x7f07019f

    :try_start_1b
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->a:Landroid/widget/TextView;

    const v0, 0x7f0701a1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f07019e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->d:Landroid/widget/ImageView;

    const v0, 0x7f0701a2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->e:Landroid/widget/ImageView;

    const v0, 0x7f0701a0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->f:Landroid/widget/ImageView;

    const v0, 0x7f0701a4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->b:Landroid/widget/ListView;

    const v0, 0x7f0701a5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/RecommendListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->c:Lcom/estrongs/android/pop/view/RecommendListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->c:Lcom/estrongs/android/pop/view/RecommendListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Z)V

    const v0, 0x7f0701a7

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/pop/view/ip;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ip;-><init>(Lcom/estrongs/android/pop/view/OpenRecomm;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/OpenRecomm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_8e

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/OpenRecomm;->finish()V

    :goto_8d
    return-void

    :cond_8e
    const-string v1, "filepath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->m:Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->m:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->m:Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/view/a/e;->a(Landroid/content/Context;Landroid/content/Intent;)[Lcom/estrongs/android/pop/view/a/i;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->n:Z

    if-eqz v0, :cond_d1

    array-length v1, v0

    if-lez v1, :cond_d1

    array-length v1, v0

    iput v1, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->q:I

    const/4 v1, 0x0

    array-length v2, v0

    new-instance v3, Lcom/estrongs/android/pop/view/is;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/view/is;-><init>(Lcom/estrongs/android/pop/view/OpenRecomm;)V

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->b:Landroid/widget/ListView;

    new-instance v2, Lcom/estrongs/android/pop/view/it;

    const v3, 0x7f03003a

    invoke-direct {v2, p0, p0, v3, v0}, Lcom/estrongs/android/pop/view/it;-><init>(Lcom/estrongs/android/pop/view/OpenRecomm;Landroid/content/Context;I[Lcom/estrongs/android/pop/view/a/i;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->n:Z

    :cond_d1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->o:Z

    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/a/e;->b(Ljava/lang/String;)[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v1

    if-eqz v1, :cond_ed

    array-length v2, v1

    iput v2, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->p:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->o:Z

    iget-object v2, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->c:Lcom/estrongs/android/pop/view/RecommendListView;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->v:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Landroid/os/Handler;[Lcom/estrongs/android/pop/view/a/k;)V

    :cond_ed
    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/estrongs/android/pop/view/a/e;->a(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-wide v3, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->r:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_106

    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/a/e;->a(Z)V

    :cond_106
    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->n:Z

    if-eqz v1, :cond_146

    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->o:Z

    if-eqz v1, :cond_146

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->c:Lcom/estrongs/android/pop/view/RecommendListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/pop/view/iq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/iq;-><init>(Lcom/estrongs/android/pop/view/OpenRecomm;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_12a
    new-instance v0, Lcom/estrongs/android/pop/view/ir;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/ir;-><init>(Lcom/estrongs/android/pop/view/OpenRecomm;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/OpenRecomm;->a()V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_137} :catch_180

    :goto_137
    new-array v0, v6, [I

    fill-array-data v0, :array_1d6

    new-array v1, v6, [I

    fill-array-data v1, :array_1de

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/OpenRecomm;->a([I[I)V

    goto/16 :goto_8d

    :cond_146
    :try_start_146
    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->n:Z

    if-eqz v1, :cond_18e

    array-length v1, v0

    if-ne v1, v5, :cond_164

    iget-object v1, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->m:Landroid/content/Intent;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget-object v2, v2, Lcom/estrongs/android/pop/view/a/i;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a/i;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->m:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/OpenRecomm;->finish()V

    :cond_164
    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->a:Landroid/widget/TextView;

    const v1, 0x7f09025c

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/OpenRecomm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->d:Landroid/widget/ImageView;

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->c:Lcom/estrongs/android/pop/view/RecommendListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->setVisibility(I)V
    :try_end_17f
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_17f} :catch_180

    goto :goto_12a

    :catch_180
    move-exception v0

    :try_start_181
    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->m:Landroid/content/Intent;

    if-eqz v0, :cond_18a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->m:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->startActivity(Landroid/content/Intent;)V
    :try_end_18a
    .catchall {:try_start_181 .. :try_end_18a} :catchall_1cf
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_18a} :catch_1c9

    :cond_18a
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/OpenRecomm;->finish()V

    goto :goto_137

    :cond_18e
    :try_start_18e
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->o:Z

    if-eqz v0, :cond_1b5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->a:Landroid/widget/TextView;

    const v1, 0x7f09025d

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/OpenRecomm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->d:Landroid/widget/ImageView;

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->b:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->c:Lcom/estrongs/android/pop/view/RecommendListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->setVisibility(I)V
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_1b3} :catch_180

    goto/16 :goto_12a

    :cond_1b5
    const v0, 0x7f090051

    :try_start_1b8
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/OpenRecomm;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1c4} :catch_1d4

    :goto_1c4
    :try_start_1c4
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/OpenRecomm;->finish()V
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_1c7} :catch_180

    goto/16 :goto_8d

    :catch_1c9
    move-exception v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/OpenRecomm;->finish()V

    goto/16 :goto_137

    :catchall_1cf
    move-exception v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/OpenRecomm;->finish()V

    throw v0

    :catch_1d4
    move-exception v0

    goto :goto_1c4

    :array_1d6
    .array-data 0x4
        0x9ft 0x1t 0x7t 0x7ft
        0xa8t 0x1t 0x7t 0x7ft
    .end array-data

    :array_1de
    .array-data 0x4
        0x5ct 0x2t 0x9t 0x7ft
        0x5et 0x2t 0x9t 0x7ft
    .end array-data
.end method

.method public onDestroy()V
    .registers 2

    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/a/e;->g()V

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->o:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/view/OpenRecomm;->c:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->a()V

    :cond_9
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    return-void
.end method
