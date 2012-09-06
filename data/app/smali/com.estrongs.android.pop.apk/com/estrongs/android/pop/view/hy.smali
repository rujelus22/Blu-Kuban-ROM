.class public Lcom/estrongs/android/pop/view/hy;
.super Lcom/estrongs/android/pop/popupwindowwitharrow/e;


# static fields
.field private static i:Lcom/estrongs/android/pop/view/hy;


# instance fields
.field private j:Landroid/widget/ListView;

.field private k:Landroid/view/View$OnTouchListener;

.field private l:Lcom/estrongs/android/util/ak;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/view/hy;->i:Lcom/estrongs/android/pop/view/hy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/estrongs/android/pop/view/hy;->j:Landroid/widget/ListView;

    new-instance v0, Lcom/estrongs/android/pop/view/hz;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/hz;-><init>(Lcom/estrongs/android/pop/view/hy;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/hy;->k:Landroid/view/View$OnTouchListener;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/hy;->l:Lcom/estrongs/android/util/ak;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/hy;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hy;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/view/View;Ljava/lang/String;II)Lcom/estrongs/android/pop/view/hy;
    .registers 11

    const-class v6, Lcom/estrongs/android/pop/view/hy;

    monitor-enter v6

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/view/hy;->i:Lcom/estrongs/android/pop/view/hy;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/estrongs/android/pop/view/hy;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/view/hy;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)V

    sput-object v0, Lcom/estrongs/android/pop/view/hy;->i:Lcom/estrongs/android/pop/view/hy;

    :goto_16
    sget-object v0, Lcom/estrongs/android/pop/view/hy;->i:Lcom/estrongs/android/pop/view/hy;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_20

    monitor-exit v6

    return-object v0

    :cond_1a
    :try_start_1a
    sget-object v0, Lcom/estrongs/android/pop/view/hy;->i:Lcom/estrongs/android/pop/view/hy;

    invoke-direct {v0}, Lcom/estrongs/android/pop/view/hy;->k()V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_20

    goto :goto_16

    :catchall_20
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/hy;Lcom/estrongs/android/util/ak;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/hy;->l:Lcom/estrongs/android/util/ak;

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/hy;)Landroid/view/View$OnTouchListener;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hy;->k:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public static declared-synchronized j()Lcom/estrongs/android/pop/view/hy;
    .registers 2

    const-class v0, Lcom/estrongs/android/pop/view/hy;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/estrongs/android/pop/view/hy;->i:Lcom/estrongs/android/pop/view/hy;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private k()V
    .registers 5

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/ah;->d()[Lcom/estrongs/android/util/ak;

    move-result-object v1

    if-nez v1, :cond_b

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x0

    aget-object v2, v1, v0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hy;->f:Landroid/content/Context;

    const v3, 0x7f090223

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/estrongs/android/util/ak;->a:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/pop/view/ib;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/hy;->f:Landroid/content/Context;

    const v3, 0x7f030025

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/estrongs/android/pop/view/ib;-><init>(Lcom/estrongs/android/pop/view/hy;Landroid/content/Context;I[Lcom/estrongs/android/util/ak;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/hy;->j:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ib;->notifyDataSetChanged()V

    goto :goto_a
.end method


# virtual methods
.method protected a()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hy;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f07020e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/estrongs/android/pop/view/hy;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/hy;->j:Landroid/widget/ListView;

    new-instance v2, Lcom/estrongs/android/pop/view/ia;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/ia;-><init>(Lcom/estrongs/android/pop/view/hy;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/hy;->k()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/hy;->c(Landroid/view/View;)V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4416

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/estrongs/android/pop/view/hy;->g:I

    if-lt v1, v0, :cond_46

    iget v0, p0, Lcom/estrongs/android/pop/view/hy;->g:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/hy;->d(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/hy;->h()V

    :cond_46
    return-void
.end method

.method public b()V
    .registers 2

    invoke-super {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->b()V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/view/hy;->i:Lcom/estrongs/android/pop/view/hy;

    return-void
.end method

.method public d()V
    .registers 5

    invoke-super {p0}, Lcom/estrongs/android/pop/popupwindowwitharrow/e;->d()V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/estrongs/android/pop/view/hy;->l:Lcom/estrongs/android/util/ak;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ILjava/lang/Object;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/hy;->l:Lcom/estrongs/android/util/ak;

    return-void
.end method
