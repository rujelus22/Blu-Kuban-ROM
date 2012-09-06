.class public Lcom/estrongs/android/pop/view/le;
.super Ljava/lang/Object;


# static fields
.field private static u:Lcom/estrongs/android/pop/view/le;


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/ImageView;

.field public f:Lcom/estrongs/android/pop/view/RecommendListView;

.field public g:Landroid/widget/ProgressBar;

.field public h:Landroid/widget/ProgressBar;

.field public i:Landroid/widget/FrameLayout;

.field public j:Landroid/widget/LinearLayout;

.field public k:Landroid/widget/Button;

.field public l:Landroid/widget/TextView;

.field public m:Lcom/google/ads/AdView;

.field public n:Landroid/widget/ProgressBar;

.field public o:Landroid/os/Handler;

.field public p:Landroid/app/Activity;

.field public q:Z

.field r:Lcom/estrongs/android/pop/view/lh;

.field private s:Ljava/lang/Object;

.field private t:I

.field private v:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/view/le;->u:Lcom/estrongs/android/pop/view/le;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->b:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->c:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->d:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->e:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->f:Lcom/estrongs/android/pop/view/RecommendListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->g:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->h:Landroid/widget/ProgressBar;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->s:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/le;->q:Z

    iput v1, p0, Lcom/estrongs/android/pop/view/le;->t:I

    new-instance v0, Lcom/estrongs/android/pop/view/lh;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/lh;-><init>(Lcom/estrongs/android/pop/view/le;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->r:Lcom/estrongs/android/pop/view/lh;

    iput v1, p0, Lcom/estrongs/android/pop/view/le;->v:I

    iput v1, p0, Lcom/estrongs/android/pop/view/le;->w:I

    return-void
.end method

.method public static declared-synchronized a()Lcom/estrongs/android/pop/view/le;
    .registers 2

    const-class v1, Lcom/estrongs/android/pop/view/le;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/view/le;->u:Lcom/estrongs/android/pop/view/le;

    if-nez v0, :cond_e

    new-instance v0, Lcom/estrongs/android/pop/view/le;

    invoke-direct {v0}, Lcom/estrongs/android/pop/view/le;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/view/le;->u:Lcom/estrongs/android/pop/view/le;

    :cond_e
    sget-object v0, Lcom/estrongs/android/pop/view/le;->u:Lcom/estrongs/android/pop/view/le;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/le;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/le;->l()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/le;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/view/le;->t:I

    return-void
.end method

.method private b(I)V
    .registers 6

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    const/4 v0, 0x3

    if-eq p1, v0, :cond_28

    if-ne p1, v3, :cond_42

    :cond_28
    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget v0, p0, Lcom/estrongs/android/pop/view/le;->t:I

    if-ne v0, v3, :cond_3c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_22

    :cond_3c
    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_22

    :cond_42
    const/4 v0, 0x2

    if-ne p1, v0, :cond_22

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_22
.end method

.method private k()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/view/le;->f:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/RecommendListView;->c()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, Lcom/estrongs/android/pop/view/le;->p:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-le v2, v1, :cond_23

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_a

    :cond_23
    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v2, "Anzhi_315"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    goto :goto_a
.end method

.method private l()V
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/view/le;->t:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/view/le;->b(I)V

    return-void
.end method

.method private m()Z
    .registers 5

    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/le;->p:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/a/e;->a(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->f:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(I)V

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Handler;)V
    .registers 5

    const v0, 0x7f0701d2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0701d4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0701d3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0701d5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0701de

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/RecommendListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->f:Lcom/estrongs/android/pop/view/RecommendListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0701dc

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0701d9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->g:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0701da

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0701d8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->i:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0701db

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0701dd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0701d7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->h:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0701e0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->n:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0701e1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/le;->m:Lcom/google/ads/AdView;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->f:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Landroid/app/Activity;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->f:Lcom/estrongs/android/pop/view/RecommendListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Z)V

    iput-object p2, p0, Lcom/estrongs/android/pop/view/le;->o:Landroid/os/Handler;

    iput-object p1, p0, Lcom/estrongs/android/pop/view/le;->p:Landroid/app/Activity;

    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .registers 8

    const v5, 0x7f0701df

    const/4 v4, 0x3

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->f:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Landroid/os/Handler;)V

    :goto_19
    return-void

    :cond_1a
    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/a/e;->d()[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/le;->f:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/RecommendListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_31

    if-eqz v0, :cond_ad

    array-length v1, v0

    if-lez v1, :cond_ad

    iput v4, p0, Lcom/estrongs/android/pop/view/le;->t:I

    :cond_31
    :goto_31
    iget-object v1, p0, Lcom/estrongs/android/pop/view/le;->f:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-virtual {v1, p1, v0}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Landroid/os/Handler;[Lcom/estrongs/android/pop/view/a/k;)V

    iget v0, p0, Lcom/estrongs/android/pop/view/le;->t:I

    if-ne v0, v4, :cond_47

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->l:Landroid/widget/TextView;

    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/a/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_47
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/le;->i()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    iget v0, p0, Lcom/estrongs/android/pop/view/le;->t:I

    if-nez v0, :cond_b0

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/view/le;->t:I

    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/a/e;->c()V

    :cond_62
    :goto_62
    invoke-direct {p0}, Lcom/estrongs/android/pop/view/le;->l()V

    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->a(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    const-string v1, "Application"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->a(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    const-string v1, "Software"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->a(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->p:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/le;->k()Z

    move-result v0

    if-nez v0, :cond_c5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->m:Lcom/google/ads/AdView;

    invoke-virtual {v0, v2}, Lcom/google/ads/AdView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->m:Lcom/google/ads/AdView;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/le;->r:Lcom/estrongs/android/pop/view/lh;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->a(Lcom/google/ads/c;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->m:Lcom/google/ads/AdView;

    new-instance v1, Lcom/google/ads/AdRequest;

    invoke-direct {v1}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->a(Lcom/google/ads/AdRequest;)V

    goto/16 :goto_19

    :cond_ad
    iput v2, p0, Lcom/estrongs/android/pop/view/le;->t:I

    goto :goto_31

    :cond_b0
    iget v0, p0, Lcom/estrongs/android/pop/view/le;->t:I

    if-ne v0, v4, :cond_62

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/le;->m()Z

    move-result v0

    if-eqz v0, :cond_62

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/android/pop/view/le;->t:I

    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/a/e;->c()V

    goto :goto_62

    :cond_c5
    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->m:Lcom/google/ads/AdView;

    invoke-virtual {v0, v3}, Lcom/google/ads/AdView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_19
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->f:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/RecommendListView;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/a/e;->c(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/le;->q:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->f:Lcom/estrongs/android/pop/view/RecommendListView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->f:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->b()V

    :cond_c
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->f:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->f:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/RecommendListView;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public d()V
    .registers 5

    const v3, 0x7f0701df

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/le;->i()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->p:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/le;->k()Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_1f
    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->m:Lcom/google/ads/AdView;

    invoke-virtual {v0, v2}, Lcom/google/ads/AdView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_32
    :goto_32
    return-void

    :cond_33
    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->m:Lcom/google/ads/AdView;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->a(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    const-string v1, "Application"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->a(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    const-string v1, "Software"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->a(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/le;->m:Lcom/google/ads/AdView;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/le;->r:Lcom/estrongs/android/pop/view/lh;

    invoke-virtual {v1, v2}, Lcom/google/ads/AdView;->a(Lcom/google/ads/c;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/le;->m:Lcom/google/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/ads/AdView;->a(Lcom/google/ads/AdRequest;)V

    goto :goto_32
.end method

.method public d(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->f:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/RecommendListView;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->f:Lcom/estrongs/android/pop/view/RecommendListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/le;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/RecommendListView;->a(Landroid/os/Handler;)V

    :cond_16
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->f:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/RecommendListView;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public f()V
    .registers 3

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/le;->q:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/a/e;->d()[Lcom/estrongs/android/pop/view/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/le;->f:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/RecommendListView;->a([Lcom/estrongs/android/pop/view/a/k;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->l:Landroid/widget/TextView;

    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/a/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/android/pop/view/le;->t:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/le;->l()V

    goto :goto_4
.end method

.method public g()V
    .registers 3

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/le;->q:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget v0, p0, Lcom/estrongs/android/pop/view/le;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/android/pop/view/le;->t:I

    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/le;->l()V

    goto :goto_4

    :cond_19
    iget v0, p0, Lcom/estrongs/android/pop/view/le;->t:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/android/pop/view/le;->t:I

    goto :goto_d
.end method

.method public h()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/view/le;->v:I

    iput v0, p0, Lcom/estrongs/android/pop/view/le;->w:I

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/le;->q:Z

    invoke-static {}, Lcom/estrongs/android/pop/view/a/e;->b()Lcom/estrongs/android/pop/view/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/a/e;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->k:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/pop/view/lf;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/lf;-><init>(Lcom/estrongs/android/pop/view/le;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/pop/view/lg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/lg;-><init>(Lcom/estrongs/android/pop/view/le;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public i()V
    .registers 6

    const v3, 0x1e243

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v3, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/pop/view/le;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_15
    iget-object v2, p0, Lcom/estrongs/android/pop/view/le;->o:Landroid/os/Handler;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/estrongs/android/pop/view/le;->o:Landroid/os/Handler;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_20
    monitor-exit v1

    :cond_21
    :goto_21
    return-void

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_22

    throw v0

    :cond_25
    iget-object v1, p0, Lcom/estrongs/android/pop/view/le;->p:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/pop/view/le;->v:I

    if-eq v1, v2, :cond_21

    iget v2, p0, Lcom/estrongs/android/pop/view/le;->w:I

    if-ne v2, v0, :cond_55

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v3, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/pop/view/le;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_45
    iget-object v2, p0, Lcom/estrongs/android/pop/view/le;->o:Landroid/os/Handler;

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/estrongs/android/pop/view/le;->o:Landroid/os/Handler;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_50
    monitor-exit v1

    goto :goto_21

    :catchall_52
    move-exception v0

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_45 .. :try_end_54} :catchall_52

    throw v0

    :cond_55
    iput v1, p0, Lcom/estrongs/android/pop/view/le;->v:I

    iput v0, p0, Lcom/estrongs/android/pop/view/le;->w:I

    iget-object v1, p0, Lcom/estrongs/android/pop/view/le;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v2, v0, 0x6

    mul-int/lit8 v3, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/estrongs/android/pop/view/le;->d:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/estrongs/android/pop/view/le;->d:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/view/le;->e:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_21
.end method

.method public j()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/le;->f:Lcom/estrongs/android/pop/view/RecommendListView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/RecommendListView;->a()V

    return-void
.end method
