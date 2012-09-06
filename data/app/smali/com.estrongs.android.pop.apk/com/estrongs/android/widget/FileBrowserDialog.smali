.class public Lcom/estrongs/android/widget/FileBrowserDialog;
.super Landroid/app/AlertDialog;


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/estrongs/android/pop/d/f;

.field c:Lcom/estrongs/android/widget/ac;

.field d:Z

.field e:Lcom/estrongs/android/widget/u;

.field protected f:Ljava/io/File;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/estrongs/android/widget/w;

.field private j:Landroid/widget/ListView;

.field private k:Lcom/estrongs/android/widget/al;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Landroid/os/ConditionVariable;

.field private x:Landroid/widget/AbsListView$OnScrollListener;

.field private y:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/android/pop/d/f;Ljava/lang/String;Ljava/io/FileFilter;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/widget/FileBrowserDialog;-><init>(Landroid/app/Activity;Lcom/estrongs/android/pop/d/f;Ljava/lang/String;Ljava/io/FileFilter;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/android/pop/d/f;Ljava/lang/String;Ljava/io/FileFilter;Z)V
    .registers 12

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->a:Ljava/util/List;

    iput-object v4, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->e:Lcom/estrongs/android/widget/u;

    iput-boolean v3, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->r:Z

    iput-boolean v3, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->s:Z

    iput-boolean v5, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->t:Z

    iput-boolean v3, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->u:Z

    iput-object v4, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->v:Ljava/util/Queue;

    iput-object v4, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->w:Landroid/os/ConditionVariable;

    new-instance v0, Lcom/estrongs/android/widget/f;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/f;-><init>(Lcom/estrongs/android/widget/FileBrowserDialog;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->x:Landroid/widget/AbsListView$OnScrollListener;

    new-instance v0, Lcom/estrongs/android/widget/k;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/k;-><init>(Lcom/estrongs/android/widget/FileBrowserDialog;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->y:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/estrongs/android/widget/FileBrowserDialog$3;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/widget/FileBrowserDialog$3;-><init>(Lcom/estrongs/android/widget/FileBrowserDialog;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->f:Ljava/io/File;

    new-instance v0, Lcom/estrongs/android/widget/l;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/l;-><init>(Lcom/estrongs/android/widget/FileBrowserDialog;)V

    invoke-super {p0, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v0, Lcom/estrongs/android/widget/m;

    invoke-direct {v0, p0, p1, p1}, Lcom/estrongs/android/widget/m;-><init>(Lcom/estrongs/android/widget/FileBrowserDialog;Landroid/app/Activity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->c:Lcom/estrongs/android/widget/ac;

    iput-object p2, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->b:Lcom/estrongs/android/pop/d/f;

    iput-boolean p5, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->r:Z

    invoke-virtual {p0, p1}, Lcom/estrongs/android/widget/FileBrowserDialog;->a(Landroid/content/Context;)V

    if-eqz p4, :cond_51

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->i:Lcom/estrongs/android/widget/w;

    invoke-virtual {v0, p4}, Lcom/estrongs/android/widget/w;->a(Ljava/io/FileFilter;)V

    :cond_51
    if-eqz p3, :cond_6c

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->f:Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    new-instance v0, Lcom/estrongs/android/widget/ESVfsFile;

    invoke-direct {v0, p2, p3, v5}, Lcom/estrongs/android/widget/ESVfsFile;-><init>(Lcom/estrongs/android/pop/d/f;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->i:Lcom/estrongs/android/widget/w;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/w;->d(Ljava/io/File;)V

    iget-object v1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ESVfsFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6b
    return-void

    :cond_6c
    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->i:Lcom/estrongs/android/widget/w;

    iget-object v1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->f:Ljava/io/File;

    invoke-virtual {v0, v1, v4}, Lcom/estrongs/android/widget/w;->a(Ljava/io/File;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->h:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->o:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->p:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6b
.end method

.method static synthetic a(Lcom/estrongs/android/widget/FileBrowserDialog;)Lcom/estrongs/android/widget/al;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->k:Lcom/estrongs/android/widget/al;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/widget/FileBrowserDialog;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->t:Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/widget/FileBrowserDialog;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->s:Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/widget/FileBrowserDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->s:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/widget/FileBrowserDialog;)Ljava/util/Queue;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->v:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/os/ConditionVariable;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->w:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/widget/FileBrowserDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->t:Z

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/widget/FileBrowserDialog;)Lcom/estrongs/android/widget/w;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->i:Lcom/estrongs/android/widget/w;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/widget/FileBrowserDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->r:Z

    return v0
.end method

.method static synthetic h(Lcom/estrongs/android/widget/FileBrowserDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->u:Z

    return v0
.end method

.method static synthetic i(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->o:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->p:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->j:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/widget/AbsListView$OnScrollListener;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->x:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/widget/FileBrowserDialog;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->l:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->i:Lcom/estrongs/android/widget/w;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/w;->a()V

    return-void
.end method

.method public a(II)V
    .registers 4

    const/4 v0, -0x3

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->o:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_8
    return-void

    :cond_9
    const/4 v0, -0x2

    if-ne p1, v0, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->q:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->p:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8
.end method

.method public a(Landroid/content/Context;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const-string v0, "File Browser"

    invoke-super {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030016

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->m:Landroid/view/View;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->m:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->m:Landroid/view/View;

    const v1, 0x7f0700c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->m:Landroid/view/View;

    const v1, 0x7f0700c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->m:Landroid/view/View;

    const v1, 0x7f070092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->j:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->y:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/estrongs/android/widget/al;

    const v3, 0x7f03001c

    new-array v4, v7, [Ljava/lang/String;

    const-string v1, "icon"

    aput-object v1, v4, v6

    const/4 v1, 0x1

    const-string v5, "name"

    aput-object v5, v4, v1

    new-array v5, v7, [I

    fill-array-data v5, :array_13e

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/widget/al;-><init>(Landroid/content/Context;Lcom/estrongs/android/widget/an;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->k:Lcom/estrongs/android/widget/al;

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->k:Lcom/estrongs/android/widget/al;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {p1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->u:Z

    iget-boolean v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->u:Z

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->x:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-boolean v6, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->t:Z

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->w:Landroid/os/ConditionVariable;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->v:Ljava/util/Queue;

    new-instance v0, Lcom/estrongs/android/widget/o;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/widget/o;-><init>(Lcom/estrongs/android/widget/FileBrowserDialog;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/estrongs/android/widget/o;->start()V

    :cond_a3
    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->m:Landroid/view/View;

    const v1, 0x7f0700cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->n:Landroid/view/View;

    new-instance v0, Lcom/estrongs/android/widget/q;

    iget-object v1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->k:Lcom/estrongs/android/widget/al;

    invoke-direct {v0, p0, p1, v1, p1}, Lcom/estrongs/android/widget/q;-><init>(Lcom/estrongs/android/widget/FileBrowserDialog;Landroid/content/Context;Lcom/estrongs/android/widget/al;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->i:Lcom/estrongs/android/widget/w;

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->i:Lcom/estrongs/android/widget/w;

    new-instance v1, Lcom/estrongs/android/widget/s;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/widget/s;-><init>(Lcom/estrongs/android/widget/FileBrowserDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/w;->a(Lcom/estrongs/android/widget/af;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->m:Landroid/view/View;

    const v1, 0x7f070089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->l:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/widget/t;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/t;-><init>(Lcom/estrongs/android/widget/FileBrowserDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->m:Landroid/view/View;

    const v1, 0x7f0700cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->o:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->m:Landroid/view/View;

    const v1, 0x7f0700ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->p:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->m:Landroid/view/View;

    const v1, 0x7f0700cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->q:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->o:Landroid/widget/Button;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->o:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/widget/g;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/widget/g;-><init>(Lcom/estrongs/android/widget/FileBrowserDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#ffe9e9e9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->m:Landroid/view/View;

    const v2, 0x7f0700c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->m:Landroid/view/View;

    const v2, 0x7f0700cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/app/Activity;)V

    return-void

    nop

    :array_13e
    .array-data 0x4
        0x69t 0x0t 0x7t 0x7ft
        0x6at 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public a(Lcom/estrongs/android/widget/u;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->e:Lcom/estrongs/android/widget/u;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->i:Lcom/estrongs/android/widget/w;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/widget/w;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_e

    iget-object v1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->j:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_e
    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->d:Z

    return-void
.end method

.method a(Ljava/io/File;)Z
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_d
.end method

.method public b()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->i:Lcom/estrongs/android/widget/w;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/w;->c()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->f:Ljava/io/File;

    if-eq v1, v0, :cond_11

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/FileBrowserDialog;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2b

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->i:Lcom/estrongs/android/widget/w;

    iget-object v1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->f:Ljava/io/File;

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/widget/w;->a(Ljava/io/File;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->h:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-ne v1, v2, :cond_42

    iget-object v1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->i:Lcom/estrongs/android/widget/w;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/widget/w;->a(Ljava/io/File;Ljava/util/Comparator;)V

    :cond_42
    iget-object v1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->i:Lcom/estrongs/android/widget/w;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/widget/w;->d(Ljava/io/File;)V

    iget-object v1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->i:Lcom/estrongs/android/widget/w;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/w;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->i:Lcom/estrongs/android/widget/w;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/w;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .registers 1

    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method protected e()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const v10, 0x7f02007b

    invoke-static {}, Lcom/estrongs/android/pop/a/d;->a()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Lcom/estrongs/android/widget/FileBrowserDialog$InnerMountPointFile;

    iget-object v2, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->b:Lcom/estrongs/android/pop/d/f;

    const v3, 0x7f020034

    const-string v4, "/"

    invoke-virtual {p0}, Lcom/estrongs/android/widget/FileBrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f0901e8

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/widget/FileBrowserDialog$InnerMountPointFile;-><init>(Lcom/estrongs/android/widget/FileBrowserDialog;Lcom/estrongs/android/pop/d/f;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    new-instance v0, Lcom/estrongs/android/widget/FileBrowserDialog$InnerMountPointFile;

    iget-object v2, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->b:Lcom/estrongs/android/pop/d/f;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/FileBrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0901e9

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v3, v10

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/widget/FileBrowserDialog$InnerMountPointFile;-><init>(Lcom/estrongs/android/widget/FileBrowserDialog;Lcom/estrongs/android/pop/d/f;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    const/4 v0, 0x0

    move v6, v0

    :goto_4f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_56

    return-object v9

    :cond_56
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    :goto_60
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_4f

    :cond_64
    new-instance v0, Lcom/estrongs/android/widget/FileBrowserDialog$InnerMountPointFile;

    iget-object v2, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->b:Lcom/estrongs/android/pop/d/f;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v1, p0

    move v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/widget/FileBrowserDialog$InnerMountPointFile;-><init>(Lcom/estrongs/android/widget/FileBrowserDialog;Lcom/estrongs/android/pop/d/f;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6

    const/4 v0, -0x3

    if-ne p1, v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->o:Landroid/widget/Button;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->o:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/widget/h;

    invoke-direct {v1, p0, p3}, Lcom/estrongs/android/widget/h;-><init>(Lcom/estrongs/android/widget/FileBrowserDialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    const/4 v0, -0x1

    if-ne p1, v0, :cond_27

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->p:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->p:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/widget/i;

    invoke-direct {v1, p0, p3}, Lcom/estrongs/android/widget/i;-><init>(Lcom/estrongs/android/widget/FileBrowserDialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_27
    const/4 v0, -0x2

    if-ne p1, v0, :cond_39

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->q:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->q:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/widget/j;

    invoke-direct {v1, p0, p3}, Lcom/estrongs/android/widget/j;-><init>(Lcom/estrongs/android/widget/FileBrowserDialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_39
    return-void
.end method

.method public show()V
    .registers 4

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    iget-boolean v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->d:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->i:Lcom/estrongs/android/widget/w;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/w;->c()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->f:Ljava/io/File;

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->i:Lcom/estrongs/android/widget/w;

    iget-object v1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->i:Lcom/estrongs/android/widget/w;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/w;->c()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/w;->a(Ljava/io/File;Ljava/util/Comparator;)V

    :cond_1d
    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->i:Lcom/estrongs/android/widget/w;

    iget-object v1, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->i:Lcom/estrongs/android/widget/w;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/w;->c()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/w;->d(Ljava/io/File;)V

    :cond_28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog;->d:Z

    return-void
.end method
