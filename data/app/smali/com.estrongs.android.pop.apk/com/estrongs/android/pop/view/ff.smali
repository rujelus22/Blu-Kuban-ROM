.class public Lcom/estrongs/android/pop/view/ff;
.super Landroid/widget/BaseAdapter;


# static fields
.field private static Q:J

.field public static a:Landroid/util/DisplayMetrics;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Landroid/view/View;

.field private G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private H:Landroid/view/animation/LayoutAnimationController;

.field private I:Z

.field private J:F

.field private K:Landroid/graphics/drawable/Drawable;

.field private L:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private M:Z

.field private N:Landroid/widget/AbsListView$OnScrollListener;

.field private O:Z

.field private P:Landroid/content/DialogInterface$OnCancelListener;

.field private R:Z

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private final U:Landroid/os/Handler;

.field private V:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private W:Landroid/os/Handler;

.field private final X:I

.field private final Y:I

.field private final Z:I

.field private final aa:I

.field private final ab:I

.field private final ac:I

.field private ad:Landroid/view/LayoutInflater;

.field private ae:Lcom/estrongs/android/pop/view/hh;

.field public b:Z

.field c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/estrongs/android/pop/d/f;

.field private f:Z

.field private g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:[Ljava/lang/String;

.field private l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

.field private m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private volatile p:Z

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/estrongs/android/pop/view/hf;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/view/ff;->a:Landroid/util/DisplayMetrics;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/estrongs/android/pop/view/ff;->Q:J

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;Landroid/view/View;F)V
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v2, p0, Lcom/estrongs/android/pop/view/ff;->e:Lcom/estrongs/android/pop/d/f;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/view/ff;->f:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/view/ff;->h:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    iput-object v2, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->m:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->o:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->p:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    iput v1, p0, Lcom/estrongs/android/pop/view/ff;->s:I

    iput v1, p0, Lcom/estrongs/android/pop/view/ff;->t:I

    iput v1, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    iput v1, p0, Lcom/estrongs/android/pop/view/ff;->v:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->w:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->x:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->y:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->z:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->A:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->B:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->C:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->D:Z

    iput-boolean v3, p0, Lcom/estrongs/android/pop/view/ff;->E:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->G:Ljava/util/Map;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/view/ff;->I:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->L:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->b:Z

    iput-boolean v3, p0, Lcom/estrongs/android/pop/view/ff;->M:Z

    new-instance v0, Lcom/estrongs/android/pop/view/fg;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/fg;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->N:Landroid/widget/AbsListView$OnScrollListener;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->O:Z

    new-instance v0, Lcom/estrongs/android/pop/view/fv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/fv;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->P:Landroid/content/DialogInterface$OnCancelListener;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->R:Z

    iput-object v2, p0, Lcom/estrongs/android/pop/view/ff;->S:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/view/ff;->T:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->U:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->d:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->V:Ljava/util/HashMap;

    new-instance v0, Lcom/estrongs/android/pop/view/gg;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/gg;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->W:Landroid/os/Handler;

    iput v3, p0, Lcom/estrongs/android/pop/view/ff;->X:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/android/pop/view/ff;->Y:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/android/pop/view/ff;->Z:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/android/pop/view/ff;->aa:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/estrongs/android/pop/view/ff;->ab:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/estrongs/android/pop/view/ff;->ac:I

    iput-object p2, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/ff;->F:Landroid/view/View;

    iput p4, p0, Lcom/estrongs/android/pop/view/ff;->J:F

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->ad:Landroid/view/LayoutInflater;

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0701e9

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerGridView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    :goto_bf
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, p4}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->a(F)V

    invoke-static {p1}, Lcom/estrongs/android/pop/d/n;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/n;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->e:Lcom/estrongs/android/pop/d/f;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->H:Landroid/view/animation/LayoutAnimationController;

    new-instance v0, Lcom/estrongs/android/pop/view/hh;

    invoke-direct {v0, p0, v2}, Lcom/estrongs/android/pop/view/hh;-><init>(Lcom/estrongs/android/pop/view/ff;Lcom/estrongs/android/pop/view/hh;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->ae:Lcom/estrongs/android/pop/view/hh;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->K:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_f0
    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_108

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_108

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_108

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_116

    :cond_108
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0701eb

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerGridView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    goto :goto_bf

    :cond_116
    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0701ed

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerGridView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    goto :goto_bf

    :cond_12a
    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0701ef

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerGridView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    goto :goto_bf

    :cond_13e
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0701e7

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerGridView;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    goto/16 :goto_bf
.end method

.method static synthetic A()J
    .registers 2

    sget-wide v0, Lcom/estrongs/android/pop/view/ff;->Q:J

    return-wide v0
.end method

.method private B()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->e:Lcom/estrongs/android/pop/d/f;

    check-cast v0, Lcom/estrongs/android/pop/d/n;

    sget v1, Lcom/estrongs/android/pop/d/n;->c:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/d/n;->b(I)V

    return-void

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->d:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a
.end method

.method private C()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/view/ff;->m(Z)V

    return-void
.end method

.method private D()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->h:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09005e

    new-instance v2, Lcom/estrongs/android/pop/view/fi;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/fi;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090060

    new-instance v2, Lcom/estrongs/android/pop/view/fj;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/fj;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->P:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private E()V
    .registers 10

    const/4 v8, 0x2

    const/4 v2, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    move v1, v2

    :goto_17
    if-lt v1, v3, :cond_1a

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x5

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->M()I

    move-result v5

    if-ne v4, v5, :cond_42

    iget-object v4, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_38
    iget-object v4, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    :cond_42
    iget-object v4, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38
.end method

.method private F()Z
    .registers 6

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v3, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->b()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-eq v3, v0, :cond_27

    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-nez v0, :cond_3f

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->w:Z

    if-eqz v0, :cond_20

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->j(Z)V

    :cond_20
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->x:Z

    if-eqz v0, :cond_27

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->k(Z)V

    :cond_27
    :goto_27
    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-eq v0, v4, :cond_55

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->j()Z

    move-result v0

    if-nez v0, :cond_55

    move v0, v1

    :goto_38
    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->A:Z

    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-eq v3, v0, :cond_57

    :goto_3e
    return v2

    :cond_3f
    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-ne v0, v2, :cond_4a

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->k(Z)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ff;->j(Z)V

    goto :goto_27

    :cond_4a
    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-ne v0, v4, :cond_27

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->j(Z)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ff;->k(Z)V

    goto :goto_27

    :cond_55
    move v0, v2

    goto :goto_38

    :cond_57
    move v2, v1

    goto :goto_3e
.end method

.method private G()Z
    .registers 4

    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->s:I

    iget v1, p0, Lcom/estrongs/android/pop/view/ff;->t:I

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->k()I

    move-result v2

    iput v2, p0, Lcom/estrongs/android/pop/view/ff;->s:I

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->l()I

    move-result v2

    iput v2, p0, Lcom/estrongs/android/pop/view/ff;->t:I

    iget v2, p0, Lcom/estrongs/android/pop/view/ff;->s:I

    if-ne v0, v2, :cond_26

    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->t:I

    if-ne v1, v0, :cond_26

    const/4 v0, 0x0

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x1

    goto :goto_25
.end method

.method private H()Z
    .registers 4

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->C:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->o()Z

    move-result v1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->C:Z

    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->C:Z

    if-eq v0, v1, :cond_25

    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->C:Z

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->N:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->I:Z

    :goto_20
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->d:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    :cond_25
    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->C:Z

    xor-int/2addr v0, v1

    return v0

    :cond_29
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->I:Z

    goto :goto_20
.end method

.method private I()Z
    .registers 3

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->B:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->m()Z

    move-result v1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->B:Z

    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->B:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method private J()Z
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v3, p0, Lcom/estrongs/android/pop/view/ff;->v:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->s()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/view/ff;->v:I

    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->v:I

    if-ne v0, v1, :cond_1d

    move v0, v1

    :goto_15
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ff;->l(Z)V

    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->v:I

    if-eq v3, v0, :cond_1f

    :goto_1c
    return v1

    :cond_1d
    move v0, v2

    goto :goto_15

    :cond_1f
    move v1, v2

    goto :goto_1c
.end method

.method private K()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    :goto_2
    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->H(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    return-void

    :cond_18
    move-object v0, v1

    goto :goto_2
.end method

.method private L()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->m:Z

    if-eqz v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r:Z

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->F()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->H:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    :goto_2d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/view/ff;->p(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_3f
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->z:Z

    if-eqz v0, :cond_45

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/ff;->z:Z

    :cond_45
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_9d

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->o:Z

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(I)V

    goto :goto_7

    :cond_57
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_2d

    :cond_5d
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->p:Z

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f090115

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(I)V

    goto :goto_7

    :cond_6a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->d(Z)V

    goto :goto_7

    :cond_80
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->e(Z)V

    goto/16 :goto_7

    :cond_8f
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->c(Z)V

    goto/16 :goto_7

    :cond_96
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->a(Z)V

    goto/16 :goto_7

    :cond_9d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->d(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->e(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->F()Z

    move-result v0

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->H:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->startLayoutAnimation()V

    goto/16 :goto_7

    :cond_d1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto/16 :goto_7
.end method

.method private M()I
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->s()I

    move-result v0

    if-ne v0, v1, :cond_16

    move v0, v1

    :goto_e
    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/ff;->w:Z

    if-eqz v2, :cond_18

    if-eqz v0, :cond_18

    const/4 v1, 0x4

    :cond_15
    :goto_15
    return v1

    :cond_16
    const/4 v0, 0x0

    goto :goto_e

    :cond_18
    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/ff;->w:Z

    if-eqz v2, :cond_20

    if-nez v0, :cond_20

    const/4 v1, 0x3

    goto :goto_15

    :cond_20
    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/ff;->x:Z

    if-eqz v2, :cond_28

    if-eqz v0, :cond_28

    const/4 v1, 0x6

    goto :goto_15

    :cond_28
    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/ff;->x:Z

    if-eqz v2, :cond_30

    if-nez v0, :cond_30

    const/4 v1, 0x5

    goto :goto_15

    :cond_30
    if-eqz v0, :cond_15

    const/4 v1, 0x2

    goto :goto_15
.end method

.method private N()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private O()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->w:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->x:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private static P()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_6} :catch_c

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_b

    const/4 v0, 0x1

    :cond_b
    :goto_b
    return v0

    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method private static Q()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_6} :catch_d

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    :goto_c
    return v0

    :catch_d
    move-exception v1

    goto :goto_c
.end method

.method private static R()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_6} :catch_d

    move-result v1

    const/16 v2, 0x9

    if-lt v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    :goto_c
    return v0

    :catch_d
    move-exception v1

    goto :goto_c
.end method

.method private S()Z
    .registers 3

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/ff;Landroid/content/pm/ApplicationInfo;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/ff;->c(Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    return v0
.end method

.method private a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->ad:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(ILandroid/view/ViewGroup;FF)Landroid/view/View;
    .registers 9

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/view/ff;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0, p3}, Lcom/estrongs/android/pop/view/ff;->a(F)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ff;->e(I)I

    move-result v2

    invoke-virtual {p0, p4}, Lcom/estrongs/android/pop/view/ff;->a(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/pop/view/ff;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->p:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_c
    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->O()Z

    move-result v0

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/a/d;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->u()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->N()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_2c
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->k()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_53

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/a/c;->b(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_53
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method private a(IZ)V
    .registers 10

    const/4 v3, 0x1

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_17
    return-void

    :cond_18
    const v0, 0x7f07006a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_3a

    const v1, -0xeaab6a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_36
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_17

    :cond_3a
    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    if-eqz v1, :cond_af

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->b(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/estrongs/android/pop/view/ff;->T:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".apk"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9d

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_8e
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    :cond_9d
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->L:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_ab

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8e

    :cond_ab
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8e

    :cond_af
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8e
.end method

.method static synthetic a(J)V
    .registers 2

    sput-wide p0, Lcom/estrongs/android/pop/view/ff;->Q:J

    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {p2}, Lcom/estrongs/android/pop/app/FileContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v5

    invoke-static {p2}, Lcom/estrongs/android/pop/a/f;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    const v3, 0x20026

    if-eq v3, v5, :cond_49

    move v3, v2

    :goto_22
    const v6, 0x3002a

    if-eq v5, v6, :cond_4b

    const v6, 0x3002c

    if-eq v5, v6, :cond_4b

    :goto_2c
    or-int/2addr v1, v3

    if-eqz v4, :cond_3b

    if-eqz v1, :cond_3b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, v4}, Lcom/estrongs/android/util/ad;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    :cond_3b
    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-void

    :cond_49
    move v3, v1

    goto :goto_22

    :cond_4b
    move v1, v2

    goto :goto_2c
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/ff;->s(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/ff;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/ff;->I:Z

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f090183

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p2, :cond_46

    const v1, 0x7f0902e6

    new-instance v2, Lcom/estrongs/android/pop/view/fh;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/pop/view/fh;-><init>(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_46
    const v1, 0x7f09005e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/ff;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/ff;->g(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerGridView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    return-object v0
.end method

.method private b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-nez v0, :cond_15

    const-string v0, ""

    goto :goto_7

    :cond_15
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1c

    const-string v0, ""

    goto :goto_7

    :cond_1c
    aget-object v1, v0, v3

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_27

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    goto :goto_7

    :cond_27
    const-string v0, ""

    goto :goto_7
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 12

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "/sdcard/"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)V

    const-string v0, ""

    :try_start_9
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "tmp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_27
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/.estrongs/tmp/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_37
    invoke-static {v0, p2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->e:Lcom/estrongs/android/pop/d/f;

    const-wide/16 v1, 0x0

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/estrongs/android/pop/d/f;->b(JLjava/lang/String;Ljava/lang/String;ZZ)Z

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_4c} :catch_52
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_4c} :catch_4e

    move-result-object v0

    :goto_4d
    return-object v0

    :catch_4e
    move-exception v0

    :goto_4f
    const-string v0, ""

    goto :goto_4d

    :catch_52
    move-exception v0

    goto :goto_4f
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/ff;->m(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/ff;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/ff;->m:Z

    return-void
.end method

.method private c(Landroid/content/pm/ApplicationInfo;)I
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/c;->b(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2, p1}, Lcom/estrongs/android/pop/view/a/c;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ff;->T:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4b

    const v0, -0xff0100

    :goto_4a
    return v0

    :cond_4b
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->L:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_56

    const/high16 v0, -0x1

    goto :goto_4a

    :cond_56
    const/4 v0, -0x1

    goto :goto_4a
.end method

.method static synthetic c(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/ff;->n(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/view/ff;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/ff;->h:Z

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/view/ff;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/ff;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/view/ff;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->I:Z

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/view/ff;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->B()V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/pop/view/ff;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    return v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/view/ff;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->U:Landroid/os/Handler;

    return-object v0
.end method

.method private g(I)Z
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2d

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/android/pop/view/ff;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f090101

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(I)V

    move v0, v1

    :goto_20
    return v0

    :cond_21
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto :goto_20

    :cond_2d
    move v0, v1

    goto :goto_20
.end method

.method static synthetic h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/view/ff;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->F:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/view/ff;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->p:Z

    return v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/view/ff;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/view/ff;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->R:Z

    return v0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/d/f;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->e:Lcom/estrongs/android/pop/d/f;

    return-object v0
.end method

.method private m(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/view/gx;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/view/gx;-><init>(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private m(Z)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/ff;->O:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    move v0, v1

    :goto_15
    :try_start_15
    iget-object v3, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v3, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F:Z

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v3, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Z

    if-nez v3, :cond_3f

    new-instance v1, Lcom/estrongs/android/util/ak;

    invoke-direct {v1}, Lcom/estrongs/android/util/ak;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    iput-object v2, v1, Lcom/estrongs/android/util/ak;->a:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/estrongs/android/util/ak;->b:Z

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ILjava/lang/Object;I)V

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    move v0, v2

    goto :goto_15

    :cond_3f
    if-eqz v0, :cond_e7

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->D:Z

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Z

    if-nez v1, :cond_73

    new-instance v1, Lcom/estrongs/android/util/ak;

    invoke-direct {v1}, Lcom/estrongs/android/util/ak;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    iput-object v2, v1, Lcom/estrongs/android/util/ak;->a:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/estrongs/android/util/ak;->b:Z

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ILjava/lang/Object;I)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_68} :catch_69

    goto :goto_3c

    :catch_69
    move-exception v1

    if-eqz v0, :cond_6f

    invoke-static {}, Lcom/estrongs/android/pop/view/mh;->a()V

    :cond_6f
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->d()V

    goto :goto_3c

    :cond_73
    :try_start_73
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f090055

    const v3, 0x7f090057

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/content/Context;II)V

    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->f:Z

    if-eqz v1, :cond_db

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->e:Lcom/estrongs/android/pop/d/f;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, p1}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;ZZ)Ljava/util/Map;

    :goto_8a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->m:Z

    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->f:Z

    if-nez v1, :cond_96

    if-eqz v0, :cond_96

    invoke-static {}, Lcom/estrongs/android/pop/view/mh;->a()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_96} :catch_69

    :cond_96
    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->f:Z

    if-nez v1, :cond_9c

    if-nez v0, :cond_9e

    :cond_9c
    if-nez v0, :cond_141

    :cond_9e
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    if-nez v1, :cond_141

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_139

    const v1, 0x7f09016b

    const v0, 0x7f09016c

    :goto_b0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09005e

    new-instance v2, Lcom/estrongs/android/pop/view/gz;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/gz;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_3c

    :cond_db
    :try_start_db
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->e:Lcom/estrongs/android/pop/d/f;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;ZZ)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    goto :goto_8a

    :cond_e7
    iget-boolean v3, p0, Lcom/estrongs/android/pop/view/ff;->M:Z

    if-eqz v3, :cond_16f

    sget-object v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v4, "Spreadtrum"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16f

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/estrongs/android/pop/view/ff;->M:Z
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_f8} :catch_69

    move v3, v1

    :goto_f9
    if-nez v3, :cond_16d

    :try_start_fb
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_127

    array-length v3, v4
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_109} :catch_129
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_109} :catch_69

    const/16 v4, 0x320

    if-lt v3, v4, :cond_127

    :goto_10d
    if-eqz v1, :cond_12c

    const/4 v1, 0x0

    :try_start_110
    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->M:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f090055

    const v3, 0x7f090057

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/content/Context;II)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->e:Lcom/estrongs/android/pop/d/f;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, p1}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;ZZ)Ljava/util/Map;

    goto/16 :goto_3c

    :cond_127
    move v1, v2

    goto :goto_10d

    :catch_129
    move-exception v1

    move v1, v3

    goto :goto_10d

    :cond_12c
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->e:Lcom/estrongs/android/pop/d/f;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;ZZ)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_137} :catch_69

    goto/16 :goto_8a

    :cond_139
    const v1, 0x7f090001

    const v0, 0x7f090002

    goto/16 :goto_b0

    :cond_141
    if-eqz v0, :cond_147

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->f:Z

    if-nez v0, :cond_3c

    :cond_147
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->G:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->L()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->c()V

    goto/16 :goto_3c

    :cond_16d
    move v1, v3

    goto :goto_10d

    :cond_16f
    move v3, v2

    goto :goto_f9
