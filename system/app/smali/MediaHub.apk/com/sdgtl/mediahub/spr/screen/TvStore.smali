.class public Lcom/sdgtl/mediahub/spr/screen/TvStore;
.super Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;


# static fields
.field private static ad:I

.field private static af:Lcom/sdgtl/mediahub/spr/screen/TvStore;


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:J

.field private E:J

.field private F:Landroid/view/inputmethod/InputMethodManager;

.field private G:Lcom/sdgtl/mediahub/spr/common/ek;

.field private H:Lcom/sdgtl/mediahub/spr/common/ek;

.field private I:Ljava/util/ArrayList;

.field private J:Ljava/util/ArrayList;

.field private K:Ljava/util/ArrayList;

.field private L:Ljava/util/ArrayList;

.field private M:Landroid/view/Menu;

.field private N:Landroid/os/Handler;

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:F

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field public a:[I

.field private aa:Ljava/lang/String;

.field private ab:Ljava/lang/String;

.field private ac:Ljava/lang/String;

.field private ae:Ljava/util/ArrayList;

.field private ag:Landroid/widget/ListView;

.field private ah:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

.field private ai:I

.field private aj:Ljava/lang/String;

.field private ak:I

.field private al:Z

.field private am:Z

.field private an:Landroid/widget/LinearLayout;

.field private ao:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

.field private ap:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

.field private aq:Lcom/sdgtl/mediahub/spr/screen/qk;

.field private ar:Landroid/widget/AbsListView$OnScrollListener;

.field private as:Landroid/view/View$OnTouchListener;

.field private at:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private au:Landroid/content/BroadcastReceiver;

.field b:Landroid/app/AlertDialog;

.field public c:Landroid/os/Handler;

.field public final d:Landroid/os/Handler;

.field public final e:Landroid/os/Handler;

.field public final f:Landroid/os/Handler;

.field private g:Lcom/sdgtl/mediahub/spr/screen/qf;

.field private h:Landroid/widget/ListView;

.field private i:Landroid/widget/GridView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

.field private m:Lcom/sdgtl/mediahub/spr/screen/qi;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/ImageButton;

.field private q:Landroid/widget/ImageButton;

.field private r:Landroid/widget/EditText;

.field private s:[Ljava/lang/CharSequence;

.field private t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private u:I

.field private v:I

.field private w:I

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->af:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;-><init>()V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/ek;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/ek;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->G:Lcom/sdgtl/mediahub/spr/common/ek;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/ek;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/ek;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->H:Lcom/sdgtl/mediahub/spr/common/ek;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->K:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->O:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->P:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Q:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->R:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->S:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->T:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->U:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->V:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->W:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->X:F

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ab:Ljava/lang/String;

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ac:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ae:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_9e

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a:[I

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->al:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->am:Z

    iput-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b:Landroid/app/AlertDialog;

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/qk;->a:Lcom/sdgtl/mediahub/spr/screen/qk;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aq:Lcom/sdgtl/mediahub/spr/screen/qk;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/pg;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/pg;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ar:Landroid/widget/AbsListView$OnScrollListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ps;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ps;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->as:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/px;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/px;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->at:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/py;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/py;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/pz;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/pz;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->d:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/qa;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/qa;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->e:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/qb;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/qb;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->f:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/qc;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/qc;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->au:Landroid/content/BroadcastReceiver;

    return-void

    nop

    :array_9e
    .array-data 0x4
        0xbt 0x1t 0xat 0x7ft
        0xct 0x1t 0xat 0x7ft
    .end array-data
.end method

.method static synthetic A(Lcom/sdgtl/mediahub/spr/screen/TvStore;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B:J

    return-wide v0
.end method

.method static synthetic B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->G:Lcom/sdgtl/mediahub/spr/common/ek;

    return-object v0
.end method

.method static synthetic C(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->P:Z

    return v0
.end method

.method static synthetic D(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/view/Menu;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->M:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic E(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->P:Z

    return-void
.end method

.method static synthetic F(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aj:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic G(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aj:Ljava/lang/String;

    return-void
.end method

.method static synthetic H(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ak:I

    return v0
.end method

.method static synthetic I(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic J(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    return v0
.end method

.method static synthetic K(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->c()V

    return-void
.end method

.method static synthetic L(Lcom/sdgtl/mediahub/spr/screen/TvStore;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->E:J

    return-wide v0
.end method

.method static synthetic M(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Z)V

    return-void
.end method

.method static synthetic N(Lcom/sdgtl/mediahub/spr/screen/TvStore;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->D:J

    return-wide v0
.end method

.method static synthetic O(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic P(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->o:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic Q(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->r:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic R(Lcom/sdgtl/mediahub/spr/screen/TvStore;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->C:J

    return-wide v0
.end method

.method static synthetic S(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->H:Lcom/sdgtl/mediahub/spr/common/ek;

    return-object v0
.end method

.method static synthetic T(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->S:Z

    return-void
.end method

.method static synthetic U(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->N:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic V(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->am:Z

    return v0
.end method

.method static synthetic W(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ao:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

    return-object v0
.end method

.method static synthetic X(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ah:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    return-object v0
.end method

.method static synthetic Y(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->F:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic Z(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/GridView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    return-object v0
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/screen/TvStore;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->af:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    return-object v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aa:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .registers 8

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_91

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_bf

    const-string v1, "category_id"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aj:Ljava/lang/String;

    const-string v1, "product_type"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aj:Ljava/lang/String;

    if-eqz v1, :cond_53

    const-string v1, "product_id"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ak:I

    move v1, v0

    :goto_2f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_92

    :goto_37
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Z:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aa:Ljava/lang/String;

    :cond_53
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v5, :cond_6d

    const-string v0, "category_order"

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "04"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->h:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    :cond_6d
    :goto_6d
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->b(Landroid/content/Context;)V

    :goto_70
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Z:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->c()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v5, :cond_16b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ah:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->setSelectedPosition(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ag:Landroid/widget/ListView;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ag:Landroid/widget/ListView;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_91
    :goto_91
    return-void

    :cond_92
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aj:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    goto :goto_37

    :cond_a7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    :cond_ab
    const-string v0, "05"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->i:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_6d

    :cond_b9
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->g:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v2}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_6d

    :cond_bf
    const/4 v2, -0x1

    if-eq p1, v2, :cond_e9

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    add-int/lit8 v1, v1, -0x1

    if-le v2, v1, :cond_cc

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    :cond_cc
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Z:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aa:Ljava/lang/String;

    goto :goto_70

    :cond_e9
    const-string v2, "tv_category_order"

    invoke-static {p0, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11d

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    add-int/lit8 v1, v1, -0x1

    if-le v2, v1, :cond_ff

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    :cond_ff
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Z:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aa:Ljava/lang/String;

    goto/16 :goto_70

    :cond_11d
    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    move v1, v0

    :goto_120
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_146

    :goto_128
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Z:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aa:Ljava/lang/String;

    goto/16 :goto_70

    :cond_146
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->e:Ljava/lang/String;

    if-eqz v0, :cond_167

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->e:Ljava/lang/String;

    const-string v2, "Y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_167

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    goto :goto_128

    :cond_167
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_120

    :cond_16b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_91
.end method

.method static synthetic a(Landroid/view/View;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->c(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/sdgtl/mediahub/spr/common/ek;Z)V
    .registers 11

    const/16 v7, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ae:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p2, :cond_58

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_58

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->n:Ljava/lang/String;

    move v1, v2

    move-object v3, v0

    :goto_28
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_89

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ae:Ljava/util/ArrayList;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ql;

    invoke-direct {v1, p0, v3, v4}, Lcom/sdgtl/mediahub/spr/screen/ql;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/qm;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ae:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/sdgtl/mediahub/spr/screen/qm;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    :cond_58
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->x:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->c(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ae:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c4

    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ae:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ae:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_79
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_89
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->n:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b8

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ae:Ljava/util/ArrayList;

    new-instance v6, Lcom/sdgtl/mediahub/spr/screen/ql;

    invoke-direct {v6, p0, v3, v4}, Lcom/sdgtl/mediahub/spr/screen/ql;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->n:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_28

    :cond_b8
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b3

    :cond_c4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_79
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStore;F)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->X:F

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->v:I

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStore;ILjava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->R:Z

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

    if-ne p1, v0, :cond_f

    invoke-static {p0, p2, p3}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_f
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStore;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Landroid/widget/ListView;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ap:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Lcom/sdgtl/mediahub/spr/common/ek;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->G:Lcom/sdgtl/mediahub/spr/common/ek;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Lcom/sdgtl/mediahub/spr/common/ek;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/common/ek;Z)V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Lcom/sdgtl/mediahub/spr/screen/qf;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->g:Lcom/sdgtl/mediahub/spr/screen/qf;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->W:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    const/16 v4, 0x2329

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/common/fl;->b(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_8f

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_58

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    if-eq v1, v4, :cond_1d

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    if-nez v1, :cond_23

    :cond_1d
    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Z)V

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->am:Z

    :cond_22
    :goto_22
    return-void

    :cond_23
    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_55

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ao:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->setData(Ljava/util/ArrayList;)V

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->am:Z

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->al:Z

    :goto_40
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->al:Z

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    goto :goto_22

    :cond_55
    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->al:Z

    goto :goto_40

    :cond_58
    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    if-eq v1, v4, :cond_22

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v1, v2

    :goto_68
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_80

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    goto :goto_22

    :cond_80
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    const/4 v3, 0x2

    iput v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_68

    :cond_8f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "category_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "start_num"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "end_num"

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->E:J

    goto/16 :goto_22
.end method

.method private a(Z)V
    .registers 6

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_33

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->z:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_15

    const v0, 0x7f0d004f

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->z:Landroid/widget/RelativeLayout;

    :cond_15
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ad:I

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    sget v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ad:I

    if-ne v0, v3, :cond_28

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_28

    :cond_33
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_41
    sget v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ad:I

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_28

    :cond_4b
    sget v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ad:I

    if-ne v0, v3, :cond_28

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_28
.end method

.method static synthetic aa(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ae:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic ab(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->at:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic ac(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/AbsListView$OnScrollListener;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ar:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic ad(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/view/View$OnTouchListener;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->as:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic ae(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ac:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "title"

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ac:Ljava/lang/String;

    :cond_a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->r:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ac:Ljava/lang/String;

    if-eqz v0, :cond_b0

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->U:Z

    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->v:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->w:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->r:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ab:Ljava/lang/String;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_7e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->x:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;-><init>()V

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->v:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->w:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->b:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ab:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Y:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ac:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    const-string v1, "02"

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->e:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "search_info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v0, 0xb

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->D:J

    :goto_72
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->F:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->r:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_7d
    return-void

    :cond_7e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_type_code"

    const-string v2, "02"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sort"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "keyword"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "search_type"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "parent_view"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "search_by"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->E:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_72

    :cond_b0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->r:Landroid/widget/EditText;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/pv;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/pv;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7d
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b()V
    .registers 4

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/b/b;->i(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n:Landroid/widget/Button;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/pw;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/pw;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2f
    const v0, 0x7f0a0037

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->setTitle(I)V

    return-void
.end method

.method private b(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    const/16 v1, 0x8

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    if-eqz p2, :cond_d

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_16
    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->w:I

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/TvStore;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->D:J

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/TvStore;Lcom/sdgtl/mediahub/spr/common/ek;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->H:Lcom/sdgtl/mediahub/spr/common/ek;

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/TvStore;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ac:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->V:Z

    return-void
.end method

.method private b(Z)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->an:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->an:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_d
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()V
    .registers 7

    const/16 v5, 0x20

    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Z:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/fl;->a(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->G:Lcom/sdgtl/mediahub/spr/common/ek;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->G:Lcom/sdgtl/mediahub/spr/common/ek;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->G:Lcom/sdgtl/mediahub/spr/common/ek;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    if-gtz v0, :cond_95

    :cond_18
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->x:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aa:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->S:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->H:Lcom/sdgtl/mediahub/spr/common/ek;

    invoke-direct {p0, v0, v3}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/common/ek;Z)V

    :cond_32
    :goto_32
    return-void

    :cond_33
    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->O:Z

    iput v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->v:I

    iput v5, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->w:I

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;-><init>()V

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->v:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->a:I

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->w:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->b:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Y:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Z:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aa:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->e:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "productsRequest_info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v4, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->C:J

    goto :goto_32

    :cond_65
    iput v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->v:I

    iput v5, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->w:I

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;-><init>()V

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->v:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->a:I

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->w:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->b:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Y:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Z:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aa:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->e:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "productsRequest_info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v4, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B:J

    goto :goto_32

    :cond_95
    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->R:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    if-ne v0, v3, :cond_13c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->G:Lcom/sdgtl/mediahub/spr/common/ek;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_c9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->g:Lcom/sdgtl/mediahub/spr/screen/qf;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/qf;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->l:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->refresh(Ljava/util/ArrayList;)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_ed

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aj:Ljava/lang/String;

    if-eqz v0, :cond_ed

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aj:Ljava/lang/String;

    move v1, v2

    :goto_e5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_16b

    :cond_ed
    :goto_ed
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->G:Lcom/sdgtl/mediahub/spr/common/ek;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->v:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->G:Lcom/sdgtl/mediahub/spr/common/ek;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->w:I

    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->G:Lcom/sdgtl/mediahub/spr/common/ek;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->u:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->x:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->c(Landroid/view/View;Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->O:Z

    if-eqz v0, :cond_32

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->O:Z

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_135

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setSelection(I)V

    :cond_135
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_32

    :cond_13c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_160

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->G:Lcom/sdgtl/mediahub/spr/common/ek;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->l:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->refresh(Ljava/util/ArrayList;)V

    goto/16 :goto_c9

    :cond_160
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->G:Lcom/sdgtl/mediahub/spr/common/ek;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_c9

    :cond_16b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    iget v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ak:I

    if-ne v0, v3, :cond_180

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_ed

    :cond_180
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_e5
.end method

.method private static c(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    if-eqz p1, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->u:I

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/TvStore;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->A:J

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->R:Z

    return-void
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V
    .registers 7

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Z:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    if-eq v1, v0, :cond_4a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aa:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Z:Ljava/lang/String;

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_4b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ah:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->setSelectedPosition(I)V

    :goto_37
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aa:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->S:Z

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->H:Lcom/sdgtl/mediahub/spr/common/ek;

    invoke-direct {p0, v0, v3}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/common/ek;Z)V

    :cond_4a
    :goto_4a
    return-void

    :cond_4b
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37

    :cond_5b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->x:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Landroid/view/View;Landroid/view/View;)V

    iput v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->v:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->w:I

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;-><init>()V

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->v:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->a:I

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->w:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->b:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Y:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Z:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aa:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->e:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "productsRequest_info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v4, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->C:J

    goto :goto_4a

    :cond_94
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_d3

    const-string v0, "key_view_mode"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dd

    sput v3, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ad:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c0
    :goto_c0
    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->U:Z

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->R:Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_d3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Z:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->c()V

    goto/16 :goto_4a

    :cond_dd
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    sput v2, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ad:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->g:Lcom/sdgtl/mediahub/spr/screen/qf;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/TvStore;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->E:J

    return-void
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->V:Z

    return v0
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->u:I

    return v0
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/TvStore;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->C:J

    return-void
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->am:Z

    return-void
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->al:Z

    return-void
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->W:Z

    return v0
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/screen/TvStore;)F
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->X:F

    return v0
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->U:Z

    return v0
.end method

.method static synthetic i(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/screen/qf;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->g:Lcom/sdgtl/mediahub/spr/screen/qf;

    return-object v0
.end method

.method static synthetic j(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->l:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    return-object v0
.end method

.method static synthetic k(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->K:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic l(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->v:I

    return v0
.end method

.method static synthetic m(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->w:I

    return v0
.end method

.method static synthetic n(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method static synthetic q(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ap:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    return-object v0
.end method

.method static synthetic t(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->T:Z

    return v0
.end method

.method static synthetic u(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->R:Z

    return v0
.end method

.method static synthetic v(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->x:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic w(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic x(Lcom/sdgtl/mediahub/spr/screen/TvStore;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->A:J

    return-wide v0
.end method

.method static synthetic y(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic z(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_48

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_19

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_19

    :goto_18
    return v0

    :cond_19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3d

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->o:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->U:Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_18

    :cond_3d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_48

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->l(Landroid/content/Context;)V

    :cond_48
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_18
.end method

.method public finish()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->finish()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0, v2, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->overridePendingTransition(II)V

    :cond_e
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_42

    :cond_8
    :goto_8
    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/qk;->a:Lcom/sdgtl/mediahub/spr/screen/qk;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aq:Lcom/sdgtl/mediahub/spr/screen/qk;

    return-void

    :sswitch_d
    if-nez p2, :cond_8

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->finish()V

    goto :goto_8

    :sswitch_13
    packed-switch p2, :pswitch_data_4c

    goto :goto_8

    :pswitch_17
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aq:Lcom/sdgtl/mediahub/spr/screen/qk;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/qk;->b:Lcom/sdgtl/mediahub/spr/screen/qk;

    if-ne v0, v1, :cond_2c

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_26

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->finish()V

    :cond_26
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_8

    :cond_2c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aq:Lcom/sdgtl/mediahub/spr/screen/qk;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/qk;->c:Lcom/sdgtl/mediahub/spr/screen/qk;

    if-ne v0, v1, :cond_8

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_3b

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->finish()V

    :cond_3b
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->k:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_8

    nop

    :sswitch_data_42
    .sparse-switch
        0x3 -> :sswitch_13
        0x7 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_17
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->V:Z

    if-nez v0, :cond_15

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(I)V

    :cond_15
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->au:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->af:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iput v4, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->v:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->w:I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->O:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->V:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->R:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->S:Z

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->F:Landroid/view/inputmethod/InputMethodManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->N:Landroid/os/Handler;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->s:[Ljava/lang/CharSequence;

    move v0, v1

    :goto_48
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a:[I

    array-length v2, v2

    if-lt v0, v2, :cond_16c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    :cond_61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->setContentView(I)V

    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->x:Landroid/widget/LinearLayout;

    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y:Landroid/widget/RelativeLayout;

    const v0, 0x7f0d008d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->j:Landroid/widget/ImageView;

    const v0, 0x7f0d008e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_17c

    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ag:Landroid/widget/ListView;

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ah:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ag:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ah:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ag:Landroid/widget/ListView;

    invoke-static {p0, v0, v1, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Landroid/widget/ListView;II)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ag:Landroid/widget/ListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/pk;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/pk;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0d0091

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->an:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ao:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ao:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/pm;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/pm;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->setOnItemClickListener(Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ao:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/pn;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/pn;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :goto_f4
    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/qf;

    invoke-direct {v0, p0, p0}, Lcom/sdgtl/mediahub/spr/screen/qf;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->g:Lcom/sdgtl/mediahub/spr/screen/qf;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->g:Lcom/sdgtl/mediahub/spr/screen/qf;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/pt;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/pt;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->at:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ar:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->as:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0d004c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->l:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->l:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/pu;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/pu;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->at:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ar:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->as:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    return-void

    :cond_16c
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->s:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_48

    :cond_17c
    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n:Landroid/widget/Button;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/po;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/po;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d011e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0121

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/pp;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/pp;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d011f

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->r:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->r:Landroid/widget/EditText;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/pq;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/pq;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0d0120

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->q:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->q:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/pr;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/pr;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_f4
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7

    const/4 v0, 0x0

    const/4 v4, 0x0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sparse-switch p1, :sswitch_data_8e

    move-object v0, v2

    :goto_b
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :cond_f
    return-object v0

    :sswitch_10
    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/qi;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v3}, Lcom/sdgtl/mediahub/spr/screen/qi;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->m:Lcom/sdgtl/mediahub/spr/screen/qi;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030003

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0d004d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->m:Lcom/sdgtl/mediahub/spr/screen/qi;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/ph;

    invoke-direct {v3, p0}, Lcom/sdgtl/mediahub/spr/screen/ph;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v1, 0x7f0a006c

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    goto :goto_b

    :sswitch_4a
    const v0, 0x7f0a0108

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->s:[Ljava/lang/CharSequence;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/pi;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/pi;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    goto :goto_b

    :sswitch_5f
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ap:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    if-eqz v1, :cond_f

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ap:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const v2, 0x7f0a00d0

    invoke-virtual {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/pj;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/pj;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b:Landroid/app/AlertDialog;

    goto/16 :goto_b

    :sswitch_data_8e
    .sparse-switch
        0x0 -> :sswitch_10
        0x1 -> :sswitch_4a
        0xb -> :sswitch_5f
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->af:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->au:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_110

    :goto_d
    :pswitch_d
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_11
    return v0

    :pswitch_12
    sget v1, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ad:I

    if-nez v1, :cond_4a

    sput v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ad:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->l:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->l:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->notifyDataSetChanged()V

    :cond_3e
    :goto_3e
    const-string v0, "key_view_mode"

    sget v1, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ad:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_4a
    sput v3, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ad:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->g:Lcom/sdgtl/mediahub/spr/screen/qf;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->g:Lcom/sdgtl/mediahub/spr/screen/qf;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/qf;->notifyDataSetChanged()V

    goto :goto_3e

    :pswitch_6d
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7d

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->F:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->r:Landroid/widget/EditText;

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_11

    :cond_7d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->r:Landroid/widget/EditText;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/qe;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/qe;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_d

    :cond_9d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->U:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->F:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->r:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_d

    :pswitch_b6
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->w(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c7

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/qk;->c:Lcom/sdgtl/mediahub/spr/screen/qk;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aq:Lcom/sdgtl/mediahub/spr/screen/qk;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4, v5}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto/16 :goto_d

    :cond_c7
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_d0

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->finish()V

    :cond_d0
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->k:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto/16 :goto_d

    :pswitch_d7
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e8

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/qk;->b:Lcom/sdgtl/mediahub/spr/screen/qk;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aq:Lcom/sdgtl/mediahub/spr/screen/qk;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4, v5}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto/16 :goto_d

    :cond_e8
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_f1

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->finish()V

    :cond_f1
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto/16 :goto_d

    :pswitch_f8
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->y(Landroid/content/Context;)V

    goto/16 :goto_d

    :pswitch_fd
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "help_screen_id"

    const-string v2, "0130"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->o:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto/16 :goto_d

    :pswitch_data_110
    .packed-switch 0x7f0d016a
        :pswitch_fd
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d7
        :pswitch_f8
        :pswitch_6d
        :pswitch_d
        :pswitch_12
        :pswitch_b6
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->T:Z

    const-string v0, "tv_category_order"

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ai:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ag:Landroid/widget/ListView;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Landroid/widget/ListView;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPostCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->removeDialog(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->removeDialog(I)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->removeDialog(I)V

    :cond_12
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5

    packed-switch p1, :pswitch_data_c

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->m:Lcom/sdgtl/mediahub/spr/screen/qi;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/qi;->a(Ljava/util/ArrayList;)V

    goto :goto_3

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->M:Landroid/view/Menu;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->M:Landroid/view/Menu;

    const v3, 0x7f0d0174

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->M:Landroid/view/Menu;

    const v4, 0x7f0d0172

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->M:Landroid/view/Menu;

    const v5, 0x7f0d0170

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->M:Landroid/view/Menu;

    const v6, 0x7f0d0171

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->M:Landroid/view/Menu;

    const v7, 0x7f0d016a

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->M:Landroid/view/Menu;

    const v8, 0x7f0d0175

    invoke-interface {v0, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    const/16 v9, 0x8

    if-ne v0, v9, :cond_93

    const v0, 0x7f0a0057

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_4a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aa:Ljava/lang/String;

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aa:Ljava/lang/String;

    const-string v9, "03"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->S:Z

    if-eqz v0, :cond_9a

    move v0, v1

    :goto_5d
    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->P:Z

    :goto_5f
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->U:Z

    if-eqz v0, :cond_a6

    move v0, v2

    :goto_64
    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Q:Z

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->P:Z

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->P:Z

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_a8

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v8, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_7f
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Q:Z

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Q:Z

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Q:Z

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_93
    const v0, 0x7f0a0056

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_4a

    :cond_9a
    move v0, v2

    goto :goto_5d

    :cond_9c
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->R:Z

    if-eqz v0, :cond_a4

    move v0, v1

    :goto_a1
    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->P:Z

    goto :goto_5f

    :cond_a4
    move v0, v2

    goto :goto_a1

    :cond_a6
    move v0, v1

    goto :goto_64

    :cond_a8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aa:Ljava/lang/String;

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aa:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    :cond_b6
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Q:Z

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_bb
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Q:Z

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Q:Z

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7f

    :cond_c6
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_bb
.end method

.method protected onResume()V
    .registers 8

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onResume()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->f:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {p0, p0, v0, v4}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->setActionBar(Landroid/app/Activity;Lcom/sdgtl/mediahub/spr/ar;Z)V

    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->T:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;)Z

    move-result v0

    if-nez v0, :cond_17

    :goto_16
    return-void

    :cond_17
    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->U:Z

    const-string v0, "key_view_mode"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_sort_by"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Y:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Y:Ljava/lang/String;

    if-nez v1, :cond_2f

    const-string v1, "date"

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Y:Ljava/lang/String;

    :cond_2f
    iget-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->V:Z

    if-nez v1, :cond_58

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fl;->b()Lcom/sdgtl/mediahub/spr/common/ej;

    move-result-object v1

    if-eqz v1, :cond_90

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ej;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v1, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(I)V

    :cond_58
    :goto_58
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_8c

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aa:Ljava/lang/String;

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->aa:Ljava/lang/String;

    const-string v2, "03"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    :cond_6c
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    sput v6, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ad:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8c
    :goto_8c
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b()V

    goto :goto_16

    :cond_90
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->x:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Landroid/view/View;Landroid/view/View;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "product_Type_Code"

    const-string v3, "02"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->t:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->A:J

    goto :goto_58

    :cond_ad
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    sput v4, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ad:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i:Landroid/widget/GridView;

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8c
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
