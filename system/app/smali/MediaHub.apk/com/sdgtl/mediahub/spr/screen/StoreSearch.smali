.class public Lcom/sdgtl/mediahub/spr/screen/StoreSearch;
.super Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;


# static fields
.field private static A:Z

.field private static G:Ljava/lang/String;

.field private static M:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

.field private static u:I


# instance fields
.field private B:Z

.field private C:Z

.field private D:F

.field private E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

.field private F:I

.field private H:I

.field private I:I

.field private J:Ljava/lang/String;

.field private K:I

.field private L:I

.field private N:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

.field private O:I

.field private P:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private Q:Landroid/widget/AbsListView$OnScrollListener;

.field private R:Landroid/view/View$OnTouchListener;

.field private S:Landroid/content/BroadcastReceiver;

.field public a:Landroid/os/Handler;

.field public final b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/os/Handler;

.field private e:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private f:J

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/ListView;

.field private k:Landroid/widget/GridView;

.field private l:Lcom/sdgtl/mediahub/spr/screen/pe;

.field private m:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/ImageButton;

.field private p:Landroid/widget/ImageButton;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/EditText;

.field private t:Landroid/widget/TextView;

.field private v:Lcom/sdgtl/mediahub/spr/common/ek;

.field private w:Ljava/util/ArrayList;

.field private x:Landroid/view/inputmethod/InputMethodManager;