.end method

.method private n(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_9
    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_12

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_24

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_27
    move-object v0, v1

    goto :goto_11
.end method

.method static synthetic n(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->T:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/estrongs/android/pop/view/ff;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->W:Landroid/os/Handler;

    return-object v0
.end method

.method private o(Ljava/lang/String;)V
    .registers 4

    :goto_0
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->H(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    return-void

    :cond_16
    move-object p1, v0

    goto :goto_0
.end method

.method private declared-synchronized p(Ljava/lang/String;)Landroid/os/Parcelable;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->V:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_a
    monitor-exit p0

    return-object v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->V:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_a

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private q(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Z)V

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, ".apk"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/pop/view/ff;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    :goto_12
    return-void

    :cond_13
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.packageinstaller"

    const-string v2, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_12
.end method

.method private r(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-nez p1, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private s(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->finish()V

    return-void
.end method


# virtual methods
.method public a(F)I
    .registers 4

    const/high16 v0, -0x4080

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->J:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_d
    return v0

    :cond_e
    float-to-int v0, p1

    goto :goto_d
.end method

.method public a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/content/Intent;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/d;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_f

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_21

    goto :goto_e

    :catch_21
    move-exception v0

    move-object v0, v1

    goto :goto_e

    :cond_24
    move-object v0, v1

    goto :goto_e
.end method

.method public a(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->u()Z

    move-result v0

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->O()Z

    move-result v1

    if-nez v0, :cond_1a

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->N()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1, v1}, Lcom/estrongs/android/pop/view/a/c;->b(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_19
    :goto_19
    return-object v4

    :cond_1a
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->k()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/a/c;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_19

    :cond_2f
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz v0, :cond_ec

    array-length v2, v0

    if-lez v2, :cond_ec

    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/Boolean;

    move-object v2, v1

    :goto_47
    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->I:Z

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->d:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/content/ContextWrapper;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_19

    :cond_68
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/e/a;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_88

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->d:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_88
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->d:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->d:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->e:Lcom/estrongs/android/pop/d/f;

    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->f:Z

    invoke-interface {v0, p1, v1}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;Z)Z

    :cond_a8
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/content/ContextWrapper;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto/16 :goto_19

    :cond_b4
    const v0, 0x7f02005c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto/16 :goto_19

    :cond_c1
    if-eqz v0, :cond_cf

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cf

    array-length v1, v0

    if-le v1, v5, :cond_cf

    :goto_cc
    array-length v1, v0

    if-lt v3, v1, :cond_dc

    :cond_cf
    move-object v0, v4

    :goto_d0
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, p1, v2, v0, p3}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/content/ContextWrapper;Ljava/lang/String;ZLcom/estrongs/android/pop/a/b;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto/16 :goto_19

    :cond_dc
    aget-object v1, v0, v3

    if-eqz v1, :cond_e8

    instance-of v5, v1, Lcom/estrongs/android/pop/a/b;

    if-eqz v5, :cond_e8

    move-object v0, v1

    check-cast v0, Lcom/estrongs/android/pop/a/b;

    goto :goto_d0

    :cond_e8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_cc

    :cond_ec
    move-object v2, v1

    goto/16 :goto_47
.end method

.method protected a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/c;->b(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    :goto_14
    return-object v0

    :cond_15
    const-string v0, ""

    goto :goto_14
.end method

.method public a(ILjava/lang/String;Z)Ljava/util/Vector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0, p3}, Lcom/estrongs/android/pop/view/ff;->a(ILjava/util/Vector;Z)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/util/Vector;Z)Ljava/util/Vector;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v0, 0x0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :try_start_7
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    move v3, v0

    :goto_d
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v3, v0, :cond_15

    move-object v0, v2

    :goto_14
    return-object v0

    :cond_15
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o()Z

    move-result v0

    if-eqz v0, :cond_21

    move-object v0, v2

    goto :goto_14

    :cond_21
    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/d/p;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/p;

    move-result-object v1

    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/d/p;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->e:Lcom/estrongs/android/pop/d/f;

    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v1, v0, v5, v6}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;ZZ)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4c

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_122

    :cond_4c
    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_122

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->e:Lcom/estrongs/android/pop/d/f;

    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v1, v0, v5, v6}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;ZZ)Ljava/util/Map;

    move-result-object v0

    :goto_66
    if-nez v0, :cond_6c

    :cond_68
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_d

    :cond_6c
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_74
    :goto_74
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_86

    :cond_7a
    :goto_7a
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o()Z

    move-result v0

    if-eqz v0, :cond_10a

    move-object v0, v2

    goto :goto_14

    :cond_86
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_74

    const-string v6, ".."

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    if-eqz p3, :cond_74

    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_74

    :catch_bd
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_14

    :cond_c1
    if-nez p1, :cond_cd

    invoke-static {v1}, Lcom/estrongs/android/pop/a/f;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_74

    :cond_cd
    if-ne p1, v7, :cond_74

    invoke-static {v1}, Lcom/estrongs/android/pop/a/f;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_74

    :cond_d9
    if-nez p1, :cond_f1

    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    :cond_f1
    if-ne p1, v7, :cond_7a

    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {p2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7a

    :cond_10a
    invoke-virtual {p0, p1, v4, p3}, Lcom/estrongs/android/pop/view/ff;->a(ILjava/util/Vector;Z)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_112
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_121} :catch_bd

    goto :goto_112

    :cond_122
    move-object v0, v1

    goto/16 :goto_66
