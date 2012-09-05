.class public Lcom/sdgtl/mediahub/spr/screen/MovieStore;
.super Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;


# static fields
.field private static O:Z

.field private static aa:Ljava/lang/String;

.field private static ak:Lcom/sdgtl/mediahub/spr/screen/MovieStore;


# instance fields
.field private A:Landroid/widget/EditText;

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Ljava/util/ArrayList;

.field private E:Lcom/sdgtl/mediahub/spr/common/ek;

.field private F:Ljava/util/ArrayList;

.field private G:Ljava/util/ArrayList;

.field private H:Ljava/util/ArrayList;

.field private I:Landroid/view/Menu;

.field private J:Z

.field private K:Z

.field private L:Landroid/view/inputmethod/InputMethodManager;

.field private M:[Ljava/lang/CharSequence;

.field private N:[I

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:F

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:I

.field public final a:Landroid/os/Handler;

.field private ab:Landroid/widget/ListView;

.field private ac:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

.field private ad:Landroid/widget/LinearLayout;

.field private ae:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

.field private af:Z

.field private ag:Z

.field private ah:I

.field private ai:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

.field private aj:I

.field private al:Lcom/sdgtl/mediahub/spr/screen/ap;

.field private am:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private an:Landroid/widget/AbsListView$OnScrollListener;

.field private ao:Landroid/view/View$OnTouchListener;

.field private ap:Landroid/content/BroadcastReceiver;

.field public b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/os/Handler;

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/widget/ListView;

.field private q:Landroid/widget/GridView;

.field private r:Lcom/sdgtl/mediahub/spr/screen/al;

.field private s:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

.field private t:Lcom/sdgtl/mediahub/spr/screen/an;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/Button;

.field private w:Landroid/widget/ImageButton;

.field private x:Landroid/widget/ImageButton;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->aa:Ljava/lang/String;

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ak:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/ek;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/ek;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->E:Lcom/sdgtl/mediahub/spr/common/ek;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->F:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->G:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->H:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->J:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->K:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_8c

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->N:[I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->P:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Q:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->R:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->S:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->T:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->U:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->V:F

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->af:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ag:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ah:I

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->aj:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ap;->a:Lcom/sdgtl/mediahub/spr/screen/ap;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->al:Lcom/sdgtl/mediahub/spr/screen/ap;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/m;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/m;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->am:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/y;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/y;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->an:Landroid/widget/AbsListView$OnScrollListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ae;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ae;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ao:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/af;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/af;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ag;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ag;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ah;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ah;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/ai;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/ai;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->d:Landroid/os/Handler;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/aj;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/screen/aj;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ap:Landroid/content/BroadcastReceiver;

    return-void

    nop

    :array_8c
    .array-data 0x4
        0xbt 0x1t 0xat 0x7ft
        0xct 0x1t 0xat 0x7ft
    .end array-data
.end method

.method static synthetic A(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Q:Z

    return-void
.end method

.method static synthetic B(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ah:I

    return v0
.end method

.method static synthetic C(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ah:I

    return-void
.end method

.method static synthetic D(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic E(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->J:Z

    return v0
.end method

.method static synthetic F(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/view/Menu;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->I:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic G(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->J:Z

    return-void
.end method

.method static synthetic H(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic I(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    return v0
.end method

.method static synthetic J(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V
    .registers 1

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->e()V

    return-void
.end method

.method static synthetic K(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->l:J

    return-wide v0
.end method

.method static synthetic L(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Z)V

    return-void
.end method

.method static synthetic M(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->k:J

    return-wide v0
.end method

.method static synthetic N(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->H:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic O(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->u:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic P(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->A:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic Q(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->S:Z

    return-void
.end method

.method static synthetic R(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ag:Z

    return v0
.end method

.method static synthetic S(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ae:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

    return-object v0
.end method

.method static synthetic T(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ac:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    return-object v0
.end method

.method static synthetic U(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->af:Z

    return v0
.end method

.method static synthetic V(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->L:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic W(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/GridView;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic X(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->aj:I

    return v0
.end method

.method static synthetic Y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->am:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic Z(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/AbsListView$OnScrollListener;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->an:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/screen/MovieStore;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ak:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    return-object v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/screen/al;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->r:Lcom/sdgtl/mediahub/spr/screen/al;

    return-object v0
.end method

.method private a(I)V
    .registers 7

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    if-lez v0, :cond_6a

    if-eqz v1, :cond_88

    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Q:Z

    const-string v0, "category_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->X:Ljava/lang/String;

    const-string v0, "category_type"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Y:Ljava/lang/String;

    const-string v0, "product_id"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ah:I

    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    move v1, v2

    :goto_32
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_6b

    :goto_3a
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/aq;->b(Landroid/content/Context;)V

    :goto_3d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Y:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Y:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    :cond_51
    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->af:Z

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ag:Z

    :cond_55
    :goto_55
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->X:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->e()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_142

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ac:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->setSelectedPosition(I)V

    :cond_6a
    :goto_6a
    return-void

    :cond_6b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->X:Ljava/lang/String;

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->X:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    goto :goto_3a

    :cond_84
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_32

    :cond_88
    if-eq p1, v3, :cond_b1

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_94

    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    :cond_94
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->X:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Y:Ljava/lang/String;

    goto :goto_3d

    :cond_b1
    const-string v1, "movie_category_order"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_c7

    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    :cond_c7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->X:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Y:Ljava/lang/String;

    goto/16 :goto_3d

    :cond_e5
    iput v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    move v1, v2

    :goto_e8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_10e

    :goto_f0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->X:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Y:Ljava/lang/String;

    goto/16 :goto_3d

    :cond_10e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->e:Ljava/lang/String;

    if-eqz v0, :cond_12f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->e:Ljava/lang/String;

    const-string v3, "Y"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    goto :goto_f0

    :cond_12f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e8

    :cond_133
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_55

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->af:Z

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->af:Z

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Z)V

    goto/16 :goto_55

    :cond_142
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6a
.end method

.method static synthetic a(Landroid/view/View;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;F)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->V:F

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->f:I

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;ILjava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->O:Z

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

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->j:J

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Landroid/widget/ListView;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ai:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Lcom/sdgtl/mediahub/spr/common/ek;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->E:Lcom/sdgtl/mediahub/spr/common/ek;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Lcom/sdgtl/mediahub/spr/screen/al;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->r:Lcom/sdgtl/mediahub/spr/screen/al;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->U:Z

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->aa:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Z)V
    .registers 1

    sput-boolean p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->O:Z

    return-void
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

.method static synthetic aa(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/view/View$OnTouchListener;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ao:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic ab(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->aa:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "title"

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->aa:Ljava/lang/String;

    :cond_a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->A:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->aa:Ljava/lang/String;

    if-eqz v0, :cond_af

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->S:Z

    iput v3, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->f:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->g:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->A:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->C:Ljava/lang/String;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_7e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->m:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->n:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;-><init>()V

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->f:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->g:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->b:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->C:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->W:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->aa:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    const-string v1, "01"

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->e:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "search_info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v0, 0xb

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->k:J

    :goto_72
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->L:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->A:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_7d
    return-void

    :cond_7e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_type_code"

    const-string v2, "01"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sort"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->W:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "keyword"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "search_type"

    sget-object v2, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "parent_view"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "search_by"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->E:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_72

    :cond_af
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->A:Landroid/widget/EditText;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ac;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ac;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7d
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ai:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->aa:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    const/16 v1, 0x8

    if-eqz p1, :cond_e

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    if-eqz p2, :cond_19

    invoke-static {p2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->o:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_22
    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->g:I

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->k:J

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->X:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->T:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 7

    const/16 v4, 0x2329

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/common/fl;->b(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->G:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_8d

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_56

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    if-eq v1, v4, :cond_1d

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    if-nez v1, :cond_23

    :cond_1d
    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Z)V

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ag:Z

    :cond_22
    :goto_22
    return-void

    :cond_23
    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->G:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_53

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ae:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->setData(Ljava/util/ArrayList;)V

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ag:Z

    :goto_3e
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->af:Z

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    goto :goto_22

    :cond_53
    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->af:Z

    goto :goto_3e

    :cond_56
    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    if-eq v1, v4, :cond_22

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->G:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v1, v2

    :goto_66
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_7e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    goto :goto_22

    :cond_7e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    const/4 v3, 0x2

    iput v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_66

    :cond_8d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "category_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "start_num"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "end_num"

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->l:J

    goto/16 :goto_22
.end method

.method private b(Z)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ad:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ad:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_d
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->F:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static c(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    if-eqz p0, :cond_d

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    if-eqz p1, :cond_19

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->e:I

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->i:J

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Y:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Z)V

    return-void
.end method

.method private c(Z)V
    .registers 6

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_33

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->o:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_15

    const v0, 0x7f0d004f

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->o:Landroid/widget/RelativeLayout;

    :cond_15
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->B:I

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->B:I

    if-ne v0, v3, :cond_28

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_28

    :cond_33
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->o:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_41
    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->B:I

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_28

    :cond_4b
    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->B:I

    if-ne v0, v3, :cond_28

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_28
.end method

.method static synthetic c()Z
    .registers 1

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->O:Z

    return v0
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->G:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d()V
    .registers 4

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q:Landroid/widget/GridView;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/b/b;->i(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v:Landroid/widget/Button;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ad;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ad;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2f
    return-void
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MovieStore;I)V
    .registers 2

    iput p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    return-void
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MovieStore;J)V
    .registers 3

    iput-wide p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->l:J

    return-void
.end method

.method static synthetic d(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ag:Z

    return-void
.end method

.method private e()V
    .registers 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->X:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/fl;->a(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->E:Lcom/sdgtl/mediahub/spr/common/ek;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->E:Lcom/sdgtl/mediahub/spr/common/ek;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->E:Lcom/sdgtl/mediahub/spr/common/ek;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    if-gtz v0, :cond_51

    :cond_14
    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->P:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->m:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->n:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Landroid/view/View;Landroid/view/View;)V

    iput v4, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->f:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->g:I

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;-><init>()V

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->f:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->a:I

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->g:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->b:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->W:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->X:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Y:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->e:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "productsRequest_info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v0, 0x8

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->j:J

    :cond_50
    :goto_50
    return-void

    :cond_51
    sput-boolean v4, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->O:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_da

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->E:Lcom/sdgtl/mediahub/spr/common/ek;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->s:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->refresh(Ljava/util/ArrayList;)V

    :goto_75
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->r:Lcom/sdgtl/mediahub/spr/screen/al;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/al;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->E:Lcom/sdgtl/mediahub/spr/common/ek;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->f:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->E:Lcom/sdgtl/mediahub/spr/common/ek;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->g:I

    invoke-direct {p0, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->E:Lcom/sdgtl/mediahub/spr/common/ek;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->e:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->m:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->n:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Landroid/view/View;Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Q:Z

    if-eqz v0, :cond_c2

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Q:Z

    move v1, v2

    :goto_ba
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_e4

    :cond_c2
    :goto_c2
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->P:Z

    if-eqz v0, :cond_50

    iput-boolean v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->P:Z

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_d3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setSelection(I)V

    :cond_d3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_50

    :cond_da
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->F:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->E:Lcom/sdgtl/mediahub/spr/common/ek;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_75

    :cond_e4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    iget v3, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ah:I

    if-ne v0, v3, :cond_11a

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ah:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_c2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "product_id"

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->d:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_c2

    :cond_11a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_ba
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->af:Z

    return-void
.end method

.method static synthetic e(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->T:Z

    return v0
.end method

.method static synthetic f(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->e:I

    return v0
.end method

.method static synthetic g(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->U:Z

    return v0
.end method

.method static synthetic h(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)F
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->V:F

    return v0
.end method

.method static synthetic i(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->s:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    return-object v0
.end method

.method static synthetic j(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->f:I

    return v0
.end method

.method static synthetic k(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->S:Z

    return v0
.end method

.method static synthetic l(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->g:I

    return v0
.end method

.method static synthetic m(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->W:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->X:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    return-object v0
.end method

.method static synthetic q(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->R:Z

    return v0
.end method

.method static synthetic s(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->m:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic t(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->n:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic u(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->i:J

    return-wide v0
.end method

.method static synthetic v(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic w(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(I)V

    return-void
.end method

.method static synthetic x(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)J
    .registers 3

    iget-wide v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->j:J

    return-wide v0
.end method

.method static synthetic y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->E:Lcom/sdgtl/mediahub/spr/common/ek;

    return-object v0
.end method

.method static synthetic z(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Q:Z

    return v0
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

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->m:Landroid/widget/LinearLayout;

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

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->u:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->S:Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v:Landroid/widget/Button;

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

    invoke-virtual {p0, v2, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->overridePendingTransition(II)V

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
    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ap;->a:Lcom/sdgtl/mediahub/spr/screen/ap;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->al:Lcom/sdgtl/mediahub/spr/screen/ap;

    return-void

    :sswitch_d
    if-nez p2, :cond_8

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->finish()V

    goto :goto_8

    :sswitch_13
    packed-switch p2, :pswitch_data_4c

    goto :goto_8

    :pswitch_17
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->al:Lcom/sdgtl/mediahub/spr/screen/ap;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/ap;->b:Lcom/sdgtl/mediahub/spr/screen/ap;

    if-ne v0, v1, :cond_2c

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_26

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->finish()V

    :cond_26
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_8

    :cond_2c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->al:Lcom/sdgtl/mediahub/spr/screen/ap;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/ap;->c:Lcom/sdgtl/mediahub/spr/screen/ap;

    if-ne v0, v1, :cond_8

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_3b

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->finish()V

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

    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->d()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->T:Z

    if-nez v0, :cond_15

    iget v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    invoke-direct {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(I)V

    :cond_15
    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->setTitle(I)V

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

    const v7, 0x7f0d0052

    const v6, 0x7f0d004d

    const v5, 0x7f030025

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ap:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sput-object p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ak:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iput v4, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->f:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->g:I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->P:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->T:Z

    sput-boolean v1, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->O:Z

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->L:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->N:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->M:[Ljava/lang/CharSequence;

    move v0, v1

    :goto_48
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->N:[I

    array-length v2, v2

    if-lt v0, v2, :cond_f3

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_103

    invoke-virtual {p0, v5}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->setContentView(I)V

    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v7}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0091

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ad:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/al;

    invoke-direct {v0, p0, p0}, Lcom/sdgtl/mediahub/spr/screen/al;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->r:Lcom/sdgtl/mediahub/spr/screen/al;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->r:Lcom/sdgtl/mediahub/spr/screen/al;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->am:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->an:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ao:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/q;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/q;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ae:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ae:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/r;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/r;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->setOnItemClickListener(Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ae:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/s;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/s;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ab:Landroid/widget/ListView;

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ac:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ab:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ac:Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ab:Landroid/widget/ListView;

    invoke-static {p0, v0, v1, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Landroid/widget/ListView;II)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ab:Landroid/widget/ListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/t;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/t;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_f2
    return-void

    :cond_f3
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->M:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->N:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_48

    :cond_103
    invoke-virtual {p0, v5}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->setContentView(I)V

    invoke-virtual {p0, v7}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->n:Landroid/widget/RelativeLayout;

    const v0, 0x7f0d008d

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y:Landroid/widget/ImageView;

    const v0, 0x7f0d008e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->z:Landroid/widget/ImageView;

    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v:Landroid/widget/Button;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/v;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/v;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d011e

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->u:Landroid/widget/LinearLayout;

    const v0, 0x7f0d0121

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->w:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->w:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->w:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/w;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/w;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d011f

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->A:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->A:Landroid/widget/EditText;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/x;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/x;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0d0120

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->x:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->x:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/z;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/z;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v6}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    new-instance v0, Lcom/sdgtl/mediahub/spr/screen/al;

    invoke-direct {v0, p0, p0}, Lcom/sdgtl/mediahub/spr/screen/al;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->r:Lcom/sdgtl/mediahub/spr/screen/al;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->r:Lcom/sdgtl/mediahub/spr/screen/al;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/aa;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/aa;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->am:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->an:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ao:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0d004c

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q:Landroid/widget/GridView;

    new-instance v0, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->s:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->s:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q:Landroid/widget/GridView;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ab;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ab;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->am:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->an:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ao:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto/16 :goto_f2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8

    const/4 v0, 0x0

    const v5, 0x7f0a00d0

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sparse-switch p1, :sswitch_data_b2

    move-object v0, v2

    :goto_f
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :cond_13
    return-object v0

    :sswitch_14
    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/an;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v3}, Lcom/sdgtl/mediahub/spr/screen/an;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->t:Lcom/sdgtl/mediahub/spr/screen/an;

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

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->t:Lcom/sdgtl/mediahub/spr/screen/an;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lcom/sdgtl/mediahub/spr/screen/n;

    invoke-direct {v3, p0}, Lcom/sdgtl/mediahub/spr/screen/n;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v1, 0x7f0a006c

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    goto :goto_f

    :sswitch_4e
    const v0, 0x7f0a0108

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->M:[Ljava/lang/CharSequence;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/o;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/o;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    goto :goto_f

    :sswitch_63
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ai:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    if-eqz v1, :cond_13

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ai:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->m:Ljava/lang/String;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ai:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->m:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    :cond_79
    new-array v0, v3, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v4

    :goto_81
    array-length v1, v0

    iput v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->aj:I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ai:Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/p;

    invoke-direct {v2, p0}, Lcom/sdgtl/mediahub/spr/screen/p;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object v0, v1

    goto/16 :goto_f

    :cond_9e
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f0a00d1

    invoke-virtual {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v5}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_81

    nop

    :sswitch_data_b2
    .sparse-switch
        0x0 -> :sswitch_14
        0x1 -> :sswitch_4e
        0xb -> :sswitch_63
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->getMenuInflater()Landroid/view/MenuInflater;

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

    sput-object v0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ak:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ap:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

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

    packed-switch v1, :pswitch_data_108

    :cond_d
    :goto_d
    :pswitch_d
    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_11
    return v0

    :pswitch_12
    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->B:I

    if-nez v1, :cond_43

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->B:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->s:Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->notifyDataSetChanged()V

    :cond_37
    :goto_37
    const-string v0, "key_view_mode"

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->B:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_43
    iput v3, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->B:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->r:Lcom/sdgtl/mediahub/spr/screen/al;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/al;->notifyDataSetChanged()V

    goto :goto_37

    :pswitch_5f
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_75

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->L:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->A:Landroid/widget/EditText;

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_11

    :cond_75
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_95

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->A:Landroid/widget/EditText;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/ak;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/ak;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_d

    :cond_95
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->S:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->L:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->A:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_d

    :pswitch_ae
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->y(Landroid/content/Context;)V

    goto/16 :goto_d

    :pswitch_b3
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->w(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c4

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ap;->c:Lcom/sdgtl/mediahub/spr/screen/ap;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->al:Lcom/sdgtl/mediahub/spr/screen/ap;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4, v5}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto/16 :goto_d

    :cond_c4
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_cd

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->finish()V

    :cond_cd
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->k:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto/16 :goto_d

    :pswitch_d4
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e5

    sget-object v0, Lcom/sdgtl/mediahub/spr/screen/ap;->b:Lcom/sdgtl/mediahub/spr/screen/ap;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->al:Lcom/sdgtl/mediahub/spr/screen/ap;

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4, v5}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto/16 :goto_d

    :cond_e5
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_ee

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->finish()V

    :cond_ee
    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->q:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v0, v4}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto/16 :goto_d

    :pswitch_f5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "help_screen_id"

    const-string v2, "0120"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->o:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto/16 :goto_d

    :pswitch_data_108
    .packed-switch 0x7f0d016a
        :pswitch_f5
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d4
        :pswitch_ae
        :pswitch_5f
        :pswitch_d
        :pswitch_12
        :pswitch_b3
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->R:Z

    const-string v0, "movie_category_order"

    iget v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPostCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->removeDialog(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->removeDialog(I)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->removeDialog(I)V

    :cond_12
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5

    packed-switch p1, :pswitch_data_c

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->t:Lcom/sdgtl/mediahub/spr/screen/an;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/an;->a(Ljava/util/ArrayList;)V

    goto :goto_3

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->I:Landroid/view/Menu;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->I:Landroid/view/Menu;

    const v3, 0x7f0d0174

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->I:Landroid/view/Menu;

    const v4, 0x7f0d0172

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->I:Landroid/view/Menu;

    const v5, 0x7f0d0170

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->I:Landroid/view/Menu;

    const v6, 0x7f0d0171

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->I:Landroid/view/Menu;

    const v7, 0x7f0d016a

    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->I:Landroid/view/Menu;

    const v8, 0x7f0d0175

    invoke-interface {v0, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->O:Z

    if-eqz v0, :cond_75

    move v0, v1

    :goto_3f
    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->J:Z

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->S:Z

    if-eqz v0, :cond_77

    move v0, v2

    :goto_46
    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->K:Z

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->J:Z

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->J:Z

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_79

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v8, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_61
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->K:Z

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->K:Z

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->K:Z

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_75
    move v0, v2

    goto :goto_3f

    :cond_77
    move v0, v1

    goto :goto_46

    :cond_79
    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->K:Z

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->K:Z

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->K:Z

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_99

    const v0, 0x7f0a0057

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_61

    :cond_99
    const v0, 0x7f0a0056

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_61
.end method

.method protected onResume()V
    .registers 8

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/sdgtl/mediahub/spr/customview/MHActionBarActivity;->onResume()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->c:Lcom/sdgtl/mediahub/spr/ar;

    invoke-virtual {p0, p0, v0, v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->setActionBar(Landroid/app/Activity;Lcom/sdgtl/mediahub/spr/ar;Z)V

    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->R:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/ServiceReadyCheck;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/contentProvider/b;)Z

    move-result v0

    if-nez v0, :cond_17

    :goto_16
    return-void

    :cond_17
    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->S:Z

    iput-boolean v4, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->af:Z

    const-string v0, "key_view_mode"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_view_mode"

    invoke-static {p0, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    const-string v1, "key_sort_by"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->W:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->W:Ljava/lang/String;

    if-nez v1, :cond_3c

    const-string v1, "date"

    iput-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->W:Ljava/lang/String;

    :cond_3c
    iget-boolean v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->T:Z

    if-nez v1, :cond_65

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/fl;->a()Lcom/sdgtl/mediahub/spr/common/ej;

    move-result-object v1

    if-eqz v1, :cond_8f

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ej;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v1, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(I)V

    :cond_65
    :goto_65
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_8b

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    iput v6, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->B:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8b
    :goto_8b
    invoke-direct {p0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->d()V

    goto :goto_16

    :cond_8f
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->m:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->n:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Landroid/view/View;Landroid/view/View;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "product_Type_Code"

    const-string v3, "01"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->h:Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->i:J

    goto :goto_65

    :cond_ac
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    iput v4, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->B:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q:Landroid/widget/GridView;

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8b
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