.field private y:[Ljava/lang/CharSequence;

.field private z:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->A:Z

    sput-object v1, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->G:Ljava/lang/String;

    sput-object v1, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->M:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;-><init>()V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/ek;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/ek;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->v:Lcom/sdgtl/mediahub/spr/common/ek;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->w:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5c

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->z:[I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->B:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->C:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->D:F

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->O:I

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/om;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/om;-><init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->P:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ow;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ow;-><init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->Q:Landroid/widget/AbsListView$OnScrollListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ox;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ox;-><init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->R:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/oy;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/oy;-><init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/oz;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/oz;-><init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/pa;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/pa;-><init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/pb;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/pb;-><init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->d:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/pc;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/pc;-><init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->S:Landroid/content/BroadcastReceiver;

    return-void

    :array_5c
    .array-data 0x4
        0xbt 0x1t 0xat 0x7ft
        0xct 0x1t 0xat 0x7ft
    .end array-data
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/screen/StoreSearch;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->M:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    return-object v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/screen/pe;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->l:Lcom/sdgtl/mediahub/spr/screen/pe;

    return-object v0
.end method

.method static synthetic a(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_d

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    if-eqz p1, :cond_19

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;F)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->D:F

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->H:I

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;ILjava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->A:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    const/16 v0, 0xa

    if-ne p1, v0, :cond_18

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_f

    :cond_18
    if-nez p1, :cond_f

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_f
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->f:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->N:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;Lcom/sdgtl/mediahub/spr/common/ek;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->v:Lcom/sdgtl/mediahub/spr/common/ek;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->C:Z

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->G:Ljava/lang/String;

    return-void
.end method

.method private a(Z)V
    .registers 7

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_42

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->i:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_15

    const v0, 0x7f0d004f

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->i:Landroid/widget/RelativeLayout;

    :cond_15
    const v0, 0x7f0d0051

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0053

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget v0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->u:I

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_37
    :goto_37
    return-void

    :cond_38
    sget v0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->u:I

    if-ne v0, v4, :cond_37

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->k:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_37

    :cond_42
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->i:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_50
    sget v0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->u:I

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_37

    :cond_5a
    sget v0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->u:I

    if-ne v0, v4, :cond_37

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->k:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_37
.end method

.method private static a(Landroid/view/View;)Z
    .registers 3

    const/16 v1, 0x8

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->w:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    const/16 v1, 0x8

    if-eqz p1, :cond_e

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    if-eqz p2, :cond_19

    invoke-static {p2}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->i:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_22
    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->I:I

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->L:I

    return v0
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->L:I

    return-void
.end method

.method static synthetic c()Z
    .registers 1

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->A:Z

    return v0
.end method

.method static synthetic d()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->A:Z

    return-void
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->C:Z

    return v0
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)F
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->D:F

    return v0
.end method

.method private e()V
    .registers 3

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->k:Landroid/widget/GridView;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/b/b;->i(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    :cond_f
    return-void
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->m:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    return-object v0
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    return-object v0
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->J:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->e:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method static synthetic j(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->B:Z

    return v0
.end method

.method static synthetic k(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic l(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->h:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic m(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->f:J

    return-wide v0
.end method

.method static synthetic n(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/ek;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->v:Lcom/sdgtl/mediahub/spr/common/ek;

    return-object v0
.end method

.method static synthetic o(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->I:I

    return v0
.end method

.method static synthetic p(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->H:I

    return v0
.end method

.method static synthetic q(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->s:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic r(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->x:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic s(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->O:I

    return v0
.end method

.method static synthetic t(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->N:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    return-object v0
.end method

.method static synthetic u(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V
    .registers 5

    const/4 v3, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->G:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, "title"

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->G:Ljava/lang/String;

    :cond_9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->s:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->G:Ljava/lang/String;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->h:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Landroid/view/View;Landroid/view/View;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->H:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->I:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->G:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;-><init>()V

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->H:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->I:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->b:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->J:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->e:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "search_info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->e:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v0, 0xb

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->f:J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->x:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sput-boolean v3, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->A:Z

    :goto_85
    return-void

    :cond_86
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->s:Landroid/widget/EditText;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ov;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ov;-><init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_85
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_a4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_19

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_19

    :goto_18
    return v0

    :cond_19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_a4

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->G:Ljava/lang/String;

    if-nez v1, :cond_29

    const-string v1, "title"

    sput-object v1, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->G:Ljava/lang/String;

    :cond_29
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a4

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->G:Ljava/lang/String;

    if-eqz v1, :cond_a4

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->h:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Landroid/view/View;Landroid/view/View;)V

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->H:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->I:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->G:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;-><init>()V

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->H:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->I:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->b:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->J:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->e:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "search_info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->e:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v0, 0xb

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->f:J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->x:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sput-boolean v3, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->A:Z

    :cond_a4
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_18
.end method

.method public finish()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->finish()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0, v2, v2}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->overridePendingTransition(II)V

    :cond_e
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const/16 v4, 0xb

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_8a

    :cond_9
    :goto_9
    return-void

    :pswitch_a
    if-nez p2, :cond_10

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->finish()V

    goto :goto_9

    :cond_10
    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->F:I

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->h:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "search_info"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->e:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v4, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->f:J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->x:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sput-boolean v3, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->A:Z

    goto :goto_9

    :cond_4a
    invoke-direct {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->s:Landroid/widget/EditText;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/on;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/on;-><init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    :cond_5a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->h:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "search_info"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->e:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v4, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->f:J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->x:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sput-boolean v3, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->A:Z

    goto :goto_9

    nop

    :pswitch_data_8a
    .packed-switch 0x7
        :pswitch_a
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->e()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/16 v7, 0xb

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->M:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->K:I

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->e:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->x:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->z:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->y:[Ljava/lang/CharSequence;

    move v0, v2

    :goto_25
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->z:[I

    array-length v1, v1

    if-lt v0, v1, :cond_26e

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a0

    const-string v1, "parent_view"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->F:I

    const-string v1, "search_by"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->K:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    const-string v3, "product_type_code"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    const-string v3, "sort"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    const-string v3, "keyword"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    const-string v3, "search_type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iput v5, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    const/16 v1, 0x20

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->b:I

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->F:I

    packed-switch v0, :pswitch_data_300

    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->setTitle(Ljava/lang/CharSequence;)V

    :goto_88
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->H:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->b:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->I:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->G:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->J:Ljava/lang/String;

    :cond_a0
    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->setContentView(I)V

    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->h:Landroid/widget/RelativeLayout;

    const v0, 0x7f0d008d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->q:Landroid/widget/ImageView;

    const v0, 0x7f0d008e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->r:Landroid/widget/ImageView;

    const v0, 0x7f0d012c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0d000d

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->t:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0a0108

    invoke-virtual {p0, v4}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0d011e

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->n:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0121

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->o:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->o:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->o:Landroid/widget/ImageButton;

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/oq;

    invoke-direct {v3, p0}, Lcom/sdgtl/mediahub/spr/screen/oq;-><init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0d011f

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->s:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->s:Landroid/widget/EditText;

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/or;

    invoke-direct {v3, p0}, Lcom/sdgtl/mediahub/spr/screen/or;-><init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    if-eqz v1, :cond_16f

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->s:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->s:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->s:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_16f
    const v1, 0x7f0d0120

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->p:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->p:Landroid/widget/ImageButton;

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/os;

    invoke-direct {v3, p0}, Lcom/sdgtl/mediahub/spr/screen/os;-><init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_29d

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->K:I

    if-ne v0, v5, :cond_296

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_196
    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->j:Landroid/widget/ListView;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/pe;

    invoke-direct {v0, p0, p0}, Lcom/sdgtl/mediahub/spr/screen/pe;-><init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->l:Lcom/sdgtl/mediahub/spr/screen/pe;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->l:Lcom/sdgtl/mediahub/spr/screen/pe;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ot;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ot;-><init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->P:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->Q:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->R:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0d004c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->k:Landroid/widget/GridView;

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->m:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->k:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->m:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->k:Landroid/widget/GridView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ou;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ou;-><init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->k:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->P:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->k:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->Q:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->k:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->R:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->k:Landroid/widget/GridView;

    invoke-virtual {v0, v6}, Landroid/widget/GridView;->setVisibility(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->S:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    if-nez v0, :cond_22d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    const-string v1, "title"

    sput-object v1, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->G:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    :cond_22d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->e:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;)Z

    move-result v0

    if-eqz v0, :cond_26d

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->F:I

    if-nez v0, :cond_2cf

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    if-eqz v0, :cond_26d

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v5, :cond_2bf

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->h:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "search_info"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->e:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v7, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->f:J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->x:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sput-boolean v2, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->A:Z

    :cond_26d
    :goto_26d
    return-void

    :cond_26e
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->y:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->z:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_25

    :pswitch_27e
    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_88

    :pswitch_28a
    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_88

    :cond_296
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_196

    :cond_29d
    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->K:I

    if-ne v1, v5, :cond_2b0

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_196

    :cond_2b0
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_196

    :cond_2bf
    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->s:Landroid/widget/EditText;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/pd;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/pd;-><init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_26d

    :cond_2cf
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    if-eqz v0, :cond_26d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->h:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "search_info"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->e:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v7, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->f:J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->x:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    sput-boolean v2, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->A:Z

    goto/16 :goto_26d

    nop

    :pswitch_data_300
    .packed-switch 0x1
        :pswitch_27e
        :pswitch_27e
        :pswitch_28a
        :pswitch_28a
        :pswitch_28a
        :pswitch_28a
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7

    const v4, 0x7f0a00d0

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sparse-switch p1, :sswitch_data_76

    :goto_d
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_11
    return-object v0

    :sswitch_12
    const v1, 0x7f0a0108

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->y:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/oo;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/oo;-><init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_d

    :sswitch_26
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->N:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    goto :goto_11

    :cond_2c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->N:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->m:Ljava/lang/String;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->N:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->m:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    :cond_3e
    new-array v0, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    :goto_46
    array-length v1, v0

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->O:I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->N:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/op;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/op;-><init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v1

    goto :goto_d

    :cond_62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f0a00d1

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v4}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_46

    nop

    :sswitch_data_76
    .sparse-switch
        0x1 -> :sswitch_12
        0xb -> :sswitch_26
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->M:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->S:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_d
    :goto_d
    return v0

    :pswitch_e
    invoke-static {}, Lcom/sdgtl/mediahub/spr/aq;->a()Lcom/sdgtl/mediahub/spr/ar;

    move-result-object v1

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    if-eq v1, v2, :cond_d

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->a:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;)V

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->searchClose(Z)V

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->finish()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->y(Landroid/content/Context;)V

    invoke-virtual {p0, v3, v3}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->overridePendingTransition(II)V

    goto :goto_d

    :pswitch_data_28
    .packed-switch 0x102002c
        :pswitch_e
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->B:Z

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPostCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->removeDialog(I)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->removeDialog(I)V

    :cond_e
    return-void
.end method

.method protected onResume()V
    .registers 7

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onResume()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->E:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {p0, p0, v0, v3}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->setActionBar(Landroid/app/Activity;Lcom/sdgtl/mediahub/spr/ar;Z)V

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->B:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->e:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;)Z

    move-result v0

    if-nez v0, :cond_17

    :goto_16
    return-void

    :cond_17
    const-string v0, "key_view_mode"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    const-string v2, "key_sort_by"

    invoke-static {p0, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    if-nez v0, :cond_2d

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2d
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->E:Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    const-string v2, "date"

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    :cond_39
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_5f

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    sput v5, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->u:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->k:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5f
    :goto_5f
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->e()V

    goto :goto_16

    :cond_63
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    sput v3, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->u:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->k:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5f
.end method

.method protected onStart()V
    .registers 1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onStop()V

    return-void
.end method