.end method

.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->x()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s()Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    if-ne p0, v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->U:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/view/gr;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/gr;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->a(I)V

    return-void
.end method

.method public declared-synchronized a(Lcom/estrongs/android/pop/view/hd;)V
    .registers 13

    const/4 v1, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()Z

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    if-nez v2, :cond_5f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    :goto_14
    if-nez v0, :cond_b7

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v5, v4

    :goto_32
    if-lt v5, v7, :cond_68

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Z)V

    :goto_3a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->r:Lcom/estrongs/android/pop/view/hf;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_5a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    new-instance v1, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5a
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->c()V
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_65

    monitor-exit p0

    return-void

    :cond_5f
    :try_start_5f
    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_65

    goto :goto_14

    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_68
    :try_start_68
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v2, :cond_7a

    iget v2, v0, Landroid/content/pm/ActivityInfo;->icon:I

    iput v2, v8, Landroid/content/pm/ApplicationInfo;->icon:I

    :cond_7a
    iget v2, v8, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v2, :cond_82

    iget v0, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v0, v8, Landroid/content/pm/ApplicationInfo;->labelRes:I

    :cond_82
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    move v3, v4

    move v2, v4

    :goto_8a
    if-lt v3, v9, :cond_9d

    if-nez v2, :cond_99

    invoke-interface {p1, v8}, Lcom/estrongs/android/pop/view/hd;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_99
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_32

    :cond_9d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_e7

    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    move v0, v1

    :goto_b2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_8a

    :cond_b7
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c7
    :goto_c7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Z)V

    goto/16 :goto_3a

    :cond_d5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-interface {p1, v0}, Lcom/estrongs/android/pop/view/hd;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_c7

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e6
    .catchall {:try_start_68 .. :try_end_e6} :catchall_65

    goto :goto_c7

    :cond_e7
    move v0, v2

    goto :goto_b2
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->V:Ljava/util/HashMap;

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    :cond_7
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 11

    const v8, 0x7f090188

    const v7, 0x7f090187

    const/4 v6, 0x0

    const v5, 0x7f090186

    const v4, 0x7f090184

    const-string v1, ""

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->b:Z

    if-eqz v0, :cond_14

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f090185

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v3, "Sharp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f09019e

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_30
    instance-of v2, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_4f

    const/16 v0, 0x212

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Auth failed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->D()V

    goto :goto_13

    :cond_4f
    instance-of v2, p1, Ljava/io/IOException;

    if-eqz v2, :cond_146

    const/16 v2, 0x226

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v7}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_69
    invoke-direct {p0, v0, v6}, Lcom/estrongs/android/pop/view/ff;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ff;->g(Z)V

    goto :goto_13

    :cond_76
    instance-of v2, p1, Ljcifs/smb/SmbAuthException;

    if-eqz v2, :cond_a2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_84
    const-string v2, "Logon failure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_93

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->D()V

    goto :goto_13

    :cond_90
    const-string v0, ""

    goto :goto_84

    :cond_93
    const-string v2, "Access is denied"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1a9

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v7}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_69

    :cond_a2
    instance-of v2, p1, Ljcifs/smb/SmbException;

    if-eqz v2, :cond_fb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f09018a

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f090189

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_69

    :cond_fb
    instance-of v2, p1, Ljava/net/ConnectException;

    if-nez v2, :cond_107

    instance-of v2, p1, Ljava/net/SocketException;

    if-nez v2, :cond_107

    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_1a9

    :cond_107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_69

    :cond_146
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2, v8}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n================"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_69

    :cond_1a9
    move-object v0, v1

    goto/16 :goto_69
.end method

.method public a(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->p:Z

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->G:Ljava/util/Map;

    const-string v1, "bt://"

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->L()V

    return-void
.end method

.method public a(Ljava/util/Map;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/view/ff;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->G:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->L()V

    goto :goto_2
.end method

.method public a(Z)V
    .registers 4

    if-eqz p1, :cond_39

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    const-string v1, "/sdcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_19
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->notifyDataSetChanged()V

    :cond_21
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    const-string v1, "/sdcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->K()V

    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->invalidate()V

    return-void

    :cond_39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ff;->g(Z)V

    goto :goto_2e
.end method

.method public a(ZZ)V
    .registers 5

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->L()V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->w:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_13
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->o:Z

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->L()V

    goto :goto_7

    :cond_1b
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->p:Z

    if-eqz v0, :cond_23

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->L()V

    goto :goto_7

    :cond_23
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez p2, :cond_31

    if-nez v0, :cond_31

    if-eqz p1, :cond_58

    :cond_31
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->l()V

    :goto_3c
    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)V

    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->ae:Lcom/estrongs/android/pop/view/hh;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/hh;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_4d
    if-eqz p1, :cond_54

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/view/ff;->m(Z)V

    goto :goto_3c

    :cond_54
    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->C()V

    goto :goto_3c

    :cond_58
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->G:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    if-nez v0, :cond_6c

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->C()V

    goto :goto_45

    :cond_6c
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->L()V

    goto :goto_45
.end method

.method public a(JLjava/util/Vector;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->b()I

    move-result v0

    if-ltz v0, :cond_11

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    :cond_11
    :goto_11
    return v6

    :cond_12
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->M()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/view/ff;->T:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->T:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->T:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/view/ff;->o(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_79

    move v7, v6

    :goto_31
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v7, v0, :cond_3c

    invoke-virtual {p3}, Ljava/util/Vector;->clear()V

    :goto_3a
    const/4 v6, 0x1

    goto :goto_11

    :cond_3c
    invoke-virtual {p3, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/view/ff;->n(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_75

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->T:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ff;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ff;->b(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->e:Lcom/estrongs/android/pop/d/f;

    iget-boolean v5, p0, Lcom/estrongs/android/pop/view/ff;->f:Z

    move-wide v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/estrongs/android/pop/d/f;->b(JLjava/lang/String;Ljava/lang/String;ZZ)Z

    :cond_75
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_31

    :cond_79
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->T:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/view/ff;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/view/ff;->b(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->e:Lcom/estrongs/android/pop/d/f;

    const-wide/16 v1, -0x64

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/estrongs/android/pop/view/ff;->f:Z

    invoke-interface/range {v0 .. v6}, Lcom/estrongs/android/pop/d/f;->b(JLjava/lang/String;Ljava/lang/String;ZZ)Z

    goto :goto_3a
.end method

.method public a(Landroid/view/KeyEvent;I)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return v1

    :cond_9
    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->y:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    if-eqz v0, :cond_1d

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ff;->g(Z)V

    move v1, v2

    goto :goto_8

    :cond_1d
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->o:Z

    if-eqz v0, :cond_2f

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->o:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ff;->g(Z)V

    move v1, v2

    goto :goto_8

    :cond_2f
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->C:Z

    if-eqz v0, :cond_36

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->B()V

    :cond_36
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    sget-object v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v4, "Spreadtrum_cmcc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_108

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b9

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_5a
    iget-object v4, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/android/pop/c;->af()Z

    move-result v4

    iget-boolean v5, p0, Lcom/estrongs/android/pop/view/ff;->O:Z

    if-nez v5, :cond_bb

    iget-object v5, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_72

    if-eqz v0, :cond_74

    :cond_72
    if-eqz v4, :cond_84

    :cond_74
    iget-object v5, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->H(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_84

    iget-object v5, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bb

    :cond_84
    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/ff;->O:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f09008a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x5

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v4, 0xbb8

    invoke-virtual {v0, v1, v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ILjava/lang/Object;I)V

    :goto_9b
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b6

    :cond_b3
    invoke-static {}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a()V

    :cond_b6
    move v1, v2

    goto/16 :goto_8

    :cond_b9
    move v0, v1

    goto :goto_5a

    :cond_bb
    iget-boolean v5, p0, Lcom/estrongs/android/pop/view/ff;->O:Z

    if-eqz v5, :cond_ed

    iget-object v5, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c9

    if-eqz v0, :cond_cb

    :cond_c9
    if-eqz v4, :cond_db

    :cond_cb
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->H(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_db

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ed

    :cond_db
    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->h:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->finish()V

    goto :goto_9b

    :cond_ed
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fa

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ff;->a(Ljava/lang/String;)V

    :cond_fa
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->f()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->g(Z)V

    goto :goto_9b

    :cond_108
    move v0, v1

    goto/16 :goto_5a
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    if-eqz p3, :cond_17

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public a(Ljava/util/Vector;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v7

    move v1, v2

    :goto_7
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_3d

    move v0, v2

    :goto_e
    invoke-static {v7}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->ac()Z

    move-result v4

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->M()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/view/ff;->T:Ljava/lang/String;

    if-eqz v0, :cond_c4

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/d/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_51

    const v0, 0x7f090262

    invoke-virtual {v7, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v7, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_3c
    return v2

    :cond_3d
    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "/system/app/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v6

    goto :goto_e

    :cond_4d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_51
    invoke-static {v7}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->f()Z

    move-result v5

    invoke-static {v7}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->e()Z

    move-result v3

    invoke-static {v6}, Lcom/estrongs/android/pop/d/h;->b(Z)Z

    move-result v0

    if-nez v0, :cond_76

    const v0, 0x7f090263

    invoke-virtual {v7, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v7, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3c

    :cond_76
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f020119

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09007f

    invoke-virtual {v7, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090264

    invoke-virtual {v7, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v9, 0x7f09005e

    new-instance v0, Lcom/estrongs/android/pop/view/fq;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/view/fq;-><init>(Lcom/estrongs/android/pop/view/ff;Ljava/util/Vector;ZZZ)V

    invoke-virtual {v7, v9, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090060

    new-instance v2, Lcom/estrongs/android/pop/view/fr;

    invoke-direct {v2, p0, v5}, Lcom/estrongs/android/pop/view/fr;-><init>(Lcom/estrongs/android/pop/view/ff;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_b4
    move v2, v6

    goto :goto_3c

    :cond_b6
    invoke-virtual {p1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/view/ff;->n(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_cb

    :goto_c2
    add-int/lit8 v2, v2, 0x1

    :cond_c4
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v2, v0, :cond_b6

    goto :goto_b4

    :cond_cb
    if-eqz v4, :cond_108

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/estrongs/android/pop/view/ff;->T:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->b(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".apk"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_108

    iget-object v5, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v5}, Lcom/estrongs/android/pop/d/p;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/p;

    move-result-object v5

    const-wide/16 v7, -0x1

    invoke-virtual {v5, v0, v3, v7, v8}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    :cond_108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c2
.end method

.method public b(Ljava/lang/String;)J
    .registers 6

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-wide v0, v1

    :goto_f
    return-wide v0

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->G:Ljava/util/Map;

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_20

    move-wide v0, v1

    goto :goto_f

    :cond_20
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_2b

    array-length v3, v0

    if-nez v3, :cond_2d

    :cond_2b
    move-wide v0, v1

    goto :goto_f

    :cond_2d
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_f
.end method

.method protected b(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1, p1}, Lcom/estrongs/android/pop/view/a/c;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    const-string v0, ""

    goto :goto_17
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->r:Lcom/estrongs/android/pop/view/hf;

    if-nez v0, :cond_b

    new-instance v0, Lcom/estrongs/android/pop/view/hf;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/hf;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->r:Lcom/estrongs/android/pop/view/hf;

    :cond_b
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->r:Lcom/estrongs/android/pop/view/hf;

    const-string v2, "Application Loader Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->R:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->o:Z

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->L()V

    return-void
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setFastScrollEnabled(Z)V

    return-void
.end method

.method public b(ZZ)V
    .registers 6

    const/4 v2, 0x1

    if-nez p1, :cond_2f

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/ff;->E:Z

    if-eqz p2, :cond_23

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->a(I)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->A:Z

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/c;->c(Z)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->c(Z)V

    goto :goto_23

    :cond_2f
    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->B()V

    goto :goto_23
.end method

.method public b(I)Z
    .registers 6

    const/4 v1, -0x1

    if-ne p1, v1, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->b()I

    move-result p1

    :cond_9
    if-le p1, v1, :cond_3c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/view/ff;->R()Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_37
    :try_start_37
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_37 .. :try_end_3c} :catch_57

    :cond_3c
    :goto_3c
    const/4 v0, 0x1

    return v0

    :cond_3e
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/estrongs/android/pop/view/ff;->Q()Z

    move-result v2

    if-nez v2, :cond_51

    const-string v2, "com.android.settings.ApplicationPkgName"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_37

    :cond_51
    const-string v2, "pkg"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_37

    :catch_57
    move-exception v0

    goto :goto_3c
.end method

.method public c(Ljava/lang/String;)J
    .registers 6

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-wide v0, v1

    :goto_f
    return-wide v0

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->G:Ljava/util/Map;

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_20

    move-wide v0, v1

    goto :goto_f

    :cond_20
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_2b

    array-length v3, v0

    if-nez v3, :cond_2d

    :cond_2b
    move-wide v0, v1

    goto :goto_f

    :cond_2d
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_f
.end method

.method public c()V
    .registers 2

    new-instance v0, Lcom/estrongs/android/pop/view/ha;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/ha;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ha;->start()V

    return-void
.end method

.method public c(I)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/view/ff;->a(IZ)V

    goto :goto_9
.end method

.method public c(Z)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public d()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->h:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->b:Z

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09005e

    new-instance v2, Lcom/estrongs/android/pop/view/hb;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/hb;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090060

    new-instance v2, Lcom/estrongs/android/pop/view/hc;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/hc;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->P:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_a
.end method

.method public d(I)V
    .registers 10

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->o()Z

    move-result v0

    if-eqz v0, :cond_12

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/ff;->I:Z

    :cond_12
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    aget-object v4, v0, p1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->ae:Lcom/estrongs/android/pop/view/hh;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->ae:Lcom/estrongs/android/pop/view/hh;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/hh;->a()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->ae:Lcom/estrongs/android/pop/view/hh;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/view/hh;->a(Ljava/lang/String;)V

    :cond_27
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_37
    :goto_37
    return-void

    :cond_38
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/view/ff;->a(IZ)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/ff;->a(I)V

    goto :goto_37

    :cond_45
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_87

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/ff;->R:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/ff;->o:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/ff;->p:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/view/ff;->a(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/view/ff;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ff;->a(I)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/view/ff;->g(Z)V

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/ff;->y:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;)V

    goto :goto_37

    :cond_87
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.intent.action.RINGTONE_PICKER"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ac

    invoke-direct {p0, v5, v4}, Lcom/estrongs/android/pop/view/ff;->a(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v7, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->finish()V

    goto :goto_37

    :cond_ac
    const-string v6, "android.intent.action.PICK"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_115

    const-string v6, "android.intent.action.GET_CONTENT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_115

    move v0, v2

    :goto_bd
    if-eqz v0, :cond_1af

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v4}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_160

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_117

    const-string v0, "crop"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e0
    if-eqz v0, :cond_119

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "circle"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const-string v0, "circleCrop"

    const-string v4, "true"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-class v4, Lcom/estrongs/android/pop/app/imageviewer/CropImage;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x10001019

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_37

    :cond_115
    move v0, v3

    goto :goto_bd

    :cond_117
    move-object v0, v1

    goto :goto_e0

    :cond_119
    if-eqz v3, :cond_14c

    const-string v0, "return-data"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "outputX"

    const/16 v6, 0x40

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "data"

    invoke-virtual {v0, v2, v4, v1}, Lcom/estrongs/android/pop/e/a;->a(ILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_140
    :goto_140
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v7, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->finish()V

    goto/16 :goto_37

    :cond_14c
    invoke-static {}, Lcom/estrongs/android/pop/a/a;->a()Lcom/estrongs/android/pop/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/estrongs/android/pop/a/a;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_140

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_140

    :cond_160
    invoke-static {v4}, Lcom/estrongs/android/pop/a/f;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_172

    invoke-static {v4}, Lcom/estrongs/android/pop/a/f;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_185

    invoke-static {v4}, Lcom/estrongs/android/pop/a/f;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_185

    :cond_172
    invoke-static {v4}, Lcom/estrongs/android/pop/app/FileContentProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v7, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->finish()V

    goto/16 :goto_37

    :cond_185
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090210

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0a0015

    new-instance v3, Lcom/estrongs/android/pop/view/fs;

    invoke-direct {v3, p0, v5, v4}, Lcom/estrongs/android/pop/view/fs;-><init>(Lcom/estrongs/android/pop/view/ff;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f090060

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_37

    :cond_1af
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->ae:Lcom/estrongs/android/pop/view/hh;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/hh;->a()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->ae:Lcom/estrongs/android/pop/view/hh;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/hh;->b()Z

    move-result v0

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    if-nez v0, :cond_1ce

    invoke-static {v4}, Lcom/estrongs/android/pop/a/f;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    invoke-direct {p0, v4}, Lcom/estrongs/android/pop/view/ff;->q(Ljava/lang/String;)V

    goto/16 :goto_37

    :cond_1ce
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    if-eqz v0, :cond_20b

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090153

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v5, 0x7f0900ba

    invoke-virtual {v4, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v4, 0x7f090181

    invoke-virtual {v2, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Lcom/estrongs/android/pop/view/ft;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/pop/view/ft;-><init>(Lcom/estrongs/android/pop/view/ff;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_37

    :cond_20b
    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/view/ff;->k(Ljava/lang/String;)V

    goto/16 :goto_37
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized d(Z)Z
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->b:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_34

    if-eqz v1, :cond_8

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    if-nez p1, :cond_12

    :try_start_a
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->r:Lcom/estrongs/android/pop/view/hf;

    if-nez v1, :cond_3c

    :cond_12
    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->f:Z

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f090055

    const v3, 0x7f090058

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/content/Context;II)V

    :cond_21
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->r:Lcom/estrongs/android/pop/view/hf;

    if-nez v1, :cond_2c

    new-instance v1, Lcom/estrongs/android/pop/view/hf;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/hf;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/view/ff;->r:Lcom/estrongs/android/pop/view/hf;

    :cond_2c
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->e:Lcom/estrongs/android/pop/d/f;

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/ff;->f:Z

    invoke-interface {v1, v2}, Lcom/estrongs/android/pop/d/f;->a(Z)V
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_34

    goto :goto_6

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_37
    const-wide/16 v0, 0xc8

    :try_start_39
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_34
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3c} :catch_49

    :cond_3c
    :goto_3c
    :try_start_3c
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->r:Lcom/estrongs/android/pop/view/hf;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/hf;->a()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->E()V
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_34

    const/4 v0, 0x1

    goto :goto_6

    :catch_49
    move-exception v0

    goto :goto_3c
.end method

.method public e(I)I
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->V()I

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return p1

    :cond_e
    const/high16 v1, 0x4100

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->a(F)I

    move-result v1

    sub-int/2addr v0, v1

    rem-int v1, v0, p1

    div-int/2addr v0, p1

    div-int v0, v1, v0

    add-int/2addr p1, v0

    goto :goto_d
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->O:Z

    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move v0, v1

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_21

    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_1f} :catch_23

    move-result v0

    goto :goto_c

    :cond_21
    move v0, v1

    goto :goto_c

    :catch_23
    move-exception v0

    move v0, v1

    goto :goto_c
.end method

.method public declared-synchronized e(Z)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->o:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->p:Z

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/view/ff;->S:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->M()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/view/ff;->T:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->T:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    new-instance v1, Ljava/util/HashMap;

    array-length v3, v2

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/estrongs/android/pop/view/ff;->L:Ljava/util/HashMap;

    array-length v3, v2

    move v1, v0

    :goto_35
    if-lt v1, v3, :cond_46

    :cond_37
    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/ff;->d(Z)Z

    move-result v0

    if-nez v0, :cond_81

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->f:Z

    if-nez v0, :cond_44

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->n:Z
    :try_end_44
    .catchall {:try_start_4 .. :try_end_44} :catchall_7e

    :cond_44
    :goto_44
    monitor-exit p0

    return v6

    :cond_46
    :try_start_46
    aget-object v0, v2, v1

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_74

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->L:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->L:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_74

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->L:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_74
    :goto_74
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_35

    :cond_78
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->L:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7d
    .catchall {:try_start_46 .. :try_end_7d} :catchall_7e

    goto :goto_74

    :catchall_7e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_81
    const/4 v0, 0x1

    :try_start_82
    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->f:Z

    if-eqz v0, :cond_8b

    invoke-static {}, Lcom/estrongs/android/pop/view/mh;->a()V

    :cond_8b
    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->L()V
    :try_end_8e
    .catchall {:try_start_82 .. :try_end_8e} :catchall_7e

    goto :goto_44
.end method

.method public final f(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-le p1, v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public f()V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->G:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->G:Ljava/util/Map;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_89

    if-nez v1, :cond_89

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->G:Ljava/util/Map;

    const-string v2, "ftp://"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_54

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/c;->c(Ljava/util/Map;)V

    :cond_54
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_68

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_62
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_73

    :cond_68
    move v0, v1

    :goto_69
    if-nez v0, :cond_6f

    const-string v0, "ftp://"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    :cond_6f
    :goto_6f
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->a()V

    goto :goto_10

    :cond_73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    const/4 v0, 0x1

    goto :goto_69

    :cond_89
    if-nez v0, :cond_6f

    if-eqz v1, :cond_6f

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    goto :goto_6f
.end method

.method public f(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/ff;->D:Z

    return-void
.end method

.method public f(Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return v1

    :cond_8
    move v0, v1

    :goto_9
    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    aget-object v2, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    :cond_35
    const/4 v1, 0x1

    goto :goto_7

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public g(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->R:Z

    const-string v0, "searchPath"

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_38

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    :goto_d
    :try_start_d
    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_42

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_27} :catch_3f

    move-result v2

    if-nez v2, :cond_42

    :goto_2a
    new-instance v1, Lcom/estrongs/android/pop/view/fk;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/view/fk;-><init>(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/pop/view/fp;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/estrongs/android/pop/view/fp;-><init>(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/d/g;)V

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/fp;->start()V

    return-void

    :cond_38
    const-string v0, "searchPath"

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :catch_3f
    move-exception v0

    move-object v0, v1

    goto :goto_2a

    :cond_42
    move-object v0, v1

    goto :goto_2a
.end method

.method public g(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/pop/view/ff;->a(ZZ)V

    return-void
.end method

.method public g()Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_12
    move v0, v1

    :cond_13
    :goto_13
    return v0

    :cond_14
    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ff;->G:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/pop/view/ff;->G:Ljava/util/Map;

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v3, :cond_34

    if-eqz v2, :cond_13

    :cond_34
    move v0, v1

    goto :goto_13
.end method

.method public final getCount()I
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_9

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_9
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_a
.end method

.method public final getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 18

    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    if-eqz v1, :cond_140

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object v2, v1

    :goto_f
    const/4 v6, 0x0

    const/high16 v1, 0x3f80

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->a(F)I

    move-result v7

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->M()I

    move-result v8

    const/4 v5, 0x0

    const/high16 v9, 0x4270

    const/high16 v10, 0x4228

    const/high16 v11, 0x4270

    const/high16 v12, 0x4228

    const/high16 v3, 0x42b6

    const/high16 v1, 0x42e8

    invoke-static {}, Lcom/estrongs/android/pop/b;->a()I

    move-result v4

    const/16 v13, 0xe

    if-ge v4, v13, :cond_4d

    sget-object v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v13, "PI3000"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    sget-object v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v13, "Lenovo"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    sget-object v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v13, "Haier"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_378

    :cond_4d
    const/high16 v4, 0x4140

    add-float/2addr v3, v4

    const/high16 v4, 0x4140

    add-float/2addr v1, v4

    move v4, v3

    move v3, v1

    :goto_55
    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->y:Z

    if-nez v1, :cond_375

    if-eqz p2, :cond_375

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/view/hk;

    iget v6, v1, Lcom/estrongs/android/pop/view/hk;->f:I

    if-eq v6, v8, :cond_372

    move-object v5, v1

    :goto_66
    const/4 v1, 0x3

    if-ne v8, v1, :cond_153

    const/4 v1, 0x1

    const v3, 0x7f03001c

    const/high16 v4, -0x4080

    move-object/from16 v0, p3

    invoke-direct {p0, v3, v0, v4, v9}, Lcom/estrongs/android/pop/view/ff;->a(ILandroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object p2

    move v4, v1

    move-object v1, v5

    :goto_77
    if-eqz v1, :cond_1af

    iget v3, v1, Lcom/estrongs/android/pop/view/hk;->f:I

    if-ne v3, v8, :cond_1af

    move-object v3, v1

    :goto_7e
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_204

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_204

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_204

    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->a:Landroid/widget/TextView;

    const v5, -0x3311cd

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_ac
    :goto_ac
    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->a:Landroid/widget/TextView;

    invoke-direct {p0, v2, p1}, Lcom/estrongs/android/pop/view/ff;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lcom/estrongs/android/pop/view/a/c;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28c

    invoke-virtual {p0, v2, p1, v4}, Lcom/estrongs/android/pop/view/ff;->a(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, v3, Lcom/estrongs/android/pop/view/hk;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v5}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/estrongs/android/pop/e/a;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v3, Lcom/estrongs/android/pop/view/hk;->b:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_d3
    :goto_d3
    const/4 v1, 0x5

    if-eq v8, v1, :cond_d9

    const/4 v1, 0x6

    if-ne v8, v1, :cond_109

    :cond_d9
    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    if-eqz v1, :cond_2b0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Lcom/estrongs/android/pop/view/hk;->c:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/estrongs/android/pop/view/hk;->d:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/estrongs/android/pop/view/hk;->e:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v9, v1}, Lcom/estrongs/android/pop/view/a/c;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v1

    :try_start_f1
    const-string v9, "\\|"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    aget-object v9, v1, v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_109} :catch_36c

    :cond_109
    :goto_109
    const/4 v1, 0x1

    if-eq v8, v1, :cond_10f

    const/4 v1, 0x2

    if-ne v8, v1, :cond_13a

    :cond_10f
    invoke-static {v2}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v1

    const/high16 v4, 0x1

    if-ne v1, v4, :cond_338

    const/4 v1, 0x1

    :goto_118
    if-eqz v1, :cond_33b

    const/4 v1, 0x1

    if-ne v8, v1, :cond_33b

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33b

    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    :goto_128
    const/4 v1, 0x2

    if-ne v8, v1, :cond_346

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_346

    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->a:Landroid/widget/TextView;

    const/high16 v2, 0x4130

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_13a
    :goto_13a
    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    return-object p2

    :cond_140
    if-ltz p1, :cond_147

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    array-length v1, v1

    if-gt v1, p1, :cond_14c

    :cond_147
    const-string v1, "Unknown"

    move-object v2, v1

    goto/16 :goto_f

    :cond_14c
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    aget-object v1, v1, p1

    move-object v2, v1

    goto/16 :goto_f

    :cond_153
    const/4 v1, 0x4

    if-ne v8, v1, :cond_166

    const/4 v1, 0x2

    const v3, 0x7f03001d

    const/high16 v4, -0x4080

    move-object/from16 v0, p3

    invoke-direct {p0, v3, v0, v4, v10}, Lcom/estrongs/android/pop/view/ff;->a(ILandroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object p2

    move v4, v1

    move-object v1, v5

    goto/16 :goto_77

    :cond_166
    const/4 v1, 0x5

    if-ne v8, v1, :cond_179

    const/4 v1, 0x1

    const v3, 0x7f03001a

    const/high16 v4, -0x4080

    move-object/from16 v0, p3

    invoke-direct {p0, v3, v0, v4, v11}, Lcom/estrongs/android/pop/view/ff;->a(ILandroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object p2

    move v4, v1

    move-object v1, v5

    goto/16 :goto_77

    :cond_179
    const/4 v1, 0x6

    if-ne v8, v1, :cond_18c

    const/4 v1, 0x2

    const v3, 0x7f03001b

    const/high16 v4, -0x4080

    move-object/from16 v0, p3

    invoke-direct {p0, v3, v0, v4, v12}, Lcom/estrongs/android/pop/view/ff;->a(ILandroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object p2

    move v4, v1

    move-object v1, v5

    goto/16 :goto_77

    :cond_18c
    const/4 v1, 0x2

    if-ne v8, v1, :cond_19f

    const/4 v1, 0x1

    const v3, 0x7f03001e

    const/high16 v6, 0x4298

    move-object/from16 v0, p3

    invoke-direct {p0, v3, v0, v6, v4}, Lcom/estrongs/android/pop/view/ff;->a(ILandroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object p2

    move v4, v1

    move-object v1, v5

    goto/16 :goto_77

    :cond_19f
    const/4 v1, 0x0

    const v4, 0x7f030019

    const/high16 v6, 0x42c0

    move-object/from16 v0, p3

    invoke-direct {p0, v4, v0, v6, v3}, Lcom/estrongs/android/pop/view/ff;->a(ILandroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object p2

    move v4, v1

    move-object v1, v5

    goto/16 :goto_77

    :cond_1af
    new-instance v3, Lcom/estrongs/android/pop/view/hk;

    invoke-direct {v3}, Lcom/estrongs/android/pop/view/hk;-><init>()V

    const v1, 0x7f07006a

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/estrongs/android/pop/view/hk;->a:Landroid/widget/TextView;

    const v1, 0x7f070069

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/estrongs/android/pop/view/hk;->b:Landroid/widget/ImageView;

    const/4 v1, 0x5

    if-eq v8, v1, :cond_1d4

    const/4 v1, 0x6

    if-ne v8, v1, :cond_1fb

    :cond_1d4
    const v1, 0x7f0700fc

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/estrongs/android/pop/view/hk;->c:Landroid/widget/TextView;

    const v1, 0x7f0700fd

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/estrongs/android/pop/view/hk;->d:Landroid/widget/TextView;

    const v1, 0x7f0700fe

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/estrongs/android/pop/view/hk;->e:Landroid/widget/TextView;

    :cond_1fb
    iput v8, v3, Lcom/estrongs/android/pop/view/hk;->f:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7e

    :cond_204
    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->a:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :try_start_20a
    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->g(Ljava/lang/String;)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_225

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    sget-object v5, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_225

    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->a:Landroid/widget/TextView;

    const/high16 v5, -0x100

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_20a .. :try_end_225} :catch_36f

    :cond_225
    :goto_225
    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    if-eqz v1, :cond_ac

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->b(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/estrongs/android/pop/view/ff;->T:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".apk"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_273

    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->a:Landroid/widget/TextView;

    const v5, -0xff0100

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_ac

    :cond_273
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->L:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_284

    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->a:Landroid/widget/TextView;

    const/high16 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_ac

    :cond_284
    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->a:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_ac

    :cond_28c
    move-object/from16 v1, p3

    check-cast v1, Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->getFirstVisiblePosition()I

    move-result v1

    check-cast p3, Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual/range {p3 .. p3}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->getCount()I

    move-result v4

    add-int/2addr v1, v4

    if-ge p1, v1, :cond_d3

    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/ff;->K:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->b:Landroid/widget/ImageView;

    new-instance v4, Lcom/estrongs/android/pop/view/gv;

    invoke-direct {v4, p0, p1, v2, v1}, Lcom/estrongs/android/pop/view/gv;-><init>(Lcom/estrongs/android/pop/view/ff;ILjava/lang/String;Landroid/widget/ImageView;)V

    invoke-virtual {v4}, Lcom/estrongs/android/pop/view/gv;->start()V

    goto/16 :goto_d3

    :cond_2b0
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_327

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->k()I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/pop/view/ff;->s:I

    iget v1, p0, Lcom/estrongs/android/pop/view/ff;->s:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_300

    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->c:Landroid/widget/TextView;

    const v4, -0x865000

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->e:Landroid/widget/TextView;

    const v4, -0x777778

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2d9
    invoke-direct {p0, v2, p1}, Lcom/estrongs/android/pop/view/ff;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "\\|"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v4, v3, Lcom/estrongs/android/pop/view/hk;->c:Landroid/widget/TextView;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_2eb
    iget-object v4, v3, Lcom/estrongs/android/pop/view/hk;->d:Landroid/widget/TextView;

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v3, Lcom/estrongs/android/pop/view/hk;->e:Landroid/widget/TextView;

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2fb
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2eb .. :try_end_2fb} :catch_2fd

    goto/16 :goto_109

    :catch_2fd
    move-exception v1

    goto/16 :goto_109

    :cond_300
    iget v1, p0, Lcom/estrongs/android/pop/view/ff;->s:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_316

    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->c:Landroid/widget/TextView;

    const v4, -0x777778

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->e:Landroid/widget/TextView;

    const v4, -0x865000

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2d9

    :cond_316
    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->c:Landroid/widget/TextView;

    const v4, -0x777778

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->e:Landroid/widget/TextView;

    const v4, -0x777778

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2d9

    :cond_327
    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->c:Landroid/widget/TextView;

    const v4, -0x777778

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->e:Landroid/widget/TextView;

    const v4, -0x777778

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2d9

    :cond_338
    const/4 v1, 0x0

    goto/16 :goto_118

    :cond_33b
    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto/16 :goto_128

    :cond_346
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_357

    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->a:Landroid/widget/TextView;

    const/high16 v2, 0x4158

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_13a

    :cond_357
    const/4 v1, 0x2

    if-ne v8, v1, :cond_363

    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->a:Landroid/widget/TextView;

    const/high16 v2, 0x4160

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_13a

    :cond_363
    iget-object v1, v3, Lcom/estrongs/android/pop/view/hk;->a:Landroid/widget/TextView;

    const/high16 v2, 0x4180

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_13a

    :catch_36c
    move-exception v1

    goto/16 :goto_109

    :catch_36f
    move-exception v1

    goto/16 :goto_225

    :cond_372
    move v4, v5

    goto/16 :goto_77

    :cond_375
    move-object v5, v6

    goto/16 :goto_66

    :cond_378
    move v4, v3

    move v3, v1

    goto/16 :goto_55
.end method

.method public h()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return-object v0

    :cond_e
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->b()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_d
.end method

.method public h(Z)V
    .registers 12

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/lang/String;)Z

    move-result v7

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->E:Z

    if-eqz v0, :cond_ea

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->F()Z

    move-result v5

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->G()Z

    move-result v4

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->J()Z

    move-result v3

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->I()Z

    move-result v2

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->H()Z

    move-result v0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->E:Z

    :goto_25
    iget-boolean v8, p0, Lcom/estrongs/android/pop/view/ff;->A:Z

    if-eqz v8, :cond_38

    iget v8, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-ne v8, v6, :cond_38

    iget-object v8, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v8}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/estrongs/android/pop/c;->c(Z)V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->A:Z

    :cond_38
    iput-boolean v5, p0, Lcom/estrongs/android/pop/view/ff;->y:Z

    iget-boolean v8, p0, Lcom/estrongs/android/pop/view/ff;->y:Z

    if-eqz v8, :cond_45

    iget v8, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-ne v8, v9, :cond_45

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->K()V

    :cond_45
    if-nez v4, :cond_51

    if-eqz v5, :cond_4d

    iget v4, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-eq v4, v9, :cond_51

    :cond_4d
    if-nez v2, :cond_51

    if-eqz v0, :cond_aa

    :cond_51
    move v3, v6

    move v0, v1

    :goto_53
    if-eqz p1, :cond_58

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->a()V

    :cond_58
    iget-boolean v4, p0, Lcom/estrongs/android/pop/view/ff;->D:Z

    if-nez v4, :cond_60

    if-nez v3, :cond_60

    if-eqz v7, :cond_78

    :cond_60
    iget-boolean v3, p0, Lcom/estrongs/android/pop/view/ff;->D:Z

    if-nez v3, :cond_68

    if-eqz v7, :cond_68

    if-eqz p1, :cond_72

    :cond_68
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->u()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->L()V

    move v0, v1

    :cond_72
    :goto_72
    iget-boolean v3, p0, Lcom/estrongs/android/pop/view/ff;->D:Z

    if-eqz v3, :cond_78

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->D:Z

    :cond_78
    iget-object v3, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d9

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_d9

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->d(Z)V

    :goto_95
    if-eqz v1, :cond_e0

    iput-boolean v6, p0, Lcom/estrongs/android/pop/view/ff;->z:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->L()V

    :cond_9c
    :goto_9c
    if-eqz v2, :cond_a9

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a9

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->K()V

    :cond_a9
    return-void

    :cond_aa
    if-nez v5, :cond_ae

    if-eqz v3, :cond_e6

    :cond_ae
    move v3, v1

    move v0, v6

    goto :goto_53

    :cond_b1
    iput-boolean v6, p0, Lcom/estrongs/android/pop/view/ff;->z:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->l()V

    move v0, v1

    goto :goto_72

    :cond_c0
    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->C()V

    move v0, v1

    goto :goto_72

    :cond_c5
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->e(Z)V

    goto :goto_95

    :cond_d3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->c(Z)V

    goto :goto_95

    :cond_d9
    iget-object v3, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v3, v1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->c(Z)V

    move v1, v0

    goto :goto_95

    :cond_e0
    if-eqz p1, :cond_9c

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->L()V

    goto :goto_9c

    :cond_e6
    move v3, v1

    move v0, v1

    goto/16 :goto_53

    :cond_ea
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    goto/16 :goto_25
.end method

.method public h(Ljava/lang/String;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->S:Ljava/lang/String;

    if-nez v0, :cond_d

    if-eqz p1, :cond_13

    :cond_d
    if-nez p1, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->S:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    :cond_13
    :goto_13
    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->C()V

    const/4 v0, 0x1

    return v0

    :cond_18
    iput-object p1, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    goto :goto_13
.end method

.method public i()Landroid/graphics/drawable/Drawable;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->b()I

    move-result v0

    if-ltz v0, :cond_37

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_37

    invoke-virtual {p0, v0, v1, v1}, Lcom/estrongs/android/pop/view/ff;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_25

    move-object v0, v1

    goto :goto_e

    :cond_25
    const v2, 0x7f070069

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_32

    move-object v0, v1

    goto :goto_e

    :cond_32
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_e

    :cond_37
    move-object v0, v1

    goto :goto_e
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/ff;->g(Ljava/lang/String;)V

    return-void
.end method

.method public i(Z)V
    .registers 3

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->notifyDataSetInvalidated()V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized j(Ljava/lang/String;)V
    .registers 6

    const/4 v2, -0x1

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_30

    if-nez v0, :cond_8

    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_f
    if-lt v1, v3, :cond_33

    move v0, v2

    :goto_12
    if-eq v0, v2, :cond_28

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->notifyDataSetChanged()V

    :cond_28
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->E()V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_30

    goto :goto_6

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_47

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_30

    move-result v0

    if-eqz v0, :cond_47

    move v0, v1

    goto :goto_12

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method public j(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/ff;->w:Z

    if-eqz p1, :cond_2b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    const/high16 v1, 0x43e6

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setColumnWidth(I)V

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    const/high16 v1, 0x439b

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setColumnWidth(I)V

    goto :goto_1e

    :cond_2b
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    const/high16 v1, 0x42c0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->a(F)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->e(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setColumnWidth(I)V

    goto :goto_1e
.end method

.method public k(Ljava/lang/String;)V
    .registers 9

    const v6, 0x7f09016e

    const v5, 0x7f09016c

    const v4, 0x7f09005e

    const v3, 0x7f090055

    const v2, 0x108009b

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    :cond_17
    :goto_17
    return-void

    :cond_18
    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/estrongs/android/pop/view/a/a;->b(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/util/ah;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/util/ah;->c(Ljava/lang/String;Z)V

    goto :goto_17

    :cond_3a
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->d(I)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1, p1, v0}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_29

    :cond_46
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->e(I)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1, p1, v0}, Lcom/estrongs/android/pop/view/a/a;->b(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_29

    :cond_52
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->h(I)Z

    move-result v1

    if-eqz v1, :cond_5f

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_29

    :cond_5f
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->i(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->s(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto :goto_29

    :cond_6b
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->j(I)Z

    move-result v1

    if-eqz v1, :cond_b4

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->S()Z

    move-result v0

    if-nez v0, :cond_99

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/fu;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/fu;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_29

    :cond_99
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v3, v6}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/content/Context;II)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/view/fw;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/view/fw;-><init>(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_29

    :cond_ad
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->c(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_b4
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->k(I)Z

    move-result v1

    if-eqz v1, :cond_fe

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->S()Z

    move-result v0

    if-nez v0, :cond_e3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/fx;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/fx;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_29

    :cond_e3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v3, v6}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/content/Context;II)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/view/fy;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/view/fy;-><init>(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_29

    :cond_f7
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_fe
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->l(I)Z

    move-result v1

    if-eqz v1, :cond_148

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_141

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->S()Z

    move-result v0

    if-nez v0, :cond_12d

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/fz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/fz;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_29

    :cond_12d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v3, v6}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/content/Context;II)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/view/ga;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/view/ga;-><init>(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_29

    :cond_141
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_148
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->m(I)Z

    move-result v1

    if-eqz v1, :cond_192

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18b

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->S()Z

    move-result v0

    if-nez v0, :cond_177

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/gb;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/gb;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_29

    :cond_177
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v3, v6}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/content/Context;II)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/view/gc;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/view/gc;-><init>(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_29

    :cond_18b
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->d(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_192
    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1dc

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d5

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->S()Z

    move-result v0

    if-nez v0, :cond_1c1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/gd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/gd;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_29

    :cond_1c1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v3, v6}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/content/Context;II)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/view/ge;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/view/ge;-><init>(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_29

    :cond_1d5
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->e(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_1dc
    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->r(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_226

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21f

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->S()Z

    move-result v0

    if-nez v0, :cond_20b

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/gf;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/gf;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_29

    :cond_20b
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v3, v6}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/content/Context;II)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/view/gh;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/view/gh;-><init>(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_29

    :cond_21f
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->f(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_226
    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->s(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_232

    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_276

    :cond_232
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26f

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->S()Z

    move-result v0

    if-nez v0, :cond_25b

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/gi;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/gi;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_29

    :cond_25b
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v3, v6}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/content/Context;II)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/view/gj;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/view/gj;-><init>(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_29

    :cond_26f
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->g(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_276
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->n(I)Z

    move-result v1

    if-eqz v1, :cond_2c0

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b9

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->S()Z

    move-result v0

    if-nez v0, :cond_2a5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/gk;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/gk;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_29

    :cond_2a5
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v3, v6}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/content/Context;II)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/view/gl;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/view/gl;-><init>(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_29

    :cond_2b9
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->h(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_2c0
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->s(I)Z

    move-result v1

    if-eqz v1, :cond_30a

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_303

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->S()Z

    move-result v0

    if-nez v0, :cond_2ef

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/gm;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/gm;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_29

    :cond_2ef
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v3, v6}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/content/Context;II)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/view/gn;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/view/gn;-><init>(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_29

    :cond_303
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->n(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_30a
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->t(I)Z

    move-result v1

    if-eqz v1, :cond_354

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34d

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->S()Z

    move-result v0

    if-nez v0, :cond_339

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/go;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/go;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_29

    :cond_339
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v3, v6}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/content/Context;II)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/view/gp;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/view/gp;-><init>(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_29

    :cond_34d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->o(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_354
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->w(I)Z

    move-result v1

    if-eqz v1, :cond_39e

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_397

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->S()Z

    move-result v0

    if-nez v0, :cond_383

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/gq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/gq;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_29

    :cond_383
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v3, v6}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/content/Context;II)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/view/gs;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/view/gs;-><init>(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_29

    :cond_397
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->p(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_39e
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->u(I)Z

    move-result v1

    if-eqz v1, :cond_3e8

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->S()Z

    move-result v0

    if-nez v0, :cond_3cd

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/gt;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/gt;-><init>(Lcom/estrongs/android/pop/view/ff;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_29

    :cond_3cd
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v3, v6}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/content/Context;II)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/view/gu;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/view/gu;-><init>(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_29

    :cond_3e1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->q(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_3e8
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->v(I)Z

    move-result v1

    if-eqz v1, :cond_3f5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->r(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_3f5
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->l(I)Z

    move-result v1

    if-eqz v1, :cond_402

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->b(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_402
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->m(I)Z

    move-result v1

    if-eqz v1, :cond_40f

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->d(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_40f
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->n(I)Z

    move-result v1

    if-eqz v1, :cond_41c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->h(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_41c
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->o(I)Z

    move-result v1

    if-eqz v1, :cond_429

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->i(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_429
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->p(I)Z

    move-result v1

    if-eqz v1, :cond_436

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->j(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_436
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->r(I)Z

    move-result v1

    if-eqz v1, :cond_443

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->m(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_443
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->q(I)Z

    move-result v1

    if-eqz v1, :cond_450

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->l(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_450
    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->y(I)Z

    move-result v0

    if-eqz v0, :cond_45d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->k(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_45d
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(I)V

    goto/16 :goto_17

    :cond_46d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_47a

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/ff;->l(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_47a
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1, v0, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_17
.end method

.method public k(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/estrongs/android/pop/view/ff;->x:Z

    if-eqz p1, :cond_2b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    const/high16 v1, 0x43e6

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setColumnWidth(I)V

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    const/high16 v1, 0x439b

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setColumnWidth(I)V

    goto :goto_1e

    :cond_2b
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    const/high16 v1, 0x42c0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->a(F)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->e(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setColumnWidth(I)V

    goto :goto_1e
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    return v0
.end method

.method public l()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->O:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->d(Ljava/util/Map;)V

    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->G:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/ff;->L()V

    return-void

    :cond_4a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    :cond_6a
    invoke-static {}, Lcom/estrongs/android/pop/fs/FtpFileSystem;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->c(Ljava/util/Map;)V

    goto :goto_28

    :cond_79
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->G:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_97

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_97

    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->D:Z

    if-eqz v1, :cond_a5

    :cond_97
    invoke-static {}, Lcom/estrongs/android/pop/view/ff;->P()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/fs/a;->a(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_28

    :cond_a5
    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    goto :goto_28

    :cond_a8
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->j:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->b(Ljava/util/Map;)V

    goto/16 :goto_28
.end method

.method public l(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/estrongs/android/pop/view/a/a;->a(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l(Z)V
    .registers 5

    const/high16 v1, 0x4080

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->a(F)I

    move-result v0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->a(F)I

    move-result v1

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/ff;->w:Z

    if-nez v2, :cond_12

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/ff;->x:Z

    if-eqz v2, :cond_18

    :cond_12
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setPadding(IIII)V

    :goto_17
    return-void

    :cond_18
    if-eqz p1, :cond_2f

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    const/high16 v1, 0x4298

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->a(F)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->e(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setColumnWidth(I)V

    goto :goto_17

    :cond_2f
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    const/high16 v1, 0x42c0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->a(F)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->e(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setColumnWidth(I)V

    goto :goto_17
.end method

.method public m()J
    .registers 3

    sget-wide v0, Lcom/estrongs/android/pop/view/ff;->Q:J

    return-wide v0
.end method

.method public n()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->R:Z

    return-void
.end method

.method public o()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->S:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public p()Z
    .registers 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->S:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "smb://"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    :cond_15
    :goto_15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ff;->g(Z)V

    const/4 v0, 0x1

    return v0

    :cond_1b
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->s(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_3b
    const-string v0, "ftp://"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    goto :goto_15

    :cond_40
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "bt://"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    goto :goto_15

    :cond_4d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "net://"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    goto :goto_15
.end method

.method public q()Z
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->b()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_29

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/a/l;->a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f09008e

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(I)V

    :cond_29
    :goto_29
    const/4 v0, 0x1

    return v0

    :cond_2b
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(I)V

    goto :goto_29
.end method

.method public declared-synchronized r()V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Lcom/estrongs/android/pop/fs/a;->a()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->e:Lcom/estrongs/android/pop/d/f;

    const-wide/16 v1, 0x0

    iget-boolean v3, p0, Lcom/estrongs/android/pop/view/ff;->f:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/estrongs/android/pop/d/f;->a(JZ)Ljava/util/Map;

    move-result-object v0

    :cond_12
    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->f:Z

    if-eqz v1, :cond_25

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f090055

    const v2, 0x7f090111

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/content/Context;II)V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_29

    :goto_23
    monitor-exit p0

    return-void

    :cond_25
    :try_start_25
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ff;->b(Ljava/util/Map;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_23

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized s()V
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/estrongs/android/pop/view/he;

    sget v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->aj:I

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/view/he;-><init>(Lcom/estrongs/android/pop/view/ff;I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/hd;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public t()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->b()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->k()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/view/ff;->s:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->l()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/view/ff;->t:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->s()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/view/ff;->v:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->B:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->C:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->C:Z

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->l:Lcom/estrongs/android/pop/view/FileExplorerGridView;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->N:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/ff;->I:Z

    :cond_57
    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-nez v0, :cond_77

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ff;->j(Z)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ff;->k(Z)V

    :cond_61
    :goto_61
    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->v:I

    if-ne v0, v3, :cond_68

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/view/ff;->l(Z)V

    :cond_68
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->l()V

    :cond_73
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ff;->z()V

    return-void

    :cond_77
    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-ne v0, v3, :cond_82

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ff;->k(Z)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/view/ff;->j(Z)V

    goto :goto_61

    :cond_82
    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_61

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ff;->j(Z)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/view/ff;->k(Z)V

    goto :goto_61
.end method

.method public u()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->n:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->o:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public v()Z
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public w()Z
    .registers 6

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->z:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/view/ff;->y:Z

    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->A:Z

    if-nez v0, :cond_45

    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-ne v0, v4, :cond_45

    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->s()I

    move-result v0

    if-ne v0, v1, :cond_54

    move v0, v1

    :goto_2c
    iget v3, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-nez v3, :cond_56

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ff;->j(Z)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ff;->k(Z)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ff;->l(Z)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ff;->g(Z)V

    :goto_3c
    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-eq v0, v1, :cond_76

    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-eq v0, v4, :cond_76

    :goto_44
    return v2

    :cond_45
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->A:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-ne v0, v1, :cond_1f

    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    goto :goto_1f

    :cond_54
    move v0, v2

    goto :goto_2c

    :cond_56
    iget v3, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-ne v3, v4, :cond_69

    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/ff;->y:Z

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ff;->j(Z)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->k(Z)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ff;->l(Z)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->g(Z)V

    goto :goto_3c

    :cond_69
    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ff;->k(Z)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ff;->j(Z)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ff;->l(Z)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ff;->g(Z)V

    goto :goto_3c

    :cond_76
    move v2, v1

    goto :goto_44
.end method

.method public x()I
    .registers 5

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->b()I

    move-result v0

    if-eq v0, v3, :cond_28

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->j()Z

    move-result v0

    if-nez v0, :cond_28

    move v0, v1

    :goto_1c
    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->A:Z

    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-eq v0, v2, :cond_26

    iget v0, p0, Lcom/estrongs/android/pop/view/ff;->u:I

    if-ne v0, v3, :cond_2a

    :cond_26
    move v2, v1

    :cond_27
    :goto_27
    return v2

    :cond_28
    move v0, v2

    goto :goto_1c

    :cond_2a
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ff;->A:Z

    if-eqz v0, :cond_27

    move v2, v3

    goto :goto_27
.end method

.method public y()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_1a

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ff;->g:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/view/ff;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    :cond_1a
    iget-object v1, p0, Lcom/estrongs/android/pop/view/ff;->k:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_a
.end method

.method public z()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->ae:Lcom/estrongs/android/pop/view/hh;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ff;->ae:Lcom/estrongs/android/pop/view/hh;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/hh;->c()V

    :cond_9
    return-void
.end method
